import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_height : HeightCertificateDatum := { i := 76, r := 25, s := 52, n0Power10 := 12 }

def row076_goods : List GoodSegment := [
  { lower := 154, upper := 226, witness := RowWitness.topPrime 151 },
  { lower := 227, upper := 302, witness := RowWitness.topPrime 227 },
  { lower := 303, upper := 368, witness := RowWitness.topPrime 293 },
  { lower := 369, upper := 442, witness := RowWitness.topPrime 367 },
  { lower := 443, upper := 518, witness := RowWitness.topPrime 443 },
  { lower := 519, upper := 584, witness := RowWitness.topPrime 509 },
  { lower := 585, upper := 652, witness := RowWitness.topPrime 577 },
  { lower := 653, upper := 728, witness := RowWitness.topPrime 653 },
  { lower := 729, upper := 802, witness := RowWitness.topPrime 727 },
  { lower := 803, upper := 872, witness := RowWitness.topPrime 797 },
  { lower := 873, upper := 938, witness := RowWitness.topPrime 863 },
  { lower := 939, upper := 1012, witness := RowWitness.topPrime 937 },
  { lower := 1013, upper := 1088, witness := RowWitness.topPrime 1013 },
  { lower := 1089, upper := 1162, witness := RowWitness.topPrime 1087 },
  { lower := 1163, upper := 1238, witness := RowWitness.topPrime 1163 },
  { lower := 1239, upper := 1312, witness := RowWitness.topPrime 1237 },
  { lower := 1313, upper := 1382, witness := RowWitness.topPrime 1307 },
  { lower := 1383, upper := 1456, witness := RowWitness.topPrime 1381 },
  { lower := 1457, upper := 1528, witness := RowWitness.topPrime 1453 },
  { lower := 1529, upper := 1598, witness := RowWitness.topPrime 1523 },
  { lower := 1599, upper := 1672, witness := RowWitness.topPrime 1597 },
  { lower := 1673, upper := 1744, witness := RowWitness.topPrime 1669 },
  { lower := 1745, upper := 1816, witness := RowWitness.topPrime 1741 },
  { lower := 1817, upper := 1886, witness := RowWitness.topPrime 1811 },
  { lower := 1887, upper := 1954, witness := RowWitness.topPrime 1879 },
  { lower := 1955, upper := 2026, witness := RowWitness.topPrime 1951 },
  { lower := 2027, upper := 2102, witness := RowWitness.topPrime 2027 },
  { lower := 2103, upper := 2174, witness := RowWitness.topPrime 2099 },
  { lower := 2175, upper := 2236, witness := RowWitness.topPrime 2161 },
  { lower := 2237, upper := 2312, witness := RowWitness.topPrime 2237 },
  { lower := 2313, upper := 2386, witness := RowWitness.topPrime 2311 },
  { lower := 2387, upper := 2458, witness := RowWitness.topPrime 2383 },
  { lower := 2459, upper := 2534, witness := RowWitness.topPrime 2459 },
  { lower := 2535, upper := 2606, witness := RowWitness.topPrime 2531 },
  { lower := 2607, upper := 2668, witness := RowWitness.topPrime 2593 },
  { lower := 2669, upper := 2738, witness := RowWitness.topPrime 2663 },
  { lower := 2739, upper := 2806, witness := RowWitness.topPrime 2731 },
  { lower := 2807, upper := 2878, witness := RowWitness.topPrime 2803 },
  { lower := 2879, upper := 2954, witness := RowWitness.topPrime 2879 },
  { lower := 2955, upper := 3028, witness := RowWitness.topPrime 2953 },
  { lower := 3029, upper := 3098, witness := RowWitness.topPrime 3023 },
  { lower := 3099, upper := 3164, witness := RowWitness.topPrime 3089 },
  { lower := 3165, upper := 3238, witness := RowWitness.topPrime 3163 },
  { lower := 3239, upper := 3304, witness := RowWitness.topPrime 3229 },
  { lower := 3305, upper := 3376, witness := RowWitness.topPrime 3301 },
  { lower := 3377, upper := 3448, witness := RowWitness.topPrime 3373 },
  { lower := 3449, upper := 3524, witness := RowWitness.topPrime 3449 },
  { lower := 3525, upper := 3592, witness := RowWitness.topPrime 3517 },
  { lower := 3593, upper := 3668, witness := RowWitness.topPrime 3593 },
  { lower := 3669, upper := 3734, witness := RowWitness.topPrime 3659 },
  { lower := 3735, upper := 3808, witness := RowWitness.topPrime 3733 },
  { lower := 3809, upper := 3878, witness := RowWitness.topPrime 3803 },
  { lower := 3879, upper := 3952, witness := RowWitness.topPrime 3877 },
  { lower := 3953, upper := 4022, witness := RowWitness.topPrime 3947 },
  { lower := 4023, upper := 4096, witness := RowWitness.topPrime 4021 },
  { lower := 4097, upper := 4168, witness := RowWitness.topPrime 4093 },
  { lower := 4169, upper := 4234, witness := RowWitness.topPrime 4159 },
  { lower := 4235, upper := 4306, witness := RowWitness.topPrime 4231 },
  { lower := 4307, upper := 4372, witness := RowWitness.topPrime 4297 },
  { lower := 4373, upper := 4448, witness := RowWitness.topPrime 4373 },
  { lower := 4449, upper := 4522, witness := RowWitness.topPrime 4447 },
  { lower := 4523, upper := 4598, witness := RowWitness.topPrime 4523 },
  { lower := 4599, upper := 4672, witness := RowWitness.topPrime 4597 },
  { lower := 4673, upper := 4748, witness := RowWitness.topPrime 4673 },
  { lower := 4749, upper := 4808, witness := RowWitness.topPrime 4733 },
  { lower := 4809, upper := 4876, witness := RowWitness.topPrime 4801 },
  { lower := 4877, upper := 4952, witness := RowWitness.topPrime 4877 },
  { lower := 4953, upper := 5026, witness := RowWitness.topPrime 4951 },
  { lower := 5027, upper := 5098, witness := RowWitness.topPrime 5023 },
  { lower := 5099, upper := 5174, witness := RowWitness.topPrime 5099 },
  { lower := 5175, upper := 5246, witness := RowWitness.topPrime 5171 },
  { lower := 5247, upper := 5312, witness := RowWitness.topPrime 5237 },
  { lower := 5313, upper := 5384, witness := RowWitness.topPrime 5309 },
  { lower := 5385, upper := 5456, witness := RowWitness.topPrime 5381 },
  { lower := 5457, upper := 5524, witness := RowWitness.topPrime 5449 },
  { lower := 5525, upper := 5596, witness := RowWitness.topPrime 5521 },
  { lower := 5597, upper := 5666, witness := RowWitness.topPrime 5591 },
  { lower := 5667, upper := 5699, witness := RowWitness.topPrime 5659 },
  { lower := 5780, upper := 5854, witness := RowWitness.topPrime 5779 },
  { lower := 5855, upper := 5907, witness := RowWitness.topPrime 5851 },
  { lower := 6075, upper := 6148, witness := RowWitness.topPrime 6073 },
  { lower := 6149, upper := 6150, witness := RowWitness.topPrime 6143 },
  { lower := 6174, upper := 6219, witness := RowWitness.topPrime 6173 },
  { lower := 6318, upper := 6325, witness := RowWitness.topPrime 6317 },
  { lower := 6348, upper := 6418, witness := RowWitness.topPrime 6343 },
  { lower := 6419, upper := 6423, witness := RowWitness.topPrime 6397 },
  { lower := 6561, upper := 6628, witness := RowWitness.topPrime 6553 },
  { lower := 6629, upper := 6694, witness := RowWitness.topPrime 6619 },
  { lower := 6695, upper := 6722, witness := RowWitness.topPrime 6691 },
  { lower := 6724, upper := 6794, witness := RowWitness.topPrime 6719 },
  { lower := 6795, upper := 6802, witness := RowWitness.topPrime 6793 },
  { lower := 6845, upper := 6916, witness := RowWitness.topPrime 6841 },
  { lower := 6917, upper := 6952, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7011, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7268, witness := RowWitness.topPrime 7193 },
  { lower := 7269, upper := 7278, witness := RowWitness.topPrime 7253 },
  { lower := 7290, upper := 7300, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7468, witness := RowWitness.topPrime 7393 },
  { lower := 7469, upper := 7481, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7574, witness := RowWitness.topPrime 7499 },
  { lower := 7575, upper := 7621, witness := RowWitness.topPrime 7573 },
  { lower := 7803, upper := 7851, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 7964, witness := RowWitness.topPrime 7933 },
  { lower := 7986, upper := 8010, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8061, witness := RowWitness.topPrime 8017 },
  { lower := 8092, upper := 8094, witness := RowWitness.topPrime 8089 },
  { lower := 8125, upper := 8167, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8200, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8284, witness := RowWitness.topPrime 8209 },
  { lower := 8285, upper := 8289, witness := RowWitness.topPrime 8273 },
  { lower := 8405, upper := 8464, witness := RowWitness.topPrime 8389 },
  { lower := 8465, upper := 8502, witness := RowWitness.topPrime 8461 },
  { lower := 8649, upper := 8650, witness := RowWitness.topPrime 8647 },
  { lower := 8670, upper := 8724, witness := RowWitness.topPrime 8669 },
  { lower := 8750, upper := 8822, witness := RowWitness.topPrime 8747 },
  { lower := 8823, upper := 8825, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8863, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 9026, witness := RowWitness.topPrime 8951 },
  { lower := 9027, upper := 9053, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9316, witness := RowWitness.topPrime 9241 },
  { lower := 9317, upper := 9336, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9392, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9552, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9597, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9676, witness := RowWitness.topPrime 9601 },
  { lower := 9677, upper := 9679, witness := RowWitness.topPrime 9677 },
  { lower := 10000, upper := 10022, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10075, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10154, witness := RowWitness.topPrime 10079 },
  { lower := 10155, upper := 10161, witness := RowWitness.topPrime 10151 },
  { lower := 10240, upper := 10281, witness := RowWitness.topPrime 10223 },
  { lower := 10290, upper := 10315, witness := RowWitness.topPrime 10289 },
  { lower := 10580, upper := 10642, witness := RowWitness.topPrime 10567 },
  { lower := 10643, upper := 10714, witness := RowWitness.topPrime 10639 },
  { lower := 10715, upper := 10723, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10984, witness := RowWitness.topPrime 10909 },
  { lower := 10985, upper := 11054, witness := RowWitness.topPrime 10979 },
  { lower := 11055, upper := 11060, witness := RowWitness.topPrime 11047 },
  { lower := 11094, upper := 11168, witness := RowWitness.topPrime 11093 },
  { lower := 11169, upper := 11184, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11238, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11311, witness := RowWitness.topPrime 11243 },
  { lower := 11664, upper := 11713, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11818, witness := RowWitness.topPrime 11743 },
  { lower := 11819, upper := 11842, witness := RowWitness.topPrime 11813 },
  { lower := 12005, upper := 12054, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12363, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12396, witness := RowWitness.topPrime 12391 },
  { lower := 12500, upper := 12568, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13196, witness := RowWitness.topPrime 13121 },
  { lower := 13197, upper := 13200, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13294, witness := RowWitness.topPrime 13219 },
  { lower := 13295, upper := 13300, witness := RowWitness.topPrime 13291 },
  { lower := 13310, upper := 13329, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13526, witness := RowWitness.topPrime 13451 },
  { lower := 13527, upper := 13531, witness := RowWitness.topPrime 13523 },
  { lower := 13750, upper := 13804, witness := RowWitness.topPrime 13729 },
  { lower := 13805, upper := 13825, witness := RowWitness.topPrime 13799 },
  { lower := 13924, upper := 13926, witness := RowWitness.topPrime 13921 },
  { lower := 14297, upper := 14368, witness := RowWitness.topPrime 14293 },
  { lower := 14369, upper := 14372, witness := RowWitness.topPrime 14369 },
  { lower := 14375, upper := 14444, witness := RowWitness.topPrime 14369 },
  { lower := 14445, upper := 14481, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14655, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14858, witness := RowWitness.topPrime 14783 },
  { lower := 14859, upper := 14867, witness := RowWitness.topPrime 14851 },
  { lower := 14884, upper := 14887, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15075, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15196, witness := RowWitness.topPrime 15121 },
  { lower := 15197, upper := 15204, witness := RowWitness.topPrime 15193 },
  { lower := 15376, upper := 15448, witness := RowWitness.topPrime 15373 },
  { lower := 15449, upper := 15451, witness := RowWitness.topPrime 15443 },
  { lower := 15979, upper := 16048, witness := RowWitness.topPrime 15973 },
  { lower := 16049, upper := 16062, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16412, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16459, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16862, witness := RowWitness.topPrime 16787 },
  { lower := 16863, upper := 16918, witness := RowWitness.topPrime 16843 },
  { lower := 16919, upper := 16929, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17373, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17571, witness := RowWitness.topPrime 17497 },
  { lower := 17672, upper := 17736, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18300, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18556, witness := RowWitness.topPrime 18481 },
  { lower := 18557, upper := 18566, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18680, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19282, witness := RowWitness.topPrime 19207 },
  { lower := 19283, upper := 19283, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19736, witness := RowWitness.topPrime 19661 },
  { lower := 19737, upper := 19738, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20236, witness := RowWitness.topPrime 20161 },
  { lower := 20237, upper := 20256, witness := RowWitness.topPrime 20233 },
  { lower := 20412, upper := 20414, witness := RowWitness.topPrime 20411 },
  { lower := 20480, upper := 20487, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20555, witness := RowWitness.topPrime 20533 },
  { lower := 21316, upper := 21371, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21938, witness := RowWitness.topPrime 21863 },
  { lower := 21939, upper := 21950, witness := RowWitness.topPrime 21937 },
  { lower := 21970, upper := 21979, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22165, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22520, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24033, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24104, witness := RowWitness.topPrime 24029 },
  { lower := 24105, upper := 24112, witness := RowWitness.topPrime 24103 },
  { lower := 24334, upper := 24404, witness := RowWitness.topPrime 24329 },
  { lower := 24405, upper := 24442, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24640, witness := RowWitness.topPrime 24571 },
  { lower := 24642, upper := 24651, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25264, witness := RowWitness.topPrime 25189 },
  { lower := 25265, upper := 25336, witness := RowWitness.topPrime 25261 },
  { lower := 25337, upper := 25356, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26086, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26439, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26695, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26971, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28165, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28636, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28792, witness := RowWitness.topPrime 28729 },
  { lower := 28812, upper := 28824, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29843, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30321, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30668, witness := RowWitness.topPrime 30593 },
  { lower := 30669, upper := 30688, witness := RowWitness.topPrime 30661 },
  { lower := 30926, upper := 30974, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31288, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31472, witness := RowWitness.topPrime 31397 },
  { lower := 31473, upper := 31508, witness := RowWitness.topPrime 31469 },
  { lower := 31944, upper := 31982, witness := RowWitness.topPrime 31907 },
  { lower := 31983, upper := 32019, witness := RowWitness.topPrime 31981 },
  { lower := 32805, upper := 32843, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32880, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33689, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34450, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35206, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35366, witness := RowWitness.topPrime 35291 },
  { lower := 35367, upper := 35376, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36572, witness := RowWitness.topPrime 36497 },
  { lower := 36573, upper := 36576, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37054, witness := RowWitness.topPrime 36979 },
  { lower := 37055, upper := 37055, witness := RowWitness.topPrime 37049 },
  { lower := 37210, upper := 37254, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37378, witness := RowWitness.topPrime 37339 },
  { lower := 37553, upper := 37575, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39398, witness := RowWitness.topPrime 39323 },
  { lower := 39399, upper := 39401, witness := RowWitness.topPrime 39397 },
  { lower := 40344, upper := 40418, witness := RowWitness.topPrime 40343 },
  { lower := 40419, upper := 40419, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40700, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41006, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41818, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43796, witness := RowWitness.topPrime 43721 },
  { lower := 43797, upper := 43815, witness := RowWitness.topPrime 43793 },
  { lower := 43940, upper := 43998, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44255, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44965, witness := RowWitness.topPrime 44939 },
  { lower := 48020, upper := 48036, witness := RowWitness.topPrime 48017 },
  { lower := 48734, upper := 48743, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48809, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49205, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50485, witness := RowWitness.topPrime 50417 },
  { lower := 56250, upper := 56255, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58639, witness := RowWitness.topPrime 58613 },
  { lower := 58989, upper := 59031, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59064, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59611, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65596, witness := RowWitness.topPrime 65521 },
  { lower := 65597, upper := 65608, witness := RowWitness.topPrime 65587 },
  { lower := 65610, upper := 65611, witness := RowWitness.topPrime 65609 },
  { lower := 65625, upper := 65685, witness := RowWitness.topPrime 65617 },
  { lower := 73167, upper := 73176, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73242, witness := RowWitness.topPrime 73189 },
  { lower := 78141, upper := 78200, witness := RowWitness.topPrime 78139 },
  { lower := 85291, upper := 85334, witness := RowWitness.topPrime 85259 },
  { lower := 85335, upper := 85366, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85758, witness := RowWitness.topPrime 85691 },
  { lower := 137842, upper := 137856, witness := RowWitness.topPrime 137831 }
]

def row076_layers : List CoverLayer := [
  { lower := 5700, upper := 11400, M := 32 },
  { lower := 11400, upper := 22800, M := 28 },
  { lower := 22800, upper := 45600, M := 24 },
  { lower := 45600, upper := 91200, M := 21 },
  { lower := 91200, upper := 182400, M := 18 },
  { lower := 182400, upper := 364800, M := 16 },
  { lower := 364800, upper := 729600, M := 14 },
  { lower := 729600, upper := 1459200, M := 12 },
  { lower := 1459200, upper := 2918400, M := 11 },
  { lower := 2918400, upper := 5836800, M := 9 },
  { lower := 5836800, upper := 11673600, M := 8 },
  { lower := 11673600, upper := 23347200, M := 7 },
  { lower := 23347200, upper := 46694400, M := 6 },
  { lower := 46694400, upper := 93388800, M := 6 },
  { lower := 93388800, upper := 186777600, M := 5 },
  { lower := 186777600, upper := 373555200, M := 4 },
  { lower := 373555200, upper := 747110400, M := 4 },
  { lower := 747110400, upper := 1494220800, M := 3 },
  { lower := 1494220800, upper := 2988441600, M := 3 },
  { lower := 2988441600, upper := 5976883200, M := 3 },
  { lower := 5976883200, upper := 11953766400, M := 2 },
  { lower := 11953766400, upper := 23907532800, M := 2 },
  { lower := 23907532800, upper := 47815065600, M := 2 },
  { lower := 47815065600, upper := 95630131200, M := 2 },
  { lower := 95630131200, upper := 191260262400, M := 2 },
  { lower := 191260262400, upper := 382520524800, M := 1 },
  { lower := 382520524800, upper := 765041049600, M := 1 },
  { lower := 765041049600, upper := 1000000000000, M := 1 }
]

def row076 : FiniteCoverRow := {
  height := row076_height,
  goods := row076_goods,
  layers := row076_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good000_checked :
    goodSegmentCheck 76 25 52
      { lower := 154, upper := 226, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good001_checked :
    goodSegmentCheck 76 25 52
      { lower := 227, upper := 302, witness := RowWitness.topPrime 227 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good002_checked :
    goodSegmentCheck 76 25 52
      { lower := 303, upper := 368, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good003_checked :
    goodSegmentCheck 76 25 52
      { lower := 369, upper := 442, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good004_checked :
    goodSegmentCheck 76 25 52
      { lower := 443, upper := 518, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good005_checked :
    goodSegmentCheck 76 25 52
      { lower := 519, upper := 584, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good006_checked :
    goodSegmentCheck 76 25 52
      { lower := 585, upper := 652, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good007_checked :
    goodSegmentCheck 76 25 52
      { lower := 653, upper := 728, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good008_checked :
    goodSegmentCheck 76 25 52
      { lower := 729, upper := 802, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good009_checked :
    goodSegmentCheck 76 25 52
      { lower := 803, upper := 872, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good010_checked :
    goodSegmentCheck 76 25 52
      { lower := 873, upper := 938, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good011_checked :
    goodSegmentCheck 76 25 52
      { lower := 939, upper := 1012, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good012_checked :
    goodSegmentCheck 76 25 52
      { lower := 1013, upper := 1088, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good013_checked :
    goodSegmentCheck 76 25 52
      { lower := 1089, upper := 1162, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good014_checked :
    goodSegmentCheck 76 25 52
      { lower := 1163, upper := 1238, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good015_checked :
    goodSegmentCheck 76 25 52
      { lower := 1239, upper := 1312, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good016_checked :
    goodSegmentCheck 76 25 52
      { lower := 1313, upper := 1382, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good017_checked :
    goodSegmentCheck 76 25 52
      { lower := 1383, upper := 1456, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good018_checked :
    goodSegmentCheck 76 25 52
      { lower := 1457, upper := 1528, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good019_checked :
    goodSegmentCheck 76 25 52
      { lower := 1529, upper := 1598, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good020_checked :
    goodSegmentCheck 76 25 52
      { lower := 1599, upper := 1672, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good021_checked :
    goodSegmentCheck 76 25 52
      { lower := 1673, upper := 1744, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good022_checked :
    goodSegmentCheck 76 25 52
      { lower := 1745, upper := 1816, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good023_checked :
    goodSegmentCheck 76 25 52
      { lower := 1817, upper := 1886, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good024_checked :
    goodSegmentCheck 76 25 52
      { lower := 1887, upper := 1954, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good025_checked :
    goodSegmentCheck 76 25 52
      { lower := 1955, upper := 2026, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good026_checked :
    goodSegmentCheck 76 25 52
      { lower := 2027, upper := 2102, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good027_checked :
    goodSegmentCheck 76 25 52
      { lower := 2103, upper := 2174, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good028_checked :
    goodSegmentCheck 76 25 52
      { lower := 2175, upper := 2236, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good029_checked :
    goodSegmentCheck 76 25 52
      { lower := 2237, upper := 2312, witness := RowWitness.topPrime 2237 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good030_checked :
    goodSegmentCheck 76 25 52
      { lower := 2313, upper := 2386, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good031_checked :
    goodSegmentCheck 76 25 52
      { lower := 2387, upper := 2458, witness := RowWitness.topPrime 2383 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good032_checked :
    goodSegmentCheck 76 25 52
      { lower := 2459, upper := 2534, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good033_checked :
    goodSegmentCheck 76 25 52
      { lower := 2535, upper := 2606, witness := RowWitness.topPrime 2531 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good034_checked :
    goodSegmentCheck 76 25 52
      { lower := 2607, upper := 2668, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good035_checked :
    goodSegmentCheck 76 25 52
      { lower := 2669, upper := 2738, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good036_checked :
    goodSegmentCheck 76 25 52
      { lower := 2739, upper := 2806, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good037_checked :
    goodSegmentCheck 76 25 52
      { lower := 2807, upper := 2878, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good038_checked :
    goodSegmentCheck 76 25 52
      { lower := 2879, upper := 2954, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good039_checked :
    goodSegmentCheck 76 25 52
      { lower := 2955, upper := 3028, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good040_checked :
    goodSegmentCheck 76 25 52
      { lower := 3029, upper := 3098, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good041_checked :
    goodSegmentCheck 76 25 52
      { lower := 3099, upper := 3164, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good042_checked :
    goodSegmentCheck 76 25 52
      { lower := 3165, upper := 3238, witness := RowWitness.topPrime 3163 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good043_checked :
    goodSegmentCheck 76 25 52
      { lower := 3239, upper := 3304, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good044_checked :
    goodSegmentCheck 76 25 52
      { lower := 3305, upper := 3376, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good045_checked :
    goodSegmentCheck 76 25 52
      { lower := 3377, upper := 3448, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good046_checked :
    goodSegmentCheck 76 25 52
      { lower := 3449, upper := 3524, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good047_checked :
    goodSegmentCheck 76 25 52
      { lower := 3525, upper := 3592, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good048_checked :
    goodSegmentCheck 76 25 52
      { lower := 3593, upper := 3668, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good049_checked :
    goodSegmentCheck 76 25 52
      { lower := 3669, upper := 3734, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good050_checked :
    goodSegmentCheck 76 25 52
      { lower := 3735, upper := 3808, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good051_checked :
    goodSegmentCheck 76 25 52
      { lower := 3809, upper := 3878, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good052_checked :
    goodSegmentCheck 76 25 52
      { lower := 3879, upper := 3952, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good053_checked :
    goodSegmentCheck 76 25 52
      { lower := 3953, upper := 4022, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good054_checked :
    goodSegmentCheck 76 25 52
      { lower := 4023, upper := 4096, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good055_checked :
    goodSegmentCheck 76 25 52
      { lower := 4097, upper := 4168, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good056_checked :
    goodSegmentCheck 76 25 52
      { lower := 4169, upper := 4234, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good057_checked :
    goodSegmentCheck 76 25 52
      { lower := 4235, upper := 4306, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good058_checked :
    goodSegmentCheck 76 25 52
      { lower := 4307, upper := 4372, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good059_checked :
    goodSegmentCheck 76 25 52
      { lower := 4373, upper := 4448, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good060_checked :
    goodSegmentCheck 76 25 52
      { lower := 4449, upper := 4522, witness := RowWitness.topPrime 4447 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good061_checked :
    goodSegmentCheck 76 25 52
      { lower := 4523, upper := 4598, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good062_checked :
    goodSegmentCheck 76 25 52
      { lower := 4599, upper := 4672, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good063_checked :
    goodSegmentCheck 76 25 52
      { lower := 4673, upper := 4748, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good064_checked :
    goodSegmentCheck 76 25 52
      { lower := 4749, upper := 4808, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good065_checked :
    goodSegmentCheck 76 25 52
      { lower := 4809, upper := 4876, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good066_checked :
    goodSegmentCheck 76 25 52
      { lower := 4877, upper := 4952, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good067_checked :
    goodSegmentCheck 76 25 52
      { lower := 4953, upper := 5026, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good068_checked :
    goodSegmentCheck 76 25 52
      { lower := 5027, upper := 5098, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good069_checked :
    goodSegmentCheck 76 25 52
      { lower := 5099, upper := 5174, witness := RowWitness.topPrime 5099 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good070_checked :
    goodSegmentCheck 76 25 52
      { lower := 5175, upper := 5246, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good071_checked :
    goodSegmentCheck 76 25 52
      { lower := 5247, upper := 5312, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good072_checked :
    goodSegmentCheck 76 25 52
      { lower := 5313, upper := 5384, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good073_checked :
    goodSegmentCheck 76 25 52
      { lower := 5385, upper := 5456, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good074_checked :
    goodSegmentCheck 76 25 52
      { lower := 5457, upper := 5524, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good075_checked :
    goodSegmentCheck 76 25 52
      { lower := 5525, upper := 5596, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good076_checked :
    goodSegmentCheck 76 25 52
      { lower := 5597, upper := 5666, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good077_checked :
    goodSegmentCheck 76 25 52
      { lower := 5667, upper := 5699, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good078_checked :
    goodSegmentCheck 76 25 52
      { lower := 5780, upper := 5854, witness := RowWitness.topPrime 5779 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good079_checked :
    goodSegmentCheck 76 25 52
      { lower := 5855, upper := 5907, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good080_checked :
    goodSegmentCheck 76 25 52
      { lower := 6075, upper := 6148, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good081_checked :
    goodSegmentCheck 76 25 52
      { lower := 6149, upper := 6150, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good082_checked :
    goodSegmentCheck 76 25 52
      { lower := 6174, upper := 6219, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good083_checked :
    goodSegmentCheck 76 25 52
      { lower := 6318, upper := 6325, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good084_checked :
    goodSegmentCheck 76 25 52
      { lower := 6348, upper := 6418, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good085_checked :
    goodSegmentCheck 76 25 52
      { lower := 6419, upper := 6423, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good086_checked :
    goodSegmentCheck 76 25 52
      { lower := 6561, upper := 6628, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good087_checked :
    goodSegmentCheck 76 25 52
      { lower := 6629, upper := 6694, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good088_checked :
    goodSegmentCheck 76 25 52
      { lower := 6695, upper := 6722, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good089_checked :
    goodSegmentCheck 76 25 52
      { lower := 6724, upper := 6794, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good090_checked :
    goodSegmentCheck 76 25 52
      { lower := 6795, upper := 6802, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good091_checked :
    goodSegmentCheck 76 25 52
      { lower := 6845, upper := 6916, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good092_checked :
    goodSegmentCheck 76 25 52
      { lower := 6917, upper := 6952, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good093_checked :
    goodSegmentCheck 76 25 52
      { lower := 6962, upper := 7011, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good094_checked :
    goodSegmentCheck 76 25 52
      { lower := 7203, upper := 7268, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good095_checked :
    goodSegmentCheck 76 25 52
      { lower := 7269, upper := 7278, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good096_checked :
    goodSegmentCheck 76 25 52
      { lower := 7290, upper := 7300, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good097_checked :
    goodSegmentCheck 76 25 52
      { lower := 7406, upper := 7468, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good098_checked :
    goodSegmentCheck 76 25 52
      { lower := 7469, upper := 7481, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good099_checked :
    goodSegmentCheck 76 25 52
      { lower := 7500, upper := 7574, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good100_checked :
    goodSegmentCheck 76 25 52
      { lower := 7575, upper := 7621, witness := RowWitness.topPrime 7573 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good101_checked :
    goodSegmentCheck 76 25 52
      { lower := 7803, upper := 7851, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good102_checked :
    goodSegmentCheck 76 25 52
      { lower := 7935, upper := 7964, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good103_checked :
    goodSegmentCheck 76 25 52
      { lower := 7986, upper := 8010, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good104_checked :
    goodSegmentCheck 76 25 52
      { lower := 8019, upper := 8061, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good105_checked :
    goodSegmentCheck 76 25 52
      { lower := 8092, upper := 8094, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good106_checked :
    goodSegmentCheck 76 25 52
      { lower := 8125, upper := 8167, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good107_checked :
    goodSegmentCheck 76 25 52
      { lower := 8192, upper := 8200, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good108_checked :
    goodSegmentCheck 76 25 52
      { lower := 8214, upper := 8284, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good109_checked :
    goodSegmentCheck 76 25 52
      { lower := 8285, upper := 8289, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good110_checked :
    goodSegmentCheck 76 25 52
      { lower := 8405, upper := 8464, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good111_checked :
    goodSegmentCheck 76 25 52
      { lower := 8465, upper := 8502, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good112_checked :
    goodSegmentCheck 76 25 52
      { lower := 8649, upper := 8650, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good113_checked :
    goodSegmentCheck 76 25 52
      { lower := 8670, upper := 8724, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good114_checked :
    goodSegmentCheck 76 25 52
      { lower := 8750, upper := 8822, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good115_checked :
    goodSegmentCheck 76 25 52
      { lower := 8823, upper := 8825, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good116_checked :
    goodSegmentCheck 76 25 52
      { lower := 8836, upper := 8863, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good117_checked :
    goodSegmentCheck 76 25 52
      { lower := 8959, upper := 9026, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good118_checked :
    goodSegmentCheck 76 25 52
      { lower := 9027, upper := 9053, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good119_checked :
    goodSegmentCheck 76 25 52
      { lower := 9248, upper := 9316, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good120_checked :
    goodSegmentCheck 76 25 52
      { lower := 9317, upper := 9336, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good121_checked :
    goodSegmentCheck 76 25 52
      { lower := 9375, upper := 9392, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good122_checked :
    goodSegmentCheck 76 25 52
      { lower := 9522, upper := 9552, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good123_checked :
    goodSegmentCheck 76 25 52
      { lower := 9583, upper := 9597, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good124_checked :
    goodSegmentCheck 76 25 52
      { lower := 9604, upper := 9676, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good125_checked :
    goodSegmentCheck 76 25 52
      { lower := 9677, upper := 9679, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good126_checked :
    goodSegmentCheck 76 25 52
      { lower := 10000, upper := 10022, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good127_checked :
    goodSegmentCheck 76 25 52
      { lower := 10051, upper := 10075, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good128_checked :
    goodSegmentCheck 76 25 52
      { lower := 10082, upper := 10154, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good129_checked :
    goodSegmentCheck 76 25 52
      { lower := 10155, upper := 10161, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good130_checked :
    goodSegmentCheck 76 25 52
      { lower := 10240, upper := 10281, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good131_checked :
    goodSegmentCheck 76 25 52
      { lower := 10290, upper := 10315, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good132_checked :
    goodSegmentCheck 76 25 52
      { lower := 10580, upper := 10642, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good133_checked :
    goodSegmentCheck 76 25 52
      { lower := 10643, upper := 10714, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good134_checked :
    goodSegmentCheck 76 25 52
      { lower := 10715, upper := 10723, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good135_checked :
    goodSegmentCheck 76 25 52
      { lower := 10935, upper := 10984, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good136_checked :
    goodSegmentCheck 76 25 52
      { lower := 10985, upper := 11054, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good137_checked :
    goodSegmentCheck 76 25 52
      { lower := 11055, upper := 11060, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good138_checked :
    goodSegmentCheck 76 25 52
      { lower := 11094, upper := 11168, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good139_checked :
    goodSegmentCheck 76 25 52
      { lower := 11169, upper := 11184, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good140_checked :
    goodSegmentCheck 76 25 52
      { lower := 11236, upper := 11238, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good141_checked :
    goodSegmentCheck 76 25 52
      { lower := 11250, upper := 11311, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good142_checked :
    goodSegmentCheck 76 25 52
      { lower := 11664, upper := 11713, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good143_checked :
    goodSegmentCheck 76 25 52
      { lower := 11774, upper := 11818, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good144_checked :
    goodSegmentCheck 76 25 52
      { lower := 11819, upper := 11842, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good145_checked :
    goodSegmentCheck 76 25 52
      { lower := 12005, upper := 12054, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good146_checked :
    goodSegmentCheck 76 25 52
      { lower := 12321, upper := 12363, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good147_checked :
    goodSegmentCheck 76 25 52
      { lower := 12393, upper := 12396, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good148_checked :
    goodSegmentCheck 76 25 52
      { lower := 12500, upper := 12568, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good149_checked :
    goodSegmentCheck 76 25 52
      { lower := 13125, upper := 13196, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good150_checked :
    goodSegmentCheck 76 25 52
      { lower := 13197, upper := 13200, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good151_checked :
    goodSegmentCheck 76 25 52
      { lower := 13225, upper := 13294, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good152_checked :
    goodSegmentCheck 76 25 52
      { lower := 13295, upper := 13300, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good153_checked :
    goodSegmentCheck 76 25 52
      { lower := 13310, upper := 13329, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good154_checked :
    goodSegmentCheck 76 25 52
      { lower := 13454, upper := 13526, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good155_checked :
    goodSegmentCheck 76 25 52
      { lower := 13527, upper := 13531, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good156_checked :
    goodSegmentCheck 76 25 52
      { lower := 13750, upper := 13804, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good157_checked :
    goodSegmentCheck 76 25 52
      { lower := 13805, upper := 13825, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good158_checked :
    goodSegmentCheck 76 25 52
      { lower := 13924, upper := 13926, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good159_checked :
    goodSegmentCheck 76 25 52
      { lower := 14297, upper := 14368, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good160_checked :
    goodSegmentCheck 76 25 52
      { lower := 14369, upper := 14372, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good161_checked :
    goodSegmentCheck 76 25 52
      { lower := 14375, upper := 14444, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good162_checked :
    goodSegmentCheck 76 25 52
      { lower := 14445, upper := 14481, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good163_checked :
    goodSegmentCheck 76 25 52
      { lower := 14641, upper := 14655, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good164_checked :
    goodSegmentCheck 76 25 52
      { lower := 14792, upper := 14858, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good165_checked :
    goodSegmentCheck 76 25 52
      { lower := 14859, upper := 14867, witness := RowWitness.topPrime 14851 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good166_checked :
    goodSegmentCheck 76 25 52
      { lower := 14884, upper := 14887, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good167_checked :
    goodSegmentCheck 76 25 52
      { lower := 15059, upper := 15075, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good168_checked :
    goodSegmentCheck 76 25 52
      { lower := 15123, upper := 15196, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good169_checked :
    goodSegmentCheck 76 25 52
      { lower := 15197, upper := 15204, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good170_checked :
    goodSegmentCheck 76 25 52
      { lower := 15376, upper := 15448, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good171_checked :
    goodSegmentCheck 76 25 52
      { lower := 15449, upper := 15451, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good172_checked :
    goodSegmentCheck 76 25 52
      { lower := 15979, upper := 16048, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good173_checked :
    goodSegmentCheck 76 25 52
      { lower := 16049, upper := 16062, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good174_checked :
    goodSegmentCheck 76 25 52
      { lower := 16384, upper := 16412, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good175_checked :
    goodSegmentCheck 76 25 52
      { lower := 16428, upper := 16459, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good176_checked :
    goodSegmentCheck 76 25 52
      { lower := 16807, upper := 16862, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good177_checked :
    goodSegmentCheck 76 25 52
      { lower := 16863, upper := 16918, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good178_checked :
    goodSegmentCheck 76 25 52
      { lower := 16919, upper := 16929, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good179_checked :
    goodSegmentCheck 76 25 52
      { lower := 17303, upper := 17373, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good180_checked :
    goodSegmentCheck 76 25 52
      { lower := 17500, upper := 17571, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good181_checked :
    goodSegmentCheck 76 25 52
      { lower := 17672, upper := 17736, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good182_checked :
    goodSegmentCheck 76 25 52
      { lower := 18259, upper := 18300, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good183_checked :
    goodSegmentCheck 76 25 52
      { lower := 18491, upper := 18556, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good184_checked :
    goodSegmentCheck 76 25 52
      { lower := 18557, upper := 18566, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good185_checked :
    goodSegmentCheck 76 25 52
      { lower := 18634, upper := 18680, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good186_checked :
    goodSegmentCheck 76 25 52
      { lower := 19208, upper := 19282, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good187_checked :
    goodSegmentCheck 76 25 52
      { lower := 19283, upper := 19283, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good188_checked :
    goodSegmentCheck 76 25 52
      { lower := 19663, upper := 19736, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good189_checked :
    goodSegmentCheck 76 25 52
      { lower := 19737, upper := 19738, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good190_checked :
    goodSegmentCheck 76 25 52
      { lower := 20172, upper := 20236, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good191_checked :
    goodSegmentCheck 76 25 52
      { lower := 20237, upper := 20256, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good192_checked :
    goodSegmentCheck 76 25 52
      { lower := 20412, upper := 20414, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good193_checked :
    goodSegmentCheck 76 25 52
      { lower := 20480, upper := 20487, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good194_checked :
    goodSegmentCheck 76 25 52
      { lower := 20535, upper := 20555, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good195_checked :
    goodSegmentCheck 76 25 52
      { lower := 21316, upper := 21371, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good196_checked :
    goodSegmentCheck 76 25 52
      { lower := 21866, upper := 21938, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good197_checked :
    goodSegmentCheck 76 25 52
      { lower := 21939, upper := 21950, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good198_checked :
    goodSegmentCheck 76 25 52
      { lower := 21970, upper := 21979, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good199_checked :
    goodSegmentCheck 76 25 52
      { lower := 22103, upper := 22165, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good200_checked :
    goodSegmentCheck 76 25 52
      { lower := 22472, upper := 22520, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good201_checked :
    goodSegmentCheck 76 25 52
      { lower := 24010, upper := 24033, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good202_checked :
    goodSegmentCheck 76 25 52
      { lower := 24037, upper := 24104, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good203_checked :
    goodSegmentCheck 76 25 52
      { lower := 24105, upper := 24112, witness := RowWitness.topPrime 24103 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good204_checked :
    goodSegmentCheck 76 25 52
      { lower := 24334, upper := 24404, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good205_checked :
    goodSegmentCheck 76 25 52
      { lower := 24405, upper := 24442, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good206_checked :
    goodSegmentCheck 76 25 52
      { lower := 24576, upper := 24640, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good207_checked :
    goodSegmentCheck 76 25 52
      { lower := 24642, upper := 24651, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good208_checked :
    goodSegmentCheck 76 25 52
      { lower := 25215, upper := 25264, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good209_checked :
    goodSegmentCheck 76 25 52
      { lower := 25265, upper := 25336, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good210_checked :
    goodSegmentCheck 76 25 52
      { lower := 25337, upper := 25356, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good211_checked :
    goodSegmentCheck 76 25 52
      { lower := 26047, upper := 26086, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good212_checked :
    goodSegmentCheck 76 25 52
      { lower := 26411, upper := 26439, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good213_checked :
    goodSegmentCheck 76 25 52
      { lower := 26645, upper := 26695, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good214_checked :
    goodSegmentCheck 76 25 52
      { lower := 26934, upper := 26971, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good215_checked :
    goodSegmentCheck 76 25 52
      { lower := 28125, upper := 28165, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good216_checked :
    goodSegmentCheck 76 25 52
      { lower := 28577, upper := 28636, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good217_checked :
    goodSegmentCheck 76 25 52
      { lower := 28749, upper := 28792, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good218_checked :
    goodSegmentCheck 76 25 52
      { lower := 28812, upper := 28824, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good219_checked :
    goodSegmentCheck 76 25 52
      { lower := 29791, upper := 29843, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good220_checked :
    goodSegmentCheck 76 25 52
      { lower := 30258, upper := 30321, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good221_checked :
    goodSegmentCheck 76 25 52
      { lower := 30618, upper := 30668, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good222_checked :
    goodSegmentCheck 76 25 52
      { lower := 30669, upper := 30688, witness := RowWitness.topPrime 30661 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good223_checked :
    goodSegmentCheck 76 25 52
      { lower := 30926, upper := 30974, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good224_checked :
    goodSegmentCheck 76 25 52
      { lower := 31250, upper := 31288, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good225_checked :
    goodSegmentCheck 76 25 52
      { lower := 31433, upper := 31472, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good226_checked :
    goodSegmentCheck 76 25 52
      { lower := 31473, upper := 31508, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good227_checked :
    goodSegmentCheck 76 25 52
      { lower := 31944, upper := 31982, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good228_checked :
    goodSegmentCheck 76 25 52
      { lower := 31983, upper := 32019, witness := RowWitness.topPrime 31981 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good229_checked :
    goodSegmentCheck 76 25 52
      { lower := 32805, upper := 32843, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good230_checked :
    goodSegmentCheck 76 25 52
      { lower := 32856, upper := 32880, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good231_checked :
    goodSegmentCheck 76 25 52
      { lower := 33620, upper := 33689, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good232_checked :
    goodSegmentCheck 76 25 52
      { lower := 34391, upper := 34450, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good233_checked :
    goodSegmentCheck 76 25 52
      { lower := 35152, upper := 35206, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good234_checked :
    goodSegmentCheck 76 25 52
      { lower := 35301, upper := 35366, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good235_checked :
    goodSegmentCheck 76 25 52
      { lower := 35367, upper := 35376, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good236_checked :
    goodSegmentCheck 76 25 52
      { lower := 36517, upper := 36572, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good237_checked :
    goodSegmentCheck 76 25 52
      { lower := 36573, upper := 36576, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good238_checked :
    goodSegmentCheck 76 25 52
      { lower := 36982, upper := 37054, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good239_checked :
    goodSegmentCheck 76 25 52
      { lower := 37055, upper := 37055, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good240_checked :
    goodSegmentCheck 76 25 52
      { lower := 37210, upper := 37254, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good241_checked :
    goodSegmentCheck 76 25 52
      { lower := 37349, upper := 37378, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good242_checked :
    goodSegmentCheck 76 25 52
      { lower := 37553, upper := 37575, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good243_checked :
    goodSegmentCheck 76 25 52
      { lower := 39326, upper := 39398, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good244_checked :
    goodSegmentCheck 76 25 52
      { lower := 39399, upper := 39401, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good245_checked :
    goodSegmentCheck 76 25 52
      { lower := 40344, upper := 40418, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good246_checked :
    goodSegmentCheck 76 25 52
      { lower := 40419, upper := 40419, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good247_checked :
    goodSegmentCheck 76 25 52
      { lower := 40678, upper := 40700, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good248_checked :
    goodSegmentCheck 76 25 52
      { lower := 40960, upper := 41006, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good249_checked :
    goodSegmentCheck 76 25 52
      { lower := 41772, upper := 41818, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good250_checked :
    goodSegmentCheck 76 25 52
      { lower := 43750, upper := 43796, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good251_checked :
    goodSegmentCheck 76 25 52
      { lower := 43797, upper := 43815, witness := RowWitness.topPrime 43793 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good252_checked :
    goodSegmentCheck 76 25 52
      { lower := 43940, upper := 43998, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good253_checked :
    goodSegmentCheck 76 25 52
      { lower := 44217, upper := 44255, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good254_checked :
    goodSegmentCheck 76 25 52
      { lower := 44944, upper := 44965, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good255_checked :
    goodSegmentCheck 76 25 52
      { lower := 48020, upper := 48036, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good256_checked :
    goodSegmentCheck 76 25 52
      { lower := 48734, upper := 48743, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good257_checked :
    goodSegmentCheck 76 25 52
      { lower := 48778, upper := 48809, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good258_checked :
    goodSegmentCheck 76 25 52
      { lower := 49152, upper := 49205, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good259_checked :
    goodSegmentCheck 76 25 52
      { lower := 50421, upper := 50485, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good260_checked :
    goodSegmentCheck 76 25 52
      { lower := 56250, upper := 56255, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good261_checked :
    goodSegmentCheck 76 25 52
      { lower := 58619, upper := 58639, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good262_checked :
    goodSegmentCheck 76 25 52
      { lower := 58989, upper := 59031, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good263_checked :
    goodSegmentCheck 76 25 52
      { lower := 59049, upper := 59064, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good264_checked :
    goodSegmentCheck 76 25 52
      { lower := 59582, upper := 59611, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good265_checked :
    goodSegmentCheck 76 25 52
      { lower := 65536, upper := 65596, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good266_checked :
    goodSegmentCheck 76 25 52
      { lower := 65597, upper := 65608, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good267_checked :
    goodSegmentCheck 76 25 52
      { lower := 65610, upper := 65611, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good268_checked :
    goodSegmentCheck 76 25 52
      { lower := 65625, upper := 65685, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good269_checked :
    goodSegmentCheck 76 25 52
      { lower := 73167, upper := 73176, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good270_checked :
    goodSegmentCheck 76 25 52
      { lower := 73205, upper := 73242, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good271_checked :
    goodSegmentCheck 76 25 52
      { lower := 78141, upper := 78200, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_good272_checked :
    goodSegmentCheck 76 25 52
      { lower := 85291, upper := 85334, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good273_checked :
    goodSegmentCheck 76 25 52
      { lower := 85335, upper := 85366, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good274_checked :
    goodSegmentCheck 76 25 52
      { lower := 85697, upper := 85758, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row076_good275_checked :
    goodSegmentCheck 76 25 52
      { lower := 137842, upper := 137856, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 76) (r := 25) (s := 52) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_good275_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_goods_checked :
    row076.goods.all (goodSegmentCheck row076.height.i row076.height.r row076.height.s) = true := by
  change row076_goods.all (goodSegmentCheck 76 25 52) = true
  simp only [row076_goods, List.all_cons, List.all_nil,
    row076_good000_checked,
    row076_good001_checked,
    row076_good002_checked,
    row076_good003_checked,
    row076_good004_checked,
    row076_good005_checked,
    row076_good006_checked,
    row076_good007_checked,
    row076_good008_checked,
    row076_good009_checked,
    row076_good010_checked,
    row076_good011_checked,
    row076_good012_checked,
    row076_good013_checked,
    row076_good014_checked,
    row076_good015_checked,
    row076_good016_checked,
    row076_good017_checked,
    row076_good018_checked,
    row076_good019_checked,
    row076_good020_checked,
    row076_good021_checked,
    row076_good022_checked,
    row076_good023_checked,
    row076_good024_checked,
    row076_good025_checked,
    row076_good026_checked,
    row076_good027_checked,
    row076_good028_checked,
    row076_good029_checked,
    row076_good030_checked,
    row076_good031_checked,
    row076_good032_checked,
    row076_good033_checked,
    row076_good034_checked,
    row076_good035_checked,
    row076_good036_checked,
    row076_good037_checked,
    row076_good038_checked,
    row076_good039_checked,
    row076_good040_checked,
    row076_good041_checked,
    row076_good042_checked,
    row076_good043_checked,
    row076_good044_checked,
    row076_good045_checked,
    row076_good046_checked,
    row076_good047_checked,
    row076_good048_checked,
    row076_good049_checked,
    row076_good050_checked,
    row076_good051_checked,
    row076_good052_checked,
    row076_good053_checked,
    row076_good054_checked,
    row076_good055_checked,
    row076_good056_checked,
    row076_good057_checked,
    row076_good058_checked,
    row076_good059_checked,
    row076_good060_checked,
    row076_good061_checked,
    row076_good062_checked,
    row076_good063_checked,
    row076_good064_checked,
    row076_good065_checked,
    row076_good066_checked,
    row076_good067_checked,
    row076_good068_checked,
    row076_good069_checked,
    row076_good070_checked,
    row076_good071_checked,
    row076_good072_checked,
    row076_good073_checked,
    row076_good074_checked,
    row076_good075_checked,
    row076_good076_checked,
    row076_good077_checked,
    row076_good078_checked,
    row076_good079_checked,
    row076_good080_checked,
    row076_good081_checked,
    row076_good082_checked,
    row076_good083_checked,
    row076_good084_checked,
    row076_good085_checked,
    row076_good086_checked,
    row076_good087_checked,
    row076_good088_checked,
    row076_good089_checked,
    row076_good090_checked,
    row076_good091_checked,
    row076_good092_checked,
    row076_good093_checked,
    row076_good094_checked,
    row076_good095_checked,
    row076_good096_checked,
    row076_good097_checked,
    row076_good098_checked,
    row076_good099_checked,
    row076_good100_checked,
    row076_good101_checked,
    row076_good102_checked,
    row076_good103_checked,
    row076_good104_checked,
    row076_good105_checked,
    row076_good106_checked,
    row076_good107_checked,
    row076_good108_checked,
    row076_good109_checked,
    row076_good110_checked,
    row076_good111_checked,
    row076_good112_checked,
    row076_good113_checked,
    row076_good114_checked,
    row076_good115_checked,
    row076_good116_checked,
    row076_good117_checked,
    row076_good118_checked,
    row076_good119_checked,
    row076_good120_checked,
    row076_good121_checked,
    row076_good122_checked,
    row076_good123_checked,
    row076_good124_checked,
    row076_good125_checked,
    row076_good126_checked,
    row076_good127_checked,
    row076_good128_checked,
    row076_good129_checked,
    row076_good130_checked,
    row076_good131_checked,
    row076_good132_checked,
    row076_good133_checked,
    row076_good134_checked,
    row076_good135_checked,
    row076_good136_checked,
    row076_good137_checked,
    row076_good138_checked,
    row076_good139_checked,
    row076_good140_checked,
    row076_good141_checked,
    row076_good142_checked,
    row076_good143_checked,
    row076_good144_checked,
    row076_good145_checked,
    row076_good146_checked,
    row076_good147_checked,
    row076_good148_checked,
    row076_good149_checked,
    row076_good150_checked,
    row076_good151_checked,
    row076_good152_checked,
    row076_good153_checked,
    row076_good154_checked,
    row076_good155_checked,
    row076_good156_checked,
    row076_good157_checked,
    row076_good158_checked,
    row076_good159_checked,
    row076_good160_checked,
    row076_good161_checked,
    row076_good162_checked,
    row076_good163_checked,
    row076_good164_checked,
    row076_good165_checked,
    row076_good166_checked,
    row076_good167_checked,
    row076_good168_checked,
    row076_good169_checked,
    row076_good170_checked,
    row076_good171_checked,
    row076_good172_checked,
    row076_good173_checked,
    row076_good174_checked,
    row076_good175_checked,
    row076_good176_checked,
    row076_good177_checked,
    row076_good178_checked,
    row076_good179_checked,
    row076_good180_checked,
    row076_good181_checked,
    row076_good182_checked,
    row076_good183_checked,
    row076_good184_checked,
    row076_good185_checked,
    row076_good186_checked,
    row076_good187_checked,
    row076_good188_checked,
    row076_good189_checked,
    row076_good190_checked,
    row076_good191_checked,
    row076_good192_checked,
    row076_good193_checked,
    row076_good194_checked,
    row076_good195_checked,
    row076_good196_checked,
    row076_good197_checked,
    row076_good198_checked,
    row076_good199_checked,
    row076_good200_checked,
    row076_good201_checked,
    row076_good202_checked,
    row076_good203_checked,
    row076_good204_checked,
    row076_good205_checked,
    row076_good206_checked,
    row076_good207_checked,
    row076_good208_checked,
    row076_good209_checked,
    row076_good210_checked,
    row076_good211_checked,
    row076_good212_checked,
    row076_good213_checked,
    row076_good214_checked,
    row076_good215_checked,
    row076_good216_checked,
    row076_good217_checked,
    row076_good218_checked,
    row076_good219_checked,
    row076_good220_checked,
    row076_good221_checked,
    row076_good222_checked,
    row076_good223_checked,
    row076_good224_checked,
    row076_good225_checked,
    row076_good226_checked,
    row076_good227_checked,
    row076_good228_checked,
    row076_good229_checked,
    row076_good230_checked,
    row076_good231_checked,
    row076_good232_checked,
    row076_good233_checked,
    row076_good234_checked,
    row076_good235_checked,
    row076_good236_checked,
    row076_good237_checked,
    row076_good238_checked,
    row076_good239_checked,
    row076_good240_checked,
    row076_good241_checked,
    row076_good242_checked,
    row076_good243_checked,
    row076_good244_checked,
    row076_good245_checked,
    row076_good246_checked,
    row076_good247_checked,
    row076_good248_checked,
    row076_good249_checked,
    row076_good250_checked,
    row076_good251_checked,
    row076_good252_checked,
    row076_good253_checked,
    row076_good254_checked,
    row076_good255_checked,
    row076_good256_checked,
    row076_good257_checked,
    row076_good258_checked,
    row076_good259_checked,
    row076_good260_checked,
    row076_good261_checked,
    row076_good262_checked,
    row076_good263_checked,
    row076_good264_checked,
    row076_good265_checked,
    row076_good266_checked,
    row076_good267_checked,
    row076_good268_checked,
    row076_good269_checked,
    row076_good270_checked,
    row076_good271_checked,
    row076_good272_checked,
    row076_good273_checked,
    row076_good274_checked,
    row076_good275_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_registered :
    decide (row076.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row076_small_checked :
    coverCheck (2 * row076.height.i + 2) (row076.height.i * (row076.height.i - 1) - 1)
      (row076.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row076_layerCover_checked :
    coverCheck (row076.height.i * (row076.height.i - 1)) (row076.height.n0 - 1)
      (row076.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_bounds : List NatInterval :=
  [(154, 226), (227, 302), (303, 368), (369, 442), (443, 518), (519, 584), (585, 652), (653, 728), (729, 802), (803, 872), (873, 938), (939, 1012), (1013, 1088), (1089, 1162), (1163, 1238), (1239, 1312), (1313, 1382), (1383, 1456), (1457, 1528), (1529, 1598), (1599, 1672), (1673, 1744), (1745, 1816), (1817, 1886), (1887, 1954), (1955, 2026), (2027, 2102), (2103, 2174), (2175, 2236), (2237, 2312), (2313, 2386), (2387, 2458), (2459, 2534), (2535, 2606), (2607, 2668), (2669, 2738), (2739, 2806), (2807, 2878), (2879, 2954), (2955, 3028), (3029, 3098), (3099, 3164), (3165, 3238), (3239, 3304), (3305, 3376), (3377, 3448), (3449, 3524), (3525, 3592), (3593, 3668), (3669, 3734), (3735, 3808), (3809, 3878), (3879, 3952), (3953, 4022), (4023, 4096), (4097, 4168), (4169, 4234), (4235, 4306), (4307, 4372), (4373, 4448), (4449, 4522), (4523, 4598), (4599, 4672), (4673, 4748), (4749, 4808), (4809, 4876), (4877, 4952), (4953, 5026), (5027, 5098), (5099, 5174), (5175, 5246), (5247, 5312), (5313, 5384), (5385, 5456), (5457, 5524), (5525, 5596), (5597, 5666), (5667, 5699), (5780, 5854), (5855, 5907), (6075, 6148), (6149, 6150), (6174, 6219), (6318, 6325), (6348, 6418), (6419, 6423), (6561, 6628), (6629, 6694), (6695, 6722), (6724, 6794), (6795, 6802), (6845, 6916), (6917, 6952), (6962, 7011), (7203, 7268), (7269, 7278), (7290, 7300), (7406, 7468), (7469, 7481), (7500, 7574), (7575, 7621), (7803, 7851), (7935, 7964), (7986, 8010), (8019, 8061), (8092, 8094), (8125, 8167), (8192, 8200), (8214, 8284), (8285, 8289), (8405, 8464), (8465, 8502), (8649, 8650), (8670, 8724), (8750, 8822), (8823, 8825), (8836, 8863), (8959, 9026), (9027, 9053), (9248, 9316), (9317, 9336), (9375, 9392), (9522, 9552), (9583, 9597), (9604, 9676), (9677, 9679), (10000, 10022), (10051, 10075), (10082, 10154), (10155, 10161), (10240, 10281), (10290, 10315), (10580, 10642), (10643, 10714), (10715, 10723), (10935, 10984), (10985, 11054), (11055, 11060), (11094, 11168), (11169, 11184), (11236, 11238), (11250, 11311), (11664, 11713), (11774, 11818), (11819, 11842), (12005, 12054), (12321, 12363), (12393, 12396), (12500, 12568), (13125, 13196), (13197, 13200), (13225, 13294), (13295, 13300), (13310, 13329), (13454, 13526), (13527, 13531), (13750, 13804), (13805, 13825), (13924, 13926), (14297, 14368), (14369, 14372), (14375, 14444), (14445, 14481), (14641, 14655), (14792, 14858), (14859, 14867), (14884, 14887), (15059, 15075), (15123, 15196), (15197, 15204), (15376, 15448), (15449, 15451), (15979, 16048), (16049, 16062), (16384, 16412), (16428, 16459), (16807, 16862), (16863, 16918), (16919, 16929), (17303, 17373), (17500, 17571), (17672, 17736), (18259, 18300), (18491, 18556), (18557, 18566), (18634, 18680), (19208, 19282), (19283, 19283), (19663, 19736), (19737, 19738), (20172, 20236), (20237, 20256), (20412, 20414), (20480, 20487), (20535, 20555), (21316, 21371), (21866, 21938), (21939, 21950), (21970, 21979), (22103, 22165), (22472, 22520), (24010, 24033), (24037, 24104), (24105, 24112), (24334, 24404), (24405, 24442), (24576, 24640), (24642, 24651), (25215, 25264), (25265, 25336), (25337, 25356), (26047, 26086), (26411, 26439), (26645, 26695), (26934, 26971), (28125, 28165), (28577, 28636), (28749, 28792), (28812, 28824), (29791, 29843), (30258, 30321), (30618, 30668), (30669, 30688), (30926, 30974), (31250, 31288), (31433, 31472), (31473, 31508), (31944, 31982), (31983, 32019), (32805, 32843), (32856, 32880), (33620, 33689), (34391, 34450), (35152, 35206), (35301, 35366), (35367, 35376), (36517, 36572), (36573, 36576), (36982, 37054), (37055, 37055), (37210, 37254), (37349, 37378), (37553, 37575), (39326, 39398), (39399, 39401), (40344, 40418), (40419, 40419), (40678, 40700), (40960, 41006), (41772, 41818), (43750, 43796), (43797, 43815), (43940, 43998), (44217, 44255), (44944, 44965), (48020, 48036), (48734, 48743), (48778, 48809), (49152, 49205), (50421, 50485), (56250, 56255), (58619, 58639), (58989, 59031), (59049, 59064), (59582, 59611), (65536, 65596), (65597, 65608), (65610, 65611), (65625, 65685), (73167, 73176), (73205, 73242), (78141, 78200), (85291, 85334), (85335, 85366), (85697, 85758), (137842, 137856)]

theorem row076_bounds_eq : row076.goods.map goodSegmentBounds = row076_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer000_intervals : List ColouredInterval :=
  [(2, 6144, 6219), (2, 7168, 7243), (2, 8192, 8267), (2, 6144, 6219), (2, 8192, 8267), (2, 10240, 10315), (2, 8192, 8267), (2, 8192, 8267), (3, 5832, 5907), (3, 6075, 6150), (3, 6318, 6393), (3, 6561, 6636), (3, 6804, 6879), (3, 7047, 7122), (3, 7290, 7365), (3, 7533, 7608), (3, 7776, 7851), (3, 5832, 5907), (3, 6561, 6636), (3, 7290, 7365), (3, 8019, 8094), (3, 8748, 8823), (3, 9477, 9552), (3, 10206, 10281), (3, 10935, 11010), (3, 6561, 6636), (3, 8748, 8823), (3, 10935, 11010), (3, 6561, 6636), (5, 5700, 5700), (5, 6250, 6325), (5, 6875, 6950), (5, 7500, 7575), (5, 8125, 8200), (5, 8750, 8825), (5, 9375, 9450), (5, 10000, 10075), (5, 10625, 10700), (5, 11250, 11325), (5, 6250, 6325), (5, 9375, 9450), (7, 5831, 5906), (7, 6174, 6249), (7, 6517, 6592), (7, 6860, 6935), (7, 7203, 7278), (7, 7546, 7621), (7, 7889, 7964), (7, 8232, 8307), (7, 8575, 8650), (7, 8918, 8993), (7, 9261, 9336), (7, 9604, 9679), (7, 9947, 10022), (7, 10290, 10365), (7, 10633, 10708), (7, 10976, 11051), (7, 7203, 7278), (7, 9604, 9679), (11, 6655, 6730), (11, 7986, 8061), (11, 9317, 9392), (11, 10648, 10723), (13, 6591, 6666), (13, 8788, 8863), (13, 10985, 11060), (17, 5780, 5855), (17, 6069, 6144), (17, 6358, 6433), (17, 6647, 6722), (17, 6936, 7011), (17, 7225, 7300), (17, 7514, 7589), (17, 7803, 7878), (17, 8092, 8167), (17, 8381, 8456), (17, 8670, 8745), (17, 8959, 9034), (17, 9248, 9323), (17, 9826, 9901), (19, 6859, 6934), (23, 5819, 5894), (23, 6348, 6423), (23, 6877, 6952), (23, 7406, 7481), (23, 7935, 8010), (23, 8464, 8539), (23, 8993, 9068), (23, 9522, 9597), (23, 10051, 10126), (23, 10580, 10655), (23, 11109, 11184), (29, 5887, 5962), (29, 6728, 6803), (29, 7569, 7644), (29, 8410, 8485), (29, 9251, 9326), (29, 10092, 10167), (29, 10933, 11008), (31, 5766, 5841), (31, 6727, 6802), (31, 7688, 7763), (31, 8649, 8724), (31, 9610, 9685), (31, 10571, 10646), (37, 6845, 6920), (37, 8214, 8289), (37, 9583, 9658), (37, 10952, 11027), (41, 6724, 6799), (41, 8405, 8480), (41, 10086, 10161), (43, 7396, 7471), (43, 9245, 9320), (43, 11094, 11169), (47, 6627, 6702), (47, 8836, 8911), (47, 11045, 11120), (53, 8427, 8502), (53, 11236, 11311), (59, 6962, 7037), (59, 10443, 10518), (61, 7442, 7517), (61, 11163, 11238), (67, 8978, 9053), (71, 10082, 10157), (73, 10658, 10733)]

def row076_layer000_block000 : List ColouredInterval :=
  [(2, 6144, 6219), (2, 7168, 7243), (2, 8192, 8267), (2, 6144, 6219), (2, 8192, 8267), (2, 10240, 10315), (2, 8192, 8267), (2, 8192, 8267), (3, 5832, 5907), (3, 6075, 6150), (3, 6318, 6393), (3, 6561, 6636), (3, 6804, 6879), (3, 7047, 7122), (3, 7290, 7365), (3, 7533, 7608)]

def row076_layer000_block001 : List ColouredInterval :=
  [(3, 7776, 7851), (3, 5832, 5907), (3, 6561, 6636), (3, 7290, 7365), (3, 8019, 8094), (3, 8748, 8823), (3, 9477, 9552), (3, 10206, 10281), (3, 10935, 11010), (3, 6561, 6636), (3, 8748, 8823), (3, 10935, 11010), (3, 6561, 6636), (5, 5700, 5700), (5, 6250, 6325), (5, 6875, 6950)]

def row076_layer000_block002 : List ColouredInterval :=
  [(5, 7500, 7575), (5, 8125, 8200), (5, 8750, 8825), (5, 9375, 9450), (5, 10000, 10075), (5, 10625, 10700), (5, 11250, 11325), (5, 6250, 6325), (5, 9375, 9450), (7, 5831, 5906), (7, 6174, 6249), (7, 6517, 6592), (7, 6860, 6935), (7, 7203, 7278), (7, 7546, 7621), (7, 7889, 7964)]

def row076_layer000_block003 : List ColouredInterval :=
  [(7, 8232, 8307), (7, 8575, 8650), (7, 8918, 8993), (7, 9261, 9336), (7, 9604, 9679), (7, 9947, 10022), (7, 10290, 10365), (7, 10633, 10708), (7, 10976, 11051), (7, 7203, 7278), (7, 9604, 9679), (11, 6655, 6730), (11, 7986, 8061), (11, 9317, 9392), (11, 10648, 10723), (13, 6591, 6666)]

def row076_layer000_block004 : List ColouredInterval :=
  [(13, 8788, 8863), (13, 10985, 11060), (17, 5780, 5855), (17, 6069, 6144), (17, 6358, 6433), (17, 6647, 6722), (17, 6936, 7011), (17, 7225, 7300), (17, 7514, 7589), (17, 7803, 7878), (17, 8092, 8167), (17, 8381, 8456), (17, 8670, 8745), (17, 8959, 9034), (17, 9248, 9323), (17, 9826, 9901)]

def row076_layer000_block005 : List ColouredInterval :=
  [(19, 6859, 6934), (23, 5819, 5894), (23, 6348, 6423), (23, 6877, 6952), (23, 7406, 7481), (23, 7935, 8010), (23, 8464, 8539), (23, 8993, 9068), (23, 9522, 9597), (23, 10051, 10126), (23, 10580, 10655), (23, 11109, 11184), (29, 5887, 5962), (29, 6728, 6803), (29, 7569, 7644), (29, 8410, 8485)]

def row076_layer000_block006 : List ColouredInterval :=
  [(29, 9251, 9326), (29, 10092, 10167), (29, 10933, 11008), (31, 5766, 5841), (31, 6727, 6802), (31, 7688, 7763), (31, 8649, 8724), (31, 9610, 9685), (31, 10571, 10646), (37, 6845, 6920), (37, 8214, 8289), (37, 9583, 9658), (37, 10952, 11027), (41, 6724, 6799), (41, 8405, 8480), (41, 10086, 10161)]

def row076_layer000_block007 : List ColouredInterval :=
  [(43, 7396, 7471), (43, 9245, 9320), (43, 11094, 11169), (47, 6627, 6702), (47, 8836, 8911), (47, 11045, 11120), (53, 8427, 8502), (53, 11236, 11311), (59, 6962, 7037), (59, 10443, 10518), (61, 7442, 7517), (61, 11163, 11238), (67, 8978, 9053), (71, 10082, 10157), (73, 10658, 10733)]

def row076_layer000_chunks : List (List ColouredInterval) :=
  [row076_layer000_block000, row076_layer000_block001, row076_layer000_block002, row076_layer000_block003, row076_layer000_block004, row076_layer000_block005, row076_layer000_block006, row076_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_arithmetic : LayerArithmeticValid row076.height { lower := 5700, upper := 11400, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_enumeration :
    activePowerIntervalList 76 32 5700 11400 = row076_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs000 :
    row076_layer000_block000.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs001 :
    row076_layer000_block001.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs002 :
    row076_layer000_block002.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs003 :
    row076_layer000_block003.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs004 :
    row076_layer000_block004.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs005 :
    row076_layer000_block005.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs006 :
    row076_layer000_block006.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs006
