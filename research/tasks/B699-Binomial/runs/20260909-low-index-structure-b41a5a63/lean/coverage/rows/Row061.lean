import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row061_height : HeightCertificateDatum := { i := 61, r := 20, s := 42, n0Power10 := 12 }

def row061_goods : List GoodSegment := [
  { lower := 124, upper := 173, witness := RowWitness.topPrime 113 },
  { lower := 174, upper := 233, witness := RowWitness.topPrime 173 },
  { lower := 234, upper := 293, witness := RowWitness.topPrime 233 },
  { lower := 294, upper := 353, witness := RowWitness.topPrime 293 },
  { lower := 354, upper := 413, witness := RowWitness.topPrime 353 },
  { lower := 414, upper := 469, witness := RowWitness.topPrime 409 },
  { lower := 470, upper := 527, witness := RowWitness.topPrime 467 },
  { lower := 528, upper := 583, witness := RowWitness.topPrime 523 },
  { lower := 584, upper := 637, witness := RowWitness.topPrime 577 },
  { lower := 638, upper := 691, witness := RowWitness.topPrime 631 },
  { lower := 692, upper := 751, witness := RowWitness.topPrime 691 },
  { lower := 752, upper := 811, witness := RowWitness.topPrime 751 },
  { lower := 812, upper := 871, witness := RowWitness.topPrime 811 },
  { lower := 872, upper := 923, witness := RowWitness.topPrime 863 },
  { lower := 924, upper := 979, witness := RowWitness.topPrime 919 },
  { lower := 980, upper := 1037, witness := RowWitness.topPrime 977 },
  { lower := 1038, upper := 1093, witness := RowWitness.topPrime 1033 },
  { lower := 1094, upper := 1153, witness := RowWitness.topPrime 1093 },
  { lower := 1154, upper := 1213, witness := RowWitness.topPrime 1153 },
  { lower := 1214, upper := 1273, witness := RowWitness.topPrime 1213 },
  { lower := 1274, upper := 1319, witness := RowWitness.topPrime 1259 },
  { lower := 1320, upper := 1379, witness := RowWitness.topPrime 1319 },
  { lower := 1380, upper := 1433, witness := RowWitness.topPrime 1373 },
  { lower := 1434, upper := 1493, witness := RowWitness.topPrime 1433 },
  { lower := 1494, upper := 1553, witness := RowWitness.topPrime 1493 },
  { lower := 1554, upper := 1613, witness := RowWitness.topPrime 1553 },
  { lower := 1614, upper := 1673, witness := RowWitness.topPrime 1613 },
  { lower := 1674, upper := 1729, witness := RowWitness.topPrime 1669 },
  { lower := 1730, upper := 1783, witness := RowWitness.topPrime 1723 },
  { lower := 1784, upper := 1843, witness := RowWitness.topPrime 1783 },
  { lower := 1844, upper := 1891, witness := RowWitness.topPrime 1831 },
  { lower := 1892, upper := 1949, witness := RowWitness.topPrime 1889 },
  { lower := 1950, upper := 2009, witness := RowWitness.topPrime 1949 },
  { lower := 2010, upper := 2063, witness := RowWitness.topPrime 2003 },
  { lower := 2064, upper := 2123, witness := RowWitness.topPrime 2063 },
  { lower := 2124, upper := 2173, witness := RowWitness.topPrime 2113 },
  { lower := 2174, upper := 2221, witness := RowWitness.topPrime 2161 },
  { lower := 2222, upper := 2281, witness := RowWitness.topPrime 2221 },
  { lower := 2282, upper := 2341, witness := RowWitness.topPrime 2281 },
  { lower := 2342, upper := 2401, witness := RowWitness.topPrime 2341 },
  { lower := 2402, upper := 2459, witness := RowWitness.topPrime 2399 },
  { lower := 2460, upper := 2519, witness := RowWitness.topPrime 2459 },
  { lower := 2520, upper := 2563, witness := RowWitness.topPrime 2503 },
  { lower := 2564, upper := 2617, witness := RowWitness.topPrime 2557 },
  { lower := 2618, upper := 2677, witness := RowWitness.topPrime 2617 },
  { lower := 2678, upper := 2737, witness := RowWitness.topPrime 2677 },
  { lower := 2738, upper := 2791, witness := RowWitness.topPrime 2731 },
  { lower := 2792, upper := 2851, witness := RowWitness.topPrime 2791 },
  { lower := 2852, upper := 2911, witness := RowWitness.topPrime 2851 },
  { lower := 2912, upper := 2969, witness := RowWitness.topPrime 2909 },
  { lower := 2970, upper := 3029, witness := RowWitness.topPrime 2969 },
  { lower := 3030, upper := 3083, witness := RowWitness.topPrime 3023 },
  { lower := 3084, upper := 3143, witness := RowWitness.topPrime 3083 },
  { lower := 3144, upper := 3197, witness := RowWitness.topPrime 3137 },
  { lower := 3198, upper := 3251, witness := RowWitness.topPrime 3191 },
  { lower := 3252, upper := 3311, witness := RowWitness.topPrime 3251 },
  { lower := 3312, upper := 3367, witness := RowWitness.topPrime 3307 },
  { lower := 3368, upper := 3421, witness := RowWitness.topPrime 3361 },
  { lower := 3422, upper := 3473, witness := RowWitness.topPrime 3413 },
  { lower := 3474, upper := 3529, witness := RowWitness.topPrime 3469 },
  { lower := 3530, upper := 3589, witness := RowWitness.topPrime 3529 },
  { lower := 3590, upper := 3643, witness := RowWitness.topPrime 3583 },
  { lower := 3644, upper := 3670, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3757, witness := RowWitness.topPrime 3697 },
  { lower := 3758, upper := 3799, witness := RowWitness.topPrime 3739 },
  { lower := 3800, upper := 3817, witness := RowWitness.topPrime 3797 },
  { lower := 3844, upper := 3893, witness := RowWitness.topPrime 3833 },
  { lower := 3894, upper := 3947, witness := RowWitness.topPrime 3889 },
  { lower := 3993, upper := 4031, witness := RowWitness.topPrime 3989 },
  { lower := 4046, upper := 4053, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4111, witness := RowWitness.topPrime 4051 },
  { lower := 4112, upper := 4171, witness := RowWitness.topPrime 4111 },
  { lower := 4172, upper := 4176, witness := RowWitness.topPrime 4159 },
  { lower := 4225, upper := 4279, witness := RowWitness.topPrime 4219 },
  { lower := 4280, upper := 4285, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4387, witness := RowWitness.topPrime 4327 },
  { lower := 4388, upper := 4433, witness := RowWitness.topPrime 4373 },
  { lower := 4434, upper := 4454, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4478, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4663, witness := RowWitness.topPrime 4603 },
  { lower := 4664, upper := 4677, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4753, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4792, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4861, witness := RowWitness.topPrime 4801 },
  { lower := 4862, upper := 4921, witness := RowWitness.topPrime 4861 },
  { lower := 4922, upper := 4924, witness := RowWitness.topPrime 4919 },
  { lower := 5043, upper := 5099, witness := RowWitness.topPrime 5039 },
  { lower := 5100, upper := 5114, witness := RowWitness.topPrime 5099 },
  { lower := 5120, upper := 5179, witness := RowWitness.topPrime 5119 },
  { lower := 5180, upper := 5180, witness := RowWitness.topPrime 5179 },
  { lower := 5202, upper := 5205, witness := RowWitness.topPrime 5197 },
  { lower := 5324, upper := 5383, witness := RowWitness.topPrime 5323 },
  { lower := 5384, upper := 5406, witness := RowWitness.topPrime 5381 },
  { lower := 5415, upper := 5436, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5543, witness := RowWitness.topPrime 5483 },
  { lower := 5544, upper := 5551, witness := RowWitness.topPrime 5531 },
  { lower := 5589, upper := 5607, witness := RowWitness.topPrime 5581 },
  { lower := 5618, upper := 5651, witness := RowWitness.topPrime 5591 },
  { lower := 5652, upper := 5685, witness := RowWitness.topPrime 5651 },
  { lower := 5776, upper := 5809, witness := RowWitness.topPrime 5749 },
  { lower := 5810, upper := 5867, witness := RowWitness.topPrime 5807 },
  { lower := 5868, upper := 5927, witness := RowWitness.topPrime 5867 },
  { lower := 5928, upper := 5947, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6129, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6203, witness := RowWitness.topPrime 6143 },
  { lower := 6204, upper := 6204, witness := RowWitness.topPrime 6203 },
  { lower := 6348, upper := 6403, witness := RowWitness.topPrime 6343 },
  { lower := 6404, upper := 6418, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6551, witness := RowWitness.topPrime 6491 },
  { lower := 6552, upper := 6558, witness := RowWitness.topPrime 6551 },
  { lower := 6561, upper := 6577, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6621, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6679, witness := RowWitness.topPrime 6619 },
  { lower := 6680, upper := 6715, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6779, witness := RowWitness.topPrime 6719 },
  { lower := 6780, upper := 6787, witness := RowWitness.topPrime 6779 },
  { lower := 6845, upper := 6901, witness := RowWitness.topPrime 6841 },
  { lower := 6902, upper := 6959, witness := RowWitness.topPrime 6899 },
  { lower := 6960, upper := 6996, witness := RowWitness.topPrime 6959 },
  { lower := 7203, upper := 7253, witness := RowWitness.topPrime 7193 },
  { lower := 7254, upper := 7280, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7453, witness := RowWitness.topPrime 7393 },
  { lower := 7454, upper := 7456, witness := RowWitness.topPrime 7451 },
  { lower := 7546, upper := 7560, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7621, witness := RowWitness.topPrime 7561 },
  { lower := 7622, upper := 7629, witness := RowWitness.topPrime 7621 },
  { lower := 7688, upper := 7740, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7993, witness := RowWitness.topPrime 7933 },
  { lower := 7994, upper := 8002, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8046, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8269, witness := RowWitness.topPrime 8209 },
  { lower := 8270, upper := 8274, witness := RowWitness.topPrime 8269 },
  { lower := 8410, upper := 8449, witness := RowWitness.topPrime 8389 },
  { lower := 8450, upper := 8487, witness := RowWitness.topPrime 8447 },
  { lower := 8664, upper := 8723, witness := RowWitness.topPrime 8663 },
  { lower := 8724, upper := 8724, witness := RowWitness.topPrime 8719 },
  { lower := 8748, upper := 8807, witness := RowWitness.topPrime 8747 },
  { lower := 8808, upper := 8810, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8848, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9053, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9301, witness := RowWitness.topPrime 9241 },
  { lower := 9302, upper := 9305, witness := RowWitness.topPrime 9293 },
  { lower := 9375, upper := 9377, witness := RowWitness.topPrime 9371 },
  { lower := 9522, upper := 9537, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9661, witness := RowWitness.topPrime 9601 },
  { lower := 9662, upper := 9664, witness := RowWitness.topPrime 9661 },
  { lower := 10051, upper := 10060, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10139, witness := RowWitness.topPrime 10079 },
  { lower := 10140, upper := 10146, witness := RowWitness.topPrime 10139 },
  { lower := 10240, upper := 10266, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10627, witness := RowWitness.topPrime 10567 },
  { lower := 10628, upper := 10640, witness := RowWitness.topPrime 10627 },
  { lower := 10648, upper := 10685, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10969, witness := RowWitness.topPrime 10909 },
  { lower := 10970, upper := 11012, witness := RowWitness.topPrime 10957 },
  { lower := 11045, upper := 11045, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11105, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11153, witness := RowWitness.topPrime 11093 },
  { lower := 11154, upper := 11154, witness := RowWitness.topPrime 11149 },
  { lower := 11250, upper := 11303, witness := RowWitness.topPrime 11243 },
  { lower := 11304, upper := 11310, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11698, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11803, witness := RowWitness.topPrime 11743 },
  { lower := 11804, upper := 11834, witness := RowWitness.topPrime 11801 },
  { lower := 12005, upper := 12039, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12348, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12553, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13181, witness := RowWitness.topPrime 13121 },
  { lower := 13182, upper := 13185, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13242, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13285, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13369, witness := RowWitness.topPrime 13309 },
  { lower := 13370, upper := 13370, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13511, witness := RowWitness.topPrime 13451 },
  { lower := 13512, upper := 13514, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13771, witness := RowWitness.topPrime 13711 },
  { lower := 13772, upper := 13778, witness := RowWitness.topPrime 13763 },
  { lower := 14336, upper := 14357, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14396, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14461, witness := RowWitness.topPrime 14401 },
  { lower := 14462, upper := 14466, witness := RowWitness.topPrime 14461 },
  { lower := 14792, upper := 14799, witness := RowWitness.topPrime 14783 },
  { lower := 15138, upper := 15189, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15369, witness := RowWitness.topPrime 15359 },
  { lower := 15376, upper := 15433, witness := RowWitness.topPrime 15373 },
  { lower := 15434, upper := 15436, witness := RowWitness.topPrime 15427 },
  { lower := 15979, upper := 16032, witness := RowWitness.topPrime 15973 },
  { lower := 16038, upper := 16039, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16397, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16444, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16847, witness := RowWitness.topPrime 16787 },
  { lower := 16848, upper := 16880, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17358, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17461, witness := RowWitness.topPrime 17401 },
  { lower := 17462, upper := 17465, witness := RowWitness.topPrime 17449 },
  { lower := 17672, upper := 17721, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18541, witness := RowWitness.topPrime 18481 },
  { lower := 18542, upper := 18551, witness := RowWitness.topPrime 18541 },
  { lower := 19208, upper := 19267, witness := RowWitness.topPrime 19207 },
  { lower := 19268, upper := 19268, witness := RowWitness.topPrime 19267 },
  { lower := 19663, upper := 19721, witness := RowWitness.topPrime 19661 },
  { lower := 19722, upper := 19723, witness := RowWitness.topPrime 19717 },
  { lower := 20181, upper := 20232, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20540, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20595, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21923, witness := RowWitness.topPrime 21863 },
  { lower := 21924, upper := 21935, witness := RowWitness.topPrime 21911 },
  { lower := 22528, upper := 22532, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24018, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24089, witness := RowWitness.topPrime 24029 },
  { lower := 24090, upper := 24097, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24359, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24419, witness := RowWitness.topPrime 24359 },
  { lower := 24420, upper := 24427, witness := RowWitness.topPrime 24419 },
  { lower := 24576, upper := 24625, witness := RowWitness.topPrime 24571 },
  { lower := 25289, upper := 25321, witness := RowWitness.topPrime 25261 },
  { lower := 25322, upper := 25341, witness := RowWitness.topPrime 25321 },
  { lower := 26411, upper := 26424, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26657, witness := RowWitness.topPrime 26597 },
  { lower := 26658, upper := 26680, witness := RowWitness.topPrime 26647 },
  { lower := 27436, upper := 27440, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28150, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28621, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28732, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28777, witness := RowWitness.topPrime 28729 },
  { lower := 30758, upper := 30780, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30959, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31273, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32828, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33674, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34435, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34867, witness := RowWitness.topPrime 34807 },
  { lower := 34868, upper := 34870, witness := RowWitness.topPrime 34849 },
  { lower := 35152, upper := 35191, witness := RowWitness.topPrime 35149 },
  { lower := 36517, upper := 36557, witness := RowWitness.topPrime 36497 },
  { lower := 36558, upper := 36561, witness := RowWitness.topPrime 36551 },
  { lower := 37553, upper := 37560, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39364, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39386, witness := RowWitness.topPrime 39359 },
  { lower := 41772, upper := 41803, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43781, witness := RowWitness.topPrime 43721 },
  { lower := 43782, upper := 43800, witness := RowWitness.topPrime 43781 },
  { lower := 43940, upper := 43983, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44240, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48073, witness := RowWitness.topPrime 48017 },
  { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49190, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73227, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73755, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327740, witness := RowWitness.topPrime 327689 }
]

def row061_layers : List CoverLayer := [
  { lower := 3660, upper := 7320, M := 28 },
  { lower := 7320, upper := 14640, M := 25 },
  { lower := 14640, upper := 29280, M := 22 },
  { lower := 29280, upper := 58560, M := 20 },
  { lower := 58560, upper := 117120, M := 17 },
  { lower := 117120, upper := 234240, M := 15 },
  { lower := 234240, upper := 468480, M := 13 },
  { lower := 468480, upper := 936960, M := 12 },
  { lower := 936960, upper := 1873920, M := 11 },
  { lower := 1873920, upper := 3747840, M := 9 },
  { lower := 3747840, upper := 7495680, M := 8 },
  { lower := 7495680, upper := 14991360, M := 7 },
  { lower := 14991360, upper := 29982720, M := 6 },
  { lower := 29982720, upper := 59965440, M := 6 },
  { lower := 59965440, upper := 119930880, M := 5 },
  { lower := 119930880, upper := 239861760, M := 5 },
  { lower := 239861760, upper := 479723520, M := 4 },
  { lower := 479723520, upper := 959447040, M := 4 },
  { lower := 959447040, upper := 1918894080, M := 3 },
  { lower := 1918894080, upper := 3837788160, M := 3 },
  { lower := 3837788160, upper := 7675576320, M := 3 },
  { lower := 7675576320, upper := 15351152640, M := 2 },
  { lower := 15351152640, upper := 30702305280, M := 2 },
  { lower := 30702305280, upper := 61404610560, M := 2 },
  { lower := 61404610560, upper := 122809221120, M := 2 },
  { lower := 122809221120, upper := 245618442240, M := 2 },
  { lower := 245618442240, upper := 491236884480, M := 1 },
  { lower := 491236884480, upper := 982473768960, M := 1 },
  { lower := 982473768960, upper := 1000000000000, M := 1 }
]

def row061 : FiniteCoverRow := {
  height := row061_height,
  goods := row061_goods,
  layers := row061_layers
}

theorem row061_registered :
    decide (row061.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row061_goods_checked :
    row061.goods.all (goodSegmentCheck row061.height.i row061.height.r row061.height.s) = true := by
  decide +kernel

theorem row061_small_checked :
    coverCheck (2 * row061.height.i + 2) (row061.height.i * (row061.height.i - 1) - 1)
      (row061.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row061_layerCover_checked :
    coverCheck (row061.height.i * (row061.height.i - 1)) (row061.height.n0 - 1)
      (row061.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row061_layer000_checked :
    coverLayerCheck row061.height row061.goods { lower := 3660, upper := 7320, M := 28 } = true := by
  decide +kernel

theorem row061_layer001_checked :
    coverLayerCheck row061.height row061.goods { lower := 7320, upper := 14640, M := 25 } = true := by
  decide +kernel

theorem row061_layer002_checked :
    coverLayerCheck row061.height row061.goods { lower := 14640, upper := 29280, M := 22 } = true := by
  decide +kernel

theorem row061_layer003_checked :
    coverLayerCheck row061.height row061.goods { lower := 29280, upper := 58560, M := 20 } = true := by
  decide +kernel

theorem row061_layer004_checked :
    coverLayerCheck row061.height row061.goods { lower := 58560, upper := 117120, M := 17 } = true := by
  decide +kernel

theorem row061_layer005_checked :
    coverLayerCheck row061.height row061.goods { lower := 117120, upper := 234240, M := 15 } = true := by
  decide +kernel

theorem row061_layer006_checked :
    coverLayerCheck row061.height row061.goods { lower := 234240, upper := 468480, M := 13 } = true := by
  decide +kernel

theorem row061_layer007_checked :
    coverLayerCheck row061.height row061.goods { lower := 468480, upper := 936960, M := 12 } = true := by
  decide +kernel

theorem row061_layer008_checked :
    coverLayerCheck row061.height row061.goods { lower := 936960, upper := 1873920, M := 11 } = true := by
  decide +kernel

theorem row061_layer009_checked :
    coverLayerCheck row061.height row061.goods { lower := 1873920, upper := 3747840, M := 9 } = true := by
  decide +kernel

theorem row061_layer010_checked :
    coverLayerCheck row061.height row061.goods { lower := 3747840, upper := 7495680, M := 8 } = true := by
  decide +kernel

theorem row061_layer011_checked :
    coverLayerCheck row061.height row061.goods { lower := 7495680, upper := 14991360, M := 7 } = true := by
  decide +kernel

theorem row061_layer012_checked :
    coverLayerCheck row061.height row061.goods { lower := 14991360, upper := 29982720, M := 6 } = true := by
  decide +kernel

theorem row061_layer013_checked :
    coverLayerCheck row061.height row061.goods { lower := 29982720, upper := 59965440, M := 6 } = true := by
  decide +kernel

theorem row061_layer014_checked :
    coverLayerCheck row061.height row061.goods { lower := 59965440, upper := 119930880, M := 5 } = true := by
  decide +kernel

theorem row061_layer015_checked :
    coverLayerCheck row061.height row061.goods { lower := 119930880, upper := 239861760, M := 5 } = true := by
  decide +kernel

theorem row061_layer016_checked :
    coverLayerCheck row061.height row061.goods { lower := 239861760, upper := 479723520, M := 4 } = true := by
  decide +kernel

theorem row061_layer017_checked :
    coverLayerCheck row061.height row061.goods { lower := 479723520, upper := 959447040, M := 4 } = true := by
  decide +kernel

theorem row061_layer018_checked :
    coverLayerCheck row061.height row061.goods { lower := 959447040, upper := 1918894080, M := 3 } = true := by
  decide +kernel

theorem row061_layer019_checked :
    coverLayerCheck row061.height row061.goods { lower := 1918894080, upper := 3837788160, M := 3 } = true := by
  decide +kernel

theorem row061_layer020_checked :
    coverLayerCheck row061.height row061.goods { lower := 3837788160, upper := 7675576320, M := 3 } = true := by
  decide +kernel

theorem row061_layer021_checked :
    coverLayerCheck row061.height row061.goods { lower := 7675576320, upper := 15351152640, M := 2 } = true := by
  decide +kernel

theorem row061_layer022_checked :
    coverLayerCheck row061.height row061.goods { lower := 15351152640, upper := 30702305280, M := 2 } = true := by
  decide +kernel

theorem row061_layer023_checked :
    coverLayerCheck row061.height row061.goods { lower := 30702305280, upper := 61404610560, M := 2 } = true := by
  decide +kernel

theorem row061_layer024_checked :
    coverLayerCheck row061.height row061.goods { lower := 61404610560, upper := 122809221120, M := 2 } = true := by
  decide +kernel

theorem row061_layer025_checked :
    coverLayerCheck row061.height row061.goods { lower := 122809221120, upper := 245618442240, M := 2 } = true := by
  decide +kernel

theorem row061_layer026_checked :
    coverLayerCheck row061.height row061.goods { lower := 245618442240, upper := 491236884480, M := 1 } = true := by
  decide +kernel

theorem row061_layer027_checked :
    coverLayerCheck row061.height row061.goods { lower := 491236884480, upper := 982473768960, M := 1 } = true := by
  decide +kernel

theorem row061_layer028_checked :
    coverLayerCheck row061.height row061.goods { lower := 982473768960, upper := 1000000000000, M := 1 } = true := by
  decide +kernel

theorem row061_layers_checked :
    row061.layers.all (coverLayerCheck row061.height row061.goods) = true := by
  change List.all [
    { lower := 3660, upper := 7320, M := 28 },
    { lower := 7320, upper := 14640, M := 25 },
    { lower := 14640, upper := 29280, M := 22 },
    { lower := 29280, upper := 58560, M := 20 },
    { lower := 58560, upper := 117120, M := 17 },
    { lower := 117120, upper := 234240, M := 15 },
    { lower := 234240, upper := 468480, M := 13 },
    { lower := 468480, upper := 936960, M := 12 },
    { lower := 936960, upper := 1873920, M := 11 },
    { lower := 1873920, upper := 3747840, M := 9 },
    { lower := 3747840, upper := 7495680, M := 8 },
    { lower := 7495680, upper := 14991360, M := 7 },
    { lower := 14991360, upper := 29982720, M := 6 },
    { lower := 29982720, upper := 59965440, M := 6 },
    { lower := 59965440, upper := 119930880, M := 5 },
    { lower := 119930880, upper := 239861760, M := 5 },
    { lower := 239861760, upper := 479723520, M := 4 },
    { lower := 479723520, upper := 959447040, M := 4 },
    { lower := 959447040, upper := 1918894080, M := 3 },
    { lower := 1918894080, upper := 3837788160, M := 3 },
    { lower := 3837788160, upper := 7675576320, M := 3 },
    { lower := 7675576320, upper := 15351152640, M := 2 },
    { lower := 15351152640, upper := 30702305280, M := 2 },
    { lower := 30702305280, upper := 61404610560, M := 2 },
    { lower := 61404610560, upper := 122809221120, M := 2 },
    { lower := 122809221120, upper := 245618442240, M := 2 },
    { lower := 245618442240, upper := 491236884480, M := 1 },
    { lower := 491236884480, upper := 982473768960, M := 1 },
    { lower := 982473768960, upper := 1000000000000, M := 1 }
  ] (coverLayerCheck row061.height row061.goods) = true
  simp only [List.all_cons, List.all_nil,
    row061_layer000_checked,
    row061_layer001_checked,
    row061_layer002_checked,
    row061_layer003_checked,
    row061_layer004_checked,
    row061_layer005_checked,
    row061_layer006_checked,
    row061_layer007_checked,
    row061_layer008_checked,
    row061_layer009_checked,
    row061_layer010_checked,
    row061_layer011_checked,
    row061_layer012_checked,
    row061_layer013_checked,
    row061_layer014_checked,
    row061_layer015_checked,
    row061_layer016_checked,
    row061_layer017_checked,
    row061_layer018_checked,
    row061_layer019_checked,
    row061_layer020_checked,
    row061_layer021_checked,
    row061_layer022_checked,
    row061_layer023_checked,
    row061_layer024_checked,
    row061_layer025_checked,
    row061_layer026_checked,
    row061_layer027_checked,
    row061_layer028_checked,
    Bool.true_and]

theorem row061_checked : finiteCoverRowCheck row061 = true := by
  simp only [finiteCoverRowCheck, row061_registered, row061_goods_checked,
    row061_small_checked, row061_layerCover_checked, row061_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row061_checked

end B699LowIndex
