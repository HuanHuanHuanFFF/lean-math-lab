import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_height : HeightCertificateDatum := { i := 73, r := 24, s := 50, n0Power10 := 11 }

def row073_goods : List GoodSegment := [
  { lower := 148, upper := 211, witness := RowWitness.topPrime 139 },
  { lower := 212, upper := 283, witness := RowWitness.topPrime 211 },
  { lower := 284, upper := 355, witness := RowWitness.topPrime 283 },
  { lower := 356, upper := 425, witness := RowWitness.topPrime 353 },
  { lower := 426, upper := 493, witness := RowWitness.topPrime 421 },
  { lower := 494, upper := 563, witness := RowWitness.topPrime 491 },
  { lower := 564, upper := 635, witness := RowWitness.topPrime 563 },
  { lower := 636, upper := 703, witness := RowWitness.topPrime 631 },
  { lower := 704, upper := 773, witness := RowWitness.topPrime 701 },
  { lower := 774, upper := 845, witness := RowWitness.topPrime 773 },
  { lower := 846, upper := 911, witness := RowWitness.topPrime 839 },
  { lower := 912, upper := 983, witness := RowWitness.topPrime 911 },
  { lower := 984, upper := 1055, witness := RowWitness.topPrime 983 },
  { lower := 1056, upper := 1123, witness := RowWitness.topPrime 1051 },
  { lower := 1124, upper := 1195, witness := RowWitness.topPrime 1123 },
  { lower := 1196, upper := 1265, witness := RowWitness.topPrime 1193 },
  { lower := 1266, upper := 1331, witness := RowWitness.topPrime 1259 },
  { lower := 1332, upper := 1399, witness := RowWitness.topPrime 1327 },
  { lower := 1400, upper := 1471, witness := RowWitness.topPrime 1399 },
  { lower := 1472, upper := 1543, witness := RowWitness.topPrime 1471 },
  { lower := 1544, upper := 1615, witness := RowWitness.topPrime 1543 },
  { lower := 1616, upper := 1685, witness := RowWitness.topPrime 1613 },
  { lower := 1686, upper := 1741, witness := RowWitness.topPrime 1669 },
  { lower := 1742, upper := 1813, witness := RowWitness.topPrime 1741 },
  { lower := 1814, upper := 1883, witness := RowWitness.topPrime 1811 },
  { lower := 1884, upper := 1951, witness := RowWitness.topPrime 1879 },
  { lower := 1952, upper := 2023, witness := RowWitness.topPrime 1951 },
  { lower := 2024, upper := 2089, witness := RowWitness.topPrime 2017 },
  { lower := 2090, upper := 2161, witness := RowWitness.topPrime 2089 },
  { lower := 2162, upper := 2233, witness := RowWitness.topPrime 2161 },
  { lower := 2234, upper := 2293, witness := RowWitness.topPrime 2221 },
  { lower := 2294, upper := 2365, witness := RowWitness.topPrime 2293 },
  { lower := 2366, upper := 2429, witness := RowWitness.topPrime 2357 },
  { lower := 2430, upper := 2495, witness := RowWitness.topPrime 2423 },
  { lower := 2496, upper := 2549, witness := RowWitness.topPrime 2477 },
  { lower := 2550, upper := 2621, witness := RowWitness.topPrime 2549 },
  { lower := 2622, upper := 2693, witness := RowWitness.topPrime 2621 },
  { lower := 2694, upper := 2765, witness := RowWitness.topPrime 2693 },
  { lower := 2766, upper := 2825, witness := RowWitness.topPrime 2753 },
  { lower := 2826, upper := 2891, witness := RowWitness.topPrime 2819 },
  { lower := 2892, upper := 2959, witness := RowWitness.topPrime 2887 },
  { lower := 2960, upper := 3029, witness := RowWitness.topPrime 2957 },
  { lower := 3030, upper := 3095, witness := RowWitness.topPrime 3023 },
  { lower := 3096, upper := 3161, witness := RowWitness.topPrime 3089 },
  { lower := 3162, upper := 3209, witness := RowWitness.topPrime 3137 },
  { lower := 3210, upper := 3281, witness := RowWitness.topPrime 3209 },
  { lower := 3282, upper := 3343, witness := RowWitness.topPrime 3271 },
  { lower := 3344, upper := 3415, witness := RowWitness.topPrime 3343 },
  { lower := 3416, upper := 3485, witness := RowWitness.topPrime 3413 },
  { lower := 3486, upper := 3541, witness := RowWitness.topPrime 3469 },
  { lower := 3542, upper := 3613, witness := RowWitness.topPrime 3541 },
  { lower := 3614, upper := 3685, witness := RowWitness.topPrime 3613 },
  { lower := 3686, upper := 3749, witness := RowWitness.topPrime 3677 },
  { lower := 3750, upper := 3811, witness := RowWitness.topPrime 3739 },
  { lower := 3812, upper := 3875, witness := RowWitness.topPrime 3803 },
  { lower := 3876, upper := 3935, witness := RowWitness.topPrime 3863 },
  { lower := 3936, upper := 4003, witness := RowWitness.topPrime 3931 },
  { lower := 4004, upper := 4075, witness := RowWitness.topPrime 4003 },
  { lower := 4076, upper := 4145, witness := RowWitness.topPrime 4073 },
  { lower := 4146, upper := 4211, witness := RowWitness.topPrime 4139 },
  { lower := 4212, upper := 4283, witness := RowWitness.topPrime 4211 },
  { lower := 4284, upper := 4355, witness := RowWitness.topPrime 4283 },
  { lower := 4356, upper := 4421, witness := RowWitness.topPrime 4349 },
  { lower := 4422, upper := 4493, witness := RowWitness.topPrime 4421 },
  { lower := 4494, upper := 4565, witness := RowWitness.topPrime 4493 },
  { lower := 4566, upper := 4633, witness := RowWitness.topPrime 4561 },
  { lower := 4634, upper := 4693, witness := RowWitness.topPrime 4621 },
  { lower := 4694, upper := 4763, witness := RowWitness.topPrime 4691 },
  { lower := 4764, upper := 4831, witness := RowWitness.topPrime 4759 },
  { lower := 4832, upper := 4903, witness := RowWitness.topPrime 4831 },
  { lower := 4904, upper := 4975, witness := RowWitness.topPrime 4903 },
  { lower := 4976, upper := 5045, witness := RowWitness.topPrime 4973 },
  { lower := 5046, upper := 5111, witness := RowWitness.topPrime 5039 },
  { lower := 5112, upper := 5179, witness := RowWitness.topPrime 5107 },
  { lower := 5180, upper := 5251, witness := RowWitness.topPrime 5179 },
  { lower := 5252, upper := 5255, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5395, witness := RowWitness.topPrime 5323 },
  { lower := 5396, upper := 5448, witness := RowWitness.topPrime 5393 },
  { lower := 5476, upper := 5543, witness := RowWitness.topPrime 5471 },
  { lower := 5544, upper := 5563, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5653, witness := RowWitness.topPrime 5581 },
  { lower := 5654, upper := 5697, witness := RowWitness.topPrime 5653 },
  { lower := 5776, upper := 5821, witness := RowWitness.topPrime 5749 },
  { lower := 5822, upper := 5893, witness := RowWitness.topPrime 5821 },
  { lower := 5894, upper := 5953, witness := RowWitness.topPrime 5881 },
  { lower := 5954, upper := 5959, witness := RowWitness.topPrime 5953 },
  { lower := 6075, upper := 6145, witness := RowWitness.topPrime 6073 },
  { lower := 6146, upper := 6215, witness := RowWitness.topPrime 6143 },
  { lower := 6216, upper := 6216, witness := RowWitness.topPrime 6211 },
  { lower := 6318, upper := 6322, witness := RowWitness.topPrime 6317 },
  { lower := 6348, upper := 6415, witness := RowWitness.topPrime 6343 },
  { lower := 6416, upper := 6430, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6563, witness := RowWitness.topPrime 6491 },
  { lower := 6564, upper := 6589, witness := RowWitness.topPrime 6563 },
  { lower := 6591, upper := 6653, witness := RowWitness.topPrime 6581 },
  { lower := 6654, upper := 6725, witness := RowWitness.topPrime 6653 },
  { lower := 6726, upper := 6791, witness := RowWitness.topPrime 6719 },
  { lower := 6792, upper := 6799, witness := RowWitness.topPrime 6791 },
  { lower := 6845, upper := 6913, witness := RowWitness.topPrime 6841 },
  { lower := 6914, upper := 6983, witness := RowWitness.topPrime 6911 },
  { lower := 6984, upper := 7008, witness := RowWitness.topPrime 6983 },
  { lower := 7203, upper := 7265, witness := RowWitness.topPrime 7193 },
  { lower := 7266, upper := 7297, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7465, witness := RowWitness.topPrime 7393 },
  { lower := 7466, upper := 7496, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7571, witness := RowWitness.topPrime 7499 },
  { lower := 7572, upper := 7633, witness := RowWitness.topPrime 7561 },
  { lower := 7634, upper := 7641, witness := RowWitness.topPrime 7621 },
  { lower := 7688, upper := 7752, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8005, witness := RowWitness.topPrime 7933 },
  { lower := 8006, upper := 8014, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8058, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8164, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8197, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8281, witness := RowWitness.topPrime 8209 },
  { lower := 8282, upper := 8286, witness := RowWitness.topPrime 8273 },
  { lower := 8303, upper := 8304, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8461, witness := RowWitness.topPrime 8389 },
  { lower := 8462, upper := 8499, witness := RowWitness.topPrime 8461 },
  { lower := 8664, upper := 8735, witness := RowWitness.topPrime 8663 },
  { lower := 8736, upper := 8736, witness := RowWitness.topPrime 8731 },
  { lower := 8748, upper := 8819, witness := RowWitness.topPrime 8747 },
  { lower := 8820, upper := 8822, witness := RowWitness.topPrime 8819 },
  { lower := 8836, upper := 8860, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 8990, witness := RowWitness.topPrime 8971 },
  { lower := 8993, upper := 9043, witness := RowWitness.topPrime 8971 },
  { lower := 9044, upper := 9065, witness := RowWitness.topPrime 9043 },
  { lower := 9245, upper := 9313, witness := RowWitness.topPrime 9241 },
  { lower := 9314, upper := 9333, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9443, witness := RowWitness.topPrime 9371 },
  { lower := 9444, upper := 9447, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9549, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9594, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9673, witness := RowWitness.topPrime 9601 },
  { lower := 9674, upper := 9676, witness := RowWitness.topPrime 9661 },
  { lower := 9747, upper := 9800, witness := RowWitness.topPrime 9743 },
  { lower := 10000, upper := 10019, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10072, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10151, witness := RowWitness.topPrime 10079 },
  { lower := 10152, upper := 10164, witness := RowWitness.topPrime 10151 },
  { lower := 10240, upper := 10278, witness := RowWitness.topPrime 10223 },
  { lower := 10469, upper := 10511, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10639, witness := RowWitness.topPrime 10567 },
  { lower := 10640, upper := 10697, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10981, witness := RowWitness.topPrime 10909 },
  { lower := 10982, upper := 11024, witness := RowWitness.topPrime 10979 },
  { lower := 11045, upper := 11057, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11165, witness := RowWitness.topPrime 11093 },
  { lower := 11166, upper := 11181, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11315, witness := RowWitness.topPrime 11243 },
  { lower := 11316, upper := 11322, witness := RowWitness.topPrime 11311 },
  { lower := 11664, upper := 11710, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11815, witness := RowWitness.topPrime 11743 },
  { lower := 11816, upper := 11846, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12051, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12360, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12393, witness := RowWitness.topPrime 12391 },
  { lower := 12500, upper := 12565, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13193, witness := RowWitness.topPrime 13121 },
  { lower := 13194, upper := 13197, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13291, witness := RowWitness.topPrime 13219 },
  { lower := 13292, upper := 13297, witness := RowWitness.topPrime 13291 },
  { lower := 13310, upper := 13381, witness := RowWitness.topPrime 13309 },
  { lower := 13382, upper := 13382, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13523, witness := RowWitness.topPrime 13451 },
  { lower := 13524, upper := 13528, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13783, witness := RowWitness.topPrime 13711 },
  { lower := 13784, upper := 13790, witness := RowWitness.topPrime 13781 },
  { lower := 14336, upper := 14369, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14441, witness := RowWitness.topPrime 14369 },
  { lower := 14442, upper := 14478, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14652, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14811, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15072, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15193, witness := RowWitness.topPrime 15121 },
  { lower := 15194, upper := 15201, witness := RowWitness.topPrime 15193 },
  { lower := 15360, upper := 15431, witness := RowWitness.topPrime 15359 },
  { lower := 15432, upper := 15448, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16045, witness := RowWitness.topPrime 15973 },
  { lower := 16046, upper := 16051, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16409, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16456, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16859, witness := RowWitness.topPrime 16787 },
  { lower := 16860, upper := 16892, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17370, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17473, witness := RowWitness.topPrime 17401 },
  { lower := 17474, upper := 17477, witness := RowWitness.topPrime 17471 },
  { lower := 17672, upper := 17733, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18297, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18553, witness := RowWitness.topPrime 18481 },
  { lower := 18554, upper := 18563, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18677, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19279, witness := RowWitness.topPrime 19207 },
  { lower := 19280, upper := 19280, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19733, witness := RowWitness.topPrime 19661 },
  { lower := 19734, upper := 19735, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20233, witness := RowWitness.topPrime 20161 },
  { lower := 20234, upper := 20253, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20552, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20607, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21935, witness := RowWitness.topPrime 21863 },
  { lower := 21936, upper := 21947, witness := RowWitness.topPrime 21929 },
  { lower := 21970, upper := 21976, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22517, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22544, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24030, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24101, witness := RowWitness.topPrime 24029 },
  { lower := 24102, upper := 24109, witness := RowWitness.topPrime 24097 },
  { lower := 24334, upper := 24401, witness := RowWitness.topPrime 24329 },
  { lower := 24402, upper := 24439, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24637, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24648, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25261, witness := RowWitness.topPrime 25189 },
  { lower := 25262, upper := 25277, witness := RowWitness.topPrime 25261 },
  { lower := 25281, upper := 25287, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25333, witness := RowWitness.topPrime 25261 },
  { lower := 25334, upper := 25353, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26083, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26436, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26669, witness := RowWitness.topPrime 26597 },
  { lower := 26670, upper := 26692, witness := RowWitness.topPrime 26669 },
  { lower := 26934, upper := 26968, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27452, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28162, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28633, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28744, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28789, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28821, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29840, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30318, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30792, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30971, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31285, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31469, witness := RowWitness.topPrime 31397 },
  { lower := 31470, upper := 31495, witness := RowWitness.topPrime 31469 },
  { lower := 32805, upper := 32840, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33686, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34447, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34879, witness := RowWitness.topPrime 34807 },
  { lower := 34880, upper := 34882, witness := RowWitness.topPrime 34877 },
  { lower := 35152, upper := 35203, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35363, witness := RowWitness.topPrime 35291 },
  { lower := 35364, upper := 35373, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36569, witness := RowWitness.topPrime 36497 },
  { lower := 36570, upper := 36573, witness := RowWitness.topPrime 36563 },
  { lower := 36982, upper := 37051, witness := RowWitness.topPrime 36979 },
  { lower := 37052, upper := 37052, witness := RowWitness.topPrime 37049 },
  { lower := 37210, upper := 37251, witness := RowWitness.topPrime 37201 },
  { lower := 37553, upper := 37572, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39395, witness := RowWitness.topPrime 39323 },
  { lower := 39396, upper := 39398, witness := RowWitness.topPrime 39383 },
  { lower := 40678, upper := 40697, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41003, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41815, witness := RowWitness.topPrime 41771 },
  { lower := 44944, upper := 44962, witness := RowWitness.topPrime 44939 },
  { lower := 48734, upper := 48740, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48806, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49202, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50482, witness := RowWitness.topPrime 50417 },
  { lower := 59582, upper := 59608, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65593, witness := RowWitness.topPrime 65521 },
  { lower := 65594, upper := 65605, witness := RowWitness.topPrime 65587 },
  { lower := 73205, upper := 73239, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73767, witness := RowWitness.topPrime 73727 },
  { lower := 85697, upper := 85755, witness := RowWitness.topPrime 85691 },
  { lower := 137842, upper := 137853, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327752, witness := RowWitness.topPrime 327689 }
]

def row073_layers : List CoverLayer := [
  { lower := 5256, upper := 10512, M := 29 },
  { lower := 10512, upper := 21024, M := 25 },
  { lower := 21024, upper := 42048, M := 22 },
  { lower := 42048, upper := 84096, M := 19 },
  { lower := 84096, upper := 168192, M := 17 },
  { lower := 168192, upper := 336384, M := 14 },
  { lower := 336384, upper := 672768, M := 13 },
  { lower := 672768, upper := 1345536, M := 11 },
  { lower := 1345536, upper := 2691072, M := 10 },
  { lower := 2691072, upper := 5382144, M := 8 },
  { lower := 5382144, upper := 10764288, M := 7 },
  { lower := 10764288, upper := 21528576, M := 6 },
  { lower := 21528576, upper := 43057152, M := 6 },
  { lower := 43057152, upper := 86114304, M := 5 },
  { lower := 86114304, upper := 172228608, M := 4 },
  { lower := 172228608, upper := 344457216, M := 4 },
  { lower := 344457216, upper := 688914432, M := 3 },
  { lower := 688914432, upper := 1377828864, M := 3 },
  { lower := 1377828864, upper := 2755657728, M := 3 },
  { lower := 2755657728, upper := 5511315456, M := 2 },
  { lower := 5511315456, upper := 11022630912, M := 2 },
  { lower := 11022630912, upper := 22045261824, M := 2 },
  { lower := 22045261824, upper := 44090523648, M := 2 },
  { lower := 44090523648, upper := 88181047296, M := 2 },
  { lower := 88181047296, upper := 100000000000, M := 1 }
]

def row073 : FiniteCoverRow := {
  height := row073_height,
  goods := row073_goods,
  layers := row073_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good000_checked :
    goodSegmentCheck 73 24 50
      { lower := 148, upper := 211, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good001_checked :
    goodSegmentCheck 73 24 50
      { lower := 212, upper := 283, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good002_checked :
    goodSegmentCheck 73 24 50
      { lower := 284, upper := 355, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good003_checked :
    goodSegmentCheck 73 24 50
      { lower := 356, upper := 425, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good004_checked :
    goodSegmentCheck 73 24 50
      { lower := 426, upper := 493, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good005_checked :
    goodSegmentCheck 73 24 50
      { lower := 494, upper := 563, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good006_checked :
    goodSegmentCheck 73 24 50
      { lower := 564, upper := 635, witness := RowWitness.topPrime 563 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good007_checked :
    goodSegmentCheck 73 24 50
      { lower := 636, upper := 703, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good008_checked :
    goodSegmentCheck 73 24 50
      { lower := 704, upper := 773, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good009_checked :
    goodSegmentCheck 73 24 50
      { lower := 774, upper := 845, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good010_checked :
    goodSegmentCheck 73 24 50
      { lower := 846, upper := 911, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good011_checked :
    goodSegmentCheck 73 24 50
      { lower := 912, upper := 983, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good012_checked :
    goodSegmentCheck 73 24 50
      { lower := 984, upper := 1055, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good013_checked :
    goodSegmentCheck 73 24 50
      { lower := 1056, upper := 1123, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good014_checked :
    goodSegmentCheck 73 24 50
      { lower := 1124, upper := 1195, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good015_checked :
    goodSegmentCheck 73 24 50
      { lower := 1196, upper := 1265, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good016_checked :
    goodSegmentCheck 73 24 50
      { lower := 1266, upper := 1331, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good017_checked :
    goodSegmentCheck 73 24 50
      { lower := 1332, upper := 1399, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good018_checked :
    goodSegmentCheck 73 24 50
      { lower := 1400, upper := 1471, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good019_checked :
    goodSegmentCheck 73 24 50
      { lower := 1472, upper := 1543, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good020_checked :
    goodSegmentCheck 73 24 50
      { lower := 1544, upper := 1615, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good021_checked :
    goodSegmentCheck 73 24 50
      { lower := 1616, upper := 1685, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good022_checked :
    goodSegmentCheck 73 24 50
      { lower := 1686, upper := 1741, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good023_checked :
    goodSegmentCheck 73 24 50
      { lower := 1742, upper := 1813, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good024_checked :
    goodSegmentCheck 73 24 50
      { lower := 1814, upper := 1883, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good025_checked :
    goodSegmentCheck 73 24 50
      { lower := 1884, upper := 1951, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good026_checked :
    goodSegmentCheck 73 24 50
      { lower := 1952, upper := 2023, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good027_checked :
    goodSegmentCheck 73 24 50
      { lower := 2024, upper := 2089, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good028_checked :
    goodSegmentCheck 73 24 50
      { lower := 2090, upper := 2161, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good029_checked :
    goodSegmentCheck 73 24 50
      { lower := 2162, upper := 2233, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good030_checked :
    goodSegmentCheck 73 24 50
      { lower := 2234, upper := 2293, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good031_checked :
    goodSegmentCheck 73 24 50
      { lower := 2294, upper := 2365, witness := RowWitness.topPrime 2293 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good032_checked :
    goodSegmentCheck 73 24 50
      { lower := 2366, upper := 2429, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good033_checked :
    goodSegmentCheck 73 24 50
      { lower := 2430, upper := 2495, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good034_checked :
    goodSegmentCheck 73 24 50
      { lower := 2496, upper := 2549, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good035_checked :
    goodSegmentCheck 73 24 50
      { lower := 2550, upper := 2621, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good036_checked :
    goodSegmentCheck 73 24 50
      { lower := 2622, upper := 2693, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good037_checked :
    goodSegmentCheck 73 24 50
      { lower := 2694, upper := 2765, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good038_checked :
    goodSegmentCheck 73 24 50
      { lower := 2766, upper := 2825, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good039_checked :
    goodSegmentCheck 73 24 50
      { lower := 2826, upper := 2891, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good040_checked :
    goodSegmentCheck 73 24 50
      { lower := 2892, upper := 2959, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good041_checked :
    goodSegmentCheck 73 24 50
      { lower := 2960, upper := 3029, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good042_checked :
    goodSegmentCheck 73 24 50
      { lower := 3030, upper := 3095, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good043_checked :
    goodSegmentCheck 73 24 50
      { lower := 3096, upper := 3161, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good044_checked :
    goodSegmentCheck 73 24 50
      { lower := 3162, upper := 3209, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good045_checked :
    goodSegmentCheck 73 24 50
      { lower := 3210, upper := 3281, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good046_checked :
    goodSegmentCheck 73 24 50
      { lower := 3282, upper := 3343, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good047_checked :
    goodSegmentCheck 73 24 50
      { lower := 3344, upper := 3415, witness := RowWitness.topPrime 3343 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good048_checked :
    goodSegmentCheck 73 24 50
      { lower := 3416, upper := 3485, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good049_checked :
    goodSegmentCheck 73 24 50
      { lower := 3486, upper := 3541, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good050_checked :
    goodSegmentCheck 73 24 50
      { lower := 3542, upper := 3613, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good051_checked :
    goodSegmentCheck 73 24 50
      { lower := 3614, upper := 3685, witness := RowWitness.topPrime 3613 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good052_checked :
    goodSegmentCheck 73 24 50
      { lower := 3686, upper := 3749, witness := RowWitness.topPrime 3677 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good053_checked :
    goodSegmentCheck 73 24 50
      { lower := 3750, upper := 3811, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good054_checked :
    goodSegmentCheck 73 24 50
      { lower := 3812, upper := 3875, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good055_checked :
    goodSegmentCheck 73 24 50
      { lower := 3876, upper := 3935, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good056_checked :
    goodSegmentCheck 73 24 50
      { lower := 3936, upper := 4003, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good057_checked :
    goodSegmentCheck 73 24 50
      { lower := 4004, upper := 4075, witness := RowWitness.topPrime 4003 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good058_checked :
    goodSegmentCheck 73 24 50
      { lower := 4076, upper := 4145, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good059_checked :
    goodSegmentCheck 73 24 50
      { lower := 4146, upper := 4211, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good060_checked :
    goodSegmentCheck 73 24 50
      { lower := 4212, upper := 4283, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good061_checked :
    goodSegmentCheck 73 24 50
      { lower := 4284, upper := 4355, witness := RowWitness.topPrime 4283 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good062_checked :
    goodSegmentCheck 73 24 50
      { lower := 4356, upper := 4421, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good063_checked :
    goodSegmentCheck 73 24 50
      { lower := 4422, upper := 4493, witness := RowWitness.topPrime 4421 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good064_checked :
    goodSegmentCheck 73 24 50
      { lower := 4494, upper := 4565, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good065_checked :
    goodSegmentCheck 73 24 50
      { lower := 4566, upper := 4633, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good066_checked :
    goodSegmentCheck 73 24 50
      { lower := 4634, upper := 4693, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good067_checked :
    goodSegmentCheck 73 24 50
      { lower := 4694, upper := 4763, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good068_checked :
    goodSegmentCheck 73 24 50
      { lower := 4764, upper := 4831, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good069_checked :
    goodSegmentCheck 73 24 50
      { lower := 4832, upper := 4903, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good070_checked :
    goodSegmentCheck 73 24 50
      { lower := 4904, upper := 4975, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good071_checked :
    goodSegmentCheck 73 24 50
      { lower := 4976, upper := 5045, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good072_checked :
    goodSegmentCheck 73 24 50
      { lower := 5046, upper := 5111, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good073_checked :
    goodSegmentCheck 73 24 50
      { lower := 5112, upper := 5179, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good074_checked :
    goodSegmentCheck 73 24 50
      { lower := 5180, upper := 5251, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good075_checked :
    goodSegmentCheck 73 24 50
      { lower := 5252, upper := 5255, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good076_checked :
    goodSegmentCheck 73 24 50
      { lower := 5324, upper := 5395, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good077_checked :
    goodSegmentCheck 73 24 50
      { lower := 5396, upper := 5448, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good078_checked :
    goodSegmentCheck 73 24 50
      { lower := 5476, upper := 5543, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good079_checked :
    goodSegmentCheck 73 24 50
      { lower := 5544, upper := 5563, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good080_checked :
    goodSegmentCheck 73 24 50
      { lower := 5589, upper := 5653, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good081_checked :
    goodSegmentCheck 73 24 50
      { lower := 5654, upper := 5697, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good082_checked :
    goodSegmentCheck 73 24 50
      { lower := 5776, upper := 5821, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good083_checked :
    goodSegmentCheck 73 24 50
      { lower := 5822, upper := 5893, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good084_checked :
    goodSegmentCheck 73 24 50
      { lower := 5894, upper := 5953, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good085_checked :
    goodSegmentCheck 73 24 50
      { lower := 5954, upper := 5959, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good086_checked :
    goodSegmentCheck 73 24 50
      { lower := 6075, upper := 6145, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good087_checked :
    goodSegmentCheck 73 24 50
      { lower := 6146, upper := 6215, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good088_checked :
    goodSegmentCheck 73 24 50
      { lower := 6216, upper := 6216, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good089_checked :
    goodSegmentCheck 73 24 50
      { lower := 6318, upper := 6322, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good090_checked :
    goodSegmentCheck 73 24 50
      { lower := 6348, upper := 6415, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good091_checked :
    goodSegmentCheck 73 24 50
      { lower := 6416, upper := 6430, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good092_checked :
    goodSegmentCheck 73 24 50
      { lower := 6517, upper := 6563, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good093_checked :
    goodSegmentCheck 73 24 50
      { lower := 6564, upper := 6589, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good094_checked :
    goodSegmentCheck 73 24 50
      { lower := 6591, upper := 6653, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good095_checked :
    goodSegmentCheck 73 24 50
      { lower := 6654, upper := 6725, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good096_checked :
    goodSegmentCheck 73 24 50
      { lower := 6726, upper := 6791, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good097_checked :
    goodSegmentCheck 73 24 50
      { lower := 6792, upper := 6799, witness := RowWitness.topPrime 6791 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good098_checked :
    goodSegmentCheck 73 24 50
      { lower := 6845, upper := 6913, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good099_checked :
    goodSegmentCheck 73 24 50
      { lower := 6914, upper := 6983, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good100_checked :
    goodSegmentCheck 73 24 50
      { lower := 6984, upper := 7008, witness := RowWitness.topPrime 6983 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good101_checked :
    goodSegmentCheck 73 24 50
      { lower := 7203, upper := 7265, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good102_checked :
    goodSegmentCheck 73 24 50
      { lower := 7266, upper := 7297, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good103_checked :
    goodSegmentCheck 73 24 50
      { lower := 7406, upper := 7465, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good104_checked :
    goodSegmentCheck 73 24 50
      { lower := 7466, upper := 7496, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good105_checked :
    goodSegmentCheck 73 24 50
      { lower := 7500, upper := 7571, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good106_checked :
    goodSegmentCheck 73 24 50
      { lower := 7572, upper := 7633, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good107_checked :
    goodSegmentCheck 73 24 50
      { lower := 7634, upper := 7641, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good108_checked :
    goodSegmentCheck 73 24 50
      { lower := 7688, upper := 7752, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good109_checked :
    goodSegmentCheck 73 24 50
      { lower := 7935, upper := 8005, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good110_checked :
    goodSegmentCheck 73 24 50
      { lower := 8006, upper := 8014, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good111_checked :
    goodSegmentCheck 73 24 50
      { lower := 8019, upper := 8058, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good112_checked :
    goodSegmentCheck 73 24 50
      { lower := 8125, upper := 8164, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good113_checked :
    goodSegmentCheck 73 24 50
      { lower := 8192, upper := 8197, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good114_checked :
    goodSegmentCheck 73 24 50
      { lower := 8214, upper := 8281, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good115_checked :
    goodSegmentCheck 73 24 50
      { lower := 8282, upper := 8286, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good116_checked :
    goodSegmentCheck 73 24 50
      { lower := 8303, upper := 8304, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good117_checked :
    goodSegmentCheck 73 24 50
      { lower := 8405, upper := 8461, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good118_checked :
    goodSegmentCheck 73 24 50
      { lower := 8462, upper := 8499, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good119_checked :
    goodSegmentCheck 73 24 50
      { lower := 8664, upper := 8735, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good120_checked :
    goodSegmentCheck 73 24 50
      { lower := 8736, upper := 8736, witness := RowWitness.topPrime 8731 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good121_checked :
    goodSegmentCheck 73 24 50
      { lower := 8748, upper := 8819, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good122_checked :
    goodSegmentCheck 73 24 50
      { lower := 8820, upper := 8822, witness := RowWitness.topPrime 8819 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good123_checked :
    goodSegmentCheck 73 24 50
      { lower := 8836, upper := 8860, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good124_checked :
    goodSegmentCheck 73 24 50
      { lower := 8978, upper := 8990, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good125_checked :
    goodSegmentCheck 73 24 50
      { lower := 8993, upper := 9043, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good126_checked :
    goodSegmentCheck 73 24 50
      { lower := 9044, upper := 9065, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good127_checked :
    goodSegmentCheck 73 24 50
      { lower := 9245, upper := 9313, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good128_checked :
    goodSegmentCheck 73 24 50
      { lower := 9314, upper := 9333, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good129_checked :
    goodSegmentCheck 73 24 50
      { lower := 9375, upper := 9443, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good130_checked :
    goodSegmentCheck 73 24 50
      { lower := 9444, upper := 9447, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good131_checked :
    goodSegmentCheck 73 24 50
      { lower := 9522, upper := 9549, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good132_checked :
    goodSegmentCheck 73 24 50
      { lower := 9583, upper := 9594, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good133_checked :
    goodSegmentCheck 73 24 50
      { lower := 9604, upper := 9673, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good134_checked :
    goodSegmentCheck 73 24 50
      { lower := 9674, upper := 9676, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good135_checked :
    goodSegmentCheck 73 24 50
      { lower := 9747, upper := 9800, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good136_checked :
    goodSegmentCheck 73 24 50
      { lower := 10000, upper := 10019, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good137_checked :
    goodSegmentCheck 73 24 50
      { lower := 10051, upper := 10072, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good138_checked :
    goodSegmentCheck 73 24 50
      { lower := 10082, upper := 10151, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good139_checked :
    goodSegmentCheck 73 24 50
      { lower := 10152, upper := 10164, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good140_checked :
    goodSegmentCheck 73 24 50
      { lower := 10240, upper := 10278, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good141_checked :
    goodSegmentCheck 73 24 50
      { lower := 10469, upper := 10511, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good142_checked :
    goodSegmentCheck 73 24 50
      { lower := 10580, upper := 10639, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good143_checked :
    goodSegmentCheck 73 24 50
      { lower := 10640, upper := 10697, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good144_checked :
    goodSegmentCheck 73 24 50
      { lower := 10935, upper := 10981, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good145_checked :
    goodSegmentCheck 73 24 50
      { lower := 10982, upper := 11024, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good146_checked :
    goodSegmentCheck 73 24 50
      { lower := 11045, upper := 11057, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good147_checked :
    goodSegmentCheck 73 24 50
      { lower := 11094, upper := 11165, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good148_checked :
    goodSegmentCheck 73 24 50
      { lower := 11166, upper := 11181, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good149_checked :
    goodSegmentCheck 73 24 50
      { lower := 11250, upper := 11315, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good150_checked :
    goodSegmentCheck 73 24 50
      { lower := 11316, upper := 11322, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good151_checked :
    goodSegmentCheck 73 24 50
      { lower := 11664, upper := 11710, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good152_checked :
    goodSegmentCheck 73 24 50
      { lower := 11774, upper := 11815, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good153_checked :
    goodSegmentCheck 73 24 50
      { lower := 11816, upper := 11846, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good154_checked :
    goodSegmentCheck 73 24 50
      { lower := 12005, upper := 12051, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good155_checked :
    goodSegmentCheck 73 24 50
      { lower := 12321, upper := 12360, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good156_checked :
    goodSegmentCheck 73 24 50
      { lower := 12393, upper := 12393, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good157_checked :
    goodSegmentCheck 73 24 50
      { lower := 12500, upper := 12565, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good158_checked :
    goodSegmentCheck 73 24 50
      { lower := 13125, upper := 13193, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good159_checked :
    goodSegmentCheck 73 24 50
      { lower := 13194, upper := 13197, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good160_checked :
    goodSegmentCheck 73 24 50
      { lower := 13225, upper := 13291, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good161_checked :
    goodSegmentCheck 73 24 50
      { lower := 13292, upper := 13297, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good162_checked :
    goodSegmentCheck 73 24 50
      { lower := 13310, upper := 13381, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good163_checked :
    goodSegmentCheck 73 24 50
      { lower := 13382, upper := 13382, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good164_checked :
    goodSegmentCheck 73 24 50
      { lower := 13454, upper := 13523, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good165_checked :
    goodSegmentCheck 73 24 50
      { lower := 13524, upper := 13528, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good166_checked :
    goodSegmentCheck 73 24 50
      { lower := 13718, upper := 13783, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good167_checked :
    goodSegmentCheck 73 24 50
      { lower := 13784, upper := 13790, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good168_checked :
    goodSegmentCheck 73 24 50
      { lower := 14336, upper := 14369, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good169_checked :
    goodSegmentCheck 73 24 50
      { lower := 14375, upper := 14441, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good170_checked :
    goodSegmentCheck 73 24 50
      { lower := 14442, upper := 14478, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good171_checked :
    goodSegmentCheck 73 24 50
      { lower := 14641, upper := 14652, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good172_checked :
    goodSegmentCheck 73 24 50
      { lower := 14792, upper := 14811, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good173_checked :
    goodSegmentCheck 73 24 50
      { lower := 15059, upper := 15072, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good174_checked :
    goodSegmentCheck 73 24 50
      { lower := 15123, upper := 15193, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good175_checked :
    goodSegmentCheck 73 24 50
      { lower := 15194, upper := 15201, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good176_checked :
    goodSegmentCheck 73 24 50
      { lower := 15360, upper := 15431, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good177_checked :
    goodSegmentCheck 73 24 50
      { lower := 15432, upper := 15448, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good178_checked :
    goodSegmentCheck 73 24 50
      { lower := 15979, upper := 16045, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good179_checked :
    goodSegmentCheck 73 24 50
      { lower := 16046, upper := 16051, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good180_checked :
    goodSegmentCheck 73 24 50
      { lower := 16384, upper := 16409, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good181_checked :
    goodSegmentCheck 73 24 50
      { lower := 16428, upper := 16456, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good182_checked :
    goodSegmentCheck 73 24 50
      { lower := 16807, upper := 16859, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good183_checked :
    goodSegmentCheck 73 24 50
      { lower := 16860, upper := 16892, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good184_checked :
    goodSegmentCheck 73 24 50
      { lower := 17303, upper := 17370, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good185_checked :
    goodSegmentCheck 73 24 50
      { lower := 17408, upper := 17473, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good186_checked :
    goodSegmentCheck 73 24 50
      { lower := 17474, upper := 17477, witness := RowWitness.topPrime 17471 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good187_checked :
    goodSegmentCheck 73 24 50
      { lower := 17672, upper := 17733, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good188_checked :
    goodSegmentCheck 73 24 50
      { lower := 18259, upper := 18297, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good189_checked :
    goodSegmentCheck 73 24 50
      { lower := 18490, upper := 18553, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good190_checked :
    goodSegmentCheck 73 24 50
      { lower := 18554, upper := 18563, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good191_checked :
    goodSegmentCheck 73 24 50
      { lower := 18634, upper := 18677, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good192_checked :
    goodSegmentCheck 73 24 50
      { lower := 19208, upper := 19279, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good193_checked :
    goodSegmentCheck 73 24 50
      { lower := 19280, upper := 19280, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good194_checked :
    goodSegmentCheck 73 24 50
      { lower := 19663, upper := 19733, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good195_checked :
    goodSegmentCheck 73 24 50
      { lower := 19734, upper := 19735, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good196_checked :
    goodSegmentCheck 73 24 50
      { lower := 20172, upper := 20233, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good197_checked :
    goodSegmentCheck 73 24 50
      { lower := 20234, upper := 20253, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good198_checked :
    goodSegmentCheck 73 24 50
      { lower := 20535, upper := 20552, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good199_checked :
    goodSegmentCheck 73 24 50
      { lower := 20577, upper := 20607, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good200_checked :
    goodSegmentCheck 73 24 50
      { lower := 21870, upper := 21935, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good201_checked :
    goodSegmentCheck 73 24 50
      { lower := 21936, upper := 21947, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good202_checked :
    goodSegmentCheck 73 24 50
      { lower := 21970, upper := 21976, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good203_checked :
    goodSegmentCheck 73 24 50
      { lower := 22472, upper := 22517, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good204_checked :
    goodSegmentCheck 73 24 50
      { lower := 22528, upper := 22544, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good205_checked :
    goodSegmentCheck 73 24 50
      { lower := 24010, upper := 24030, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good206_checked :
    goodSegmentCheck 73 24 50
      { lower := 24037, upper := 24101, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good207_checked :
    goodSegmentCheck 73 24 50
      { lower := 24102, upper := 24109, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good208_checked :
    goodSegmentCheck 73 24 50
      { lower := 24334, upper := 24401, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good209_checked :
    goodSegmentCheck 73 24 50
      { lower := 24402, upper := 24439, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good210_checked :
    goodSegmentCheck 73 24 50
      { lower := 24576, upper := 24637, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good211_checked :
    goodSegmentCheck 73 24 50
      { lower := 24642, upper := 24648, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good212_checked :
    goodSegmentCheck 73 24 50
      { lower := 25215, upper := 25261, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good213_checked :
    goodSegmentCheck 73 24 50
      { lower := 25262, upper := 25277, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good214_checked :
    goodSegmentCheck 73 24 50
      { lower := 25281, upper := 25287, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good215_checked :
    goodSegmentCheck 73 24 50
      { lower := 25289, upper := 25333, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good216_checked :
    goodSegmentCheck 73 24 50
      { lower := 25334, upper := 25353, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good217_checked :
    goodSegmentCheck 73 24 50
      { lower := 26047, upper := 26083, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good218_checked :
    goodSegmentCheck 73 24 50
      { lower := 26411, upper := 26436, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good219_checked :
    goodSegmentCheck 73 24 50
      { lower := 26624, upper := 26669, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good220_checked :
    goodSegmentCheck 73 24 50
      { lower := 26670, upper := 26692, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good221_checked :
    goodSegmentCheck 73 24 50
      { lower := 26934, upper := 26968, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good222_checked :
    goodSegmentCheck 73 24 50
      { lower := 27436, upper := 27452, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good223_checked :
    goodSegmentCheck 73 24 50
      { lower := 28125, upper := 28162, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good224_checked :
    goodSegmentCheck 73 24 50
      { lower := 28577, upper := 28633, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good225_checked :
    goodSegmentCheck 73 24 50
      { lower := 28717, upper := 28744, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good226_checked :
    goodSegmentCheck 73 24 50
      { lower := 28749, upper := 28789, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good227_checked :
    goodSegmentCheck 73 24 50
      { lower := 28812, upper := 28821, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good228_checked :
    goodSegmentCheck 73 24 50
      { lower := 29791, upper := 29840, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good229_checked :
    goodSegmentCheck 73 24 50
      { lower := 30258, upper := 30318, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good230_checked :
    goodSegmentCheck 73 24 50
      { lower := 30758, upper := 30792, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good231_checked :
    goodSegmentCheck 73 24 50
      { lower := 30926, upper := 30971, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good232_checked :
    goodSegmentCheck 73 24 50
      { lower := 31250, upper := 31285, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good233_checked :
    goodSegmentCheck 73 24 50
      { lower := 31433, upper := 31469, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good234_checked :
    goodSegmentCheck 73 24 50
      { lower := 31470, upper := 31495, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good235_checked :
    goodSegmentCheck 73 24 50
      { lower := 32805, upper := 32840, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good236_checked :
    goodSegmentCheck 73 24 50
      { lower := 33620, upper := 33686, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good237_checked :
    goodSegmentCheck 73 24 50
      { lower := 34391, upper := 34447, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good238_checked :
    goodSegmentCheck 73 24 50
      { lower := 34816, upper := 34879, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good239_checked :
    goodSegmentCheck 73 24 50
      { lower := 34880, upper := 34882, witness := RowWitness.topPrime 34877 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good240_checked :
    goodSegmentCheck 73 24 50
      { lower := 35152, upper := 35203, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good241_checked :
    goodSegmentCheck 73 24 50
      { lower := 35301, upper := 35363, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good242_checked :
    goodSegmentCheck 73 24 50
      { lower := 35364, upper := 35373, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good243_checked :
    goodSegmentCheck 73 24 50
      { lower := 36517, upper := 36569, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good244_checked :
    goodSegmentCheck 73 24 50
      { lower := 36570, upper := 36573, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good245_checked :
    goodSegmentCheck 73 24 50
      { lower := 36982, upper := 37051, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good246_checked :
    goodSegmentCheck 73 24 50
      { lower := 37052, upper := 37052, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good247_checked :
    goodSegmentCheck 73 24 50
      { lower := 37210, upper := 37251, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good248_checked :
    goodSegmentCheck 73 24 50
      { lower := 37553, upper := 37572, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good249_checked :
    goodSegmentCheck 73 24 50
      { lower := 39326, upper := 39395, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good250_checked :
    goodSegmentCheck 73 24 50
      { lower := 39396, upper := 39398, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good251_checked :
    goodSegmentCheck 73 24 50
      { lower := 40678, upper := 40697, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good252_checked :
    goodSegmentCheck 73 24 50
      { lower := 40960, upper := 41003, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good253_checked :
    goodSegmentCheck 73 24 50
      { lower := 41772, upper := 41815, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good254_checked :
    goodSegmentCheck 73 24 50
      { lower := 44944, upper := 44962, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good255_checked :
    goodSegmentCheck 73 24 50
      { lower := 48734, upper := 48740, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_good256_checked :
    goodSegmentCheck 73 24 50
      { lower := 48778, upper := 48806, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good257_checked :
    goodSegmentCheck 73 24 50
      { lower := 49152, upper := 49202, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good258_checked :
    goodSegmentCheck 73 24 50
      { lower := 50421, upper := 50482, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good259_checked :
    goodSegmentCheck 73 24 50
      { lower := 59582, upper := 59608, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good260_checked :
    goodSegmentCheck 73 24 50
      { lower := 65536, upper := 65593, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good261_checked :
    goodSegmentCheck 73 24 50
      { lower := 65594, upper := 65605, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good262_checked :
    goodSegmentCheck 73 24 50
      { lower := 73205, upper := 73239, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good263_checked :
    goodSegmentCheck 73 24 50
      { lower := 73728, upper := 73767, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good264_checked :
    goodSegmentCheck 73 24 50
      { lower := 85697, upper := 85755, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good265_checked :
    goodSegmentCheck 73 24 50
      { lower := 137842, upper := 137853, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row073_good266_checked :
    goodSegmentCheck 73 24 50
      { lower := 327701, upper := 327752, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 73) (r := 24) (s := 50) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_good266_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_goods_checked :
    row073.goods.all (goodSegmentCheck row073.height.i row073.height.r row073.height.s) = true := by
  change row073_goods.all (goodSegmentCheck 73 24 50) = true
  simp only [row073_goods, List.all_cons, List.all_nil,
    row073_good000_checked,
    row073_good001_checked,
    row073_good002_checked,
    row073_good003_checked,
    row073_good004_checked,
    row073_good005_checked,
    row073_good006_checked,
    row073_good007_checked,
    row073_good008_checked,
    row073_good009_checked,
    row073_good010_checked,
    row073_good011_checked,
    row073_good012_checked,
    row073_good013_checked,
    row073_good014_checked,
    row073_good015_checked,
    row073_good016_checked,
    row073_good017_checked,
    row073_good018_checked,
    row073_good019_checked,
    row073_good020_checked,
    row073_good021_checked,
    row073_good022_checked,
    row073_good023_checked,
    row073_good024_checked,
    row073_good025_checked,
    row073_good026_checked,
    row073_good027_checked,
    row073_good028_checked,
    row073_good029_checked,
    row073_good030_checked,
    row073_good031_checked,
    row073_good032_checked,
    row073_good033_checked,
    row073_good034_checked,
    row073_good035_checked,
    row073_good036_checked,
    row073_good037_checked,
    row073_good038_checked,
    row073_good039_checked,
    row073_good040_checked,
    row073_good041_checked,
    row073_good042_checked,
    row073_good043_checked,
    row073_good044_checked,
    row073_good045_checked,
    row073_good046_checked,
    row073_good047_checked,
    row073_good048_checked,
    row073_good049_checked,
    row073_good050_checked,
    row073_good051_checked,
    row073_good052_checked,
    row073_good053_checked,
    row073_good054_checked,
    row073_good055_checked,
    row073_good056_checked,
    row073_good057_checked,
    row073_good058_checked,
    row073_good059_checked,
    row073_good060_checked,
    row073_good061_checked,
    row073_good062_checked,
    row073_good063_checked,
    row073_good064_checked,
    row073_good065_checked,
    row073_good066_checked,
    row073_good067_checked,
    row073_good068_checked,
    row073_good069_checked,
    row073_good070_checked,
    row073_good071_checked,
    row073_good072_checked,
    row073_good073_checked,
    row073_good074_checked,
    row073_good075_checked,
    row073_good076_checked,
    row073_good077_checked,
    row073_good078_checked,
    row073_good079_checked,
    row073_good080_checked,
    row073_good081_checked,
    row073_good082_checked,
    row073_good083_checked,
    row073_good084_checked,
    row073_good085_checked,
    row073_good086_checked,
    row073_good087_checked,
    row073_good088_checked,
    row073_good089_checked,
    row073_good090_checked,
    row073_good091_checked,
    row073_good092_checked,
    row073_good093_checked,
    row073_good094_checked,
    row073_good095_checked,
    row073_good096_checked,
    row073_good097_checked,
    row073_good098_checked,
    row073_good099_checked,
    row073_good100_checked,
    row073_good101_checked,
    row073_good102_checked,
    row073_good103_checked,
    row073_good104_checked,
    row073_good105_checked,
    row073_good106_checked,
    row073_good107_checked,
    row073_good108_checked,
    row073_good109_checked,
    row073_good110_checked,
    row073_good111_checked,
    row073_good112_checked,
    row073_good113_checked,
    row073_good114_checked,
    row073_good115_checked,
    row073_good116_checked,
    row073_good117_checked,
    row073_good118_checked,
    row073_good119_checked,
    row073_good120_checked,
    row073_good121_checked,
    row073_good122_checked,
    row073_good123_checked,
    row073_good124_checked,
    row073_good125_checked,
    row073_good126_checked,
    row073_good127_checked,
    row073_good128_checked,
    row073_good129_checked,
    row073_good130_checked,
    row073_good131_checked,
    row073_good132_checked,
    row073_good133_checked,
    row073_good134_checked,
    row073_good135_checked,
    row073_good136_checked,
    row073_good137_checked,
    row073_good138_checked,
    row073_good139_checked,
    row073_good140_checked,
    row073_good141_checked,
    row073_good142_checked,
    row073_good143_checked,
    row073_good144_checked,
    row073_good145_checked,
    row073_good146_checked,
    row073_good147_checked,
    row073_good148_checked,
    row073_good149_checked,
    row073_good150_checked,
    row073_good151_checked,
    row073_good152_checked,
    row073_good153_checked,
    row073_good154_checked,
    row073_good155_checked,
    row073_good156_checked,
    row073_good157_checked,
    row073_good158_checked,
    row073_good159_checked,
    row073_good160_checked,
    row073_good161_checked,
    row073_good162_checked,
    row073_good163_checked,
    row073_good164_checked,
    row073_good165_checked,
    row073_good166_checked,
    row073_good167_checked,
    row073_good168_checked,
    row073_good169_checked,
    row073_good170_checked,
    row073_good171_checked,
    row073_good172_checked,
    row073_good173_checked,
    row073_good174_checked,
    row073_good175_checked,
    row073_good176_checked,
    row073_good177_checked,
    row073_good178_checked,
    row073_good179_checked,
    row073_good180_checked,
    row073_good181_checked,
    row073_good182_checked,
    row073_good183_checked,
    row073_good184_checked,
    row073_good185_checked,
    row073_good186_checked,
    row073_good187_checked,
    row073_good188_checked,
    row073_good189_checked,
    row073_good190_checked,
    row073_good191_checked,
    row073_good192_checked,
    row073_good193_checked,
    row073_good194_checked,
    row073_good195_checked,
    row073_good196_checked,
    row073_good197_checked,
    row073_good198_checked,
    row073_good199_checked,
    row073_good200_checked,
    row073_good201_checked,
    row073_good202_checked,
    row073_good203_checked,
    row073_good204_checked,
    row073_good205_checked,
    row073_good206_checked,
    row073_good207_checked,
    row073_good208_checked,
    row073_good209_checked,
    row073_good210_checked,
    row073_good211_checked,
    row073_good212_checked,
    row073_good213_checked,
    row073_good214_checked,
    row073_good215_checked,
    row073_good216_checked,
    row073_good217_checked,
    row073_good218_checked,
    row073_good219_checked,
    row073_good220_checked,
    row073_good221_checked,
    row073_good222_checked,
    row073_good223_checked,
    row073_good224_checked,
    row073_good225_checked,
    row073_good226_checked,
    row073_good227_checked,
    row073_good228_checked,
    row073_good229_checked,
    row073_good230_checked,
    row073_good231_checked,
    row073_good232_checked,
    row073_good233_checked,
    row073_good234_checked,
    row073_good235_checked,
    row073_good236_checked,
    row073_good237_checked,
    row073_good238_checked,
    row073_good239_checked,
    row073_good240_checked,
    row073_good241_checked,
    row073_good242_checked,
    row073_good243_checked,
    row073_good244_checked,
    row073_good245_checked,
    row073_good246_checked,
    row073_good247_checked,
    row073_good248_checked,
    row073_good249_checked,
    row073_good250_checked,
    row073_good251_checked,
    row073_good252_checked,
    row073_good253_checked,
    row073_good254_checked,
    row073_good255_checked,
    row073_good256_checked,
    row073_good257_checked,
    row073_good258_checked,
    row073_good259_checked,
    row073_good260_checked,
    row073_good261_checked,
    row073_good262_checked,
    row073_good263_checked,
    row073_good264_checked,
    row073_good265_checked,
    row073_good266_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_registered :
    decide (row073.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row073_small_checked :
    coverCheck (2 * row073.height.i + 2) (row073.height.i * (row073.height.i - 1) - 1)
      (row073.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row073_layerCover_checked :
    coverCheck (row073.height.i * (row073.height.i - 1)) (row073.height.n0 - 1)
      (row073.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_bounds : List NatInterval :=
  [(148, 211), (212, 283), (284, 355), (356, 425), (426, 493), (494, 563), (564, 635), (636, 703), (704, 773), (774, 845), (846, 911), (912, 983), (984, 1055), (1056, 1123), (1124, 1195), (1196, 1265), (1266, 1331), (1332, 1399), (1400, 1471), (1472, 1543), (1544, 1615), (1616, 1685), (1686, 1741), (1742, 1813), (1814, 1883), (1884, 1951), (1952, 2023), (2024, 2089), (2090, 2161), (2162, 2233), (2234, 2293), (2294, 2365), (2366, 2429), (2430, 2495), (2496, 2549), (2550, 2621), (2622, 2693), (2694, 2765), (2766, 2825), (2826, 2891), (2892, 2959), (2960, 3029), (3030, 3095), (3096, 3161), (3162, 3209), (3210, 3281), (3282, 3343), (3344, 3415), (3416, 3485), (3486, 3541), (3542, 3613), (3614, 3685), (3686, 3749), (3750, 3811), (3812, 3875), (3876, 3935), (3936, 4003), (4004, 4075), (4076, 4145), (4146, 4211), (4212, 4283), (4284, 4355), (4356, 4421), (4422, 4493), (4494, 4565), (4566, 4633), (4634, 4693), (4694, 4763), (4764, 4831), (4832, 4903), (4904, 4975), (4976, 5045), (5046, 5111), (5112, 5179), (5180, 5251), (5252, 5255), (5324, 5395), (5396, 5448), (5476, 5543), (5544, 5563), (5589, 5653), (5654, 5697), (5776, 5821), (5822, 5893), (5894, 5953), (5954, 5959), (6075, 6145), (6146, 6215), (6216, 6216), (6318, 6322), (6348, 6415), (6416, 6430), (6517, 6563), (6564, 6589), (6591, 6653), (6654, 6725), (6726, 6791), (6792, 6799), (6845, 6913), (6914, 6983), (6984, 7008), (7203, 7265), (7266, 7297), (7406, 7465), (7466, 7496), (7500, 7571), (7572, 7633), (7634, 7641), (7688, 7752), (7935, 8005), (8006, 8014), (8019, 8058), (8125, 8164), (8192, 8197), (8214, 8281), (8282, 8286), (8303, 8304), (8405, 8461), (8462, 8499), (8664, 8735), (8736, 8736), (8748, 8819), (8820, 8822), (8836, 8860), (8978, 8990), (8993, 9043), (9044, 9065), (9245, 9313), (9314, 9333), (9375, 9443), (9444, 9447), (9522, 9549), (9583, 9594), (9604, 9673), (9674, 9676), (9747, 9800), (10000, 10019), (10051, 10072), (10082, 10151), (10152, 10164), (10240, 10278), (10469, 10511), (10580, 10639), (10640, 10697), (10935, 10981), (10982, 11024), (11045, 11057), (11094, 11165), (11166, 11181), (11250, 11315), (11316, 11322), (11664, 11710), (11774, 11815), (11816, 11846), (12005, 12051), (12321, 12360), (12393, 12393), (12500, 12565), (13125, 13193), (13194, 13197), (13225, 13291), (13292, 13297), (13310, 13381), (13382, 13382), (13454, 13523), (13524, 13528), (13718, 13783), (13784, 13790), (14336, 14369), (14375, 14441), (14442, 14478), (14641, 14652), (14792, 14811), (15059, 15072), (15123, 15193), (15194, 15201), (15360, 15431), (15432, 15448), (15979, 16045), (16046, 16051), (16384, 16409), (16428, 16456), (16807, 16859), (16860, 16892), (17303, 17370), (17408, 17473), (17474, 17477), (17672, 17733), (18259, 18297), (18490, 18553), (18554, 18563), (18634, 18677), (19208, 19279), (19280, 19280), (19663, 19733), (19734, 19735), (20172, 20233), (20234, 20253), (20535, 20552), (20577, 20607), (21870, 21935), (21936, 21947), (21970, 21976), (22472, 22517), (22528, 22544), (24010, 24030), (24037, 24101), (24102, 24109), (24334, 24401), (24402, 24439), (24576, 24637), (24642, 24648), (25215, 25261), (25262, 25277), (25281, 25287), (25289, 25333), (25334, 25353), (26047, 26083), (26411, 26436), (26624, 26669), (26670, 26692), (26934, 26968), (27436, 27452), (28125, 28162), (28577, 28633), (28717, 28744), (28749, 28789), (28812, 28821), (29791, 29840), (30258, 30318), (30758, 30792), (30926, 30971), (31250, 31285), (31433, 31469), (31470, 31495), (32805, 32840), (33620, 33686), (34391, 34447), (34816, 34879), (34880, 34882), (35152, 35203), (35301, 35363), (35364, 35373), (36517, 36569), (36570, 36573), (36982, 37051), (37052, 37052), (37210, 37251), (37553, 37572), (39326, 39395), (39396, 39398), (40678, 40697), (40960, 41003), (41772, 41815), (44944, 44962), (48734, 48740), (48778, 48806), (49152, 49202), (50421, 50482), (59582, 59608), (65536, 65593), (65594, 65605), (73205, 73239), (73728, 73767), (85697, 85755), (137842, 137853), (327701, 327752)]

theorem row073_bounds_eq : row073.goods.map goodSegmentBounds = row073_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer000_intervals : List ColouredInterval :=
  [(2, 5376, 5448), (2, 5632, 5704), (2, 5888, 5960), (2, 6144, 6216), (2, 6400, 6472), (2, 6656, 6728), (2, 6912, 6984), (2, 7168, 7240), (2, 7424, 7496), (2, 5632, 5704), (2, 6144, 6216), (2, 6656, 6728), (2, 7168, 7240), (2, 7680, 7752), (2, 8192, 8264), (2, 8704, 8776), (2, 9216, 9288), (2, 9728, 9800), (2, 10240, 10312), (2, 6144, 6216), (2, 7168, 7240), (2, 8192, 8264), (2, 9216, 9288), (2, 10240, 10312), (2, 6144, 6216), (2, 8192, 8264), (2, 10240, 10312), (2, 8192, 8264), (2, 8192, 8264), (3, 5346, 5418), (3, 5589, 5661), (3, 5832, 5904), (3, 6075, 6147), (3, 6318, 6390), (3, 6561, 6633), (3, 6804, 6876), (3, 7047, 7119), (3, 5832, 5904), (3, 6561, 6633), (3, 7290, 7362), (3, 8019, 8091), (3, 8748, 8820), (3, 9477, 9549), (3, 10206, 10278), (3, 6561, 6633), (3, 8748, 8820), (3, 6561, 6633), (5, 5625, 5697), (5, 6250, 6322), (5, 6875, 6947), (5, 7500, 7572), (5, 8125, 8197), (5, 8750, 8822), (5, 9375, 9447), (5, 10000, 10072), (5, 6250, 6322), (5, 9375, 9447), (7, 5488, 5560), (7, 5831, 5903), (7, 6174, 6246), (7, 6517, 6589), (7, 6860, 6932), (7, 7203, 7275), (7, 7546, 7618), (7, 7889, 7961), (7, 8232, 8304), (7, 8575, 8647), (7, 8918, 8990), (7, 9261, 9333), (7, 9604, 9676), (7, 9947, 10019), (7, 7203, 7275), (7, 9604, 9676), (11, 5324, 5396), (11, 6655, 6727), (11, 7986, 8058), (11, 9317, 9389), (13, 6591, 6663), (13, 8788, 8860), (17, 5256, 5274), (17, 5491, 5563), (17, 5780, 5852), (17, 6069, 6141), (17, 6358, 6430), (17, 6647, 6719), (17, 6936, 7008), (17, 7225, 7297), (17, 7514, 7586), (17, 7803, 7875), (17, 8092, 8164), (17, 8381, 8453), (17, 9826, 9898), (19, 5415, 5487), (19, 5776, 5848), (19, 6137, 6209), (19, 6498, 6570), (19, 6859, 6931), (19, 7220, 7292), (19, 7581, 7653), (19, 7942, 8014), (19, 8303, 8375), (19, 8664, 8736), (19, 9025, 9097), (19, 9386, 9458), (19, 9747, 9819), (19, 10108, 10180), (19, 10469, 10511), (19, 6859, 6931), (23, 5290, 5362), (23, 5819, 5891), (23, 6348, 6420), (23, 6877, 6949), (23, 7406, 7478), (23, 7935, 8007), (23, 8464, 8536), (23, 8993, 9065), (23, 9522, 9594), (23, 10051, 10123), (29, 5887, 5959), (29, 6728, 6800), (29, 7569, 7641), (29, 8410, 8482), (29, 9251, 9323), (29, 10092, 10164), (31, 5766, 5838), (31, 6727, 6799), (31, 7688, 7760), (31, 8649, 8721), (31, 9610, 9682), (37, 5476, 5548), (37, 6845, 6917), (37, 8214, 8286), (37, 9583, 9655), (41, 6724, 6796), (41, 8405, 8477), (41, 10086, 10158), (43, 5547, 5619), (43, 7396, 7468), (43, 9245, 9317), (47, 6627, 6699), (47, 8836, 8908), (53, 5618, 5690), (53, 8427, 8499), (59, 6962, 7034), (59, 10443, 10511), (61, 7442, 7514), (67, 8978, 9050), (71, 10082, 10154)]

def row073_layer000_block000 : List ColouredInterval :=
  [(2, 5376, 5448), (2, 5632, 5704), (2, 5888, 5960), (2, 6144, 6216), (2, 6400, 6472), (2, 6656, 6728), (2, 6912, 6984), (2, 7168, 7240), (2, 7424, 7496), (2, 5632, 5704), (2, 6144, 6216), (2, 6656, 6728), (2, 7168, 7240)]

def row073_layer000_block001 : List ColouredInterval :=
  [(2, 7680, 7752), (2, 8192, 8264), (2, 8704, 8776), (2, 9216, 9288), (2, 9728, 9800), (2, 10240, 10312), (2, 6144, 6216), (2, 7168, 7240), (2, 8192, 8264), (2, 9216, 9288), (2, 10240, 10312), (2, 6144, 6216), (2, 8192, 8264)]

def row073_layer000_block002 : List ColouredInterval :=
  [(2, 10240, 10312), (2, 8192, 8264), (2, 8192, 8264), (3, 5346, 5418), (3, 5589, 5661), (3, 5832, 5904), (3, 6075, 6147), (3, 6318, 6390), (3, 6561, 6633), (3, 6804, 6876), (3, 7047, 7119), (3, 5832, 5904), (3, 6561, 6633)]

def row073_layer000_block003 : List ColouredInterval :=
  [(3, 7290, 7362), (3, 8019, 8091), (3, 8748, 8820), (3, 9477, 9549), (3, 10206, 10278), (3, 6561, 6633), (3, 8748, 8820), (3, 6561, 6633), (5, 5625, 5697), (5, 6250, 6322), (5, 6875, 6947), (5, 7500, 7572), (5, 8125, 8197)]

def row073_layer000_block004 : List ColouredInterval :=
  [(5, 8750, 8822), (5, 9375, 9447), (5, 10000, 10072), (5, 6250, 6322), (5, 9375, 9447), (7, 5488, 5560), (7, 5831, 5903), (7, 6174, 6246), (7, 6517, 6589), (7, 6860, 6932), (7, 7203, 7275), (7, 7546, 7618), (7, 7889, 7961)]

def row073_layer000_block005 : List ColouredInterval :=
  [(7, 8232, 8304), (7, 8575, 8647), (7, 8918, 8990), (7, 9261, 9333), (7, 9604, 9676), (7, 9947, 10019), (7, 7203, 7275), (7, 9604, 9676), (11, 5324, 5396), (11, 6655, 6727), (11, 7986, 8058), (11, 9317, 9389), (13, 6591, 6663)]

def row073_layer000_block006 : List ColouredInterval :=
  [(13, 8788, 8860), (17, 5256, 5274), (17, 5491, 5563), (17, 5780, 5852), (17, 6069, 6141), (17, 6358, 6430), (17, 6647, 6719), (17, 6936, 7008), (17, 7225, 7297), (17, 7514, 7586), (17, 7803, 7875), (17, 8092, 8164), (17, 8381, 8453)]

def row073_layer000_block007 : List ColouredInterval :=
  [(17, 9826, 9898), (19, 5415, 5487), (19, 5776, 5848), (19, 6137, 6209), (19, 6498, 6570), (19, 6859, 6931), (19, 7220, 7292), (19, 7581, 7653), (19, 7942, 8014), (19, 8303, 8375), (19, 8664, 8736), (19, 9025, 9097), (19, 9386, 9458)]

def row073_layer000_block008 : List ColouredInterval :=
  [(19, 9747, 9819), (19, 10108, 10180), (19, 10469, 10511), (19, 6859, 6931), (23, 5290, 5362), (23, 5819, 5891), (23, 6348, 6420), (23, 6877, 6949), (23, 7406, 7478), (23, 7935, 8007), (23, 8464, 8536), (23, 8993, 9065), (23, 9522, 9594)]

def row073_layer000_block009 : List ColouredInterval :=
  [(23, 10051, 10123), (29, 5887, 5959), (29, 6728, 6800), (29, 7569, 7641), (29, 8410, 8482), (29, 9251, 9323), (29, 10092, 10164), (31, 5766, 5838), (31, 6727, 6799), (31, 7688, 7760), (31, 8649, 8721), (31, 9610, 9682), (37, 5476, 5548)]

def row073_layer000_block010 : List ColouredInterval :=
  [(37, 6845, 6917), (37, 8214, 8286), (37, 9583, 9655), (41, 6724, 6796), (41, 8405, 8477), (41, 10086, 10158), (43, 5547, 5619), (43, 7396, 7468), (43, 9245, 9317), (47, 6627, 6699), (47, 8836, 8908), (53, 5618, 5690), (53, 8427, 8499)]

def row073_layer000_block011 : List ColouredInterval :=
  [(59, 6962, 7034), (59, 10443, 10511), (61, 7442, 7514), (67, 8978, 9050), (71, 10082, 10154)]

def row073_layer000_chunks : List (List ColouredInterval) :=
  [row073_layer000_block000, row073_layer000_block001, row073_layer000_block002, row073_layer000_block003, row073_layer000_block004, row073_layer000_block005, row073_layer000_block006, row073_layer000_block007, row073_layer000_block008, row073_layer000_block009, row073_layer000_block010, row073_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_arithmetic : LayerArithmeticValid row073.height { lower := 5256, upper := 10512, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_enumeration :
    activePowerIntervalList 73 29 5256 10512 = row073_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs000 :
    row073_layer000_block000.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs001 :
    row073_layer000_block001.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs002 :
    row073_layer000_block002.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs003 :
    row073_layer000_block003.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs004 :
    row073_layer000_block004.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs005 :
    row073_layer000_block005.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs006 :
    row073_layer000_block006.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs007 :
    row073_layer000_block007.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs007
