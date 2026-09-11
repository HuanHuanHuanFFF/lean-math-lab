import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good000_checked :
    goodSegmentCheck 68 22 47
      { lower := 138, upper := 204, witness := RowWitness.topPrime 137 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good001_checked :
    goodSegmentCheck 68 22 47
      { lower := 205, upper := 266, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good002_checked :
    goodSegmentCheck 68 22 47
      { lower := 267, upper := 330, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good003_checked :
    goodSegmentCheck 68 22 47
      { lower := 331, upper := 398, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good004_checked :
    goodSegmentCheck 68 22 47
      { lower := 399, upper := 464, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good005_checked :
    goodSegmentCheck 68 22 47
      { lower := 465, upper := 530, witness := RowWitness.topPrime 463 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good006_checked :
    goodSegmentCheck 68 22 47
      { lower := 531, upper := 590, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good007_checked :
    goodSegmentCheck 68 22 47
      { lower := 591, upper := 654, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good008_checked :
    goodSegmentCheck 68 22 47
      { lower := 655, upper := 720, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good009_checked :
    goodSegmentCheck 68 22 47
      { lower := 721, upper := 786, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good010_checked :
    goodSegmentCheck 68 22 47
      { lower := 787, upper := 854, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good011_checked :
    goodSegmentCheck 68 22 47
      { lower := 855, upper := 920, witness := RowWitness.topPrime 853 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good012_checked :
    goodSegmentCheck 68 22 47
      { lower := 921, upper := 986, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good013_checked :
    goodSegmentCheck 68 22 47
      { lower := 987, upper := 1050, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good014_checked :
    goodSegmentCheck 68 22 47
      { lower := 1051, upper := 1118, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good015_checked :
    goodSegmentCheck 68 22 47
      { lower := 1119, upper := 1184, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good016_checked :
    goodSegmentCheck 68 22 47
      { lower := 1185, upper := 1248, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good017_checked :
    goodSegmentCheck 68 22 47
      { lower := 1249, upper := 1316, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good018_checked :
    goodSegmentCheck 68 22 47
      { lower := 1317, upper := 1374, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good019_checked :
    goodSegmentCheck 68 22 47
      { lower := 1375, upper := 1440, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good020_checked :
    goodSegmentCheck 68 22 47
      { lower := 1441, upper := 1506, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good021_checked :
    goodSegmentCheck 68 22 47
      { lower := 1507, upper := 1566, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good022_checked :
    goodSegmentCheck 68 22 47
      { lower := 1567, upper := 1634, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good023_checked :
    goodSegmentCheck 68 22 47
      { lower := 1635, upper := 1694, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good024_checked :
    goodSegmentCheck 68 22 47
      { lower := 1695, upper := 1760, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good025_checked :
    goodSegmentCheck 68 22 47
      { lower := 1761, upper := 1826, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good026_checked :
    goodSegmentCheck 68 22 47
      { lower := 1827, upper := 1890, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good027_checked :
    goodSegmentCheck 68 22 47
      { lower := 1891, upper := 1956, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good028_checked :
    goodSegmentCheck 68 22 47
      { lower := 1957, upper := 2018, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good029_checked :
    goodSegmentCheck 68 22 47
      { lower := 2019, upper := 2084, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good030_checked :
    goodSegmentCheck 68 22 47
      { lower := 2085, upper := 2150, witness := RowWitness.topPrime 2083 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good031_checked :
    goodSegmentCheck 68 22 47
      { lower := 2151, upper := 2210, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good032_checked :
    goodSegmentCheck 68 22 47
      { lower := 2211, upper := 2274, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good033_checked :
    goodSegmentCheck 68 22 47
      { lower := 2275, upper := 2340, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good034_checked :
    goodSegmentCheck 68 22 47
      { lower := 2341, upper := 2408, witness := RowWitness.topPrime 2341 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good035_checked :
    goodSegmentCheck 68 22 47
      { lower := 2409, upper := 2466, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good036_checked :
    goodSegmentCheck 68 22 47
      { lower := 2467, upper := 2534, witness := RowWitness.topPrime 2467 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good037_checked :
    goodSegmentCheck 68 22 47
      { lower := 2535, upper := 2598, witness := RowWitness.topPrime 2531 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good038_checked :
    goodSegmentCheck 68 22 47
      { lower := 2599, upper := 2660, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good039_checked :
    goodSegmentCheck 68 22 47
      { lower := 2661, upper := 2726, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good040_checked :
    goodSegmentCheck 68 22 47
      { lower := 2727, upper := 2786, witness := RowWitness.topPrime 2719 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good041_checked :
    goodSegmentCheck 68 22 47
      { lower := 2787, upper := 2844, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good042_checked :
    goodSegmentCheck 68 22 47
      { lower := 2845, upper := 2910, witness := RowWitness.topPrime 2843 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good043_checked :
    goodSegmentCheck 68 22 47
      { lower := 2911, upper := 2976, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good044_checked :
    goodSegmentCheck 68 22 47
      { lower := 2977, upper := 3038, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good045_checked :
    goodSegmentCheck 68 22 47
      { lower := 3039, upper := 3104, witness := RowWitness.topPrime 3037 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good046_checked :
    goodSegmentCheck 68 22 47
      { lower := 3105, upper := 3156, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good047_checked :
    goodSegmentCheck 68 22 47
      { lower := 3157, upper := 3204, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good048_checked :
    goodSegmentCheck 68 22 47
      { lower := 3205, upper := 3270, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good049_checked :
    goodSegmentCheck 68 22 47
      { lower := 3271, upper := 3338, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good050_checked :
    goodSegmentCheck 68 22 47
      { lower := 3339, upper := 3398, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good051_checked :
    goodSegmentCheck 68 22 47
      { lower := 3399, upper := 3458, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good052_checked :
    goodSegmentCheck 68 22 47
      { lower := 3459, upper := 3524, witness := RowWitness.topPrime 3457 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good053_checked :
    goodSegmentCheck 68 22 47
      { lower := 3525, upper := 3584, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good054_checked :
    goodSegmentCheck 68 22 47
      { lower := 3585, upper := 3650, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good055_checked :
    goodSegmentCheck 68 22 47
      { lower := 3651, upper := 3710, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good056_checked :
    goodSegmentCheck 68 22 47
      { lower := 3711, upper := 3776, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good057_checked :
    goodSegmentCheck 68 22 47
      { lower := 3777, upper := 3836, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good058_checked :
    goodSegmentCheck 68 22 47
      { lower := 3837, upper := 3900, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good059_checked :
    goodSegmentCheck 68 22 47
      { lower := 3901, upper := 3956, witness := RowWitness.topPrime 3889 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good060_checked :
    goodSegmentCheck 68 22 47
      { lower := 3957, upper := 4014, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good061_checked :
    goodSegmentCheck 68 22 47
      { lower := 4015, upper := 4080, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good062_checked :
    goodSegmentCheck 68 22 47
      { lower := 4081, upper := 4146, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good063_checked :
    goodSegmentCheck 68 22 47
      { lower := 4147, upper := 4206, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good064_checked :
    goodSegmentCheck 68 22 47
      { lower := 4207, upper := 4268, witness := RowWitness.topPrime 4201 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good065_checked :
    goodSegmentCheck 68 22 47
      { lower := 4269, upper := 4328, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good066_checked :
    goodSegmentCheck 68 22 47
      { lower := 4329, upper := 4394, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good067_checked :
    goodSegmentCheck 68 22 47
      { lower := 4395, upper := 4458, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good068_checked :
    goodSegmentCheck 68 22 47
      { lower := 4459, upper := 4524, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good069_checked :
    goodSegmentCheck 68 22 47
      { lower := 4525, upper := 4555, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good070_checked :
    goodSegmentCheck 68 22 47
      { lower := 4617, upper := 4630, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good071_checked :
    goodSegmentCheck 68 22 47
      { lower := 4732, upper := 4796, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good072_checked :
    goodSegmentCheck 68 22 47
      { lower := 4797, upper := 4799, witness := RowWitness.topPrime 4793 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good073_checked :
    goodSegmentCheck 68 22 47
      { lower := 4802, upper := 4868, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good074_checked :
    goodSegmentCheck 68 22 47
      { lower := 4869, upper := 4872, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good075_checked :
    goodSegmentCheck 68 22 47
      { lower := 4901, upper := 4956, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good076_checked :
    goodSegmentCheck 68 22 47
      { lower := 4957, upper := 4968, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good077_checked :
    goodSegmentCheck 68 22 47
      { lower := 5043, upper := 5106, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good078_checked :
    goodSegmentCheck 68 22 47
      { lower := 5107, upper := 5174, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good079_checked :
    goodSegmentCheck 68 22 47
      { lower := 5175, upper := 5187, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good080_checked :
    goodSegmentCheck 68 22 47
      { lower := 5290, upper := 5306, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good081_checked :
    goodSegmentCheck 68 22 47
      { lower := 5324, upper := 5390, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good082_checked :
    goodSegmentCheck 68 22 47
      { lower := 5391, upper := 5391, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good083_checked :
    goodSegmentCheck 68 22 47
      { lower := 5476, upper := 5482, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good084_checked :
    goodSegmentCheck 68 22 47
      { lower := 5488, upper := 5543, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good085_checked :
    goodSegmentCheck 68 22 47
      { lower := 5547, upper := 5555, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good086_checked :
    goodSegmentCheck 68 22 47
      { lower := 5589, upper := 5614, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good087_checked :
    goodSegmentCheck 68 22 47
      { lower := 5618, upper := 5658, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good088_checked :
    goodSegmentCheck 68 22 47
      { lower := 5659, upper := 5685, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good089_checked :
    goodSegmentCheck 68 22 47
      { lower := 5776, upper := 5816, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good090_checked :
    goodSegmentCheck 68 22 47
      { lower := 5817, upper := 5880, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good091_checked :
    goodSegmentCheck 68 22 47
      { lower := 5881, upper := 5899, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good092_checked :
    goodSegmentCheck 68 22 47
      { lower := 6137, upper := 6142, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good093_checked :
    goodSegmentCheck 68 22 47
      { lower := 6144, upper := 6210, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good094_checked :
    goodSegmentCheck 68 22 47
      { lower := 6211, upper := 6211, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good095_checked :
    goodSegmentCheck 68 22 47
      { lower := 6348, upper := 6385, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good096_checked :
    goodSegmentCheck 68 22 47
      { lower := 6517, upper := 6558, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good097_checked :
    goodSegmentCheck 68 22 47
      { lower := 6559, upper := 6584, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good098_checked :
    goodSegmentCheck 68 22 47
      { lower := 6591, upper := 6648, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good099_checked :
    goodSegmentCheck 68 22 47
      { lower := 6649, upper := 6694, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good100_checked :
    goodSegmentCheck 68 22 47
      { lower := 6727, upper := 6786, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good101_checked :
    goodSegmentCheck 68 22 47
      { lower := 6787, upper := 6794, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good102_checked :
    goodSegmentCheck 68 22 47
      { lower := 6845, upper := 6908, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good103_checked :
    goodSegmentCheck 68 22 47
      { lower := 6909, upper := 6942, witness := RowWitness.topPrime 6907 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good104_checked :
    goodSegmentCheck 68 22 47
      { lower := 7203, upper := 7260, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good105_checked :
    goodSegmentCheck 68 22 47
      { lower := 7261, upper := 7270, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good106_checked :
    goodSegmentCheck 68 22 47
      { lower := 7406, upper := 7460, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good107_checked :
    goodSegmentCheck 68 22 47
      { lower := 7461, upper := 7473, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good108_checked :
    goodSegmentCheck 68 22 47
      { lower := 7500, upper := 7509, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good109_checked :
    goodSegmentCheck 68 22 47
      { lower := 7533, upper := 7596, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good110_checked :
    goodSegmentCheck 68 22 47
      { lower := 7597, upper := 7636, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good111_checked :
    goodSegmentCheck 68 22 47
      { lower := 7935, upper := 8000, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good112_checked :
    goodSegmentCheck 68 22 47
      { lower := 8001, upper := 8009, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good113_checked :
    goodSegmentCheck 68 22 47
      { lower := 8019, upper := 8053, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good114_checked :
    goodSegmentCheck 68 22 47
      { lower := 8192, upper := 8192, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good115_checked :
    goodSegmentCheck 68 22 47
      { lower := 8214, upper := 8276, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good116_checked :
    goodSegmentCheck 68 22 47
      { lower := 8277, upper := 8281, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good117_checked :
    goodSegmentCheck 68 22 47
      { lower := 8410, upper := 8456, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good118_checked :
    goodSegmentCheck 68 22 47
      { lower := 8457, upper := 8494, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good119_checked :
    goodSegmentCheck 68 22 47
      { lower := 8664, upper := 8716, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good120_checked :
    goodSegmentCheck 68 22 47
      { lower := 8750, upper := 8814, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good121_checked :
    goodSegmentCheck 68 22 47
      { lower := 8815, upper := 8817, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good122_checked :
    goodSegmentCheck 68 22 47
      { lower := 8836, upper := 8855, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good123_checked :
    goodSegmentCheck 68 22 47
      { lower := 8978, upper := 8985, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good124_checked :
    goodSegmentCheck 68 22 47
      { lower := 8993, upper := 9038, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good125_checked :
    goodSegmentCheck 68 22 47
      { lower := 9039, upper := 9060, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good126_checked :
    goodSegmentCheck 68 22 47
      { lower := 9251, upper := 9308, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good127_checked :
    goodSegmentCheck 68 22 47
      { lower := 9309, upper := 9328, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good128_checked :
    goodSegmentCheck 68 22 47
      { lower := 9375, upper := 9384, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good129_checked :
    goodSegmentCheck 68 22 47
      { lower := 9386, upper := 9442, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good130_checked :
    goodSegmentCheck 68 22 47
      { lower := 9522, upper := 9544, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good131_checked :
    goodSegmentCheck 68 22 47
      { lower := 9583, upper := 9589, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good132_checked :
    goodSegmentCheck 68 22 47
      { lower := 9604, upper := 9668, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good133_checked :
    goodSegmentCheck 68 22 47
      { lower := 9669, upper := 9671, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good134_checked :
    goodSegmentCheck 68 22 47
      { lower := 10051, upper := 10067, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good135_checked :
    goodSegmentCheck 68 22 47
      { lower := 10086, upper := 10146, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good136_checked :
    goodSegmentCheck 68 22 47
      { lower := 10147, upper := 10153, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good137_checked :
    goodSegmentCheck 68 22 47
      { lower := 10240, upper := 10273, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good138_checked :
    goodSegmentCheck 68 22 47
      { lower := 10580, upper := 10634, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good139_checked :
    goodSegmentCheck 68 22 47
      { lower := 10635, upper := 10692, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good140_checked :
    goodSegmentCheck 68 22 47
      { lower := 10935, upper := 10976, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good141_checked :
    goodSegmentCheck 68 22 47
      { lower := 10977, upper := 11019, witness := RowWitness.topPrime 10973 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good142_checked :
    goodSegmentCheck 68 22 47
      { lower := 11045, upper := 11052, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good143_checked :
    goodSegmentCheck 68 22 47
      { lower := 11094, upper := 11160, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good144_checked :
    goodSegmentCheck 68 22 47
      { lower := 11161, upper := 11161, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good145_checked :
    goodSegmentCheck 68 22 47
      { lower := 11163, upper := 11176, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good146_checked :
    goodSegmentCheck 68 22 47
      { lower := 11250, upper := 11303, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good147_checked :
    goodSegmentCheck 68 22 47
      { lower := 11664, upper := 11705, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good148_checked :
    goodSegmentCheck 68 22 47
      { lower := 11774, upper := 11810, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good149_checked :
    goodSegmentCheck 68 22 47
      { lower := 11811, upper := 11834, witness := RowWitness.topPrime 11807 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good150_checked :
    goodSegmentCheck 68 22 47
      { lower := 12005, upper := 12046, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good151_checked :
    goodSegmentCheck 68 22 47
      { lower := 12321, upper := 12355, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good152_checked :
    goodSegmentCheck 68 22 47
      { lower := 12500, upper := 12560, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good153_checked :
    goodSegmentCheck 68 22 47
      { lower := 13125, upper := 13188, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good154_checked :
    goodSegmentCheck 68 22 47
      { lower := 13189, upper := 13192, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good155_checked :
    goodSegmentCheck 68 22 47
      { lower := 13225, upper := 13249, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good156_checked :
    goodSegmentCheck 68 22 47
      { lower := 13254, upper := 13292, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good157_checked :
    goodSegmentCheck 68 22 47
      { lower := 13310, upper := 13321, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good158_checked :
    goodSegmentCheck 68 22 47
      { lower := 13454, upper := 13518, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good159_checked :
    goodSegmentCheck 68 22 47
      { lower := 13519, upper := 13523, witness := RowWitness.topPrime 13513 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good160_checked :
    goodSegmentCheck 68 22 47
      { lower := 13718, upper := 13778, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good161_checked :
    goodSegmentCheck 68 22 47
      { lower := 13779, upper := 13817, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good162_checked :
    goodSegmentCheck 68 22 47
      { lower := 14297, upper := 14350, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good163_checked :
    goodSegmentCheck 68 22 47
      { lower := 14406, upper := 14468, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good164_checked :
    goodSegmentCheck 68 22 47
      { lower := 14469, upper := 14473, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good165_checked :
    goodSegmentCheck 68 22 47
      { lower := 14641, upper := 14647, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good166_checked :
    goodSegmentCheck 68 22 47
      { lower := 15059, upper := 15067, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good167_checked :
    goodSegmentCheck 68 22 47
      { lower := 15138, upper := 15196, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good168_checked :
    goodSegmentCheck 68 22 47
      { lower := 15376, upper := 15376, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good169_checked :
    goodSegmentCheck 68 22 47
      { lower := 15379, upper := 15443, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good170_checked :
    goodSegmentCheck 68 22 47
      { lower := 15979, upper := 16040, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good171_checked :
    goodSegmentCheck 68 22 47
      { lower := 16041, upper := 16046, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good172_checked :
    goodSegmentCheck 68 22 47
      { lower := 16384, upper := 16404, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good173_checked :
    goodSegmentCheck 68 22 47
      { lower := 16428, upper := 16451, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good174_checked :
    goodSegmentCheck 68 22 47
      { lower := 16807, upper := 16854, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good175_checked :
    goodSegmentCheck 68 22 47
      { lower := 16855, upper := 16910, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good176_checked :
    goodSegmentCheck 68 22 47
      { lower := 16911, upper := 16921, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good177_checked :
    goodSegmentCheck 68 22 47
      { lower := 17303, upper := 17365, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good178_checked :
    goodSegmentCheck 68 22 47
      { lower := 17672, upper := 17728, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good179_checked :
    goodSegmentCheck 68 22 47
      { lower := 18491, upper := 18548, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good180_checked :
    goodSegmentCheck 68 22 47
      { lower := 18549, upper := 18558, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good181_checked :
    goodSegmentCheck 68 22 47
      { lower := 18634, upper := 18672, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good182_checked :
    goodSegmentCheck 68 22 47
      { lower := 19208, upper := 19274, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good183_checked :
    goodSegmentCheck 68 22 47
      { lower := 19275, upper := 19275, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good184_checked :
    goodSegmentCheck 68 22 47
      { lower := 19683, upper := 19730, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good185_checked :
    goodSegmentCheck 68 22 47
      { lower := 20181, upper := 20244, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good186_checked :
    goodSegmentCheck 68 22 47
      { lower := 20245, upper := 20248, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good187_checked :
    goodSegmentCheck 68 22 47
      { lower := 20535, upper := 20547, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good188_checked :
    goodSegmentCheck 68 22 47
      { lower := 20577, upper := 20602, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good189_checked :
    goodSegmentCheck 68 22 47
      { lower := 21870, upper := 21930, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good190_checked :
    goodSegmentCheck 68 22 47
      { lower := 21931, upper := 21942, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good191_checked :
    goodSegmentCheck 68 22 47
      { lower := 21970, upper := 21971, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good192_checked :
    goodSegmentCheck 68 22 47
      { lower := 22103, upper := 22157, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good193_checked :
    goodSegmentCheck 68 22 47
      { lower := 22472, upper := 22512, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good194_checked :
    goodSegmentCheck 68 22 47
      { lower := 24010, upper := 24025, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good195_checked :
    goodSegmentCheck 68 22 47
      { lower := 24037, upper := 24096, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good196_checked :
    goodSegmentCheck 68 22 47
      { lower := 24097, upper := 24104, witness := RowWitness.topPrime 24097 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good197_checked :
    goodSegmentCheck 68 22 47
      { lower := 24334, upper := 24396, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good198_checked :
    goodSegmentCheck 68 22 47
      { lower := 24397, upper := 24434, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good199_checked :
    goodSegmentCheck 68 22 47
      { lower := 24642, upper := 24643, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good200_checked :
    goodSegmentCheck 68 22 47
      { lower := 25281, upper := 25282, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good201_checked :
    goodSegmentCheck 68 22 47
      { lower := 25289, upper := 25328, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good202_checked :
    goodSegmentCheck 68 22 47
      { lower := 25329, upper := 25348, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good203_checked :
    goodSegmentCheck 68 22 47
      { lower := 26047, upper := 26078, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good204_checked :
    goodSegmentCheck 68 22 47
      { lower := 26411, upper := 26431, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good205_checked :
    goodSegmentCheck 68 22 47
      { lower := 26934, upper := 26963, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good206_checked :
    goodSegmentCheck 68 22 47
      { lower := 27436, upper := 27447, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good207_checked :
    goodSegmentCheck 68 22 47
      { lower := 28125, upper := 28157, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good208_checked :
    goodSegmentCheck 68 22 47
      { lower := 28577, upper := 28628, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good209_checked :
    goodSegmentCheck 68 22 47
      { lower := 28749, upper := 28784, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good210_checked :
    goodSegmentCheck 68 22 47
      { lower := 28812, upper := 28816, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good211_checked :
    goodSegmentCheck 68 22 47
      { lower := 29791, upper := 29835, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good212_checked :
    goodSegmentCheck 68 22 47
      { lower := 30618, upper := 30660, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good213_checked :
    goodSegmentCheck 68 22 47
      { lower := 30661, upper := 30680, witness := RowWitness.topPrime 30661 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good214_checked :
    goodSegmentCheck 68 22 47
      { lower := 30926, upper := 30966, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good215_checked :
    goodSegmentCheck 68 22 47
      { lower := 31250, upper := 31280, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good216_checked :
    goodSegmentCheck 68 22 47
      { lower := 31433, upper := 31464, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good217_checked :
    goodSegmentCheck 68 22 47
      { lower := 31465, upper := 31465, witness := RowWitness.largeDivisor 288305496407015086792952523880145369208044970036396164958445775786992236688736286008616094989109063867653691394505436093480470695466293680882883828072259014539010435954115480014981669999501 } = true := by
  decide +kernel

theorem row068_good218_checked :
    goodSegmentCheck 68 22 47
      { lower := 31466, upper := 31466, witness := RowWitness.largeDivisor 866789676088585583893277672120452339719123163306443887500712285583173869639573473681168932249885897540568608199838338631516958809816777848524825390227565655597601985260099149068547031168001 } = true := by
  decide +kernel

theorem row068_good219_checked :
    goodSegmentCheck 68 22 47
      { lower := 31467, upper := 31467, witness := RowWitness.largeDivisor 289555620003604388339010462208077473528261500682228412879230904279814985147599801440866936219913155810790921093286548422114761010101219237974995812544887931512571968005133283689926106242911 } = true := by
  decide +kernel

theorem row068_good220_checked :
    goodSegmentCheck 68 22 47
      { lower := 31468, upper := 31468, witness := RowWitness.largeDivisor 14509134156486342185114619784655703721317409081955993147266939643116589096536099604683440683070425457092306855037485837176922451378766189459549630938156900364391106192970595813940437438299241 } = true := by
  decide +kernel

theorem row068_good221_checked :
    goodSegmentCheck 68 22 47
      { lower := 31469, upper := 31500, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good222_checked :
    goodSegmentCheck 68 22 47
      { lower := 31944, upper := 31974, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good223_checked :
    goodSegmentCheck 68 22 47
      { lower := 31975, upper := 32006, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good224_checked :
    goodSegmentCheck 68 22 47
      { lower := 32805, upper := 32835, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good225_checked :
    goodSegmentCheck 68 22 47
      { lower := 32856, upper := 32872, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good226_checked :
    goodSegmentCheck 68 22 47
      { lower := 33620, upper := 33681, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good227_checked :
    goodSegmentCheck 68 22 47
      { lower := 35152, upper := 35198, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good228_checked :
    goodSegmentCheck 68 22 47
      { lower := 35344, upper := 35368, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good229_checked :
    goodSegmentCheck 68 22 47
      { lower := 36517, upper := 36564, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good230_checked :
    goodSegmentCheck 68 22 47
      { lower := 36565, upper := 36568, witness := RowWitness.topPrime 36563 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good231_checked :
    goodSegmentCheck 68 22 47
      { lower := 37210, upper := 37246, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good232_checked :
    goodSegmentCheck 68 22 47
      { lower := 37553, upper := 37567, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good233_checked :
    goodSegmentCheck 68 22 47
      { lower := 39366, upper := 39393, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good234_checked :
    goodSegmentCheck 68 22 47
      { lower := 40960, upper := 40998, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good235_checked :
    goodSegmentCheck 68 22 47
      { lower := 41772, upper := 41810, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good236_checked :
    goodSegmentCheck 68 22 47
      { lower := 43750, upper := 43788, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good237_checked :
    goodSegmentCheck 68 22 47
      { lower := 43789, upper := 43807, witness := RowWitness.topPrime 43789 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good238_checked :
    goodSegmentCheck 68 22 47
      { lower := 43940, upper := 43990, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good239_checked :
    goodSegmentCheck 68 22 47
      { lower := 44944, upper := 44957, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_good240_checked :
    goodSegmentCheck 68 22 47
      { lower := 48020, upper := 48080, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good241_checked :
    goodSegmentCheck 68 22 47
      { lower := 48734, upper := 48735, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good242_checked :
    goodSegmentCheck 68 22 47
      { lower := 48778, upper := 48801, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good243_checked :
    goodSegmentCheck 68 22 47
      { lower := 59049, upper := 59056, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good244_checked :
    goodSegmentCheck 68 22 47
      { lower := 59582, upper := 59603, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good245_checked :
    goodSegmentCheck 68 22 47
      { lower := 65625, upper := 65677, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good246_checked :
    goodSegmentCheck 68 22 47
      { lower := 73205, upper := 73234, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good247_checked :
    goodSegmentCheck 68 22 47
      { lower := 85293, upper := 85326, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good248_checked :
    goodSegmentCheck 68 22 47
      { lower := 85327, upper := 85358, witness := RowWitness.topPrime 85313 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row068_good249_checked :
    goodSegmentCheck 68 22 47
      { lower := 137842, upper := 137848, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 68) (r := 22) (s := 47) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_good249_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_goods_checked :
    row068.goods.all (goodSegmentCheck row068.height.i row068.height.r row068.height.s) = true := by
  change row068_goods.all (goodSegmentCheck 68 22 47) = true
  simp only [row068_goods, List.all_cons, List.all_nil,
    row068_good000_checked,
    row068_good001_checked,
    row068_good002_checked,
    row068_good003_checked,
    row068_good004_checked,
    row068_good005_checked,
    row068_good006_checked,
    row068_good007_checked,
    row068_good008_checked,
    row068_good009_checked,
    row068_good010_checked,
    row068_good011_checked,
    row068_good012_checked,
    row068_good013_checked,
    row068_good014_checked,
    row068_good015_checked,
    row068_good016_checked,
    row068_good017_checked,
    row068_good018_checked,
    row068_good019_checked,
    row068_good020_checked,
    row068_good021_checked,
    row068_good022_checked,
    row068_good023_checked,
    row068_good024_checked,
    row068_good025_checked,
    row068_good026_checked,
    row068_good027_checked,
    row068_good028_checked,
    row068_good029_checked,
    row068_good030_checked,
    row068_good031_checked,
    row068_good032_checked,
    row068_good033_checked,
    row068_good034_checked,
    row068_good035_checked,
    row068_good036_checked,
    row068_good037_checked,
    row068_good038_checked,
    row068_good039_checked,
    row068_good040_checked,
    row068_good041_checked,
    row068_good042_checked,
    row068_good043_checked,
    row068_good044_checked,
    row068_good045_checked,
    row068_good046_checked,
    row068_good047_checked,
    row068_good048_checked,
    row068_good049_checked,
    row068_good050_checked,
    row068_good051_checked,
    row068_good052_checked,
    row068_good053_checked,
    row068_good054_checked,
    row068_good055_checked,
    row068_good056_checked,
    row068_good057_checked,
    row068_good058_checked,
    row068_good059_checked,
    row068_good060_checked,
    row068_good061_checked,
    row068_good062_checked,
    row068_good063_checked,
    row068_good064_checked,
    row068_good065_checked,
    row068_good066_checked,
    row068_good067_checked,
    row068_good068_checked,
    row068_good069_checked,
    row068_good070_checked,
    row068_good071_checked,
    row068_good072_checked,
    row068_good073_checked,
    row068_good074_checked,
    row068_good075_checked,
    row068_good076_checked,
    row068_good077_checked,
    row068_good078_checked,
    row068_good079_checked,
    row068_good080_checked,
    row068_good081_checked,
    row068_good082_checked,
    row068_good083_checked,
    row068_good084_checked,
    row068_good085_checked,
    row068_good086_checked,
    row068_good087_checked,
    row068_good088_checked,
    row068_good089_checked,
    row068_good090_checked,
    row068_good091_checked,
    row068_good092_checked,
    row068_good093_checked,
    row068_good094_checked,
    row068_good095_checked,
    row068_good096_checked,
    row068_good097_checked,
    row068_good098_checked,
    row068_good099_checked,
    row068_good100_checked,
    row068_good101_checked,
    row068_good102_checked,
    row068_good103_checked,
    row068_good104_checked,
    row068_good105_checked,
    row068_good106_checked,
    row068_good107_checked,
    row068_good108_checked,
    row068_good109_checked,
    row068_good110_checked,
    row068_good111_checked,
    row068_good112_checked,
    row068_good113_checked,
    row068_good114_checked,
    row068_good115_checked,
    row068_good116_checked,
    row068_good117_checked,
    row068_good118_checked,
    row068_good119_checked,
    row068_good120_checked,
    row068_good121_checked,
    row068_good122_checked,
    row068_good123_checked,
    row068_good124_checked,
    row068_good125_checked,
    row068_good126_checked,
    row068_good127_checked,
    row068_good128_checked,
    row068_good129_checked,
    row068_good130_checked,
    row068_good131_checked,
    row068_good132_checked,
    row068_good133_checked,
    row068_good134_checked,
    row068_good135_checked,
    row068_good136_checked,
    row068_good137_checked,
    row068_good138_checked,
    row068_good139_checked,
    row068_good140_checked,
    row068_good141_checked,
    row068_good142_checked,
    row068_good143_checked,
    row068_good144_checked,
    row068_good145_checked,
    row068_good146_checked,
    row068_good147_checked,
    row068_good148_checked,
    row068_good149_checked,
    row068_good150_checked,
    row068_good151_checked,
    row068_good152_checked,
    row068_good153_checked,
    row068_good154_checked,
    row068_good155_checked,
    row068_good156_checked,
    row068_good157_checked,
    row068_good158_checked,
    row068_good159_checked,
    row068_good160_checked,
    row068_good161_checked,
    row068_good162_checked,
    row068_good163_checked,
    row068_good164_checked,
    row068_good165_checked,
    row068_good166_checked,
    row068_good167_checked,
    row068_good168_checked,
    row068_good169_checked,
    row068_good170_checked,
    row068_good171_checked,
    row068_good172_checked,
    row068_good173_checked,
    row068_good174_checked,
    row068_good175_checked,
    row068_good176_checked,
    row068_good177_checked,
    row068_good178_checked,
    row068_good179_checked,
    row068_good180_checked,
    row068_good181_checked,
    row068_good182_checked,
    row068_good183_checked,
    row068_good184_checked,
    row068_good185_checked,
    row068_good186_checked,
    row068_good187_checked,
    row068_good188_checked,
    row068_good189_checked,
    row068_good190_checked,
    row068_good191_checked,
    row068_good192_checked,
    row068_good193_checked,
    row068_good194_checked,
    row068_good195_checked,
    row068_good196_checked,
    row068_good197_checked,
    row068_good198_checked,
    row068_good199_checked,
    row068_good200_checked,
    row068_good201_checked,
    row068_good202_checked,
    row068_good203_checked,
    row068_good204_checked,
    row068_good205_checked,
    row068_good206_checked,
    row068_good207_checked,
    row068_good208_checked,
    row068_good209_checked,
    row068_good210_checked,
    row068_good211_checked,
    row068_good212_checked,
    row068_good213_checked,
    row068_good214_checked,
    row068_good215_checked,
    row068_good216_checked,
    row068_good217_checked,
    row068_good218_checked,
    row068_good219_checked,
    row068_good220_checked,
    row068_good221_checked,
    row068_good222_checked,
    row068_good223_checked,
    row068_good224_checked,
    row068_good225_checked,
    row068_good226_checked,
    row068_good227_checked,
    row068_good228_checked,
    row068_good229_checked,
    row068_good230_checked,
    row068_good231_checked,
    row068_good232_checked,
    row068_good233_checked,
    row068_good234_checked,
    row068_good235_checked,
    row068_good236_checked,
    row068_good237_checked,
    row068_good238_checked,
    row068_good239_checked,
    row068_good240_checked,
    row068_good241_checked,
    row068_good242_checked,
    row068_good243_checked,
    row068_good244_checked,
    row068_good245_checked,
    row068_good246_checked,
    row068_good247_checked,
    row068_good248_checked,
    row068_good249_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_registered :
    decide (row068.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row068_small_checked :
    coverCheck (2 * row068.height.i + 2) (row068.height.i * (row068.height.i - 1) - 1)
      (row068.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row068_layerCover_checked :
    coverCheck (row068.height.i * (row068.height.i - 1)) (row068.height.n0 - 1)
      (row068.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_bounds : List NatInterval :=
  [(138, 204), (205, 266), (267, 330), (331, 398), (399, 464), (465, 530), (531, 590), (591, 654), (655, 720), (721, 786), (787, 854), (855, 920), (921, 986), (987, 1050), (1051, 1118), (1119, 1184), (1185, 1248), (1249, 1316), (1317, 1374), (1375, 1440), (1441, 1506), (1507, 1566), (1567, 1634), (1635, 1694), (1695, 1760), (1761, 1826), (1827, 1890), (1891, 1956), (1957, 2018), (2019, 2084), (2085, 2150), (2151, 2210), (2211, 2274), (2275, 2340), (2341, 2408), (2409, 2466), (2467, 2534), (2535, 2598), (2599, 2660), (2661, 2726), (2727, 2786), (2787, 2844), (2845, 2910), (2911, 2976), (2977, 3038), (3039, 3104), (3105, 3156), (3157, 3204), (3205, 3270), (3271, 3338), (3339, 3398), (3399, 3458), (3459, 3524), (3525, 3584), (3585, 3650), (3651, 3710), (3711, 3776), (3777, 3836), (3837, 3900), (3901, 3956), (3957, 4014), (4015, 4080), (4081, 4146), (4147, 4206), (4207, 4268), (4269, 4328), (4329, 4394), (4395, 4458), (4459, 4524), (4525, 4555), (4617, 4630), (4732, 4796), (4797, 4799), (4802, 4868), (4869, 4872), (4901, 4956), (4957, 4968), (5043, 5106), (5107, 5174), (5175, 5187), (5290, 5306), (5324, 5390), (5391, 5391), (5476, 5482), (5488, 5543), (5547, 5555), (5589, 5614), (5618, 5658), (5659, 5685), (5776, 5816), (5817, 5880), (5881, 5899), (6137, 6142), (6144, 6210), (6211, 6211), (6348, 6385), (6517, 6558), (6559, 6584), (6591, 6648), (6649, 6694), (6727, 6786), (6787, 6794), (6845, 6908), (6909, 6942), (7203, 7260), (7261, 7270), (7406, 7460), (7461, 7473), (7500, 7509), (7533, 7596), (7597, 7636), (7935, 8000), (8001, 8009), (8019, 8053), (8192, 8192), (8214, 8276), (8277, 8281), (8410, 8456), (8457, 8494), (8664, 8716), (8750, 8814), (8815, 8817), (8836, 8855), (8978, 8985), (8993, 9038), (9039, 9060), (9251, 9308), (9309, 9328), (9375, 9384), (9386, 9442), (9522, 9544), (9583, 9589), (9604, 9668), (9669, 9671), (10051, 10067), (10086, 10146), (10147, 10153), (10240, 10273), (10580, 10634), (10635, 10692), (10935, 10976), (10977, 11019), (11045, 11052), (11094, 11160), (11161, 11161), (11163, 11176), (11250, 11303), (11664, 11705), (11774, 11810), (11811, 11834), (12005, 12046), (12321, 12355), (12500, 12560), (13125, 13188), (13189, 13192), (13225, 13249), (13254, 13292), (13310, 13321), (13454, 13518), (13519, 13523), (13718, 13778), (13779, 13817), (14297, 14350), (14406, 14468), (14469, 14473), (14641, 14647), (15059, 15067), (15138, 15196), (15376, 15376), (15379, 15443), (15979, 16040), (16041, 16046), (16384, 16404), (16428, 16451), (16807, 16854), (16855, 16910), (16911, 16921), (17303, 17365), (17672, 17728), (18491, 18548), (18549, 18558), (18634, 18672), (19208, 19274), (19275, 19275), (19683, 19730), (20181, 20244), (20245, 20248), (20535, 20547), (20577, 20602), (21870, 21930), (21931, 21942), (21970, 21971), (22103, 22157), (22472, 22512), (24010, 24025), (24037, 24096), (24097, 24104), (24334, 24396), (24397, 24434), (24642, 24643), (25281, 25282), (25289, 25328), (25329, 25348), (26047, 26078), (26411, 26431), (26934, 26963), (27436, 27447), (28125, 28157), (28577, 28628), (28749, 28784), (28812, 28816), (29791, 29835), (30618, 30660), (30661, 30680), (30926, 30966), (31250, 31280), (31433, 31464), (31465, 31465), (31466, 31466), (31467, 31467), (31468, 31468), (31469, 31500), (31944, 31974), (31975, 32006), (32805, 32835), (32856, 32872), (33620, 33681), (35152, 35198), (35344, 35368), (36517, 36564), (36565, 36568), (37210, 37246), (37553, 37567), (39366, 39393), (40960, 40998), (41772, 41810), (43750, 43788), (43789, 43807), (43940, 43990), (44944, 44957), (48020, 48080), (48734, 48735), (48778, 48801), (59049, 59056), (59582, 59603), (65625, 65677), (73205, 73234), (85293, 85326), (85327, 85358), (137842, 137848)]

theorem row068_bounds_eq : row068.goods.map goodSegmentBounds = row068_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer000_intervals : List ColouredInterval :=
  [(2, 5120, 5187), (2, 6144, 6211), (2, 7168, 7235), (2, 6144, 6211), (2, 8192, 8259), (2, 8192, 8259), (2, 8192, 8259), (3, 4617, 4684), (3, 4860, 4927), (3, 5103, 5170), (3, 5346, 5413), (3, 5589, 5656), (3, 5832, 5899), (3, 6075, 6142), (3, 6318, 6385), (3, 6561, 6628), (3, 6804, 6871), (3, 7047, 7114), (3, 7290, 7357), (3, 7533, 7600), (3, 5103, 5170), (3, 5832, 5899), (3, 6561, 6628), (3, 7290, 7357), (3, 8019, 8086), (3, 8748, 8815), (3, 6561, 6628), (3, 8748, 8815), (3, 6561, 6628), (5, 5000, 5067), (5, 5625, 5692), (5, 6250, 6317), (5, 6875, 6942), (5, 7500, 7567), (5, 8125, 8192), (5, 8750, 8817), (5, 6250, 6317), (7, 4802, 4869), (7, 5145, 5212), (7, 5488, 5555), (7, 5831, 5898), (7, 6174, 6241), (7, 6517, 6584), (7, 6860, 6927), (7, 7203, 7270), (7, 7546, 7613), (7, 7889, 7956), (7, 8232, 8299), (7, 8575, 8642), (7, 8918, 8985), (7, 4802, 4869), (7, 7203, 7270), (11, 5324, 5391), (11, 6655, 6722), (11, 7986, 8053), (13, 4563, 4630), (13, 4732, 4799), (13, 4901, 4968), (13, 5070, 5137), (13, 5239, 5306), (13, 6591, 6658), (13, 8788, 8855), (17, 4913, 4980), (19, 4693, 4760), (19, 5054, 5121), (19, 5415, 5482), (19, 5776, 5843), (19, 6137, 6204), (19, 6498, 6565), (19, 6859, 6926), (19, 7220, 7287), (19, 7581, 7648), (19, 7942, 8009), (19, 8303, 8370), (19, 8664, 8731), (19, 9025, 9092), (19, 6859, 6926), (23, 4761, 4828), (23, 5290, 5357), (23, 5819, 5886), (23, 6348, 6415), (23, 6877, 6944), (23, 7406, 7473), (23, 7935, 8002), (23, 8464, 8531), (23, 8993, 9060), (29, 5046, 5113), (29, 5887, 5954), (29, 6728, 6795), (29, 7569, 7636), (29, 8410, 8477), (31, 4805, 4872), (31, 5766, 5833), (31, 6727, 6794), (31, 7688, 7755), (31, 8649, 8716), (37, 5476, 5543), (37, 6845, 6912), (37, 8214, 8281), (41, 5043, 5110), (41, 6724, 6791), (41, 8405, 8472), (43, 5547, 5614), (43, 7396, 7463), (47, 6627, 6694), (47, 8836, 8903), (53, 5618, 5685), (53, 8427, 8494), (59, 6962, 7029), (61, 7442, 7509), (67, 4556, 4556), (67, 8978, 9045)]

def row068_layer000_block000 : List ColouredInterval :=
  [(2, 5120, 5187), (2, 6144, 6211), (2, 7168, 7235), (2, 6144, 6211), (2, 8192, 8259), (2, 8192, 8259), (2, 8192, 8259), (3, 4617, 4684), (3, 4860, 4927), (3, 5103, 5170), (3, 5346, 5413), (3, 5589, 5656), (3, 5832, 5899), (3, 6075, 6142), (3, 6318, 6385), (3, 6561, 6628)]

def row068_layer000_block001 : List ColouredInterval :=
  [(3, 6804, 6871), (3, 7047, 7114), (3, 7290, 7357), (3, 7533, 7600), (3, 5103, 5170), (3, 5832, 5899), (3, 6561, 6628), (3, 7290, 7357), (3, 8019, 8086), (3, 8748, 8815), (3, 6561, 6628), (3, 8748, 8815), (3, 6561, 6628), (5, 5000, 5067), (5, 5625, 5692), (5, 6250, 6317)]

def row068_layer000_block002 : List ColouredInterval :=
  [(5, 6875, 6942), (5, 7500, 7567), (5, 8125, 8192), (5, 8750, 8817), (5, 6250, 6317), (7, 4802, 4869), (7, 5145, 5212), (7, 5488, 5555), (7, 5831, 5898), (7, 6174, 6241), (7, 6517, 6584), (7, 6860, 6927), (7, 7203, 7270), (7, 7546, 7613), (7, 7889, 7956), (7, 8232, 8299)]

def row068_layer000_block003 : List ColouredInterval :=
  [(7, 8575, 8642), (7, 8918, 8985), (7, 4802, 4869), (7, 7203, 7270), (11, 5324, 5391), (11, 6655, 6722), (11, 7986, 8053), (13, 4563, 4630), (13, 4732, 4799), (13, 4901, 4968), (13, 5070, 5137), (13, 5239, 5306), (13, 6591, 6658), (13, 8788, 8855), (17, 4913, 4980), (19, 4693, 4760)]

def row068_layer000_block004 : List ColouredInterval :=
  [(19, 5054, 5121), (19, 5415, 5482), (19, 5776, 5843), (19, 6137, 6204), (19, 6498, 6565), (19, 6859, 6926), (19, 7220, 7287), (19, 7581, 7648), (19, 7942, 8009), (19, 8303, 8370), (19, 8664, 8731), (19, 9025, 9092), (19, 6859, 6926), (23, 4761, 4828), (23, 5290, 5357), (23, 5819, 5886)]

def row068_layer000_block005 : List ColouredInterval :=
  [(23, 6348, 6415), (23, 6877, 6944), (23, 7406, 7473), (23, 7935, 8002), (23, 8464, 8531), (23, 8993, 9060), (29, 5046, 5113), (29, 5887, 5954), (29, 6728, 6795), (29, 7569, 7636), (29, 8410, 8477), (31, 4805, 4872), (31, 5766, 5833), (31, 6727, 6794), (31, 7688, 7755), (31, 8649, 8716)]

def row068_layer000_block006 : List ColouredInterval :=
  [(37, 5476, 5543), (37, 6845, 6912), (37, 8214, 8281), (41, 5043, 5110), (41, 6724, 6791), (41, 8405, 8472), (43, 5547, 5614), (43, 7396, 7463), (47, 6627, 6694), (47, 8836, 8903), (53, 5618, 5685), (53, 8427, 8494), (59, 6962, 7029), (61, 7442, 7509), (67, 4556, 4556), (67, 8978, 9045)]

def row068_layer000_chunks : List (List ColouredInterval) :=
  [row068_layer000_block000, row068_layer000_block001, row068_layer000_block002, row068_layer000_block003, row068_layer000_block004, row068_layer000_block005, row068_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_arithmetic : LayerArithmeticValid row068.height { lower := 4556, upper := 9112, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_enumeration :
    activePowerIntervalList 68 31 4556 9112 = row068_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs000 :
    row068_layer000_block000.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs001 :
    row068_layer000_block001.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs002 :
    row068_layer000_block002.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs003 :
    row068_layer000_block003.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs004 :
    row068_layer000_block004.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs005 :
    row068_layer000_block005.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_pairs006 :
    row068_layer000_block006.all (fun I => row068_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_chunks_eq : row068_layer000_chunks.flatten = row068_layer000_intervals := by
  rfl

theorem row068_layer000_pairs : pairCoverCheck row068_layer000_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer000_chunks_eq
  intro block hblock
  simp only [row068_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row068_layer000_pairs000
  · exact row068_layer000_pairs001
  · exact row068_layer000_pairs002
  · exact row068_layer000_pairs003
  · exact row068_layer000_pairs004
  · exact row068_layer000_pairs005
  · exact row068_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer000_checked :
    coverLayerCheck row068.height row068.goods { lower := 4556, upper := 9112, M := 31 } = true := by
  exact coverLayerCheck_of_parts row068_layer000_arithmetic row068_layer000_enumeration row068_bounds_eq row068_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer001_intervals : List ColouredInterval :=
  [(2, 10240, 10307), (2, 12288, 12355), (2, 12288, 12355), (2, 16384, 16451), (2, 16384, 16451), (2, 16384, 16451), (3, 9477, 9544), (3, 10206, 10273), (3, 10935, 11002), (3, 11664, 11731), (3, 12393, 12460), (3, 13122, 13189), (3, 13851, 13918), (3, 14580, 14647), (3, 15309, 15376), (3, 16038, 16105), (3, 16767, 16834), (3, 17496, 17563), (3, 10935, 11002), (3, 13122, 13189), (3, 15309, 15376), (3, 17496, 17563), (3, 13122, 13189), (5, 9375, 9442), (5, 10000, 10067), (5, 10625, 10692), (5, 11250, 11317), (5, 11875, 11942), (5, 12500, 12567), (5, 13125, 13192), (5, 13750, 13817), (5, 14375, 14442), (5, 15000, 15067), (5, 15625, 15692), (5, 16250, 16317), (5, 16875, 16942), (5, 9375, 9442), (5, 12500, 12567), (5, 15625, 15692), (5, 15625, 15692), (7, 9261, 9328), (7, 9604, 9671), (7, 12005, 12072), (7, 14406, 14473), (7, 16807, 16874), (7, 16807, 16874), (11, 9317, 9384), (11, 10648, 10715), (11, 11979, 12046), (11, 13310, 13377), (11, 14641, 14708), (11, 15972, 16039), (11, 17303, 17370), (11, 14641, 14708), (13, 10985, 11052), (13, 13182, 13249), (13, 15379, 15446), (13, 17576, 17643), (19, 9386, 9453), (19, 9747, 9814), (19, 13718, 13785), (23, 9522, 9589), (23, 10051, 10118), (23, 10580, 10647), (23, 11109, 11176), (23, 11638, 11705), (23, 12167, 12234), (23, 12696, 12763), (23, 13225, 13292), (23, 13754, 13821), (23, 14283, 14350), (23, 12167, 12234), (29, 9251, 9318), (29, 10092, 10159), (29, 10933, 11000), (29, 11774, 11841), (29, 12615, 12682), (29, 13456, 13523), (29, 14297, 14364), (29, 15138, 15205), (29, 15979, 16046), (29, 16820, 16887), (29, 17661, 17728), (31, 9610, 9677), (31, 10571, 10638), (31, 11532, 11599), (31, 12493, 12560), (31, 13454, 13521), (31, 14415, 14482), (31, 15376, 15443), (31, 16337, 16404), (31, 17298, 17365), (37, 9583, 9650), (37, 10952, 11019), (37, 12321, 12388), (37, 13690, 13757), (37, 15059, 15126), (37, 16428, 16495), (37, 17797, 17864), (41, 10086, 10153), (41, 11767, 11834), (41, 13448, 13515), (41, 15129, 15196), (41, 16810, 16877), (43, 9245, 9312), (43, 11094, 11161), (43, 12943, 13010), (43, 14792, 14859), (43, 16641, 16708), (47, 11045, 11112), (47, 13254, 13321), (47, 15463, 15530), (47, 17672, 17739), (53, 11236, 11303), (53, 14045, 14112), (53, 16854, 16921), (59, 10443, 10510), (59, 13924, 13991), (59, 17405, 17472), (61, 11163, 11230), (61, 14884, 14951), (67, 13467, 13534), (67, 17956, 18023)]

def row068_layer001_block000 : List ColouredInterval :=
  [(2, 10240, 10307), (2, 12288, 12355), (2, 12288, 12355), (2, 16384, 16451), (2, 16384, 16451), (2, 16384, 16451), (3, 9477, 9544), (3, 10206, 10273), (3, 10935, 11002), (3, 11664, 11731), (3, 12393, 12460), (3, 13122, 13189), (3, 13851, 13918), (3, 14580, 14647), (3, 15309, 15376), (3, 16038, 16105)]

def row068_layer001_block001 : List ColouredInterval :=
  [(3, 16767, 16834), (3, 17496, 17563), (3, 10935, 11002), (3, 13122, 13189), (3, 15309, 15376), (3, 17496, 17563), (3, 13122, 13189), (5, 9375, 9442), (5, 10000, 10067), (5, 10625, 10692), (5, 11250, 11317), (5, 11875, 11942), (5, 12500, 12567), (5, 13125, 13192), (5, 13750, 13817), (5, 14375, 14442)]

def row068_layer001_block002 : List ColouredInterval :=
  [(5, 15000, 15067), (5, 15625, 15692), (5, 16250, 16317), (5, 16875, 16942), (5, 9375, 9442), (5, 12500, 12567), (5, 15625, 15692), (5, 15625, 15692), (7, 9261, 9328), (7, 9604, 9671), (7, 12005, 12072), (7, 14406, 14473), (7, 16807, 16874), (7, 16807, 16874), (11, 9317, 9384), (11, 10648, 10715)]

def row068_layer001_block003 : List ColouredInterval :=
  [(11, 11979, 12046), (11, 13310, 13377), (11, 14641, 14708), (11, 15972, 16039), (11, 17303, 17370), (11, 14641, 14708), (13, 10985, 11052), (13, 13182, 13249), (13, 15379, 15446), (13, 17576, 17643), (19, 9386, 9453), (19, 9747, 9814), (19, 13718, 13785), (23, 9522, 9589), (23, 10051, 10118), (23, 10580, 10647)]

def row068_layer001_block004 : List ColouredInterval :=
  [(23, 11109, 11176), (23, 11638, 11705), (23, 12167, 12234), (23, 12696, 12763), (23, 13225, 13292), (23, 13754, 13821), (23, 14283, 14350), (23, 12167, 12234), (29, 9251, 9318), (29, 10092, 10159), (29, 10933, 11000), (29, 11774, 11841), (29, 12615, 12682), (29, 13456, 13523), (29, 14297, 14364), (29, 15138, 15205)]

def row068_layer001_block005 : List ColouredInterval :=
  [(29, 15979, 16046), (29, 16820, 16887), (29, 17661, 17728), (31, 9610, 9677), (31, 10571, 10638), (31, 11532, 11599), (31, 12493, 12560), (31, 13454, 13521), (31, 14415, 14482), (31, 15376, 15443), (31, 16337, 16404), (31, 17298, 17365), (37, 9583, 9650), (37, 10952, 11019), (37, 12321, 12388), (37, 13690, 13757)]

def row068_layer001_block006 : List ColouredInterval :=
  [(37, 15059, 15126), (37, 16428, 16495), (37, 17797, 17864), (41, 10086, 10153), (41, 11767, 11834), (41, 13448, 13515), (41, 15129, 15196), (41, 16810, 16877), (43, 9245, 9312), (43, 11094, 11161), (43, 12943, 13010), (43, 14792, 14859), (43, 16641, 16708), (47, 11045, 11112), (47, 13254, 13321), (47, 15463, 15530)]

def row068_layer001_block007 : List ColouredInterval :=
  [(47, 17672, 17739), (53, 11236, 11303), (53, 14045, 14112), (53, 16854, 16921), (59, 10443, 10510), (59, 13924, 13991), (59, 17405, 17472), (61, 11163, 11230), (61, 14884, 14951), (67, 13467, 13534), (67, 17956, 18023)]

def row068_layer001_chunks : List (List ColouredInterval) :=
  [row068_layer001_block000, row068_layer001_block001, row068_layer001_block002, row068_layer001_block003, row068_layer001_block004, row068_layer001_block005, row068_layer001_block006, row068_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_arithmetic : LayerArithmeticValid row068.height { lower := 9112, upper := 18224, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_enumeration :
    activePowerIntervalList 68 27 9112 18224 = row068_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs000 :
    row068_layer001_block000.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs001 :
    row068_layer001_block001.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs002 :
    row068_layer001_block002.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs003 :
    row068_layer001_block003.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs004 :
    row068_layer001_block004.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs005 :
    row068_layer001_block005.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs006 :
    row068_layer001_block006.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_pairs007 :
    row068_layer001_block007.all (fun I => row068_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_chunks_eq : row068_layer001_chunks.flatten = row068_layer001_intervals := by
  rfl

theorem row068_layer001_pairs : pairCoverCheck row068_layer001_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer001_chunks_eq
  intro block hblock
  simp only [row068_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row068_layer001_pairs000
  · exact row068_layer001_pairs001
  · exact row068_layer001_pairs002
  · exact row068_layer001_pairs003
  · exact row068_layer001_pairs004
  · exact row068_layer001_pairs005
  · exact row068_layer001_pairs006
  · exact row068_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_checked :
    coverLayerCheck row068.height row068.goods { lower := 9112, upper := 18224, M := 27 } = true := by
  exact coverLayerCheck_of_parts row068_layer001_arithmetic row068_layer001_enumeration row068_bounds_eq row068_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer002_intervals : List ColouredInterval :=
  [(2, 20480, 20547), (2, 24576, 24643), (2, 24576, 24643), (2, 32768, 32835), (2, 32768, 32835), (2, 32768, 32835), (3, 19683, 19750), (3, 21870, 21937), (3, 24057, 24124), (3, 26244, 26311), (3, 28431, 28498), (3, 30618, 30685), (3, 32805, 32872), (3, 34992, 35059), (3, 19683, 19750), (3, 26244, 26311), (3, 32805, 32872), (3, 19683, 19750), (5, 18750, 18817), (5, 21875, 21942), (5, 25000, 25067), (5, 28125, 28192), (5, 31250, 31317), (5, 34375, 34442), (5, 31250, 31317), (7, 19208, 19275), (7, 21609, 21676), (7, 24010, 24077), (7, 26411, 26478), (7, 28812, 28879), (7, 31213, 31280), (7, 33614, 33681), (7, 36015, 36082), (7, 33614, 33681), (11, 18634, 18701), (11, 19965, 20032), (11, 21296, 21363), (11, 22627, 22694), (11, 23958, 24025), (11, 25289, 25356), (11, 26620, 26687), (11, 27951, 28018), (11, 29282, 29349), (11, 30613, 30680), (11, 31944, 32011), (11, 29282, 29349), (13, 19773, 19840), (13, 21970, 22037), (13, 24167, 24234), (13, 26364, 26431), (13, 28561, 28628), (13, 30758, 30825), (13, 32955, 33022), (13, 35152, 35219), (13, 28561, 28628), (19, 20577, 20644), (19, 27436, 27503), (19, 34295, 34362), (23, 24334, 24401), (29, 18502, 18569), (29, 19343, 19410), (29, 20184, 20251), (29, 24389, 24456), (31, 18259, 18326), (31, 19220, 19287), (31, 20181, 20248), (31, 21142, 21209), (31, 22103, 22170), (31, 23064, 23131), (31, 29791, 29858), (37, 19166, 19233), (37, 20535, 20602), (37, 21904, 21971), (37, 23273, 23340), (37, 24642, 24709), (37, 26011, 26078), (37, 27380, 27447), (37, 28749, 28816), (37, 30118, 30185), (37, 31487, 31554), (37, 32856, 32923), (41, 18491, 18558), (41, 20172, 20239), (41, 21853, 21920), (41, 23534, 23601), (41, 25215, 25282), (41, 26896, 26963), (41, 28577, 28644), (41, 30258, 30325), (41, 31939, 32006), (41, 33620, 33687), (41, 35301, 35368), (43, 18490, 18557), (43, 20339, 20406), (43, 22188, 22255), (43, 24037, 24104), (43, 25886, 25953), (43, 27735, 27802), (43, 29584, 29651), (43, 31433, 31500), (43, 33282, 33349), (43, 35131, 35198), (47, 19881, 19948), (47, 22090, 22157), (47, 24299, 24366), (47, 26508, 26575), (47, 28717, 28784), (47, 30926, 30993), (47, 33135, 33202), (47, 35344, 35411), (53, 19663, 19730), (53, 22472, 22539), (53, 25281, 25348), (53, 28090, 28157), (53, 30899, 30966), (53, 33708, 33775), (59, 20886, 20953), (59, 24367, 24434), (59, 27848, 27915), (59, 31329, 31396), (59, 34810, 34877), (61, 18605, 18672), (61, 22326, 22393), (61, 26047, 26114), (61, 29768, 29835), (61, 33489, 33556), (67, 22445, 22512), (67, 26934, 27001), (67, 31423, 31490), (67, 35912, 35979)]

def row068_layer002_block000 : List ColouredInterval :=
  [(2, 20480, 20547), (2, 24576, 24643), (2, 24576, 24643), (2, 32768, 32835), (2, 32768, 32835), (2, 32768, 32835), (3, 19683, 19750), (3, 21870, 21937), (3, 24057, 24124), (3, 26244, 26311), (3, 28431, 28498), (3, 30618, 30685), (3, 32805, 32872), (3, 34992, 35059), (3, 19683, 19750)]

def row068_layer002_block001 : List ColouredInterval :=
  [(3, 26244, 26311), (3, 32805, 32872), (3, 19683, 19750), (5, 18750, 18817), (5, 21875, 21942), (5, 25000, 25067), (5, 28125, 28192), (5, 31250, 31317), (5, 34375, 34442), (5, 31250, 31317), (7, 19208, 19275), (7, 21609, 21676), (7, 24010, 24077), (7, 26411, 26478), (7, 28812, 28879)]

def row068_layer002_block002 : List ColouredInterval :=
  [(7, 31213, 31280), (7, 33614, 33681), (7, 36015, 36082), (7, 33614, 33681), (11, 18634, 18701), (11, 19965, 20032), (11, 21296, 21363), (11, 22627, 22694), (11, 23958, 24025), (11, 25289, 25356), (11, 26620, 26687), (11, 27951, 28018), (11, 29282, 29349), (11, 30613, 30680), (11, 31944, 32011)]

def row068_layer002_block003 : List ColouredInterval :=
  [(11, 29282, 29349), (13, 19773, 19840), (13, 21970, 22037), (13, 24167, 24234), (13, 26364, 26431), (13, 28561, 28628), (13, 30758, 30825), (13, 32955, 33022), (13, 35152, 35219), (13, 28561, 28628), (19, 20577, 20644), (19, 27436, 27503), (19, 34295, 34362), (23, 24334, 24401), (29, 18502, 18569)]

def row068_layer002_block004 : List ColouredInterval :=
  [(29, 19343, 19410), (29, 20184, 20251), (29, 24389, 24456), (31, 18259, 18326), (31, 19220, 19287), (31, 20181, 20248), (31, 21142, 21209), (31, 22103, 22170), (31, 23064, 23131), (31, 29791, 29858), (37, 19166, 19233), (37, 20535, 20602), (37, 21904, 21971), (37, 23273, 23340), (37, 24642, 24709)]

def row068_layer002_block005 : List ColouredInterval :=
  [(37, 26011, 26078), (37, 27380, 27447), (37, 28749, 28816), (37, 30118, 30185), (37, 31487, 31554), (37, 32856, 32923), (41, 18491, 18558), (41, 20172, 20239), (41, 21853, 21920), (41, 23534, 23601), (41, 25215, 25282), (41, 26896, 26963), (41, 28577, 28644), (41, 30258, 30325), (41, 31939, 32006)]

def row068_layer002_block006 : List ColouredInterval :=
  [(41, 33620, 33687), (41, 35301, 35368), (43, 18490, 18557), (43, 20339, 20406), (43, 22188, 22255), (43, 24037, 24104), (43, 25886, 25953), (43, 27735, 27802), (43, 29584, 29651), (43, 31433, 31500), (43, 33282, 33349), (43, 35131, 35198), (47, 19881, 19948), (47, 22090, 22157), (47, 24299, 24366)]

def row068_layer002_block007 : List ColouredInterval :=
  [(47, 26508, 26575), (47, 28717, 28784), (47, 30926, 30993), (47, 33135, 33202), (47, 35344, 35411), (53, 19663, 19730), (53, 22472, 22539), (53, 25281, 25348), (53, 28090, 28157), (53, 30899, 30966), (53, 33708, 33775), (59, 20886, 20953), (59, 24367, 24434), (59, 27848, 27915), (59, 31329, 31396)]

def row068_layer002_block008 : List ColouredInterval :=
  [(59, 34810, 34877), (61, 18605, 18672), (61, 22326, 22393), (61, 26047, 26114), (61, 29768, 29835), (61, 33489, 33556), (67, 22445, 22512), (67, 26934, 27001), (67, 31423, 31490), (67, 35912, 35979)]

def row068_layer002_chunks : List (List ColouredInterval) :=
  [row068_layer002_block000, row068_layer002_block001, row068_layer002_block002, row068_layer002_block003, row068_layer002_block004, row068_layer002_block005, row068_layer002_block006, row068_layer002_block007, row068_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_arithmetic : LayerArithmeticValid row068.height { lower := 18224, upper := 36448, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_enumeration :
    activePowerIntervalList 68 24 18224 36448 = row068_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs000 :
    row068_layer002_block000.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs001 :
    row068_layer002_block001.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs002 :
    row068_layer002_block002.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs003 :
    row068_layer002_block003.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs004 :
    row068_layer002_block004.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs005 :
    row068_layer002_block005.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs006 :
    row068_layer002_block006.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs007 :
    row068_layer002_block007.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_pairs008 :
    row068_layer002_block008.all (fun I => row068_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_chunks_eq : row068_layer002_chunks.flatten = row068_layer002_intervals := by
  rfl

theorem row068_layer002_pairs : pairCoverCheck row068_layer002_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer002_chunks_eq
  intro block hblock
  simp only [row068_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row068_layer002_pairs000
  · exact row068_layer002_pairs001
  · exact row068_layer002_pairs002
  · exact row068_layer002_pairs003
  · exact row068_layer002_pairs004
  · exact row068_layer002_pairs005
  · exact row068_layer002_pairs006
  · exact row068_layer002_pairs007
  · exact row068_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer002_checked :
    coverLayerCheck row068.height row068.goods { lower := 18224, upper := 36448, M := 24 } = true := by
  exact coverLayerCheck_of_parts row068_layer002_arithmetic row068_layer002_enumeration row068_bounds_eq row068_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer003_intervals : List ColouredInterval :=
  [(2, 40960, 41027), (2, 49152, 49219), (2, 65536, 65603), (2, 65536, 65603), (2, 65536, 65603), (3, 37179, 37246), (3, 39366, 39433), (3, 41553, 41620), (3, 43740, 43807), (3, 45927, 45994), (3, 39366, 39433), (3, 45927, 45994), (3, 52488, 52555), (3, 59049, 59116), (3, 65610, 65677), (3, 72171, 72238), (3, 39366, 39433), (3, 59049, 59116), (3, 59049, 59116), (5, 37500, 37567), (5, 40625, 40692), (5, 43750, 43817), (5, 46875, 46942), (5, 50000, 50067), (5, 53125, 53192), (5, 56250, 56317), (5, 59375, 59442), (5, 62500, 62567), (5, 65625, 65692), (5, 46875, 46942), (5, 62500, 62567), (7, 38416, 38483), (7, 40817, 40884), (7, 43218, 43285), (7, 45619, 45686), (7, 48020, 48087), (7, 50421, 50488), (7, 50421, 50488), (7, 67228, 67295), (11, 43923, 43990), (11, 58564, 58631), (13, 37349, 37416), (13, 39546, 39613), (13, 41743, 41810), (13, 43940, 44007), (13, 46137, 46204), (13, 57122, 57189), (19, 41154, 41221), (19, 48013, 48080), (19, 54872, 54939), (19, 61731, 61798), (19, 68590, 68657), (23, 36501, 36568), (23, 48668, 48735), (23, 60835, 60902), (29, 48778, 48845), (31, 59582, 59649), (37, 50653, 50720), (41, 68921, 68988), (43, 36980, 37047), (43, 38829, 38896), (47, 37553, 37620), (47, 39762, 39829), (47, 41971, 42038), (47, 44180, 44247), (47, 46389, 46456), (53, 36517, 36584), (53, 39326, 39393), (53, 42135, 42202), (53, 44944, 45011), (53, 47753, 47820), (53, 50562, 50629), (53, 53371, 53438), (53, 56180, 56247), (53, 58989, 59056), (59, 38291, 38358), (59, 41772, 41839), (59, 45253, 45320), (59, 48734, 48801), (59, 52215, 52282), (59, 55696, 55763), (59, 59177, 59244), (59, 62658, 62725), (59, 66139, 66206), (59, 69620, 69687), (61, 37210, 37277), (61, 40931, 40998), (61, 44652, 44719), (61, 48373, 48440), (61, 52094, 52161), (61, 55815, 55882), (61, 59536, 59603), (61, 63257, 63324), (61, 66978, 67045), (61, 70699, 70766), (67, 40401, 40468), (67, 44890, 44957), (67, 49379, 49446), (67, 53868, 53935), (67, 58357, 58424), (67, 62846, 62913), (67, 67335, 67402), (67, 71824, 71891)]

def row068_layer003_block000 : List ColouredInterval :=
  [(2, 40960, 41027), (2, 49152, 49219), (2, 65536, 65603), (2, 65536, 65603), (2, 65536, 65603), (3, 37179, 37246), (3, 39366, 39433), (3, 41553, 41620), (3, 43740, 43807), (3, 45927, 45994), (3, 39366, 39433), (3, 45927, 45994), (3, 52488, 52555), (3, 59049, 59116), (3, 65610, 65677), (3, 72171, 72238)]

def row068_layer003_block001 : List ColouredInterval :=
  [(3, 39366, 39433), (3, 59049, 59116), (3, 59049, 59116), (5, 37500, 37567), (5, 40625, 40692), (5, 43750, 43817), (5, 46875, 46942), (5, 50000, 50067), (5, 53125, 53192), (5, 56250, 56317), (5, 59375, 59442), (5, 62500, 62567), (5, 65625, 65692), (5, 46875, 46942), (5, 62500, 62567), (7, 38416, 38483)]

def row068_layer003_block002 : List ColouredInterval :=
  [(7, 40817, 40884), (7, 43218, 43285), (7, 45619, 45686), (7, 48020, 48087), (7, 50421, 50488), (7, 50421, 50488), (7, 67228, 67295), (11, 43923, 43990), (11, 58564, 58631), (13, 37349, 37416), (13, 39546, 39613), (13, 41743, 41810), (13, 43940, 44007), (13, 46137, 46204), (13, 57122, 57189), (19, 41154, 41221)]

def row068_layer003_block003 : List ColouredInterval :=
  [(19, 48013, 48080), (19, 54872, 54939), (19, 61731, 61798), (19, 68590, 68657), (23, 36501, 36568), (23, 48668, 48735), (23, 60835, 60902), (29, 48778, 48845), (31, 59582, 59649), (37, 50653, 50720), (41, 68921, 68988), (43, 36980, 37047), (43, 38829, 38896), (47, 37553, 37620), (47, 39762, 39829), (47, 41971, 42038)]

def row068_layer003_block004 : List ColouredInterval :=
  [(47, 44180, 44247), (47, 46389, 46456), (53, 36517, 36584), (53, 39326, 39393), (53, 42135, 42202), (53, 44944, 45011), (53, 47753, 47820), (53, 50562, 50629), (53, 53371, 53438), (53, 56180, 56247), (53, 58989, 59056), (59, 38291, 38358), (59, 41772, 41839), (59, 45253, 45320), (59, 48734, 48801), (59, 52215, 52282)]

def row068_layer003_block005 : List ColouredInterval :=
  [(59, 55696, 55763), (59, 59177, 59244), (59, 62658, 62725), (59, 66139, 66206), (59, 69620, 69687), (61, 37210, 37277), (61, 40931, 40998), (61, 44652, 44719), (61, 48373, 48440), (61, 52094, 52161), (61, 55815, 55882), (61, 59536, 59603), (61, 63257, 63324), (61, 66978, 67045), (61, 70699, 70766), (67, 40401, 40468)]

def row068_layer003_block006 : List ColouredInterval :=
  [(67, 44890, 44957), (67, 49379, 49446), (67, 53868, 53935), (67, 58357, 58424), (67, 62846, 62913), (67, 67335, 67402), (67, 71824, 71891)]

def row068_layer003_chunks : List (List ColouredInterval) :=
  [row068_layer003_block000, row068_layer003_block001, row068_layer003_block002, row068_layer003_block003, row068_layer003_block004, row068_layer003_block005, row068_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_arithmetic : LayerArithmeticValid row068.height { lower := 36448, upper := 72896, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_enumeration :
    activePowerIntervalList 68 21 36448 72896 = row068_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs000 :
    row068_layer003_block000.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs001 :
    row068_layer003_block001.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs001
