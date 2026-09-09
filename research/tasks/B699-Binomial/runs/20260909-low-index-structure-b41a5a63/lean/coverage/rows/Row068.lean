import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row068_height : HeightCertificateDatum := { i := 68, r := 22, s := 47, n0Power10 := 12 }

def row068_goods : List GoodSegment := [
  { lower := 138, upper := 204, witness := RowWitness.topPrime 137 },
  { lower := 205, upper := 266, witness := RowWitness.topPrime 199 },
  { lower := 267, upper := 330, witness := RowWitness.topPrime 263 },
  { lower := 331, upper := 398, witness := RowWitness.topPrime 331 },
  { lower := 399, upper := 464, witness := RowWitness.topPrime 397 },
  { lower := 465, upper := 530, witness := RowWitness.topPrime 463 },
  { lower := 531, upper := 590, witness := RowWitness.topPrime 523 },
  { lower := 591, upper := 654, witness := RowWitness.topPrime 587 },
  { lower := 655, upper := 720, witness := RowWitness.topPrime 653 },
  { lower := 721, upper := 786, witness := RowWitness.topPrime 719 },
  { lower := 787, upper := 854, witness := RowWitness.topPrime 787 },
  { lower := 855, upper := 920, witness := RowWitness.topPrime 853 },
  { lower := 921, upper := 986, witness := RowWitness.topPrime 919 },
  { lower := 987, upper := 1050, witness := RowWitness.topPrime 983 },
  { lower := 1051, upper := 1118, witness := RowWitness.topPrime 1051 },
  { lower := 1119, upper := 1184, witness := RowWitness.topPrime 1117 },
  { lower := 1185, upper := 1248, witness := RowWitness.topPrime 1181 },
  { lower := 1249, upper := 1316, witness := RowWitness.topPrime 1249 },
  { lower := 1317, upper := 1374, witness := RowWitness.topPrime 1307 },
  { lower := 1375, upper := 1440, witness := RowWitness.topPrime 1373 },
  { lower := 1441, upper := 1506, witness := RowWitness.topPrime 1439 },
  { lower := 1507, upper := 1566, witness := RowWitness.topPrime 1499 },
  { lower := 1567, upper := 1634, witness := RowWitness.topPrime 1567 },
  { lower := 1635, upper := 1694, witness := RowWitness.topPrime 1627 },
  { lower := 1695, upper := 1760, witness := RowWitness.topPrime 1693 },
  { lower := 1761, upper := 1826, witness := RowWitness.topPrime 1759 },
  { lower := 1827, upper := 1890, witness := RowWitness.topPrime 1823 },
  { lower := 1891, upper := 1956, witness := RowWitness.topPrime 1889 },
  { lower := 1957, upper := 2018, witness := RowWitness.topPrime 1951 },
  { lower := 2019, upper := 2084, witness := RowWitness.topPrime 2017 },
  { lower := 2085, upper := 2150, witness := RowWitness.topPrime 2083 },
  { lower := 2151, upper := 2210, witness := RowWitness.topPrime 2143 },
  { lower := 2211, upper := 2274, witness := RowWitness.topPrime 2207 },
  { lower := 2275, upper := 2340, witness := RowWitness.topPrime 2273 },
  { lower := 2341, upper := 2408, witness := RowWitness.topPrime 2341 },
  { lower := 2409, upper := 2466, witness := RowWitness.topPrime 2399 },
  { lower := 2467, upper := 2534, witness := RowWitness.topPrime 2467 },
  { lower := 2535, upper := 2598, witness := RowWitness.topPrime 2531 },
  { lower := 2599, upper := 2660, witness := RowWitness.topPrime 2593 },
  { lower := 2661, upper := 2726, witness := RowWitness.topPrime 2659 },
  { lower := 2727, upper := 2786, witness := RowWitness.topPrime 2719 },
  { lower := 2787, upper := 2844, witness := RowWitness.topPrime 2777 },
  { lower := 2845, upper := 2910, witness := RowWitness.topPrime 2843 },
  { lower := 2911, upper := 2976, witness := RowWitness.topPrime 2909 },
  { lower := 2977, upper := 3038, witness := RowWitness.topPrime 2971 },
  { lower := 3039, upper := 3104, witness := RowWitness.topPrime 3037 },
  { lower := 3105, upper := 3156, witness := RowWitness.topPrime 3089 },
  { lower := 3157, upper := 3204, witness := RowWitness.topPrime 3137 },
  { lower := 3205, upper := 3270, witness := RowWitness.topPrime 3203 },
  { lower := 3271, upper := 3338, witness := RowWitness.topPrime 3271 },
  { lower := 3339, upper := 3398, witness := RowWitness.topPrime 3331 },
  { lower := 3399, upper := 3458, witness := RowWitness.topPrime 3391 },
  { lower := 3459, upper := 3524, witness := RowWitness.topPrime 3457 },
  { lower := 3525, upper := 3584, witness := RowWitness.topPrime 3517 },
  { lower := 3585, upper := 3650, witness := RowWitness.topPrime 3583 },
  { lower := 3651, upper := 3710, witness := RowWitness.topPrime 3643 },
  { lower := 3711, upper := 3776, witness := RowWitness.topPrime 3709 },
  { lower := 3777, upper := 3836, witness := RowWitness.topPrime 3769 },
  { lower := 3837, upper := 3900, witness := RowWitness.topPrime 3833 },
  { lower := 3901, upper := 3956, witness := RowWitness.topPrime 3889 },
  { lower := 3957, upper := 4014, witness := RowWitness.topPrime 3947 },
  { lower := 4015, upper := 4080, witness := RowWitness.topPrime 4013 },
  { lower := 4081, upper := 4146, witness := RowWitness.topPrime 4079 },
  { lower := 4147, upper := 4206, witness := RowWitness.topPrime 4139 },
  { lower := 4207, upper := 4268, witness := RowWitness.topPrime 4201 },
  { lower := 4269, upper := 4328, witness := RowWitness.topPrime 4261 },
  { lower := 4329, upper := 4394, witness := RowWitness.topPrime 4327 },
  { lower := 4395, upper := 4458, witness := RowWitness.topPrime 4391 },
  { lower := 4459, upper := 4524, witness := RowWitness.topPrime 4457 },
  { lower := 4525, upper := 4555, witness := RowWitness.topPrime 4523 },
  { lower := 4617, upper := 4630, witness := RowWitness.topPrime 4603 },
  { lower := 4732, upper := 4796, witness := RowWitness.topPrime 4729 },
  { lower := 4797, upper := 4799, witness := RowWitness.topPrime 4793 },
  { lower := 4802, upper := 4868, witness := RowWitness.topPrime 4801 },
  { lower := 4869, upper := 4872, witness := RowWitness.topPrime 4861 },
  { lower := 4901, upper := 4956, witness := RowWitness.topPrime 4889 },
  { lower := 4957, upper := 4968, witness := RowWitness.topPrime 4957 },
  { lower := 5043, upper := 5106, witness := RowWitness.topPrime 5039 },
  { lower := 5107, upper := 5174, witness := RowWitness.topPrime 5107 },
  { lower := 5175, upper := 5187, witness := RowWitness.topPrime 5171 },
  { lower := 5290, upper := 5306, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5390, witness := RowWitness.topPrime 5323 },
  { lower := 5391, upper := 5391, witness := RowWitness.topPrime 5387 },
  { lower := 5476, upper := 5482, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5543, witness := RowWitness.topPrime 5483 },
  { lower := 5547, upper := 5555, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5614, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5658, witness := RowWitness.topPrime 5591 },
  { lower := 5659, upper := 5685, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5816, witness := RowWitness.topPrime 5749 },
  { lower := 5817, upper := 5880, witness := RowWitness.topPrime 5813 },
  { lower := 5881, upper := 5899, witness := RowWitness.topPrime 5881 },
  { lower := 6137, upper := 6142, witness := RowWitness.topPrime 6133 },
  { lower := 6144, upper := 6210, witness := RowWitness.topPrime 6143 },
  { lower := 6211, upper := 6211, witness := RowWitness.topPrime 6211 },
  { lower := 6348, upper := 6385, witness := RowWitness.topPrime 6343 },
  { lower := 6517, upper := 6558, witness := RowWitness.topPrime 6491 },
  { lower := 6559, upper := 6584, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6648, witness := RowWitness.topPrime 6581 },
  { lower := 6649, upper := 6694, witness := RowWitness.topPrime 6637 },
  { lower := 6727, upper := 6786, witness := RowWitness.topPrime 6719 },
  { lower := 6787, upper := 6794, witness := RowWitness.topPrime 6781 },
  { lower := 6845, upper := 6908, witness := RowWitness.topPrime 6841 },
  { lower := 6909, upper := 6942, witness := RowWitness.topPrime 6907 },
  { lower := 7203, upper := 7260, witness := RowWitness.topPrime 7193 },
  { lower := 7261, upper := 7270, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7460, witness := RowWitness.topPrime 7393 },
  { lower := 7461, upper := 7473, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7509, witness := RowWitness.topPrime 7499 },
  { lower := 7533, upper := 7596, witness := RowWitness.topPrime 7529 },
  { lower := 7597, upper := 7636, witness := RowWitness.topPrime 7591 },
  { lower := 7935, upper := 8000, witness := RowWitness.topPrime 7933 },
  { lower := 8001, upper := 8009, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8053, witness := RowWitness.topPrime 8017 },
  { lower := 8192, upper := 8192, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8276, witness := RowWitness.topPrime 8209 },
  { lower := 8277, upper := 8281, witness := RowWitness.topPrime 8273 },
  { lower := 8410, upper := 8456, witness := RowWitness.topPrime 8389 },
  { lower := 8457, upper := 8494, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8716, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8814, witness := RowWitness.topPrime 8747 },
  { lower := 8815, upper := 8817, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8855, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 8985, witness := RowWitness.topPrime 8971 },
  { lower := 8993, upper := 9038, witness := RowWitness.topPrime 8971 },
  { lower := 9039, upper := 9060, witness := RowWitness.topPrime 9029 },
  { lower := 9251, upper := 9308, witness := RowWitness.topPrime 9241 },
  { lower := 9309, upper := 9328, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9384, witness := RowWitness.topPrime 9371 },
  { lower := 9386, upper := 9442, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9544, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9589, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9668, witness := RowWitness.topPrime 9601 },
  { lower := 9669, upper := 9671, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10067, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10146, witness := RowWitness.topPrime 10079 },
  { lower := 10147, upper := 10153, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10273, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10634, witness := RowWitness.topPrime 10567 },
  { lower := 10635, upper := 10692, witness := RowWitness.topPrime 10631 },
  { lower := 10935, upper := 10976, witness := RowWitness.topPrime 10909 },
  { lower := 10977, upper := 11019, witness := RowWitness.topPrime 10973 },
  { lower := 11045, upper := 11052, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11160, witness := RowWitness.topPrime 11093 },
  { lower := 11161, upper := 11161, witness := RowWitness.topPrime 11161 },
  { lower := 11163, upper := 11176, witness := RowWitness.topPrime 11161 },
  { lower := 11250, upper := 11303, witness := RowWitness.topPrime 11243 },
  { lower := 11664, upper := 11705, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11810, witness := RowWitness.topPrime 11743 },
  { lower := 11811, upper := 11834, witness := RowWitness.topPrime 11807 },
  { lower := 12005, upper := 12046, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12355, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12560, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13188, witness := RowWitness.topPrime 13121 },
  { lower := 13189, upper := 13192, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13249, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13292, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13321, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13518, witness := RowWitness.topPrime 13451 },
  { lower := 13519, upper := 13523, witness := RowWitness.topPrime 13513 },
  { lower := 13718, upper := 13778, witness := RowWitness.topPrime 13711 },
  { lower := 13779, upper := 13817, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14350, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14468, witness := RowWitness.topPrime 14401 },
  { lower := 14469, upper := 14473, witness := RowWitness.topPrime 14461 },
  { lower := 14641, upper := 14647, witness := RowWitness.topPrime 14639 },
  { lower := 15059, upper := 15067, witness := RowWitness.topPrime 15053 },
  { lower := 15138, upper := 15196, witness := RowWitness.topPrime 15137 },
  { lower := 15376, upper := 15376, witness := RowWitness.topPrime 15373 },
  { lower := 15379, upper := 15443, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16040, witness := RowWitness.topPrime 15973 },
  { lower := 16041, upper := 16046, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16404, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16451, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16854, witness := RowWitness.topPrime 16787 },
  { lower := 16855, upper := 16910, witness := RowWitness.topPrime 16843 },
  { lower := 16911, upper := 16921, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17365, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17728, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18548, witness := RowWitness.topPrime 18481 },
  { lower := 18549, upper := 18558, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18672, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19274, witness := RowWitness.topPrime 19207 },
  { lower := 19275, upper := 19275, witness := RowWitness.topPrime 19273 },
  { lower := 19683, upper := 19730, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20244, witness := RowWitness.topPrime 20177 },
  { lower := 20245, upper := 20248, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20547, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20602, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21930, witness := RowWitness.topPrime 21863 },
  { lower := 21931, upper := 21942, witness := RowWitness.topPrime 21929 },
  { lower := 21970, upper := 21971, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22157, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22512, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24025, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24096, witness := RowWitness.topPrime 24029 },
  { lower := 24097, upper := 24104, witness := RowWitness.topPrime 24097 },
  { lower := 24334, upper := 24396, witness := RowWitness.topPrime 24329 },
  { lower := 24397, upper := 24434, witness := RowWitness.topPrime 24391 },
  { lower := 24642, upper := 24643, witness := RowWitness.topPrime 24631 },
  { lower := 25281, upper := 25282, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25328, witness := RowWitness.topPrime 25261 },
  { lower := 25329, upper := 25348, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26078, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26431, witness := RowWitness.topPrime 26407 },
  { lower := 26934, upper := 26963, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27447, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28157, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28628, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28784, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28816, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29835, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30660, witness := RowWitness.topPrime 30593 },
  { lower := 30661, upper := 30680, witness := RowWitness.topPrime 30661 },
  { lower := 30926, upper := 30966, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31280, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31464, witness := RowWitness.topPrime 31397 },
  { lower := 31465, upper := 31465, witness := RowWitness.largeDivisor 288305496407015086792952523880145369208044970036396164958445775786992236688736286008616094989109063867653691394505436093480470695466293680882883828072259014539010435954115480014981669999501 },
  { lower := 31466, upper := 31466, witness := RowWitness.largeDivisor 866789676088585583893277672120452339719123163306443887500712285583173869639573473681168932249885897540568608199838338631516958809816777848524825390227565655597601985260099149068547031168001 },
  { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 289555620003604388339010462208077473528261500682228412879230904279814985147599801440866936219913155810790921093286548422114761010101219237974995812544887931512571968005133283689926106242911 },
  { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 14509134156486342185114619784655703721317409081955993147266939643116589096536099604683440683070425457092306855037485837176922451378766189459549630938156900364391106192970595813940437438299241 },
  { lower := 31469, upper := 31500, witness := RowWitness.topPrime 31469 },
  { lower := 31944, upper := 31974, witness := RowWitness.topPrime 31907 },
  { lower := 31975, upper := 32006, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32835, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32872, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33681, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35198, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35368, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36564, witness := RowWitness.topPrime 36497 },
  { lower := 36565, upper := 36568, witness := RowWitness.topPrime 36563 },
  { lower := 37210, upper := 37246, witness := RowWitness.topPrime 37201 },
  { lower := 37553, upper := 37567, witness := RowWitness.topPrime 37549 },
  { lower := 39366, upper := 39393, witness := RowWitness.topPrime 39359 },
  { lower := 40960, upper := 40998, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41810, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43788, witness := RowWitness.topPrime 43721 },
  { lower := 43789, upper := 43807, witness := RowWitness.topPrime 43789 },
  { lower := 43940, upper := 43990, witness := RowWitness.topPrime 43933 },
  { lower := 44944, upper := 44957, witness := RowWitness.topPrime 44939 },
  { lower := 48020, upper := 48080, witness := RowWitness.topPrime 48017 },
  { lower := 48734, upper := 48735, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48801, witness := RowWitness.topPrime 48767 },
  { lower := 59049, upper := 59056, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59603, witness := RowWitness.topPrime 59581 },
  { lower := 65625, upper := 65677, witness := RowWitness.topPrime 65617 },
  { lower := 73205, upper := 73234, witness := RowWitness.topPrime 73189 },
  { lower := 85293, upper := 85326, witness := RowWitness.topPrime 85259 },
  { lower := 85327, upper := 85358, witness := RowWitness.topPrime 85313 },
  { lower := 137842, upper := 137848, witness := RowWitness.topPrime 137831 }
]

def row068_layers : List CoverLayer := [
  { lower := 4556, upper := 9112, M := 31 },
  { lower := 9112, upper := 18224, M := 27 },
  { lower := 18224, upper := 36448, M := 24 },
  { lower := 36448, upper := 72896, M := 21 },
  { lower := 72896, upper := 145792, M := 19 },
  { lower := 145792, upper := 291584, M := 16 },
  { lower := 291584, upper := 583168, M := 15 },
  { lower := 583168, upper := 1166336, M := 13 },
  { lower := 1166336, upper := 2332672, M := 11 },
  { lower := 2332672, upper := 4665344, M := 10 },
  { lower := 4665344, upper := 9330688, M := 9 },
  { lower := 9330688, upper := 18661376, M := 8 },
  { lower := 18661376, upper := 37322752, M := 7 },
  { lower := 37322752, upper := 74645504, M := 6 },
  { lower := 74645504, upper := 149291008, M := 6 },
  { lower := 149291008, upper := 298582016, M := 5 },
  { lower := 298582016, upper := 597164032, M := 4 },
  { lower := 597164032, upper := 1194328064, M := 4 },
  { lower := 1194328064, upper := 2388656128, M := 4 },
  { lower := 2388656128, upper := 4777312256, M := 3 },
  { lower := 4777312256, upper := 9554624512, M := 3 },
  { lower := 9554624512, upper := 19109249024, M := 3 },
  { lower := 19109249024, upper := 38218498048, M := 2 },
  { lower := 38218498048, upper := 76436996096, M := 2 },
  { lower := 76436996096, upper := 152873992192, M := 2 },
  { lower := 152873992192, upper := 305747984384, M := 2 },
  { lower := 305747984384, upper := 611495968768, M := 2 },
  { lower := 611495968768, upper := 1000000000000, M := 1 }
]

def row068 : FiniteCoverRow := {
  height := row068_height,
  goods := row068_goods,
  layers := row068_layers
}

theorem row068_registered :
    decide (row068.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row068_goods_checked :
    row068.goods.all (goodSegmentCheck row068.height.i row068.height.r row068.height.s) = true := by
  decide +kernel

theorem row068_small_checked :
    coverCheck (2 * row068.height.i + 2) (row068.height.i * (row068.height.i - 1) - 1)
      (row068.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row068_layerCover_checked :
    coverCheck (row068.height.i * (row068.height.i - 1)) (row068.height.n0 - 1)
      (row068.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row068_layer000_checked :
    coverLayerCheck row068.height row068.goods { lower := 4556, upper := 9112, M := 31 } = true := by
  decide +kernel

theorem row068_layer001_checked :
    coverLayerCheck row068.height row068.goods { lower := 9112, upper := 18224, M := 27 } = true := by
  decide +kernel

theorem row068_layer002_checked :
    coverLayerCheck row068.height row068.goods { lower := 18224, upper := 36448, M := 24 } = true := by
  decide +kernel

theorem row068_layer003_checked :
    coverLayerCheck row068.height row068.goods { lower := 36448, upper := 72896, M := 21 } = true := by
  decide +kernel

theorem row068_layer004_checked :
    coverLayerCheck row068.height row068.goods { lower := 72896, upper := 145792, M := 19 } = true := by
  decide +kernel

theorem row068_layer005_checked :
    coverLayerCheck row068.height row068.goods { lower := 145792, upper := 291584, M := 16 } = true := by
  decide +kernel

theorem row068_layer006_checked :
    coverLayerCheck row068.height row068.goods { lower := 291584, upper := 583168, M := 15 } = true := by
  decide +kernel

theorem row068_layer007_checked :
    coverLayerCheck row068.height row068.goods { lower := 583168, upper := 1166336, M := 13 } = true := by
  decide +kernel

theorem row068_layer008_checked :
    coverLayerCheck row068.height row068.goods { lower := 1166336, upper := 2332672, M := 11 } = true := by
  decide +kernel

theorem row068_layer009_checked :
    coverLayerCheck row068.height row068.goods { lower := 2332672, upper := 4665344, M := 10 } = true := by
  decide +kernel

theorem row068_layer010_checked :
    coverLayerCheck row068.height row068.goods { lower := 4665344, upper := 9330688, M := 9 } = true := by
  decide +kernel

theorem row068_layer011_checked :
    coverLayerCheck row068.height row068.goods { lower := 9330688, upper := 18661376, M := 8 } = true := by
  decide +kernel

theorem row068_layer012_checked :
    coverLayerCheck row068.height row068.goods { lower := 18661376, upper := 37322752, M := 7 } = true := by
  decide +kernel

theorem row068_layer013_checked :
    coverLayerCheck row068.height row068.goods { lower := 37322752, upper := 74645504, M := 6 } = true := by
  decide +kernel

theorem row068_layer014_checked :
    coverLayerCheck row068.height row068.goods { lower := 74645504, upper := 149291008, M := 6 } = true := by
  decide +kernel

theorem row068_layer015_checked :
    coverLayerCheck row068.height row068.goods { lower := 149291008, upper := 298582016, M := 5 } = true := by
  decide +kernel

theorem row068_layer016_checked :
    coverLayerCheck row068.height row068.goods { lower := 298582016, upper := 597164032, M := 4 } = true := by
  decide +kernel

theorem row068_layer017_checked :
    coverLayerCheck row068.height row068.goods { lower := 597164032, upper := 1194328064, M := 4 } = true := by
  decide +kernel

theorem row068_layer018_checked :
    coverLayerCheck row068.height row068.goods { lower := 1194328064, upper := 2388656128, M := 4 } = true := by
  decide +kernel

theorem row068_layer019_checked :
    coverLayerCheck row068.height row068.goods { lower := 2388656128, upper := 4777312256, M := 3 } = true := by
  decide +kernel

theorem row068_layer020_checked :
    coverLayerCheck row068.height row068.goods { lower := 4777312256, upper := 9554624512, M := 3 } = true := by
  decide +kernel

theorem row068_layer021_checked :
    coverLayerCheck row068.height row068.goods { lower := 9554624512, upper := 19109249024, M := 3 } = true := by
  decide +kernel

theorem row068_layer022_checked :
    coverLayerCheck row068.height row068.goods { lower := 19109249024, upper := 38218498048, M := 2 } = true := by
  decide +kernel

theorem row068_layer023_checked :
    coverLayerCheck row068.height row068.goods { lower := 38218498048, upper := 76436996096, M := 2 } = true := by
  decide +kernel

theorem row068_layer024_checked :
    coverLayerCheck row068.height row068.goods { lower := 76436996096, upper := 152873992192, M := 2 } = true := by
  decide +kernel

theorem row068_layer025_checked :
    coverLayerCheck row068.height row068.goods { lower := 152873992192, upper := 305747984384, M := 2 } = true := by
  decide +kernel

theorem row068_layer026_checked :
    coverLayerCheck row068.height row068.goods { lower := 305747984384, upper := 611495968768, M := 2 } = true := by
  decide +kernel

theorem row068_layer027_checked :
    coverLayerCheck row068.height row068.goods { lower := 611495968768, upper := 1000000000000, M := 1 } = true := by
  decide +kernel

theorem row068_layers_checked :
    row068.layers.all (coverLayerCheck row068.height row068.goods) = true := by
  change List.all [
    { lower := 4556, upper := 9112, M := 31 },
    { lower := 9112, upper := 18224, M := 27 },
    { lower := 18224, upper := 36448, M := 24 },
    { lower := 36448, upper := 72896, M := 21 },
    { lower := 72896, upper := 145792, M := 19 },
    { lower := 145792, upper := 291584, M := 16 },
    { lower := 291584, upper := 583168, M := 15 },
    { lower := 583168, upper := 1166336, M := 13 },
    { lower := 1166336, upper := 2332672, M := 11 },
    { lower := 2332672, upper := 4665344, M := 10 },
    { lower := 4665344, upper := 9330688, M := 9 },
    { lower := 9330688, upper := 18661376, M := 8 },
    { lower := 18661376, upper := 37322752, M := 7 },
    { lower := 37322752, upper := 74645504, M := 6 },
    { lower := 74645504, upper := 149291008, M := 6 },
    { lower := 149291008, upper := 298582016, M := 5 },
    { lower := 298582016, upper := 597164032, M := 4 },
    { lower := 597164032, upper := 1194328064, M := 4 },
    { lower := 1194328064, upper := 2388656128, M := 4 },
    { lower := 2388656128, upper := 4777312256, M := 3 },
    { lower := 4777312256, upper := 9554624512, M := 3 },
    { lower := 9554624512, upper := 19109249024, M := 3 },
    { lower := 19109249024, upper := 38218498048, M := 2 },
    { lower := 38218498048, upper := 76436996096, M := 2 },
    { lower := 76436996096, upper := 152873992192, M := 2 },
    { lower := 152873992192, upper := 305747984384, M := 2 },
    { lower := 305747984384, upper := 611495968768, M := 2 },
    { lower := 611495968768, upper := 1000000000000, M := 1 }
  ] (coverLayerCheck row068.height row068.goods) = true
  simp only [List.all_cons, List.all_nil,
    row068_layer000_checked,
    row068_layer001_checked,
    row068_layer002_checked,
    row068_layer003_checked,
    row068_layer004_checked,
    row068_layer005_checked,
    row068_layer006_checked,
    row068_layer007_checked,
    row068_layer008_checked,
    row068_layer009_checked,
    row068_layer010_checked,
    row068_layer011_checked,
    row068_layer012_checked,
    row068_layer013_checked,
    row068_layer014_checked,
    row068_layer015_checked,
    row068_layer016_checked,
    row068_layer017_checked,
    row068_layer018_checked,
    row068_layer019_checked,
    row068_layer020_checked,
    row068_layer021_checked,
    row068_layer022_checked,
    row068_layer023_checked,
    row068_layer024_checked,
    row068_layer025_checked,
    row068_layer026_checked,
    row068_layer027_checked,
    Bool.true_and]

theorem row068_checked : finiteCoverRowCheck row068 = true := by
  simp only [finiteCoverRowCheck, row068_registered, row068_goods_checked,
    row068_small_checked, row068_layerCover_checked, row068_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row068_checked

end B699LowIndex
