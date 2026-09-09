import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows01 : List FiniteCoverRow := [
  {
    height := {
      i := 53, r := 17, s := 36,
      n0Power10 := 13
    },
    goods := [
      {
        lower := 108, upper := 159,
        witness := RowWitness.topPrime 107
      },
      {
        lower := 160, upper := 209,
        witness := RowWitness.topPrime 157
      },
      {
        lower := 210, upper := 251,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 252, upper := 303,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 304, upper := 345,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 346, upper := 389,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 390, upper := 441,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 442, upper := 491,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 492, upper := 543,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 544, upper := 593,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 594, upper := 645,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 646, upper := 695,
        witness := RowWitness.topPrime 643
      },
      {
        lower := 696, upper := 743,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 744, upper := 795,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 796, upper := 839,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 840, upper := 891,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 892, upper := 939,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 940, upper := 989,
        witness := RowWitness.topPrime 937
      },
      {
        lower := 990, upper := 1035,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1036, upper := 1085,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1086, upper := 1121,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1122, upper := 1169,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1170, upper := 1215,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1216, upper := 1265,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1266, upper := 1311,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1312, upper := 1359,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1360, upper := 1379,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1380, upper := 1425,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1426, upper := 1475,
        witness := RowWitness.topPrime 1423
      },
      {
        lower := 1476, upper := 1523,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1524, upper := 1575,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1576, upper := 1623,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1624, upper := 1673,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1674, upper := 1721,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1722, upper := 1773,
        witness := RowWitness.topPrime 1721
      },
      {
        lower := 1774, upper := 1811,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1812, upper := 1863,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1864, upper := 1913,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1914, upper := 1965,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1966, upper := 2003,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2004, upper := 2055,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2056, upper := 2105,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2106, upper := 2151,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2152, upper := 2195,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2196, upper := 2231,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2232, upper := 2273,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2274, upper := 2325,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2326, upper := 2363,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2364, upper := 2409,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2410, upper := 2451,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2452, upper := 2499,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2500, upper := 2529,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2530, upper := 2573,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2574, upper := 2609,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2610, upper := 2661,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2662, upper := 2711,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2712, upper := 2763,
        witness := RowWitness.topPrime 2711
      },
      {
        lower := 2764, upper := 2802,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2816, upper := 2835,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2913,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2914, upper := 2961,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2962, upper := 2968,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3025, upper := 3075,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3076, upper := 3119,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3120, upper := 3139,
        witness := RowWitness.topPrime 3119
      },
      {
        lower := 3146, upper := 3189,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3190, upper := 3239,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3240, upper := 3281,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3282, upper := 3302,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3413,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3414, upper := 3454,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3501,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3502, upper := 3551,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3552, upper := 3561,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3601,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3659,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3660, upper := 3677,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3703, upper := 3753,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3754, upper := 3791,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3792, upper := 3809,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3885,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3886, upper := 3933,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3934, upper := 3939,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 3993, upper := 4023,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4103,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4104, upper := 4151,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4152, upper := 4168,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4271,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4272, upper := 4277,
        witness := RowWitness.topPrime 4271
      },
      {
        lower := 4335, upper := 4379,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4380, upper := 4425,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4426, upper := 4446,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4470,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4615,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4617, upper := 4655,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4656, upper := 4669,
        witness := RowWitness.topPrime 4651
      },
      {
        lower := 4732, upper := 4745,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4784,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4853,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4854, upper := 4854,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4913,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4914, upper := 4953,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5091,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5092, upper := 5098,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5103, upper := 5106,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5171,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5172, upper := 5172,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5324, upper := 5342,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5385,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5386, upper := 5398,
        witness := RowWitness.topPrime 5381
      },
      {
        lower := 5415, upper := 5428,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5535,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5536, upper := 5540,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5599,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5625, upper := 5675,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5676, upper := 5677,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5776, upper := 5801,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5802, upper := 5853,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5854, upper := 5883,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5888, upper := 5933,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5934, upper := 5939,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6121,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6195,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6196, upper := 6196,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6395,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6396, upper := 6410,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6517, upper := 6543,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6544, upper := 6550,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6569,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6613,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6643,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6689,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6690, upper := 6707,
        witness := RowWitness.topPrime 6689
      },
      {
        lower := 6727, upper := 6771,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6772, upper := 6779,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6909,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6910, upper := 6927,
        witness := RowWitness.topPrime 6907
      },
      {
        lower := 7203, upper := 7245,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7246, upper := 7272,
        witness := RowWitness.topPrime 7243
      },
      {
        lower := 7406, upper := 7445,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7446, upper := 7448,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7559,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7560, upper := 7566,
        witness := RowWitness.topPrime 7559
      },
      {
        lower := 7569, upper := 7613,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7614, upper := 7621,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7688, upper := 7732,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7985,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7986, upper := 7994,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8038,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8261,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8262, upper := 8266,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8410, upper := 8441,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8442, upper := 8457,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8701,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8704, upper := 8716,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8748, upper := 8799,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8800, upper := 8802,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8840,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9045,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9293,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9294, upper := 9297,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9386, upper := 9427,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9529,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9653,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9654, upper := 9656,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10052,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10131,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10132, upper := 10138,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10258,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10619,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10620, upper := 10623,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10632,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10677,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10961,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10962, upper := 11004,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11097,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11145,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11146, upper := 11146,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11264, upper := 11302,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11690,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11795,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11796, upper := 11826,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12031,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12340,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12545,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13173,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13174, upper := 13174,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13312, upper := 13361,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13362, upper := 13362,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13503,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13504, upper := 13506,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13742,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13770,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 14336, upper := 14349,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14388,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14453,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14454, upper := 14458,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 15138, upper := 15181,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15361,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15376, upper := 15425,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15426, upper := 15428,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16024,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16389,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16436,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16839,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16840, upper := 16862,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17350,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17713,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18533,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18534, upper := 18543,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19218,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19260,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19704,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20224,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20577, upper := 20587,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21915,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21916, upper := 21927,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 24010, upper := 24010,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24081,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24082, upper := 24089,
        witness := RowWitness.topPrime 24077
      },
      {
        lower := 24334, upper := 24351,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24617,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26411, upper := 26416,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26649,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26650, upper := 26672,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 28577, upper := 28613,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28724,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28769,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30758, upper := 30772,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31265,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32820,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33666,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34427,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35183,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35353,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 43750, upper := 43773,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43774, upper := 43792,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43975,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 49152, upper := 49182,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73219,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73747,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327732,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 2756, upper := 5512, M := 29
      },
      {
        lower := 5512, upper := 11024, M := 26
      },
      {
        lower := 11024, upper := 22048, M := 23
      },
      {
        lower := 22048, upper := 44096, M := 21
      },
      {
        lower := 44096, upper := 88192, M := 18
      },
      {
        lower := 88192, upper := 176384, M := 17
      },
      {
        lower := 176384, upper := 352768, M := 15
      },
      {
        lower := 352768, upper := 705536, M := 13
      },
      {
        lower := 705536, upper := 1411072, M := 12
      },
      {
        lower := 1411072, upper := 2822144, M := 11
      },
      {
        lower := 2822144, upper := 5644288, M := 10
      },
      {
        lower := 5644288, upper := 11288576, M := 9
      },
      {
        lower := 11288576, upper := 22577152, M := 8
      },
      {
        lower := 22577152, upper := 45154304, M := 7
      },
      {
        lower := 45154304, upper := 90308608, M := 6
      },
      {
        lower := 90308608, upper := 180617216, M := 6
      },
      {
        lower := 180617216, upper := 361234432, M := 5
      },
      {
        lower := 361234432, upper := 722468864, M := 5
      },
      {
        lower := 722468864, upper := 1444937728, M := 4
      },
      {
        lower := 1444937728, upper := 2889875456, M := 4
      },
      {
        lower := 2889875456, upper := 5779750912, M := 3
      },
      {
        lower := 5779750912, upper := 11559501824, M := 3
      },
      {
        lower := 11559501824, upper := 23119003648, M := 3
      },
      {
        lower := 23119003648, upper := 46238007296, M := 3
      },
      {
        lower := 46238007296, upper := 92476014592, M := 2
      },
      {
        lower := 92476014592, upper := 184952029184, M := 2
      },
      {
        lower := 184952029184, upper := 369904058368, M := 2
      },
      {
        lower := 369904058368, upper := 739808116736, M := 2
      },
      {
        lower := 739808116736, upper := 1479616233472, M := 2
      },
      {
        lower := 1479616233472, upper := 2959232466944, M := 2
      },
      {
        lower := 2959232466944, upper := 5918464933888, M := 1
      },
      {
        lower := 5918464933888, upper := 10000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 54, r := 17, s := 37,
      n0Power10 := 18
    },
    goods := [
      {
        lower := 110, upper := 162,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 163, upper := 216,
        witness := RowWitness.topPrime 163
      },
      {
        lower := 217, upper := 264,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 265, upper := 316,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 317, upper := 370,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 371, upper := 420,
        witness := RowWitness.topPrime 367
      },
      {
        lower := 421, upper := 474,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 475, upper := 520,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 521, upper := 574,
        witness := RowWitness.topPrime 521
      },
      {
        lower := 575, upper := 624,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 625, upper := 672,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 673, upper := 726,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 727, upper := 780,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 781, upper := 826,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 827, upper := 880,
        witness := RowWitness.topPrime 827
      },
      {
        lower := 881, upper := 934,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 935, upper := 982,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 983, upper := 1036,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1037, upper := 1086,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1087, upper := 1140,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1141, upper := 1182,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1183, upper := 1234,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1235, upper := 1284,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1285, upper := 1336,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1337, upper := 1380,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1381, upper := 1434,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1435, upper := 1486,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1487, upper := 1540,
        witness := RowWitness.topPrime 1487
      },
      {
        lower := 1541, upper := 1584,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1585, upper := 1636,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1637, upper := 1690,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1691, upper := 1722,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1723, upper := 1776,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1777, upper := 1830,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1831, upper := 1884,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1885, upper := 1932,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1933, upper := 1986,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1987, upper := 2040,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2041, upper := 2092,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2093, upper := 2142,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2143, upper := 2196,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2197, upper := 2232,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2233, upper := 2274,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2275, upper := 2326,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2327, upper := 2364,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2365, upper := 2410,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2411, upper := 2464,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2465, upper := 2512,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2513, upper := 2556,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2557, upper := 2610,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2611, upper := 2662,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2663, upper := 2716,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2717, upper := 2766,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2767, upper := 2820,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2821, upper := 2862,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2875, upper := 2914,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2915, upper := 2943,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3025, upper := 3076,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3077, upper := 3120,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3121, upper := 3140,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3190,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3191, upper := 3232,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3249, upper := 3282,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3283, upper := 3303,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3414,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3415, upper := 3441,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3483,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3500, upper := 3552,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3553, upper := 3562,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3602,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3660,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3661, upper := 3678,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3703, upper := 3754,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3755, upper := 3792,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3793, upper := 3810,
        witness := RowWitness.topPrime 3793
      },
      {
        lower := 3844, upper := 3886,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3887, upper := 3928,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3993, upper := 4042,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4043, upper := 4053,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4104,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4105, upper := 4152,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4153, upper := 4169,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4225, upper := 4272,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4273, upper := 4288,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4380,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4381, upper := 4426,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4427, upper := 4447,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4471,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4500, upper := 4512,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4608, upper := 4616,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4624, upper := 4661,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4732, upper := 4746,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4785,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4854,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4855, upper := 4855,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4913, upper := 4954,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5092,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5093, upper := 5107,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5120, upper := 5123,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5172,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5173, upper := 5173,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5239, upper := 5255,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5292,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5343,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5415, upper := 5461,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5536,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5537, upper := 5541,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5600,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5618, upper := 5644,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5645, upper := 5678,
        witness := RowWitness.topPrime 5641
      },
      {
        lower := 5776, upper := 5802,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5803, upper := 5854,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5855, upper := 5872,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 6144, upper := 6196,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6197, upper := 6197,
        witness := RowWitness.topPrime 6197
      },
      {
        lower := 6358, upper := 6401,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6544,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6545, upper := 6551,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6570,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6614,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6644,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6690,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6691, upper := 6708,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6772,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6773, upper := 6780,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6910,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6911, upper := 6928,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7203, upper := 7246,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7247, upper := 7273,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7406, upper := 7446,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7447, upper := 7449,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7560,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7561, upper := 7567,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7569, upper := 7614,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7615, upper := 7622,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7688, upper := 7733,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7986,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7987, upper := 7995,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8125, upper := 8145,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8262,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8263, upper := 8267,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8405, upper := 8442,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8443, upper := 8480,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8664, upper := 8716,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8717, upper := 8717,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8788, upper := 8803,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8841,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8959, upper := 8971,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9012,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9046,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9294,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9295, upper := 9304,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9386, upper := 9428,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9575,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9583, upper := 9590,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9654,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9655, upper := 9657,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10000, upper := 10000,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10051, upper := 10053,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10132,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10133, upper := 10145,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10290, upper := 10293,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10580, upper := 10620,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10621, upper := 10666,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10667, upper := 10686,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10952, upper := 11002,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11003, upper := 11029,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11098,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11146,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11147, upper := 11147,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11236, upper := 11244,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11250, upper := 11296,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11297, upper := 11303,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11774, upper := 11796,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11797, upper := 11820,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12032,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12341,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12546,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13225, upper := 13235,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13278,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13312, upper := 13362,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13363, upper := 13363,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13504,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13505, upper := 13507,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13743,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13782,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13783, upper := 13803,
        witness := RowWitness.topPrime 13781
      },
      {
        lower := 14297, upper := 14346,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14347, upper := 14350,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14375, upper := 14389,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14454,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14455, upper := 14459,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14792, upper := 14792,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14812, upper := 14845,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 15138, upper := 15182,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15412,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15413, upper := 15429,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16025,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16390,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16399, upper := 16434,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16435, upper := 16452,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16810, upper := 16840,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16841, upper := 16873,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16875, upper := 16907,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17303, upper := 17351,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17714,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18534,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18535, upper := 18544,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19260,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19261, upper := 19261,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19375, upper := 19396,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19663, upper := 19714,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19715, upper := 19716,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 20181, upper := 20230,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20231, upper := 20234,
        witness := RowWitness.topPrime 20231
      },
      {
        lower := 20577, upper := 20588,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21916,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21917, upper := 21928,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22143,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 23548, upper := 23587,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24010, upper := 24011,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24025, upper := 24076,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24077, upper := 24078,
        witness := RowWitness.topPrime 24077
      },
      {
        lower := 24334, upper := 24352,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24618,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25039,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25289, upper := 25314,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25315, upper := 25334,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26411, upper := 26417,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26650,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26651, upper := 26673,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26908, upper := 26949,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 28125, upper := 28143,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28614,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28725,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28770,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30926, upper := 30952,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31266,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31960,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31961, upper := 31992,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 33282, upper := 33300,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33301, upper := 33328,
        witness := RowWitness.topPrime 33301
      },
      {
        lower := 33620, upper := 33667,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34428,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35184,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35354,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36550,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36551, upper := 36554,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 36980, upper := 37032,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37033, upper := 37033,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 37553, upper := 37553,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39357,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 40678, upper := 40678,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 43750, upper := 43759,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 43976,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44233,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48066,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49183,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50562, upper := 50584,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 54925, upper := 54925,
        witness := RowWitness.topPrime 54919
      },
      {
        lower := 55225, upper := 55272,
        witness := RowWitness.topPrime 55219
      },
      {
        lower := 55273, upper := 55276,
        witness := RowWitness.topPrime 55259
      },
      {
        lower := 58989, upper := 59009,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 68782, upper := 68803,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73034, upper := 73055,
        witness := RowWitness.topPrime 73019
      },
      {
        lower := 73205, upper := 73220,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73748,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98313,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 327701, upper := 327733,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 2862, upper := 5724, M := 36
      },
      {
        lower := 5724, upper := 11448, M := 33
      },
      {
        lower := 11448, upper := 22896, M := 31
      },
      {
        lower := 22896, upper := 45792, M := 29
      },
      {
        lower := 45792, upper := 91584, M := 27
      },
      {
        lower := 91584, upper := 183168, M := 25
      },
      {
        lower := 183168, upper := 366336, M := 23
      },
      {
        lower := 366336, upper := 732672, M := 21
      },
      {
        lower := 732672, upper := 1465344, M := 20
      },
      {
        lower := 1465344, upper := 2930688, M := 18
      },
      {
        lower := 2930688, upper := 5861376, M := 17
      },
      {
        lower := 5861376, upper := 11722752, M := 16
      },
      {
        lower := 11722752, upper := 23445504, M := 15
      },
      {
        lower := 23445504, upper := 46891008, M := 14
      },
      {
        lower := 46891008, upper := 93782016, M := 13
      },
      {
        lower := 93782016, upper := 187564032, M := 12
      },
      {
        lower := 187564032, upper := 375128064, M := 11
      },
      {
        lower := 375128064, upper := 750256128, M := 10
      },
      {
        lower := 750256128, upper := 1500512256, M := 9
      },
      {
        lower := 1500512256, upper := 3001024512, M := 9
      },
      {
        lower := 3001024512, upper := 6002049024, M := 8
      },
      {
        lower := 6002049024, upper := 12004098048, M := 8
      },
      {
        lower := 12004098048, upper := 24008196096, M := 7
      },
      {
        lower := 24008196096, upper := 48016392192, M := 7
      },
      {
        lower := 48016392192, upper := 96032784384, M := 6
      },
      {
        lower := 96032784384, upper := 192065568768, M := 6
      },
      {
        lower := 192065568768, upper := 384131137536, M := 5
      },
      {
        lower := 384131137536, upper := 768262275072, M := 5
      },
      {
        lower := 768262275072, upper := 1536524550144, M := 5
      },
      {
        lower := 1536524550144, upper := 3073049100288, M := 4
      },
      {
        lower := 3073049100288, upper := 6146098200576, M := 4
      },
      {
        lower := 6146098200576, upper := 12292196401152, M := 4
      },
      {
        lower := 12292196401152, upper := 24584392802304, M := 4
      },
      {
        lower := 24584392802304, upper := 49168785604608, M := 3
      },
      {
        lower := 49168785604608, upper := 98337571209216, M := 3
      },
      {
        lower := 98337571209216, upper := 196675142418432, M := 3
      },
      {
        lower := 196675142418432, upper := 393350284836864, M := 3
      },
      {
        lower := 393350284836864, upper := 786700569673728, M := 3
      },
      {
        lower := 786700569673728, upper := 1573401139347456, M := 2
      },
      {
        lower := 1573401139347456, upper := 3146802278694912, M := 2
      },
      {
        lower := 3146802278694912, upper := 6293604557389824, M := 2
      },
      {
        lower := 6293604557389824, upper := 12587209114779648, M := 2
      },
      {
        lower := 12587209114779648, upper := 25174418229559296, M := 2
      },
      {
        lower := 25174418229559296, upper := 50348836459118592, M := 2
      },
      {
        lower := 50348836459118592, upper := 100697672918237184, M := 2
      },
      {
        lower := 100697672918237184, upper := 201395345836474368, M := 2
      },
      {
        lower := 201395345836474368, upper := 402790691672948736, M := 2
      },
      {
        lower := 402790691672948736, upper := 805581383345897472, M := 1
      },
      {
        lower := 805581383345897472, upper := 1000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 55, r := 18, s := 37,
      n0Power10 := 15
    },
    goods := [
      {
        lower := 112, upper := 163,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 164, upper := 217,
        witness := RowWitness.topPrime 163
      },
      {
        lower := 218, upper := 265,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 266, upper := 317,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 318, upper := 371,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 372, upper := 421,
        witness := RowWitness.topPrime 367
      },
      {
        lower := 422, upper := 475,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 476, upper := 521,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 522, upper := 575,
        witness := RowWitness.topPrime 521
      },
      {
        lower := 576, upper := 625,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 626, upper := 673,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 674, upper := 727,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 728, upper := 781,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 782, upper := 827,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 828, upper := 881,
        witness := RowWitness.topPrime 827
      },
      {
        lower := 882, upper := 935,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 936, upper := 983,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 984, upper := 1037,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1038, upper := 1087,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1088, upper := 1141,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1142, upper := 1183,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1184, upper := 1235,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1236, upper := 1285,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1286, upper := 1337,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1338, upper := 1381,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1382, upper := 1435,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1436, upper := 1487,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1488, upper := 1541,
        witness := RowWitness.topPrime 1487
      },
      {
        lower := 1542, upper := 1585,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1586, upper := 1637,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1638, upper := 1691,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1692, upper := 1723,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1724, upper := 1777,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1778, upper := 1831,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1832, upper := 1885,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1886, upper := 1933,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1934, upper := 1987,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1988, upper := 2041,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2042, upper := 2093,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2094, upper := 2143,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2144, upper := 2197,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2198, upper := 2233,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2234, upper := 2275,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2276, upper := 2327,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2328, upper := 2365,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2366, upper := 2411,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2412, upper := 2465,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2466, upper := 2513,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2514, upper := 2557,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2558, upper := 2611,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2612, upper := 2663,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2664, upper := 2717,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2718, upper := 2767,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2768, upper := 2821,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2822, upper := 2873,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2874, upper := 2915,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2916, upper := 2963,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2964, upper := 2970,
        witness := RowWitness.topPrime 2963
      },
      {
        lower := 3072, upper := 3121,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3122, upper := 3141,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3159, upper := 3191,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3192, upper := 3245,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3246, upper := 3265,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3362, upper := 3415,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3416, upper := 3467,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3510,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3584, upper := 3603,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3638,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3645, upper := 3664,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3698, upper := 3699,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3703, upper := 3755,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3756, upper := 3793,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3794, upper := 3811,
        witness := RowWitness.topPrime 3793
      },
      {
        lower := 3844, upper := 3887,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3888, upper := 3935,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3936, upper := 3941,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 3971, upper := 4021,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4022, upper := 4025,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4046, upper := 4047,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4105,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4106, upper := 4153,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4154, upper := 4170,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4224, upper := 4273,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4274, upper := 4279,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4381,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4382, upper := 4427,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4428, upper := 4448,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4472,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4657,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4658, upper := 4671,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4732, upper := 4747,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4786,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4855,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4856, upper := 4856,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4915,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4916, upper := 4955,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5093,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5094, upper := 5141,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5142, upper := 5173,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5174, upper := 5174,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5239, upper := 5256,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5293,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5376, upper := 5400,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5461,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5462, upper := 5462,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5537,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5538, upper := 5542,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5627,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5628, upper := 5672,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5766, upper := 5803,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5804, upper := 5855,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5856, upper := 5885,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5888, upper := 5935,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5936, upper := 5941,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6123,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6197,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6198, upper := 6198,
        witness := RowWitness.topPrime 6197
      },
      {
        lower := 6348, upper := 6397,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6398, upper := 6412,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6545,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6546, upper := 6552,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6571,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6615,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6645,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6691,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6692, upper := 6701,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6773,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6774, upper := 6781,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6895,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6896, upper := 6931,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 6936, upper := 6966,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7203, upper := 7247,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7248, upper := 7274,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7406, upper := 7447,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7448, upper := 7460,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7533, upper := 7583,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7584, upper := 7623,
        witness := RowWitness.topPrime 7583
      },
      {
        lower := 7688, upper := 7734,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7987,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7988, upper := 7990,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8214, upper := 8263,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8264, upper := 8268,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8405, upper := 8443,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8444, upper := 8481,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8664, upper := 8717,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8718, upper := 8724,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8748, upper := 8758,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8788, upper := 8802,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8842,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8959, upper := 8972,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9013,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9047,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9295,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9296, upper := 9305,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9386, upper := 9429,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9531,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9655,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9656, upper := 9658,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9747, upper := 9782,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10086, upper := 10133,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10134, upper := 10146,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10260,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10290, upper := 10294,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10580, upper := 10621,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10622, upper := 10625,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10633, upper := 10634,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10935, upper := 10963,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10964, upper := 11006,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11099,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11147,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11148, upper := 11148,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11236, upper := 11245,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11264, upper := 11290,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11692,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11797,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11798, upper := 11828,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12321, upper := 12342,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12547,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13225, upper := 13236,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13279,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13454, upper := 13505,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13506, upper := 13508,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13744,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13754, upper := 13772,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 13851, upper := 13878,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14347,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14348, upper := 14351,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14415, upper := 14460,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14793,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14812, upper := 14846,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14848, upper := 14866,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15183,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15385,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15386, upper := 15430,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 16384, upper := 16391,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16438,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16841,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16842, upper := 16874,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17672, upper := 17715,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18279,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18535,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18536, upper := 18545,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19261,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19262, upper := 19262,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19663, upper := 19715,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19716, upper := 19717,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 20181, upper := 20231,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20232, upper := 20235,
        witness := RowWitness.topPrime 20231
      },
      {
        lower := 20577, upper := 20589,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21142, upper := 21193,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21194, upper := 21195,
        witness := RowWitness.topPrime 21193
      },
      {
        lower := 21866, upper := 21917,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21918, upper := 21924,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22144,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 23548, upper := 23593,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23594, upper := 23602,
        witness := RowWitness.topPrime 23593
      },
      {
        lower := 24025, upper := 24077,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24078, upper := 24091,
        witness := RowWitness.topPrime 24077
      },
      {
        lower := 24334, upper := 24353,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24619,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26411, upper := 26418,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 28577, upper := 28615,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28726,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28771,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30758, upper := 30774,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30953,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31267,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31487, upper := 31487,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 32805, upper := 32822,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32856, upper := 32859,
        witness := RowWitness.topPrime 32843
      },
      {
        lower := 33620, upper := 33668,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35185,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35355,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36551,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36552, upper := 36555,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 36982, upper := 37033,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37034, upper := 37034,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 39326, upper := 39358,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39380,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 42025, upper := 42025,
        witness := RowWitness.topPrime 42023
      },
      {
        lower := 43740, upper := 43760,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44217, upper := 44234,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48067,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49184,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50562, upper := 50585,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 58989, upper := 59010,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 73728, upper := 73749,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98314,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 327701, upper := 327734,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 2970, upper := 5940, M := 34
      },
      {
        lower := 5940, upper := 11880, M := 31
      },
      {
        lower := 11880, upper := 23760, M := 29
      },
      {
        lower := 23760, upper := 47520, M := 26
      },
      {
        lower := 47520, upper := 95040, M := 24
      },
      {
        lower := 95040, upper := 190080, M := 22
      },
      {
        lower := 190080, upper := 380160, M := 20
      },
      {
        lower := 380160, upper := 760320, M := 18
      },
      {
        lower := 760320, upper := 1520640, M := 17
      },
      {
        lower := 1520640, upper := 3041280, M := 15
      },
      {
        lower := 3041280, upper := 6082560, M := 14
      },
      {
        lower := 6082560, upper := 12165120, M := 13
      },
      {
        lower := 12165120, upper := 24330240, M := 12
      },
      {
        lower := 24330240, upper := 48660480, M := 11
      },
      {
        lower := 48660480, upper := 97320960, M := 10
      },
      {
        lower := 97320960, upper := 194641920, M := 9
      },
      {
        lower := 194641920, upper := 389283840, M := 8
      },
      {
        lower := 389283840, upper := 778567680, M := 8
      },
      {
        lower := 778567680, upper := 1557135360, M := 7
      },
      {
        lower := 1557135360, upper := 3114270720, M := 6
      },
      {
        lower := 3114270720, upper := 6228541440, M := 6
      },
      {
        lower := 6228541440, upper := 12457082880, M := 5
      },
      {
        lower := 12457082880, upper := 24914165760, M := 5
      },
      {
        lower := 24914165760, upper := 49828331520, M := 5
      },
      {
        lower := 49828331520, upper := 99656663040, M := 4
      },
      {
        lower := 99656663040, upper := 199313326080, M := 4
      },
      {
        lower := 199313326080, upper := 398626652160, M := 4
      },
      {
        lower := 398626652160, upper := 797253304320, M := 3
      },
      {
        lower := 797253304320, upper := 1594506608640, M := 3
      },
      {
        lower := 1594506608640, upper := 3189013217280, M := 3
      },
      {
        lower := 3189013217280, upper := 6378026434560, M := 3
      },
      {
        lower := 6378026434560, upper := 12756052869120, M := 2
      },
      {
        lower := 12756052869120, upper := 25512105738240, M := 2
      },
      {
        lower := 25512105738240, upper := 51024211476480, M := 2
      },
      {
        lower := 51024211476480, upper := 102048422952960, M := 2
      },
      {
        lower := 102048422952960, upper := 204096845905920, M := 2
      },
      {
        lower := 204096845905920, upper := 408193691811840, M := 2
      },
      {
        lower := 408193691811840, upper := 816387383623680, M := 2
      },
      {
        lower := 816387383623680, upper := 1000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 56, r := 18, s := 38,
      n0Power10 := 13
    },
    goods := [
      {
        lower := 114, upper := 168,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 169, upper := 222,
        witness := RowWitness.topPrime 167
      },
      {
        lower := 223, upper := 278,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 279, upper := 332,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 333, upper := 386,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 387, upper := 438,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 439, upper := 494,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 495, upper := 546,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 547, upper := 602,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 603, upper := 656,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 657, upper := 708,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 709, upper := 764,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 765, upper := 816,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 817, upper := 866,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 867, upper := 918,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 919, upper := 974,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 975, upper := 1026,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1027, upper := 1076,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1077, upper := 1124,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1125, upper := 1178,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1179, upper := 1226,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1227, upper := 1278,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1279, upper := 1334,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1335, upper := 1382,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1383, upper := 1436,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1437, upper := 1488,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1489, upper := 1544,
        witness := RowWitness.topPrime 1489
      },
      {
        lower := 1545, upper := 1598,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1599, upper := 1652,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1653, upper := 1692,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1693, upper := 1748,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1749, upper := 1802,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1803, upper := 1856,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1857, upper := 1902,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1903, upper := 1956,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 1957, upper := 2006,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2007, upper := 2058,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2059, upper := 2108,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2109, upper := 2154,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2155, upper := 2208,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2209, upper := 2262,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2263, upper := 2306,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2307, upper := 2352,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2353, upper := 2406,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2407, upper := 2454,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2455, upper := 2502,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2503, upper := 2558,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2559, upper := 2612,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2613, upper := 2664,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2665, upper := 2718,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2719, upper := 2774,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2775, upper := 2822,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2823, upper := 2874,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2875, upper := 2916,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2917, upper := 2972,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 2973, upper := 3026,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3027, upper := 3078,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3079, upper := 3097,
        witness := RowWitness.topPrime 3079
      },
      {
        lower := 3125, upper := 3127,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3192,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3193, upper := 3234,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3249, upper := 3284,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3285, upper := 3305,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3364, upper := 3416,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3417, upper := 3443,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3500, upper := 3554,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3555, upper := 3564,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3625, upper := 3678,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3679, upper := 3685,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3698, upper := 3700,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3703, upper := 3756,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3757, upper := 3794,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3795, upper := 3806,
        witness := RowWitness.topPrime 3793
      },
      {
        lower := 3875, upper := 3918,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3919, upper := 3942,
        witness := RowWitness.topPrime 3919
      },
      {
        lower := 3993, upper := 4026,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4046, upper := 4048,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4106,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4107, upper := 4154,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4155, upper := 4162,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4225, upper := 4274,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4275, upper := 4280,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4382,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4383, upper := 4428,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4429, upper := 4449,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4617, upper := 4618,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4624, upper := 4672,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4732, upper := 4748,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4787,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4856,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4857, upper := 4857,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4860, upper := 4860,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4944,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4945, upper := 4956,
        witness := RowWitness.topPrime 4943
      },
      {
        lower := 5043, upper := 5094,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5095, upper := 5125,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5239, upper := 5257,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5294,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5378,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5379, upper := 5379,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5491, upper := 5531,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5589, upper := 5602,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5646,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5647, upper := 5673,
        witness := RowWitness.topPrime 5647
      },
      {
        lower := 5776, upper := 5804,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5805, upper := 5856,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5857, upper := 5874,
        witness := RowWitness.topPrime 5857
      },
      {
        lower := 5887, upper := 5887,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6075, upper := 6124,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6192,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6348, upper := 6398,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6399, upper := 6403,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6591, upper := 6616,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6674,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6675, upper := 6702,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6727, upper := 6774,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6775, upper := 6782,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6896,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6897, upper := 6930,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7220, upper := 7274,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7275, upper := 7275,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7448,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7449, upper := 7451,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7555,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7569, upper := 7569,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7581, upper := 7624,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7942, upper := 7992,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 7993, upper := 7997,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8041,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8147,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8247,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8410, upper := 8444,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8445, upper := 8482,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8664, upper := 8704,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8750, upper := 8802,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8803, upper := 8805,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8836, upper := 8843,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9048,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9296,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9297, upper := 9300,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9386, upper := 9430,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9532,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9656,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9657, upper := 9659,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10055,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10134,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10135, upper := 10147,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10580, upper := 10622,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10623, upper := 10635,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10680,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10964,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10965, upper := 11007,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11100,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11148,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11149, upper := 11149,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11250, upper := 11291,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11664, upper := 11693,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11798,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11799, upper := 11822,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12321, upper := 12343,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12548,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13176,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13177, upper := 13177,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13225, upper := 13237,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13280,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13454, upper := 13506,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13507, upper := 13509,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13745,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13773,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 14415, upper := 14430,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14794,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15184,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15379, upper := 15431,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16027,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16392,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16439,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16842,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16843, upper := 16875,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17353,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17716,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18280,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18536,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18537, upper := 18546,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19220, upper := 19221,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19716,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19717, upper := 19718,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20232,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20233, upper := 20236,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20577, upper := 20590,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21918,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21919, upper := 21930,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22145,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 24037, upper := 24084,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24085, upper := 24092,
        witness := RowWitness.topPrime 24083
      },
      {
        lower := 24334, upper := 24354,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24389, upper := 24389,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24620,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25316,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25317, upper := 25336,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 28125, upper := 28145,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28616,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28772,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30618, upper := 30648,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30649, upper := 30668,
        witness := RowWitness.topPrime 30649
      },
      {
        lower := 30926, upper := 30954,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31487, upper := 31488,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 32805, upper := 32823,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33669,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34430,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35186,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35356,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36552,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36553, upper := 36556,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 36982, upper := 37034,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37035, upper := 37035,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 37553, upper := 37555,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39359,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39381,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40678, upper := 40680,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 43750, upper := 43776,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43777, upper := 43795,
        witness := RowWitness.topPrime 43777
      },
      {
        lower := 43940, upper := 43978,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44235,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 58989, upper := 59011,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 65625, upper := 65665,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 73205, upper := 73222,
        witness := RowWitness.topPrime 73189
      }
    ],
    layers := [
      {
        lower := 3080, upper := 6160, M := 31
      },
      {
        lower := 6160, upper := 12320, M := 28
      },
      {
        lower := 12320, upper := 24640, M := 25
      },
      {
        lower := 24640, upper := 49280, M := 23
      },
      {
        lower := 49280, upper := 98560, M := 21
      },
      {
        lower := 98560, upper := 197120, M := 19
      },
      {
        lower := 197120, upper := 394240, M := 17
      },
      {
        lower := 394240, upper := 788480, M := 15
      },
      {
        lower := 788480, upper := 1576960, M := 14
      },
      {
        lower := 1576960, upper := 3153920, M := 12
      },
      {
        lower := 3153920, upper := 6307840, M := 11
      },
      {
        lower := 6307840, upper := 12615680, M := 10
      },
      {
        lower := 12615680, upper := 25231360, M := 9
      },
      {
        lower := 25231360, upper := 50462720, M := 8
      },
      {
        lower := 50462720, upper := 100925440, M := 7
      },
      {
        lower := 100925440, upper := 201850880, M := 7
      },
      {
        lower := 201850880, upper := 403701760, M := 6
      },
      {
        lower := 403701760, upper := 807403520, M := 5
      },
      {
        lower := 807403520, upper := 1614807040, M := 5
      },
      {
        lower := 1614807040, upper := 3229614080, M := 5
      },
      {
        lower := 3229614080, upper := 6459228160, M := 4
      },
      {
        lower := 6459228160, upper := 12918456320, M := 4
      },
      {
        lower := 12918456320, upper := 25836912640, M := 3
      },
      {
        lower := 25836912640, upper := 51673825280, M := 3
      },
      {
        lower := 51673825280, upper := 103347650560, M := 3
      },
      {
        lower := 103347650560, upper := 206695301120, M := 3
      },
      {
        lower := 206695301120, upper := 413390602240, M := 2
      },
      {
        lower := 413390602240, upper := 826781204480, M := 2
      },
      {
        lower := 826781204480, upper := 1653562408960, M := 2
      },
      {
        lower := 1653562408960, upper := 3307124817920, M := 2
      },
      {
        lower := 3307124817920, upper := 6614249635840, M := 2
      },
      {
        lower := 6614249635840, upper := 10000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 57, r := 18, s := 39,
      n0Power10 := 12
    },
    goods := [
      {
        lower := 116, upper := 169,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 170, upper := 223,
        witness := RowWitness.topPrime 167
      },
      {
        lower := 224, upper := 279,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 280, upper := 333,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 334, upper := 387,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 388, upper := 439,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 440, upper := 495,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 496, upper := 547,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 548, upper := 603,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 604, upper := 657,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 658, upper := 709,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 710, upper := 765,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 766, upper := 817,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 818, upper := 867,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 868, upper := 919,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 920, upper := 975,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 976, upper := 1027,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1028, upper := 1077,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1078, upper := 1125,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1126, upper := 1179,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1180, upper := 1227,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1228, upper := 1279,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1280, upper := 1335,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1336, upper := 1383,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1384, upper := 1437,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1438, upper := 1489,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1490, upper := 1545,
        witness := RowWitness.topPrime 1489
      },
      {
        lower := 1546, upper := 1599,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1600, upper := 1653,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1654, upper := 1693,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1694, upper := 1749,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1750, upper := 1803,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1804, upper := 1857,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1858, upper := 1903,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1904, upper := 1957,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 1958, upper := 2007,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2008, upper := 2059,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2060, upper := 2109,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2110, upper := 2155,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2156, upper := 2209,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2210, upper := 2263,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2264, upper := 2307,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2308, upper := 2353,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2354, upper := 2407,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2408, upper := 2455,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2456, upper := 2503,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2504, upper := 2559,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2560, upper := 2613,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2614, upper := 2665,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2666, upper := 2719,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2720, upper := 2775,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2776, upper := 2823,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2824, upper := 2875,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2876, upper := 2917,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2918, upper := 2973,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 2974, upper := 3027,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3028, upper := 3079,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3080, upper := 3135,
        witness := RowWitness.topPrime 3079
      },
      {
        lower := 3136, upper := 3177,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3178, upper := 3225,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3226, upper := 3277,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3278, upper := 3306,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3417,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3418, upper := 3444,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3505,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3506, upper := 3555,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3556, upper := 3565,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3605,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3625, upper := 3640,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3645, upper := 3681,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3698, upper := 3701,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3703, upper := 3757,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3758, upper := 3795,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3796, upper := 3813,
        witness := RowWitness.topPrime 3793
      },
      {
        lower := 3844, upper := 3889,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3890, upper := 3900,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4046, upper := 4049,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4107,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4108, upper := 4155,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4156, upper := 4163,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4225, upper := 4275,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4276, upper := 4281,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4352, upper := 4405,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4406, upper := 4450,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4459, upper := 4474,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4619,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4624, upper := 4664,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4761, upper := 4788,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4857,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4858, upper := 4858,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4945,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4946, upper := 4957,
        witness := RowWitness.topPrime 4943
      },
      {
        lower := 5043, upper := 5095,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5096, upper := 5099,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5120, upper := 5175,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5176, upper := 5176,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5324, upper := 5346,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5376, upper := 5380,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5488, upper := 5539,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5540, upper := 5544,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5547, upper := 5547,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5625, upper := 5679,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5680, upper := 5681,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5780, upper := 5835,
        witness := RowWitness.topPrime 5779
      },
      {
        lower := 5836, upper := 5883,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5884, upper := 5937,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5938, upper := 5943,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6174, upper := 6200,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6358, upper := 6409,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6410, upper := 6414,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6561, upper := 6573,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6617,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6675,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6676, upper := 6711,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6727, upper := 6775,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6776, upper := 6783,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6913,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6914, upper := 6931,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7203, upper := 7249,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7250, upper := 7259,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7406, upper := 7449,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7450, upper := 7452,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7546, upper := 7556,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7602,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7688, upper := 7736,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7945,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7986, upper := 7991,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8214, upper := 8265,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8266, upper := 8270,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8410, upper := 8445,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8446, upper := 8483,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8704, upper := 8705,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8748, upper := 8803,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8804, upper := 8806,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8836, upper := 8844,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9245, upper := 9297,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9298, upper := 9301,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9604, upper := 9657,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9658, upper := 9660,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10056,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10135,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10136, upper := 10142,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10580, upper := 10623,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10624, upper := 10636,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10681,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10965,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10966, upper := 11008,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11101,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11149,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11150, upper := 11150,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11250, upper := 11299,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11300, upper := 11306,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11799,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11800, upper := 11830,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12035,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12344,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12549,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13177,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13178, upper := 13178,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13310, upper := 13310,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13312, upper := 13365,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13366, upper := 13366,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13507,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13508, upper := 13510,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 14336, upper := 14353,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14392,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14457,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14458, upper := 14462,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14792, upper := 14795,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15185,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15365,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15376, upper := 15429,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15430, upper := 15432,
        witness := RowWitness.topPrime 15427
      },
      {
        lower := 15979, upper := 16028,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16393,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16440,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16843,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16844, upper := 16876,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17354,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17717,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18537,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18538, upper := 18547,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19263,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19264, upper := 19264,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19663, upper := 19717,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19718, upper := 19719,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20228,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20535, upper := 20536,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 21875, upper := 21927,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21928, upper := 21931,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22146,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22528, upper := 22528,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 23552, upper := 23590,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 24010, upper := 24014,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24066,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24355,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24389, upper := 24390,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24621,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25317,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25318, upper := 25337,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26411, upper := 26420,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26653,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26654, upper := 26676,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 28125, upper := 28146,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28617,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28728,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 30758, upper := 30776,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30955,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31269,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32824,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33670,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34431,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35187,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36517, upper := 36553,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36554, upper := 36557,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 37553, upper := 37556,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39360,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39382,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 43940, upper := 43979,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44236,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 49152, upper := 49186,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73223,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73751,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327736,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 3192, upper := 6384, M := 29
      },
      {
        lower := 6384, upper := 12768, M := 25
      },
      {
        lower := 12768, upper := 25536, M := 23
      },
      {
        lower := 25536, upper := 51072, M := 20
      },
      {
        lower := 51072, upper := 102144, M := 18
      },
      {
        lower := 102144, upper := 204288, M := 16
      },
      {
        lower := 204288, upper := 408576, M := 14
      },
      {
        lower := 408576, upper := 817152, M := 12
      },
      {
        lower := 817152, upper := 1634304, M := 11
      },
      {
        lower := 1634304, upper := 3268608, M := 10
      },
      {
        lower := 3268608, upper := 6537216, M := 9
      },
      {
        lower := 6537216, upper := 13074432, M := 8
      },
      {
        lower := 13074432, upper := 26148864, M := 7
      },
      {
        lower := 26148864, upper := 52297728, M := 6
      },
      {
        lower := 52297728, upper := 104595456, M := 6
      },
      {
        lower := 104595456, upper := 209190912, M := 5
      },
      {
        lower := 209190912, upper := 418381824, M := 4
      },
      {
        lower := 418381824, upper := 836763648, M := 4
      },
      {
        lower := 836763648, upper := 1673527296, M := 4
      },
      {
        lower := 1673527296, upper := 3347054592, M := 3
      },
      {
        lower := 3347054592, upper := 6694109184, M := 3
      },
      {
        lower := 6694109184, upper := 13388218368, M := 3
      },
      {
        lower := 13388218368, upper := 26776436736, M := 2
      },
      {
        lower := 26776436736, upper := 53552873472, M := 2
      },
      {
        lower := 53552873472, upper := 107105746944, M := 2
      },
      {
        lower := 107105746944, upper := 214211493888, M := 2
      },
      {
        lower := 214211493888, upper := 428422987776, M := 2
      },
      {
        lower := 428422987776, upper := 856845975552, M := 2
      },
      {
        lower := 856845975552, upper := 1000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 58, r := 19, s := 40,
      n0Power10 := 11
    },
    goods := [
      {
        lower := 118, upper := 170,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 171, upper := 224,
        witness := RowWitness.topPrime 167
      },
      {
        lower := 225, upper := 280,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 281, upper := 338,
        witness := RowWitness.topPrime 281
      },
      {
        lower := 339, upper := 394,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 395, upper := 446,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 447, upper := 500,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 501, upper := 556,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 557, upper := 614,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 615, upper := 670,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 671, upper := 718,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 719, upper := 776,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 777, upper := 830,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 831, upper := 886,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 887, upper := 944,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 945, upper := 998,
        witness := RowWitness.topPrime 941
      },
      {
        lower := 999, upper := 1054,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1055, upper := 1108,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1109, upper := 1166,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1167, upper := 1220,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1221, upper := 1274,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1275, upper := 1316,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1317, upper := 1364,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1365, upper := 1418,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1419, upper := 1466,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1467, upper := 1516,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1517, upper := 1568,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1569, upper := 1624,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1625, upper := 1678,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1679, upper := 1726,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1727, upper := 1780,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1781, upper := 1834,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1835, upper := 1888,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1889, upper := 1946,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1947, upper := 1990,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1991, upper := 2044,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2045, upper := 2096,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2097, upper := 2146,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2147, upper := 2200,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2201, upper := 2236,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2237, upper := 2294,
        witness := RowWitness.topPrime 2237
      },
      {
        lower := 2295, upper := 2350,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2351, upper := 2408,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2409, upper := 2456,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2457, upper := 2504,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2505, upper := 2560,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2561, upper := 2614,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2615, upper := 2666,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2667, upper := 2720,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2721, upper := 2776,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2777, upper := 2834,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2835, upper := 2890,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2891, upper := 2944,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 2945, upper := 2996,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 2997, upper := 3028,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3029, upper := 3080,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3081, upper := 3136,
        witness := RowWitness.topPrime 3079
      },
      {
        lower := 3137, upper := 3194,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3195, upper := 3248,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3249, upper := 3286,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3287, upper := 3306,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3418,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3419, upper := 3459,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3487,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3584, upper := 3606,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3641,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3645, upper := 3667,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3698, upper := 3754,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3755, upper := 3796,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3797, upper := 3814,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3887, upper := 3938,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3939, upper := 3944,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 3993, upper := 4028,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4046, upper := 4050,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4108,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4109, upper := 4156,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4157, upper := 4173,
        witness := RowWitness.topPrime 4157
      },
      {
        lower := 4232, upper := 4282,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4335, upper := 4384,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4385, upper := 4430,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4431, upper := 4451,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4475,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4617, upper := 4660,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4661, upper := 4674,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4802, upper := 4858,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4859, upper := 4862,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4913, upper := 4917,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5096,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5097, upper := 5100,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5103, upper := 5111,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5176,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5177, upper := 5177,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5202, upper := 5202,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5380,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5381, upper := 5381,
        witness := RowWitness.topPrime 5381
      },
      {
        lower := 5488, upper := 5540,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5541, upper := 5545,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5547, upper := 5548,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5604,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5648,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5649, upper := 5682,
        witness := RowWitness.topPrime 5647
      },
      {
        lower := 5776, upper := 5806,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5807, upper := 5864,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5865, upper := 5888,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 6075, upper := 6126,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6200,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6201, upper := 6201,
        witness := RowWitness.topPrime 6199
      },
      {
        lower := 6348, upper := 6400,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6401, upper := 6405,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6548,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6549, upper := 6555,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6561, upper := 6574,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6618,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6676,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6677, upper := 6704,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6727, upper := 6776,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6777, upper := 6781,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6914,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6915, upper := 6932,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7203, upper := 7250,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7251, upper := 7260,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7406, upper := 7450,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7451, upper := 7453,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7546, upper := 7557,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7581, upper := 7603,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7935, upper := 7990,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7991, upper := 7999,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8043,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8249,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8427, upper := 8462,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8464, upper := 8484,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8750, upper := 8804,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8805, upper := 8807,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8836, upper := 8845,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9245, upper := 9273,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9522, upper := 9534,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9658,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9659, upper := 9661,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10057,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10108,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10240, upper := 10263,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10624,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10625, upper := 10637,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10682,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10952, upper := 11006,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11007, upper := 11009,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11102,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11150,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11151, upper := 11151,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11250, upper := 11300,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11301, upper := 11307,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11664, upper := 11695,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 12005, upper := 12036,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12345,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12550,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13178,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13179, upper := 13179,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13182, upper := 13182,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13310, upper := 13311,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13505,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13718, upper := 13747,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14415, upper := 14463,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14796,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15379, upper := 15433,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 16384, upper := 16394,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16441,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16844,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16845, upper := 16867,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17355,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18491, upper := 18538,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18539, upper := 18547,
        witness := RowWitness.topPrime 18539
      },
      {
        lower := 19208, upper := 19264,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19265, upper := 19265,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19663, upper := 19718,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19719, upper := 19720,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20535, upper := 20537,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20592,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21920,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21921, upper := 21932,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 24010, upper := 24015,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24086,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24087, upper := 24094,
        witness := RowWitness.topPrime 24083
      },
      {
        lower := 24334, upper := 24356,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24622,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25318,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25319, upper := 25338,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26411, upper := 26421,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 28125, upper := 28147,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28618,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28729,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 30926, upper := 30956,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31270,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32825,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34432,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 36517, upper := 36554,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36555, upper := 36558,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 37553, upper := 37557,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39361,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39383,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 49152, upper := 49187,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 327701, upper := 327737,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 3306, upper := 6612, M := 26
      },
      {
        lower := 6612, upper := 13224, M := 23
      },
      {
        lower := 13224, upper := 26448, M := 20
      },
      {
        lower := 26448, upper := 52896, M := 18
      },
      {
        lower := 52896, upper := 105792, M := 15
      },
      {
        lower := 105792, upper := 211584, M := 13
      },
      {
        lower := 211584, upper := 423168, M := 12
      },
      {
        lower := 423168, upper := 846336, M := 10
      },
      {
        lower := 846336, upper := 1692672, M := 9
      },
      {
        lower := 1692672, upper := 3385344, M := 8
      },
      {
        lower := 3385344, upper := 6770688, M := 7
      },
      {
        lower := 6770688, upper := 13541376, M := 6
      },
      {
        lower := 13541376, upper := 27082752, M := 5
      },
      {
        lower := 27082752, upper := 54165504, M := 5
      },
      {
        lower := 54165504, upper := 108331008, M := 4
      },
      {
        lower := 108331008, upper := 216662016, M := 4
      },
      {
        lower := 216662016, upper := 433324032, M := 3
      },
      {
        lower := 433324032, upper := 866648064, M := 3
      },
      {
        lower := 866648064, upper := 1733296128, M := 3
      },
      {
        lower := 1733296128, upper := 3466592256, M := 2
      },
      {
        lower := 3466592256, upper := 6933184512, M := 2
      },
      {
        lower := 6933184512, upper := 13866369024, M := 2
      },
      {
        lower := 13866369024, upper := 27732738048, M := 2
      },
      {
        lower := 27732738048, upper := 55465476096, M := 2
      },
      {
        lower := 55465476096, upper := 100000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 59, r := 19, s := 41,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 120, upper := 171,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 172, upper := 225,
        witness := RowWitness.topPrime 167
      },
      {
        lower := 226, upper := 281,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 282, upper := 339,
        witness := RowWitness.topPrime 281
      },
      {
        lower := 340, upper := 395,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 396, upper := 447,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 448, upper := 501,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 502, upper := 557,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 558, upper := 615,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 616, upper := 671,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 672, upper := 719,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 720, upper := 777,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 778, upper := 831,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 832, upper := 887,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 888, upper := 945,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 946, upper := 999,
        witness := RowWitness.topPrime 941
      },
      {
        lower := 1000, upper := 1055,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1056, upper := 1109,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1110, upper := 1167,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1168, upper := 1221,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1222, upper := 1275,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1276, upper := 1317,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1318, upper := 1365,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1366, upper := 1419,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1420, upper := 1467,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1468, upper := 1517,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1518, upper := 1569,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1570, upper := 1625,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1626, upper := 1679,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1680, upper := 1727,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1728, upper := 1781,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1782, upper := 1835,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1836, upper := 1889,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1890, upper := 1947,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1948, upper := 1991,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1992, upper := 2045,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2046, upper := 2097,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2098, upper := 2147,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2148, upper := 2201,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2202, upper := 2237,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2238, upper := 2295,
        witness := RowWitness.topPrime 2237
      },
      {
        lower := 2296, upper := 2351,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2352, upper := 2409,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2410, upper := 2457,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2458, upper := 2505,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2506, upper := 2561,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2562, upper := 2615,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2616, upper := 2667,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2668, upper := 2721,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2722, upper := 2777,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2778, upper := 2835,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2836, upper := 2891,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2892, upper := 2945,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 2946, upper := 2997,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 2998, upper := 3029,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3030, upper := 3081,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3082, upper := 3137,
        witness := RowWitness.topPrime 3079
      },
      {
        lower := 3138, upper := 3195,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3196, upper := 3249,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3250, upper := 3287,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3288, upper := 3329,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3330, upper := 3387,
        witness := RowWitness.topPrime 3329
      },
      {
        lower := 3388, upper := 3431,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3432, upper := 3460,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3488,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3584, upper := 3607,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3642,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3645, upper := 3668,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3698, upper := 3755,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3756, upper := 3797,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3798, upper := 3815,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3844, upper := 3891,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3892, upper := 3945,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3993, upper := 4029,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4046, upper := 4051,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4109,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4110, upper := 4157,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4158, upper := 4174,
        witness := RowWitness.topPrime 4157
      },
      {
        lower := 4232, upper := 4263,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4335, upper := 4385,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4386, upper := 4431,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4432, upper := 4452,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4476,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4617, upper := 4661,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4662, upper := 4675,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4802, upper := 4859,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4860, upper := 4889,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4890, upper := 4922,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5043, upper := 5097,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5098, upper := 5112,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5120, upper := 5177,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5178, upper := 5178,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5202, upper := 5203,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5381,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5382, upper := 5404,
        witness := RowWitness.topPrime 5381
      },
      {
        lower := 5415, upper := 5434,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5541,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5542, upper := 5549,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5605,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5649,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5650, upper := 5683,
        witness := RowWitness.topPrime 5647
      },
      {
        lower := 5776, upper := 5807,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5808, upper := 5865,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5866, upper := 5919,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5920, upper := 5945,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6144, upper := 6201,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6202, upper := 6202,
        witness := RowWitness.topPrime 6199
      },
      {
        lower := 6358, upper := 6406,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6549,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6550, upper := 6556,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6561, upper := 6575,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6619,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6677,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6678, upper := 6713,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6727, upper := 6777,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6778, upper := 6785,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6915,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6916, upper := 6933,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7203, upper := 7251,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7252, upper := 7261,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7406, upper := 7451,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7452, upper := 7454,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7581, upper := 7627,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7738,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7986, upper := 7993,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8044,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8250,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8410, upper := 8447,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8448, upper := 8485,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8704, upper := 8707,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8748, upper := 8805,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8806, upper := 8808,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8836, upper := 8846,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9245, upper := 9299,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9300, upper := 9303,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9375,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9535,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9659,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9660, upper := 9662,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10058,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10137,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10138, upper := 10144,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10264,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10625,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10626, upper := 10638,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10683,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10967,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10968, upper := 11010,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11103,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11151,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11152, upper := 11152,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11250, upper := 11301,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11302, upper := 11308,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11801,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11802, upper := 11825,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 12005, upper := 12037,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12346,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12551,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13179,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13180, upper := 13180,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13182, upper := 13183,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13310, upper := 13367,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13368, upper := 13368,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13509,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13510, upper := 13512,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13748,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14336, upper := 14355,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14464,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14797,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15187,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15367,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15376, upper := 15431,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15432, upper := 15434,
        witness := RowWitness.topPrime 15427
      },
      {
        lower := 16384, upper := 16395,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16442,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16845,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16846, upper := 16868,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17356,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18490, upper := 18539,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18540, upper := 18548,
        witness := RowWitness.topPrime 18539
      },
      {
        lower := 19208, upper := 19224,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19719,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19720, upper := 19721,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20535, upper := 20538,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20593,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21921,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21922, upper := 21933,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22528, upper := 22530,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24016,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24087,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24088, upper := 24095,
        witness := RowWitness.topPrime 24083
      },
      {
        lower := 24334, upper := 24357,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24389, upper := 24392,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24623,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26411, upper := 26422,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 28125, upper := 28148,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28717, upper := 28730,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 30758, upper := 30778,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30957,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31271,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32826,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34433,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 36517, upper := 36555,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36556, upper := 36559,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 39326, upper := 39362,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39384,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 49152, upper := 49188,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73225,
        witness := RowWitness.topPrime 73189
      }
    ],
    layers := [
      {
        lower := 3422, upper := 6844, M := 24
      },
      {
        lower := 6844, upper := 13688, M := 21
      },
      {
        lower := 13688, upper := 27376, M := 18
      },
      {
        lower := 27376, upper := 54752, M := 15
      },
      {
        lower := 54752, upper := 109504, M := 13
      },
      {
        lower := 109504, upper := 219008, M := 11
      },
      {
        lower := 219008, upper := 438016, M := 10
      },
      {
        lower := 438016, upper := 876032, M := 9
      },
      {
        lower := 876032, upper := 1752064, M := 7
      },
      {
        lower := 1752064, upper := 3504128, M := 6
      },
      {
        lower := 3504128, upper := 7008256, M := 6
      },
      {
        lower := 7008256, upper := 14016512, M := 5
      },
      {
        lower := 14016512, upper := 28033024, M := 4
      },
      {
        lower := 28033024, upper := 56066048, M := 4
      },
      {
        lower := 56066048, upper := 112132096, M := 3
      },
      {
        lower := 112132096, upper := 224264192, M := 3
      },
      {
        lower := 224264192, upper := 448528384, M := 3
      },
      {
        lower := 448528384, upper := 897056768, M := 2
      },
      {
        lower := 897056768, upper := 1794113536, M := 2
      },
      {
        lower := 1794113536, upper := 3588227072, M := 2
      },
      {
        lower := 3588227072, upper := 7176454144, M := 2
      },
      {
        lower := 7176454144, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 60, r := 19, s := 41,
      n0Power10 := 13
    },
    goods := [
      {
        lower := 122, upper := 172,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 173, upper := 232,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 233, upper := 292,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 293, upper := 352,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 353, upper := 412,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 413, upper := 468,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 469, upper := 526,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 527, upper := 582,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 583, upper := 636,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 637, upper := 690,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 691, upper := 750,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 751, upper := 810,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 811, upper := 870,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 871, upper := 922,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 923, upper := 978,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 979, upper := 1036,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1037, upper := 1092,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1093, upper := 1152,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1153, upper := 1212,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1213, upper := 1272,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1273, upper := 1318,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1319, upper := 1378,
        witness := RowWitness.topPrime 1319
      },
      {
        lower := 1379, upper := 1432,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1433, upper := 1492,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1493, upper := 1552,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1553, upper := 1612,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1613, upper := 1672,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1673, upper := 1728,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1729, upper := 1782,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1783, upper := 1842,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1843, upper := 1890,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1891, upper := 1948,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1949, upper := 2008,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2009, upper := 2062,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2063, upper := 2122,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2123, upper := 2172,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2173, upper := 2220,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2221, upper := 2280,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2281, upper := 2340,
        witness := RowWitness.topPrime 2281
      },
      {
        lower := 2341, upper := 2400,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2401, upper := 2458,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2459, upper := 2518,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2519, upper := 2562,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2563, upper := 2616,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2617, upper := 2676,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2677, upper := 2736,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2737, upper := 2790,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2791, upper := 2850,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2851, upper := 2910,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2911, upper := 2968,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2969, upper := 3028,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3029, upper := 3082,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3083, upper := 3142,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3143, upper := 3196,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3197, upper := 3250,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3251, upper := 3310,
        witness := RowWitness.topPrime 3251
      },
      {
        lower := 3311, upper := 3366,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3367, upper := 3420,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3421, upper := 3472,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3473, upper := 3528,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3529, upper := 3540,
        witness := RowWitness.topPrime 3529
      },
      {
        lower := 3549, upper := 3568,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3608,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3666,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3667, upper := 3689,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3698, upper := 3756,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3757, upper := 3798,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3799, upper := 3816,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3887, upper := 3903,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3993, upper := 4030,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4046, upper := 4052,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4110,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4111, upper := 4166,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4225, upper := 4278,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4279, upper := 4284,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4386,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4387, upper := 4432,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4433, upper := 4453,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4477,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4732, upper := 4752,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4791,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4860,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4861, upper := 4861,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4913, upper := 4960,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5098,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5099, upper := 5158,
        witness := RowWitness.topPrime 5099
      },
      {
        lower := 5159, upper := 5179,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5202, upper := 5204,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5239, upper := 5261,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5298,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5349,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5488, upper := 5542,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5543, upper := 5550,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5776, upper := 5808,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5809, upper := 5866,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5867, upper := 5891,
        witness := RowWitness.topPrime 5867
      },
      {
        lower := 6144, upper := 6202,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6203, upper := 6203,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6358, upper := 6407,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6550,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6551, upper := 6557,
        witness := RowWitness.topPrime 6551
      },
      {
        lower := 6561, upper := 6576,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6620,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6678,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6679, upper := 6706,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6778,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6779, upper := 6786,
        witness := RowWitness.topPrime 6779
      },
      {
        lower := 6859, upper := 6916,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6917, upper := 6919,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6936, upper := 6936,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6962, upper := 6995,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7252,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7253, upper := 7279,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7452,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7453, upper := 7455,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7546, upper := 7600,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7601, upper := 7628,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7935, upper := 7992,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7993, upper := 8001,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8214, upper := 8268,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8269, upper := 8273,
        witness := RowWitness.topPrime 8269
      },
      {
        lower := 8410, upper := 8448,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8449, upper := 8486,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8708,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8788, upper := 8807,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8847,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9052,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9300,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9301, upper := 9310,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9317, upper := 9320,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9376,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9386, upper := 9434,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9604, upper := 9660,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9661, upper := 9663,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10086, upper := 10138,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10139, upper := 10151,
        witness := RowWitness.topPrime 10139
      },
      {
        lower := 10580, upper := 10626,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10627, upper := 10630,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10935, upper := 10968,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10969, upper := 11011,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11104,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11152,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11153, upper := 11153,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11774, upper := 11802,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11803, upper := 11826,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 12005, upper := 12038,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12347,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12552,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13225, upper := 13241,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13284,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13313,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13510,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13511, upper := 13513,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13749,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13754, upper := 13777,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 14415, upper := 14465,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14798,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15188,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15379, upper := 15435,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16031,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16396,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16443,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16846,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16847, upper := 16879,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17357,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17720,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18540,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18541, upper := 18550,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 19208, upper := 19266,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19267, upper := 19267,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19663, upper := 19720,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19721, upper := 19722,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20236,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20237, upper := 20240,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20535, upper := 20539,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20594,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21904, upper := 21912,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22103, upper := 22149,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 24010, upper := 24017,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24025, upper := 24082,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24083, upper := 24084,
        witness := RowWitness.topPrime 24083
      },
      {
        lower := 24334, upper := 24358,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24418,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24419, upper := 24426,
        witness := RowWitness.topPrime 24419
      },
      {
        lower := 24576, upper := 24624,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25320,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25321, upper := 25340,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26411, upper := 26423,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 27436, upper := 27439,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28577, upper := 28620,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28776,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30926, upper := 30958,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31272,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32827,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33673,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35190,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35360,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36556,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36557, upper := 36560,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 36982, upper := 37038,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37039, upper := 37039,
        witness := RowWitness.topPrime 37039
      },
      {
        lower := 39326, upper := 39363,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39385,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 41772, upper := 41802,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43940, upper := 43982,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44239,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48072,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48778, upper := 48793,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49189,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73226,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 98304, upper := 98319,
        witness := RowWitness.topPrime 98299
      }
    ],
    layers := [
      {
        lower := 3540, upper := 7080, M := 31
      },
      {
        lower := 7080, upper := 14160, M := 28
      },
      {
        lower := 14160, upper := 28320, M := 25
      },
      {
        lower := 28320, upper := 56640, M := 22
      },
      {
        lower := 56640, upper := 113280, M := 20
      },
      {
        lower := 113280, upper := 226560, M := 18
      },
      {
        lower := 226560, upper := 453120, M := 16
      },
      {
        lower := 453120, upper := 906240, M := 14
      },
      {
        lower := 906240, upper := 1812480, M := 13
      },
      {
        lower := 1812480, upper := 3624960, M := 11
      },
      {
        lower := 3624960, upper := 7249920, M := 10
      },
      {
        lower := 7249920, upper := 14499840, M := 9
      },
      {
        lower := 14499840, upper := 28999680, M := 8
      },
      {
        lower := 28999680, upper := 57999360, M := 7
      },
      {
        lower := 57999360, upper := 115998720, M := 7
      },
      {
        lower := 115998720, upper := 231997440, M := 6
      },
      {
        lower := 231997440, upper := 463994880, M := 5
      },
      {
        lower := 463994880, upper := 927989760, M := 5
      },
      {
        lower := 927989760, upper := 1855979520, M := 4
      },
      {
        lower := 1855979520, upper := 3711959040, M := 4
      },
      {
        lower := 3711959040, upper := 7423918080, M := 4
      },
      {
        lower := 7423918080, upper := 14847836160, M := 3
      },
      {
        lower := 14847836160, upper := 29695672320, M := 3
      },
      {
        lower := 29695672320, upper := 59391344640, M := 3
      },
      {
        lower := 59391344640, upper := 118782689280, M := 2
      },
      {
        lower := 118782689280, upper := 237565378560, M := 2
      },
      {
        lower := 237565378560, upper := 475130757120, M := 2
      },
      {
        lower := 475130757120, upper := 950261514240, M := 2
      },
      {
        lower := 950261514240, upper := 1900523028480, M := 2
      },
      {
        lower := 1900523028480, upper := 3801046056960, M := 2
      },
      {
        lower := 3801046056960, upper := 7602092113920, M := 1
      },
      {
        lower := 7602092113920, upper := 10000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 61, r := 20, s := 42,
      n0Power10 := 12
    },
    goods := [
      {
        lower := 124, upper := 173,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 174, upper := 233,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 234, upper := 293,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 294, upper := 353,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 354, upper := 413,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 414, upper := 469,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 470, upper := 527,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 528, upper := 583,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 584, upper := 637,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 638, upper := 691,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 692, upper := 751,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 752, upper := 811,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 812, upper := 871,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 872, upper := 923,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 924, upper := 979,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 980, upper := 1037,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1038, upper := 1093,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1094, upper := 1153,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1154, upper := 1213,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1214, upper := 1273,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1274, upper := 1319,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1320, upper := 1379,
        witness := RowWitness.topPrime 1319
      },
      {
        lower := 1380, upper := 1433,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1434, upper := 1493,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1494, upper := 1553,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1554, upper := 1613,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1614, upper := 1673,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1674, upper := 1729,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1730, upper := 1783,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1784, upper := 1843,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1844, upper := 1891,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1892, upper := 1949,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1950, upper := 2009,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2010, upper := 2063,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2064, upper := 2123,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2124, upper := 2173,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2174, upper := 2221,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2222, upper := 2281,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2282, upper := 2341,
        witness := RowWitness.topPrime 2281
      },
      {
        lower := 2342, upper := 2401,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2402, upper := 2459,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2460, upper := 2519,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2520, upper := 2563,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2564, upper := 2617,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2618, upper := 2677,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2678, upper := 2737,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2738, upper := 2791,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2792, upper := 2851,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2852, upper := 2911,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2912, upper := 2969,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2970, upper := 3029,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3030, upper := 3083,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3084, upper := 3143,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3144, upper := 3197,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3198, upper := 3251,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3252, upper := 3311,
        witness := RowWitness.topPrime 3251
      },
      {
        lower := 3312, upper := 3367,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3368, upper := 3421,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3422, upper := 3473,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3474, upper := 3529,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3530, upper := 3589,
        witness := RowWitness.topPrime 3529
      },
      {
        lower := 3590, upper := 3643,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3644, upper := 3670,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3698, upper := 3757,
        witness := RowWitness.topPrime 3697
      },
      {
        lower := 3758, upper := 3799,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3800, upper := 3817,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3844, upper := 3893,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3894, upper := 3947,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3993, upper := 4031,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4046, upper := 4053,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4111,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4112, upper := 4171,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4172, upper := 4176,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4225, upper := 4279,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4280, upper := 4285,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4387,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4388, upper := 4433,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4434, upper := 4454,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4478,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4663,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4664, upper := 4677,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4732, upper := 4753,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4792,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4861,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4862, upper := 4921,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4922, upper := 4924,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5043, upper := 5099,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5100, upper := 5114,
        witness := RowWitness.topPrime 5099
      },
      {
        lower := 5120, upper := 5179,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5180, upper := 5180,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5202, upper := 5205,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5383,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5384, upper := 5406,
        witness := RowWitness.topPrime 5381
      },
      {
        lower := 5415, upper := 5436,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5543,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5544, upper := 5551,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5607,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5651,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5652, upper := 5685,
        witness := RowWitness.topPrime 5651
      },
      {
        lower := 5776, upper := 5809,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5810, upper := 5867,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5868, upper := 5927,
        witness := RowWitness.topPrime 5867
      },
      {
        lower := 5928, upper := 5947,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6129,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6203,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6204, upper := 6204,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6348, upper := 6403,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6404, upper := 6418,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6551,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6552, upper := 6558,
        witness := RowWitness.topPrime 6551
      },
      {
        lower := 6561, upper := 6577,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6621,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6679,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6680, upper := 6715,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6779,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6780, upper := 6787,
        witness := RowWitness.topPrime 6779
      },
      {
        lower := 6845, upper := 6901,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6902, upper := 6959,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6960, upper := 6996,
        witness := RowWitness.topPrime 6959
      },
      {
        lower := 7203, upper := 7253,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7254, upper := 7280,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7453,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7454, upper := 7456,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7546, upper := 7560,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7621,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7622, upper := 7629,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7688, upper := 7740,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7993,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7994, upper := 8002,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8046,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8269,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8270, upper := 8274,
        witness := RowWitness.topPrime 8269
      },
      {
        lower := 8410, upper := 8449,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8450, upper := 8487,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8723,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8724, upper := 8724,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8748, upper := 8807,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8808, upper := 8810,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8848,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9053,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9301,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9302, upper := 9305,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9377,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9537,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9661,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9662, upper := 9664,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10060,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10139,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10140, upper := 10146,
        witness := RowWitness.topPrime 10139
      },
      {
        lower := 10240, upper := 10266,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10627,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10628, upper := 10640,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10648, upper := 10685,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10969,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10970, upper := 11012,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11045, upper := 11045,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11105,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11153,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11154, upper := 11154,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11250, upper := 11303,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11304, upper := 11310,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11664, upper := 11698,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11803,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11804, upper := 11834,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 12005, upper := 12039,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12348,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12553,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13181,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13182, upper := 13185,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13225, upper := 13242,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13285,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13369,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13370, upper := 13370,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13511,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13512, upper := 13514,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13771,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13772, upper := 13778,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14336, upper := 14357,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14396,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14461,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14462, upper := 14466,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14792, upper := 14799,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15189,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15369,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15376, upper := 15433,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15434, upper := 15436,
        witness := RowWitness.topPrime 15427
      },
      {
        lower := 15979, upper := 16032,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16038, upper := 16039,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16384, upper := 16397,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16444,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16847,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16848, upper := 16880,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17358,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17461,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17462, upper := 17465,
        witness := RowWitness.topPrime 17449
      },
      {
        lower := 17672, upper := 17721,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18541,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18542, upper := 18551,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 19208, upper := 19267,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19268, upper := 19268,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19663, upper := 19721,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19722, upper := 19723,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20232,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20535, upper := 20540,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20595,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21923,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21924, upper := 21935,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22528, upper := 22532,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24018,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24089,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24090, upper := 24097,
        witness := RowWitness.topPrime 24083
      },
      {
        lower := 24334, upper := 24359,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24419,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24420, upper := 24427,
        witness := RowWitness.topPrime 24419
      },
      {
        lower := 24576, upper := 24625,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25321,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25322, upper := 25341,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26411, upper := 26424,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26657,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26658, upper := 26680,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 27436, upper := 27440,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28150,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28621,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28732,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28777,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30758, upper := 30780,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30959,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31273,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32828,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33674,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34435,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34816, upper := 34867,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34868, upper := 34870,
        witness := RowWitness.topPrime 34849
      },
      {
        lower := 35152, upper := 35191,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36517, upper := 36557,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36558, upper := 36561,
        witness := RowWitness.topPrime 36551
      },
      {
        lower := 37553, upper := 37560,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39364,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39366, upper := 39386,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 41772, upper := 41803,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43781,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43782, upper := 43800,
        witness := RowWitness.topPrime 43781
      },
      {
        lower := 43940, upper := 43983,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44240,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48073,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48778, upper := 48794,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49190,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73227,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73755,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327740,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 3660, upper := 7320, M := 28
      },
      {
        lower := 7320, upper := 14640, M := 25
      },
      {
        lower := 14640, upper := 29280, M := 22
      },
      {
        lower := 29280, upper := 58560, M := 20
      },
      {
        lower := 58560, upper := 117120, M := 17
      },
      {
        lower := 117120, upper := 234240, M := 15
      },
      {
        lower := 234240, upper := 468480, M := 13
      },
      {
        lower := 468480, upper := 936960, M := 12
      },
      {
        lower := 936960, upper := 1873920, M := 11
      },
      {
        lower := 1873920, upper := 3747840, M := 9
      },
      {
        lower := 3747840, upper := 7495680, M := 8
      },
      {
        lower := 7495680, upper := 14991360, M := 7
      },
      {
        lower := 14991360, upper := 29982720, M := 6
      },
      {
        lower := 29982720, upper := 59965440, M := 6
      },
      {
        lower := 59965440, upper := 119930880, M := 5
      },
      {
        lower := 119930880, upper := 239861760, M := 5
      },
      {
        lower := 239861760, upper := 479723520, M := 4
      },
      {
        lower := 479723520, upper := 959447040, M := 4
      },
      {
        lower := 959447040, upper := 1918894080, M := 3
      },
      {
        lower := 1918894080, upper := 3837788160, M := 3
      },
      {
        lower := 3837788160, upper := 7675576320, M := 3
      },
      {
        lower := 7675576320, upper := 15351152640, M := 2
      },
      {
        lower := 15351152640, upper := 30702305280, M := 2
      },
      {
        lower := 30702305280, upper := 61404610560, M := 2
      },
      {
        lower := 61404610560, upper := 122809221120, M := 2
      },
      {
        lower := 122809221120, upper := 245618442240, M := 2
      },
      {
        lower := 245618442240, upper := 491236884480, M := 1
      },
      {
        lower := 491236884480, upper := 982473768960, M := 1
      },
      {
        lower := 982473768960, upper := 1000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 62, r := 20, s := 42,
      n0Power10 := 15
    },
    goods := [
      {
        lower := 126, upper := 174,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 175, upper := 234,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 235, upper := 294,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 295, upper := 354,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 355, upper := 414,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 415, upper := 470,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 471, upper := 528,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 529, upper := 584,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 585, upper := 638,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 639, upper := 692,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 693, upper := 752,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 753, upper := 812,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 813, upper := 872,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 873, upper := 924,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 925, upper := 980,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 981, upper := 1038,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1039, upper := 1100,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1101, upper := 1158,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1159, upper := 1214,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1215, upper := 1274,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1275, upper := 1320,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1321, upper := 1382,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1383, upper := 1442,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1443, upper := 1500,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1501, upper := 1560,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1561, upper := 1620,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1621, upper := 1682,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1683, upper := 1730,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1731, upper := 1784,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1785, upper := 1844,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1845, upper := 1892,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1893, upper := 1950,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1951, upper := 2012,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2013, upper := 2072,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2073, upper := 2130,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2131, upper := 2192,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2193, upper := 2240,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2241, upper := 2300,
        witness := RowWitness.topPrime 2239
      },
      {
        lower := 2301, upper := 2358,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2359, upper := 2418,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2419, upper := 2478,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2479, upper := 2538,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2539, upper := 2600,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2601, upper := 2654,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2655, upper := 2708,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2709, upper := 2768,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2769, upper := 2828,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2829, upper := 2880,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2881, upper := 2940,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2941, upper := 3000,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3001, upper := 3062,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3063, upper := 3122,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3123, upper := 3182,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3183, upper := 3242,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3243, upper := 3290,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3291, upper := 3332,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3333, upper := 3392,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3393, upper := 3452,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3453, upper := 3510,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3511, upper := 3572,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3573, upper := 3632,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3633, upper := 3692,
        witness := RowWitness.topPrime 3631
      },
      {
        lower := 3693, upper := 3752,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3753, upper := 3800,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3801, upper := 3818,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3872, upper := 3924,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3925, upper := 3948,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 3993, upper := 4050,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4051, upper := 4112,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4113, upper := 4172,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4173, upper := 4186,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4225, upper := 4280,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4281, upper := 4296,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4388,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4389, upper := 4434,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4435, upper := 4455,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4479,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4500, upper := 4520,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4608, upper := 4664,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4665, upper := 4678,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4732, upper := 4754,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4793,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4822,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4860, upper := 4863,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4950,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4951, upper := 4962,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5043, upper := 5100,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5101, upper := 5162,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5163, upper := 5181,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5202, upper := 5206,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5239, upper := 5263,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5300,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5384,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5385, upper := 5385,
        witness := RowWitness.topPrime 5381
      },
      {
        lower := 5415, upper := 5469,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5476, upper := 5476,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5544,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5545, upper := 5552,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5634,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5635, upper := 5684,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5685, upper := 5686,
        witness := RowWitness.topPrime 5683
      },
      {
        lower := 5776, upper := 5810,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5811, upper := 5868,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5869, upper := 5893,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5915, upper := 5948,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6134,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6135, upper := 6194,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6195, upper := 6205,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6404,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6405, upper := 6409,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6552,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6553, upper := 6559,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6561, upper := 6578,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6622,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6680,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6681, upper := 6716,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6728, upper := 6780,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6781, upper := 6785,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6845, upper := 6902,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6903, upper := 6938,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6962, upper := 6997,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7254,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7255, upper := 7281,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7454,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7455, upper := 7467,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7500, upper := 7503,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7514, upper := 7568,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7569, upper := 7622,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7623, upper := 7630,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7803, upper := 7837,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7935, upper := 7994,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7995, upper := 8003,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8047,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8153,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8270,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8271, upper := 8275,
        witness := RowWitness.topPrime 8269
      },
      {
        lower := 8405, upper := 8450,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8451, upper := 8488,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8670, upper := 8725,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8750, upper := 8808,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8809, upper := 8811,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8849,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8959, upper := 8979,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9020,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9054,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9302,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9303, upper := 9312,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9317, upper := 9322,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9378,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9386, upper := 9436,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9582,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9598,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9644,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 10000, upper := 10008,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10051, upper := 10061,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10140,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10141, upper := 10153,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10267,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10290, upper := 10301,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10469, upper := 10504,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10625, upper := 10674,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10675, upper := 10694,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 10970,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10971, upper := 11018,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11019, upper := 11037,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11045, upper := 11046,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11106,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11154,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11155, upper := 11155,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11163, upper := 11170,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11191, upper := 11224,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11274,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11275, upper := 11311,
        witness := RowWitness.topPrime 11273
      },
      {
        lower := 11319, upper := 11325,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11664, upper := 11699,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11804,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11805, upper := 11828,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11913, upper := 11936,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12005, upper := 12040,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12349,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 13125, upper := 13182,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13183, upper := 13186,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13225, upper := 13243,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13286,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13370,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13371, upper := 13371,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13456, upper := 13509,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13718, upper := 13772,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13773, upper := 13811,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14354,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14355, upper := 14358,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14375, upper := 14397,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14436,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14641, upper := 14641,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14800,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14812, upper := 14853,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 15059, upper := 15061,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15138, upper := 15190,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15392,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15393, upper := 15421,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15979, upper := 16033,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16038, upper := 16040,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16428, upper := 16445,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16848,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16849, upper := 16904,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16905, upper := 16915,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17500, upper := 17557,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17672, upper := 17722,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18542,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18543, upper := 18552,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18666,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19227,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19722,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19723, upper := 19724,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20184, upper := 20233,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20535, upper := 20541,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20596,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21924,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21925, upper := 21936,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22528, upper := 22533,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 23548, upper := 23595,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24010, upper := 24019,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24090,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24091, upper := 24098,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24334, upper := 24360,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24420,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24421, upper := 24428,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24626,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25230, upper := 25276,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 25281, upper := 25322,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25323, upper := 25342,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26072,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26425,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26658,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26659, upper := 26681,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 27436, upper := 27441,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28151,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28622,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28733,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28778,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30618, upper := 30654,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30655, upper := 30674,
        witness := RowWitness.topPrime 30649
      },
      {
        lower := 30926, upper := 30960,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31274,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31487, upper := 31494,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 31944, upper := 31968,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31969, upper := 32000,
        witness := RowWitness.topPrime 31963
      },
      {
        lower := 32805, upper := 32829,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32856, upper := 32866,
        witness := RowWitness.topPrime 32843
      },
      {
        lower := 33282, upper := 33308,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33309, upper := 33336,
        witness := RowWitness.topPrime 33301
      },
      {
        lower := 33620, upper := 33675,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34436,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35192,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35362,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36558,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36559, upper := 36562,
        witness := RowWitness.topPrime 36559
      },
      {
        lower := 36980, upper := 37040,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37041, upper := 37041,
        witness := RowWitness.topPrime 37039
      },
      {
        lower := 37210, upper := 37240,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37553, upper := 37561,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39384,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39385, upper := 39387,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40678, upper := 40686,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40960, upper := 40992,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41804,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 42025, upper := 42032,
        witness := RowWitness.topPrime 42023
      },
      {
        lower := 43740, upper := 43782,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43783, upper := 43801,
        witness := RowWitness.topPrime 43783
      },
      {
        lower := 43940, upper := 43984,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44241,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48078,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48079, upper := 48081,
        witness := RowWitness.topPrime 48079
      },
      {
        lower := 48114, upper := 48135,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 48373, upper := 48395,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48778, upper := 48795,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49191,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50562, upper := 50592,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 54925, upper := 54933,
        witness := RowWitness.topPrime 54919
      },
      {
        lower := 55225, upper := 55280,
        witness := RowWitness.topPrime 55219
      },
      {
        lower := 55281, upper := 55284,
        witness := RowWitness.topPrime 55259
      },
      {
        lower := 58989, upper := 59017,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 59049, upper := 59050,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59375, upper := 59380,
        witness := RowWitness.topPrime 59369
      },
      {
        lower := 65625, upper := 65671,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68811,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73228,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73756,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 78141, upper := 78186,
        witness := RowWitness.topPrime 78139
      },
      {
        lower := 81920, upper := 81923,
        witness := RowWitness.topPrime 81919
      },
      {
        lower := 83544, upper := 83582,
        witness := RowWitness.topPrime 83537
      },
      {
        lower := 98304, upper := 98321,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 137842, upper := 137842,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 150903, upper := 150959,
        witness := RowWitness.topPrime 150901
      }
    ],
    layers := [
      {
        lower := 3782, upper := 7564, M := 36
      },
      {
        lower := 7564, upper := 15128, M := 33
      },
      {
        lower := 15128, upper := 30256, M := 30
      },
      {
        lower := 30256, upper := 60512, M := 27
      },
      {
        lower := 60512, upper := 121024, M := 25
      },
      {
        lower := 121024, upper := 242048, M := 23
      },
      {
        lower := 242048, upper := 484096, M := 21
      },
      {
        lower := 484096, upper := 968192, M := 19
      },
      {
        lower := 968192, upper := 1936384, M := 17
      },
      {
        lower := 1936384, upper := 3872768, M := 16
      },
      {
        lower := 3872768, upper := 7745536, M := 14
      },
      {
        lower := 7745536, upper := 15491072, M := 13
      },
      {
        lower := 15491072, upper := 30982144, M := 12
      },
      {
        lower := 30982144, upper := 61964288, M := 11
      },
      {
        lower := 61964288, upper := 123928576, M := 10
      },
      {
        lower := 123928576, upper := 247857152, M := 9
      },
      {
        lower := 247857152, upper := 495714304, M := 8
      },
      {
        lower := 495714304, upper := 991428608, M := 8
      },
      {
        lower := 991428608, upper := 1982857216, M := 7
      },
      {
        lower := 1982857216, upper := 3965714432, M := 6
      },
      {
        lower := 3965714432, upper := 7931428864, M := 6
      },
      {
        lower := 7931428864, upper := 15862857728, M := 5
      },
      {
        lower := 15862857728, upper := 31725715456, M := 5
      },
      {
        lower := 31725715456, upper := 63451430912, M := 5
      },
      {
        lower := 63451430912, upper := 126902861824, M := 4
      },
      {
        lower := 126902861824, upper := 253805723648, M := 4
      },
      {
        lower := 253805723648, upper := 507611447296, M := 4
      },
      {
        lower := 507611447296, upper := 1015222894592, M := 3
      },
      {
        lower := 1015222894592, upper := 2030445789184, M := 3
      },
      {
        lower := 2030445789184, upper := 4060891578368, M := 3
      },
      {
        lower := 4060891578368, upper := 8121783156736, M := 3
      },
      {
        lower := 8121783156736, upper := 16243566313472, M := 2
      },
      {
        lower := 16243566313472, upper := 32487132626944, M := 2
      },
      {
        lower := 32487132626944, upper := 64974265253888, M := 2
      },
      {
        lower := 64974265253888, upper := 129948530507776, M := 2
      },
      {
        lower := 129948530507776, upper := 259897061015552, M := 2
      },
      {
        lower := 259897061015552, upper := 519794122031104, M := 2
      },
      {
        lower := 519794122031104, upper := 1000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 63, r := 20, s := 43,
      n0Power10 := 14
    },
    goods := [
      {
        lower := 128, upper := 189,
        witness := RowWitness.topPrime 127
      },
      {
        lower := 190, upper := 243,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 244, upper := 303,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 304, upper := 355,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 356, upper := 415,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 416, upper := 471,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 472, upper := 529,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 530, upper := 585,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 586, upper := 639,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 640, upper := 693,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 694, upper := 753,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 754, upper := 813,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 814, upper := 873,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 874, upper := 925,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 926, upper := 981,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 982, upper := 1039,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1040, upper := 1101,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1102, upper := 1159,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1160, upper := 1215,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1216, upper := 1275,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1276, upper := 1321,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1322, upper := 1383,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1384, upper := 1443,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1444, upper := 1501,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1502, upper := 1561,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1562, upper := 1621,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1622, upper := 1683,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1684, upper := 1731,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1732, upper := 1785,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1786, upper := 1845,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1846, upper := 1893,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1894, upper := 1951,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1952, upper := 2013,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2014, upper := 2073,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2074, upper := 2131,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2132, upper := 2193,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2194, upper := 2241,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2242, upper := 2301,
        witness := RowWitness.topPrime 2239
      },
      {
        lower := 2302, upper := 2359,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2360, upper := 2419,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2420, upper := 2479,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2480, upper := 2539,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2540, upper := 2601,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2602, upper := 2655,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2656, upper := 2709,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2710, upper := 2769,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2770, upper := 2829,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2830, upper := 2881,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2882, upper := 2941,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2942, upper := 3001,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3002, upper := 3063,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3064, upper := 3123,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3124, upper := 3183,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3184, upper := 3243,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3244, upper := 3291,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3292, upper := 3333,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3334, upper := 3393,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3394, upper := 3453,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3454, upper := 3511,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3512, upper := 3573,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3574, upper := 3633,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3634, upper := 3693,
        witness := RowWitness.topPrime 3631
      },
      {
        lower := 3694, upper := 3753,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3754, upper := 3801,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3802, upper := 3859,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3860, upper := 3915,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3916, upper := 3937,
        witness := RowWitness.topPrime 3911
      },
      {
        lower := 3971, upper := 4029,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4030, upper := 4089,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4090, upper := 4141,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4142, upper := 4169,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4281,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4282, upper := 4287,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4335, upper := 4389,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4390, upper := 4435,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4436, upper := 4456,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4608, upper := 4665,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4666, upper := 4670,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4732, upper := 4755,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4794,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4863,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4864, upper := 4867,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4901, upper := 4951,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4952, upper := 4963,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5043, upper := 5101,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5102, upper := 5116,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5132,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5239, upper := 5264,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5301,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5352,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5376, upper := 5386,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5469,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5470, upper := 5470,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5476, upper := 5477,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5491, upper := 5538,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5547, upper := 5553,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5609,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5618, upper := 5653,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5654, upper := 5687,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5776, upper := 5811,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5812, upper := 5842,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5888, upper := 5943,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5944, upper := 5949,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6144, upper := 6199,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6358, upper := 6415,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6416, upper := 6420,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6591, upper := 6623,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6681,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6682, upper := 6717,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6781,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6782, upper := 6789,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6859, upper := 6919,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6920, upper := 6979,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6980, upper := 6998,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7203, upper := 7255,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7256, upper := 7282,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7455,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7456, upper := 7486,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7500, upper := 7504,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7514, upper := 7562,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7569, upper := 7576,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7581, upper := 7631,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7742,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7942, upper := 7999,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8000, upper := 8004,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8125, upper := 8154,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8254,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8405, upper := 8451,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8452, upper := 8489,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8725,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8726, upper := 8732,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8750, upper := 8766,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8788, upper := 8812,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8850,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9055,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9303,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9304, upper := 9307,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9379,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9386, upper := 9437,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9583, upper := 9584,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9663,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9664, upper := 9666,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 9747, upper := 9790,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10051, upper := 10062,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10141,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10142, upper := 10154,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10469, upper := 10505,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10580, upper := 10629,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10630, upper := 10642,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10648, upper := 10687,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10952, upper := 11011,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11012, upper := 11014,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11045, upper := 11047,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11107,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11155,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11156, upper := 11156,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11163, upper := 11171,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11305,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11306, upper := 11312,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11805,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11806, upper := 11836,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 12321, upper := 12350,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12555,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13183,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13184, upper := 13187,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13225, upper := 13244,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13287,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13371,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13372, upper := 13372,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13513,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13514, upper := 13516,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13773,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13774, upper := 13812,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14355,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14356, upper := 14359,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14375, upper := 14398,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14415, upper := 14437,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14801,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14812, upper := 14859,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14860, upper := 14874,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 14884, upper := 14910,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15062,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15138, upper := 15191,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15421,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15422, upper := 15438,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16034,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16399,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16446,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16849,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16850, upper := 16905,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16906, upper := 16916,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17360,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17463,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17464, upper := 17467,
        witness := RowWitness.topPrime 17449
      },
      {
        lower := 17672, upper := 17723,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18543,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18544, upper := 18553,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18667,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19220, upper := 19228,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19723,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19724, upper := 19725,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20239,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20240, upper := 20243,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20535, upper := 20542,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20597,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21925,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21926, upper := 21937,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22152,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22528, upper := 22534,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 23552, upper := 23596,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 24037, upper := 24087,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24361,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24421,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24422, upper := 24429,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24627,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25048,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25289, upper := 25323,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25324, upper := 25343,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 25947, upper := 25948,
        witness := RowWitness.topPrime 25943
      },
      {
        lower := 26047, upper := 26073,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26624, upper := 26659,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26660, upper := 26682,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 27436, upper := 27442,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28152,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28623,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28734,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28779,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 29791, upper := 29830,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30782,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30961,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31487, upper := 31495,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 31944, upper := 31969,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31970, upper := 32001,
        witness := RowWitness.topPrime 31963
      },
      {
        lower := 33620, upper := 33676,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34437,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34816, upper := 34869,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34870, upper := 34872,
        witness := RowWitness.topPrime 34849
      },
      {
        lower := 35152, upper := 35193,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35363,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36559,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36560, upper := 36563,
        witness := RowWitness.topPrime 36559
      },
      {
        lower := 36982, upper := 37041,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37042, upper := 37042,
        witness := RowWitness.topPrime 37039
      },
      {
        lower := 37553, upper := 37562,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39385,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39386, upper := 39388,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40678, upper := 40687,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40960, upper := 40993,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41805,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43940, upper := 43985,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44242,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48373, upper := 48396,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48778, upper := 48796,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49192,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50562, upper := 50593,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 58989, upper := 59018,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 59049, upper := 59051,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59598,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 68782, upper := 68812,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 69632, upper := 69682,
        witness := RowWitness.topPrime 69623
      },
      {
        lower := 73205, upper := 73229,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73757,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 78141, upper := 78187,
        witness := RowWitness.topPrime 78139
      },
      {
        lower := 81920, upper := 81924,
        witness := RowWitness.topPrime 81919
      },
      {
        lower := 98304, upper := 98322,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 327701, upper := 327742,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 3906, upper := 7812, M := 33
      },
      {
        lower := 7812, upper := 15624, M := 30
      },
      {
        lower := 15624, upper := 31248, M := 27
      },
      {
        lower := 31248, upper := 62496, M := 24
      },
      {
        lower := 62496, upper := 124992, M := 22
      },
      {
        lower := 124992, upper := 249984, M := 20
      },
      {
        lower := 249984, upper := 499968, M := 18
      },
      {
        lower := 499968, upper := 999936, M := 16
      },
      {
        lower := 999936, upper := 1999872, M := 14
      },
      {
        lower := 1999872, upper := 3999744, M := 13
      },
      {
        lower := 3999744, upper := 7999488, M := 12
      },
      {
        lower := 7999488, upper := 15998976, M := 11
      },
      {
        lower := 15998976, upper := 31997952, M := 10
      },
      {
        lower := 31997952, upper := 63995904, M := 9
      },
      {
        lower := 63995904, upper := 127991808, M := 8
      },
      {
        lower := 127991808, upper := 255983616, M := 7
      },
      {
        lower := 255983616, upper := 511967232, M := 6
      },
      {
        lower := 511967232, upper := 1023934464, M := 6
      },
      {
        lower := 1023934464, upper := 2047868928, M := 5
      },
      {
        lower := 2047868928, upper := 4095737856, M := 5
      },
      {
        lower := 4095737856, upper := 8191475712, M := 4
      },
      {
        lower := 8191475712, upper := 16382951424, M := 4
      },
      {
        lower := 16382951424, upper := 32765902848, M := 4
      },
      {
        lower := 32765902848, upper := 65531805696, M := 3
      },
      {
        lower := 65531805696, upper := 131063611392, M := 3
      },
      {
        lower := 131063611392, upper := 262127222784, M := 3
      },
      {
        lower := 262127222784, upper := 524254445568, M := 2
      },
      {
        lower := 524254445568, upper := 1048508891136, M := 2
      },
      {
        lower := 1048508891136, upper := 2097017782272, M := 2
      },
      {
        lower := 2097017782272, upper := 4194035564544, M := 2
      },
      {
        lower := 4194035564544, upper := 8388071129088, M := 2
      },
      {
        lower := 8388071129088, upper := 16776142258176, M := 2
      },
      {
        lower := 16776142258176, upper := 33552284516352, M := 2
      },
      {
        lower := 33552284516352, upper := 67104569032704, M := 1
      },
      {
        lower := 67104569032704, upper := 100000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 64, r := 21, s := 44,
      n0Power10 := 12
    },
    goods := [
      {
        lower := 130, upper := 190,
        witness := RowWitness.topPrime 127
      },
      {
        lower := 191, upper := 254,
        witness := RowWitness.topPrime 191
      },
      {
        lower := 255, upper := 314,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 315, upper := 376,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 377, upper := 436,
        witness := RowWitness.topPrime 373
      },
      {
        lower := 437, upper := 496,
        witness := RowWitness.topPrime 433
      },
      {
        lower := 497, upper := 554,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 555, upper := 610,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 611, upper := 670,
        witness := RowWitness.topPrime 607
      },
      {
        lower := 671, upper := 724,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 725, upper := 782,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 783, upper := 836,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 837, upper := 892,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 893, upper := 950,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 951, upper := 1010,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 1011, upper := 1072,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1073, upper := 1132,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1133, upper := 1192,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1193, upper := 1256,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1257, upper := 1312,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1313, upper := 1370,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1371, upper := 1430,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1431, upper := 1492,
        witness := RowWitness.topPrime 1429
      },
      {
        lower := 1493, upper := 1556,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1557, upper := 1616,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1617, upper := 1676,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1677, upper := 1732,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1733, upper := 1796,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1797, upper := 1852,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1853, upper := 1910,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1911, upper := 1970,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 1971, upper := 2014,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2015, upper := 2074,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2075, upper := 2132,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2133, upper := 2194,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2195, upper := 2242,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2243, upper := 2306,
        witness := RowWitness.topPrime 2243
      },
      {
        lower := 2307, upper := 2360,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2361, upper := 2420,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2421, upper := 2480,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2481, upper := 2540,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2541, upper := 2602,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2603, upper := 2656,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2657, upper := 2720,
        witness := RowWitness.topPrime 2657
      },
      {
        lower := 2721, upper := 2782,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2783, upper := 2840,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2841, upper := 2900,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 2901, upper := 2960,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2961, upper := 3020,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3021, upper := 3082,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3083, upper := 3146,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3147, upper := 3200,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3201, upper := 3254,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3255, upper := 3316,
        witness := RowWitness.topPrime 3253
      },
      {
        lower := 3317, upper := 3376,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3377, upper := 3436,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3437, upper := 3496,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3497, upper := 3554,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3555, upper := 3610,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3611, upper := 3670,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3671, upper := 3734,
        witness := RowWitness.topPrime 3671
      },
      {
        lower := 3735, upper := 3796,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3797, upper := 3860,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3861, upper := 3916,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3917, upper := 3980,
        witness := RowWitness.topPrime 3917
      },
      {
        lower := 3981, upper := 4030,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4031, upper := 4034,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4046, upper := 4090,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4091, upper := 4154,
        witness := RowWitness.topPrime 4091
      },
      {
        lower := 4155, upper := 4179,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4225, upper := 4282,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4283, upper := 4288,
        witness := RowWitness.topPrime 4283
      },
      {
        lower := 4335, upper := 4390,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4391, upper := 4454,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4455, upper := 4457,
        witness := RowWitness.topPrime 4451
      },
      {
        lower := 4459, upper := 4481,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4617, upper := 4666,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4667, upper := 4680,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4732, upper := 4756,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4795,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4864,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4865, upper := 4868,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4901, upper := 4952,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4953, upper := 4964,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5043, upper := 5102,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5103, upper := 5133,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5145, upper := 5166,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5202, upper := 5208,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5239, upper := 5265,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5290, upper := 5302,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5386,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5387, upper := 5387,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5476, upper := 5478,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5546,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5547, upper := 5554,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5610,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5654,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5655, upper := 5681,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5776, upper := 5812,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5813, upper := 5876,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5877, upper := 5895,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6075, upper := 6132,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6137, upper := 6138,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6174, upper := 6200,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6406,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6407, upper := 6411,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6554,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6555, upper := 6580,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6624,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6682,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6683, upper := 6710,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6782,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6783, upper := 6790,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6845, upper := 6904,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6905, upper := 6940,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6962, upper := 6999,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7220, upper := 7282,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7283, upper := 7283,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7406, upper := 7456,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7457, upper := 7469,
        witness := RowWitness.topPrime 7457
      },
      {
        lower := 7500, upper := 7505,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7514, upper := 7570,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7571, upper := 7624,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7625, upper := 7632,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7935, upper := 7996,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7997, upper := 8005,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8049,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8232, upper := 8277,
        witness := RowWitness.topPrime 8231
      },
      {
        lower := 8410, upper := 8452,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8453, upper := 8490,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8712,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8750, upper := 8810,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8811, upper := 8813,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8851,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9056,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9304,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9305, upper := 9314,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9317, upper := 9324,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9380,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9386, upper := 9438,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9540,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9585,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9664,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9665, upper := 9667,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10063,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10142,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10143, upper := 10149,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10580, upper := 10630,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10631, upper := 10643,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10648, upper := 10688,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10972,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10973, upper := 11015,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11045, upper := 11048,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11156,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11157, upper := 11157,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11163, upper := 11172,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11299,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11664, upper := 11701,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11806,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11807, upper := 11830,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12005, upper := 12042,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12500, upper := 12556,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13184,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13185, upper := 13188,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13225, upper := 13245,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13288,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13317,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13514,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13515, upper := 13517,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13774,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13775, upper := 13813,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14346,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14464,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14465, upper := 14469,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14641, upper := 14643,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14802,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15059, upper := 15063,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15138, upper := 15192,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15379, upper := 15439,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16035,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16038, upper := 16042,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16807, upper := 16850,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16851, upper := 16883,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17361,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17724,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18544,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18545, upper := 18554,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18668,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19270,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19271, upper := 19271,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19663, upper := 19724,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19725, upper := 19726,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20240,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20241, upper := 20244,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20577, upper := 20598,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21926,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21927, upper := 21938,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22153,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 24010, upper := 24021,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24092,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24093, upper := 24100,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24334, upper := 24362,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24422,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24423, upper := 24430,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 25289, upper := 25324,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25325, upper := 25344,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26074,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26427,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 27436, upper := 27443,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28153,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28624,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28780,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28812, upper := 28812,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29831,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30656,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30657, upper := 30676,
        witness := RowWitness.topPrime 30649
      },
      {
        lower := 30926, upper := 30962,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31276,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31487, upper := 31496,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 31944, upper := 31970,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31971, upper := 32002,
        witness := RowWitness.topPrime 31963
      },
      {
        lower := 33620, upper := 33677,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34438,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35194,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35364,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36560,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36561, upper := 36564,
        witness := RowWitness.topPrime 36559
      },
      {
        lower := 36982, upper := 37042,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37043, upper := 37043,
        witness := RowWitness.topPrime 37039
      },
      {
        lower := 37210, upper := 37242,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37553, upper := 37563,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39386,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39387, upper := 39389,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40678, upper := 40688,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 41772, upper := 41806,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43784,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43785, upper := 43803,
        witness := RowWitness.topPrime 43783
      },
      {
        lower := 43940, upper := 43986,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44243,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48076,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48373, upper := 48397,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48778, upper := 48797,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 58989, upper := 59019,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 59049, upper := 59052,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59599,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 73205, upper := 73230,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137844,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 4032, upper := 8064, M := 31
      },
      {
        lower := 8064, upper := 16128, M := 27
      },
      {
        lower := 16128, upper := 32256, M := 24
      },
      {
        lower := 32256, upper := 64512, M := 22
      },
      {
        lower := 64512, upper := 129024, M := 19
      },
      {
        lower := 129024, upper := 258048, M := 17
      },
      {
        lower := 258048, upper := 516096, M := 15
      },
      {
        lower := 516096, upper := 1032192, M := 13
      },
      {
        lower := 1032192, upper := 2064384, M := 12
      },
      {
        lower := 2064384, upper := 4128768, M := 11
      },
      {
        lower := 4128768, upper := 8257536, M := 10
      },
      {
        lower := 8257536, upper := 16515072, M := 9
      },
      {
        lower := 16515072, upper := 33030144, M := 8
      },
      {
        lower := 33030144, upper := 66060288, M := 7
      },
      {
        lower := 66060288, upper := 132120576, M := 6
      },
      {
        lower := 132120576, upper := 264241152, M := 5
      },
      {
        lower := 264241152, upper := 528482304, M := 5
      },
      {
        lower := 528482304, upper := 1056964608, M := 4
      },
      {
        lower := 1056964608, upper := 2113929216, M := 4
      },
      {
        lower := 2113929216, upper := 4227858432, M := 4
      },
      {
        lower := 4227858432, upper := 8455716864, M := 3
      },
      {
        lower := 8455716864, upper := 16911433728, M := 3
      },
      {
        lower := 16911433728, upper := 33822867456, M := 3
      },
      {
        lower := 33822867456, upper := 67645734912, M := 2
      },
      {
        lower := 67645734912, upper := 135291469824, M := 2
      },
      {
        lower := 135291469824, upper := 270582939648, M := 2
      },
      {
        lower := 270582939648, upper := 541165879296, M := 2
      },
      {
        lower := 541165879296, upper := 1000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 65, r := 21, s := 45,
      n0Power10 := 11
    },
    goods := [
      {
        lower := 132, upper := 195,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 196, upper := 257,
        witness := RowWitness.topPrime 193
      },
      {
        lower := 258, upper := 321,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 322, upper := 381,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 382, upper := 443,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 444, upper := 507,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 508, upper := 567,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 568, upper := 627,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 628, upper := 683,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 684, upper := 747,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 748, upper := 807,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 808, upper := 861,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 862, upper := 923,
        witness := RowWitness.topPrime 859
      },
      {
        lower := 924, upper := 983,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 984, upper := 1047,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1048, upper := 1103,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1104, upper := 1167,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1168, upper := 1227,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1228, upper := 1287,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1288, upper := 1347,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1348, upper := 1391,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1392, upper := 1445,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1446, upper := 1503,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1504, upper := 1563,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1564, upper := 1623,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1624, upper := 1685,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1686, upper := 1733,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1734, upper := 1797,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1798, upper := 1853,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1854, upper := 1911,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1912, upper := 1971,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 1972, upper := 2015,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2016, upper := 2075,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2076, upper := 2133,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2134, upper := 2195,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2196, upper := 2243,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2244, upper := 2307,
        witness := RowWitness.topPrime 2243
      },
      {
        lower := 2308, upper := 2361,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2362, upper := 2421,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2422, upper := 2481,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2482, upper := 2541,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2542, upper := 2603,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2604, upper := 2657,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2658, upper := 2721,
        witness := RowWitness.topPrime 2657
      },
      {
        lower := 2722, upper := 2783,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2784, upper := 2841,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2842, upper := 2901,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 2902, upper := 2961,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2962, upper := 3021,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3022, upper := 3083,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3084, upper := 3147,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3148, upper := 3201,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3202, upper := 3255,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3256, upper := 3317,
        witness := RowWitness.topPrime 3253
      },
      {
        lower := 3318, upper := 3377,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3378, upper := 3437,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3438, upper := 3497,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3498, upper := 3555,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3556, upper := 3611,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3612, upper := 3671,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3672, upper := 3735,
        witness := RowWitness.topPrime 3671
      },
      {
        lower := 3736, upper := 3797,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3798, upper := 3861,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3862, upper := 3917,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3918, upper := 3981,
        witness := RowWitness.topPrime 3917
      },
      {
        lower := 3982, upper := 4031,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4032, upper := 4091,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4092, upper := 4155,
        witness := RowWitness.topPrime 4091
      },
      {
        lower := 4156, upper := 4180,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4232, upper := 4269,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4335, upper := 4391,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4392, upper := 4455,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4456, upper := 4482,
        witness := RowWitness.topPrime 4451
      },
      {
        lower := 4617, upper := 4667,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4668, upper := 4681,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4802, upper := 4865,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4866, upper := 4925,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4926, upper := 4928,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5046, upper := 5103,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5104, upper := 5118,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5183,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5184, upper := 5184,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5202, upper := 5209,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5387,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5388, upper := 5410,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5415, upper := 5440,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5476, upper := 5479,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5547,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5548, upper := 5555,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5611,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5655,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5656, upper := 5682,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5776, upper := 5813,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5814, upper := 5877,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5878, upper := 5933,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5934, upper := 5951,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6133,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6137, upper := 6139,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6144, upper := 6207,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6208, upper := 6208,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6348, upper := 6407,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6408, upper := 6422,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6555,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6556, upper := 6581,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6647, upper := 6701,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6702, upper := 6719,
        witness := RowWitness.topPrime 6701
      },
      {
        lower := 6727, upper := 6783,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6784, upper := 6791,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6845, upper := 6905,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6906, upper := 6963,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6964, upper := 7000,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7257,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7258, upper := 7284,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7457,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7458, upper := 7470,
        witness := RowWitness.topPrime 7457
      },
      {
        lower := 7546, upper := 7605,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7606, upper := 7633,
        witness := RowWitness.topPrime 7603
      },
      {
        lower := 7688, upper := 7744,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7997,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7998, upper := 8006,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8050,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8273,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8274, upper := 8278,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8453,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8454, upper := 8491,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8727,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8728, upper := 8728,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8748, upper := 8768,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 9025, upper := 9057,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9305,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9306, upper := 9309,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9381,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9541,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9586,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9665,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9666, upper := 9668,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10086, upper := 10143,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10144, upper := 10150,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10270,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10631,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10632, upper := 10635,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10935, upper := 10973,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10974, upper := 10999,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11094, upper := 11157,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11158, upper := 11158,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11163, upper := 11173,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11264, upper := 11300,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11702,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11807,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11808, upper := 11838,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12005, upper := 12043,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12352,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12557,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13254, upper := 13289,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13373,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13374, upper := 13374,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13515,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13516, upper := 13518,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13754,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14336, upper := 14361,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14470,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14644,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14803,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15193,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15373,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15376, upper := 15424,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15979, upper := 16036,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16038, upper := 16043,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16384, upper := 16401,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16448,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16851,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16852, upper := 16884,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17362,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17465,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17466, upper := 17469,
        witness := RowWitness.topPrime 17449
      },
      {
        lower := 17672, upper := 17725,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18545,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18546, upper := 18555,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18669,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19271,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19272, upper := 19272,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19663, upper := 19725,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19726, upper := 19727,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 20181, upper := 20236,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20535, upper := 20544,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20599,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21927,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21928, upper := 21934,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22528, upper := 22536,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24022,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24093,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24094, upper := 24101,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24334, upper := 24363,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24423,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24424, upper := 24431,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24629,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25289, upper := 25325,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25326, upper := 25345,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26075,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26624, upper := 26661,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26662, upper := 26684,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 27436, upper := 27444,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28577, upper := 28625,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28736,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28781,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28812, upper := 28813,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29832,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30963,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31277,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32832,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34816, upper := 34871,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34872, upper := 34874,
        witness := RowWitness.topPrime 34871
      },
      {
        lower := 36517, upper := 36561,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36562, upper := 36565,
        witness := RowWitness.topPrime 36559
      },
      {
        lower := 37210, upper := 37243,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 39326, upper := 39387,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39388, upper := 39390,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 40995,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48778, upper := 48798,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49194,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59582, upper := 59600,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 73205, upper := 73231,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73759,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 137842, upper := 137845,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 327701, upper := 327744,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 4160, upper := 8320, M := 28
      },
      {
        lower := 8320, upper := 16640, M := 25
      },
      {
        lower := 16640, upper := 33280, M := 22
      },
      {
        lower := 33280, upper := 66560, M := 19
      },
      {
        lower := 66560, upper := 133120, M := 17
      },
      {
        lower := 133120, upper := 266240, M := 15
      },
      {
        lower := 266240, upper := 532480, M := 13
      },
      {
        lower := 532480, upper := 1064960, M := 11
      },
      {
        lower := 1064960, upper := 2129920, M := 10
      },
      {
        lower := 2129920, upper := 4259840, M := 9
      },
      {
        lower := 4259840, upper := 8519680, M := 8
      },
      {
        lower := 8519680, upper := 17039360, M := 7
      },
      {
        lower := 17039360, upper := 34078720, M := 6
      },
      {
        lower := 34078720, upper := 68157440, M := 5
      },
      {
        lower := 68157440, upper := 136314880, M := 5
      },
      {
        lower := 136314880, upper := 272629760, M := 4
      },
      {
        lower := 272629760, upper := 545259520, M := 4
      },
      {
        lower := 545259520, upper := 1090519040, M := 3
      },
      {
        lower := 1090519040, upper := 2181038080, M := 3
      },
      {
        lower := 2181038080, upper := 4362076160, M := 3
      },
      {
        lower := 4362076160, upper := 8724152320, M := 2
      },
      {
        lower := 8724152320, upper := 17448304640, M := 2
      },
      {
        lower := 17448304640, upper := 34896609280, M := 2
      },
      {
        lower := 34896609280, upper := 69793218560, M := 2
      },
      {
        lower := 69793218560, upper := 100000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 66, r := 21, s := 45,
      n0Power10 := 11
    },
    goods := [
      {
        lower := 134, upper := 196,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 197, upper := 262,
        witness := RowWitness.topPrime 197
      },
      {
        lower := 263, upper := 328,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 329, upper := 382,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 383, upper := 448,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 449, upper := 514,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 515, upper := 574,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 575, upper := 636,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 637, upper := 696,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 697, upper := 756,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 757, upper := 822,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 823, upper := 888,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 889, upper := 952,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 953, upper := 1018,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1019, upper := 1084,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1085, upper := 1134,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1135, upper := 1194,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1195, upper := 1258,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1259, upper := 1324,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1325, upper := 1386,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1387, upper := 1446,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1447, upper := 1512,
        witness := RowWitness.topPrime 1447
      },
      {
        lower := 1513, upper := 1576,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1577, upper := 1636,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1637, upper := 1702,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1703, upper := 1764,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1765, upper := 1824,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1825, upper := 1888,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1889, upper := 1954,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1955, upper := 2016,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2017, upper := 2082,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2083, upper := 2148,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2149, upper := 2208,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2209, upper := 2272,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2273, upper := 2338,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2339, upper := 2404,
        witness := RowWitness.topPrime 2339
      },
      {
        lower := 2405, upper := 2464,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2465, upper := 2524,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2525, upper := 2586,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2587, upper := 2644,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2645, upper := 2698,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2699, upper := 2764,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2765, upper := 2818,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2819, upper := 2884,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2885, upper := 2944,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2945, upper := 3004,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3005, upper := 3066,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3067, upper := 3132,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3133, upper := 3186,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3187, upper := 3252,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3253, upper := 3318,
        witness := RowWitness.topPrime 3253
      },
      {
        lower := 3319, upper := 3384,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3385, upper := 3438,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3439, upper := 3498,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3499, upper := 3564,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3565, upper := 3624,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3625, upper := 3688,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3689, upper := 3742,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3743, upper := 3804,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3805, upper := 3868,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3869, upper := 3928,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3929, upper := 3994,
        witness := RowWitness.topPrime 3929
      },
      {
        lower := 3995, upper := 4054,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4055, upper := 4116,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4117, upper := 4176,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4177, upper := 4242,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4243, upper := 4290,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4335, upper := 4392,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4393, upper := 4456,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4457, upper := 4483,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4668,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4669, upper := 4673,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4802, upper := 4866,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4867, upper := 4867,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5043, upper := 5104,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5105, upper := 5166,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5167, upper := 5185,
        witness := RowWitness.topPrime 5167
      },
      {
        lower := 5202, upper := 5210,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5476, upper := 5480,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5548,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5549, upper := 5556,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5625, upper := 5688,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5689, upper := 5690,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5776, upper := 5814,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5815, upper := 5878,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5879, upper := 5897,
        witness := RowWitness.topPrime 5879
      },
      {
        lower := 6144, upper := 6208,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6209, upper := 6209,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6358, upper := 6413,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6556,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6557, upper := 6582,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6646,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6647, upper := 6702,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6703, upper := 6712,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6727, upper := 6784,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6785, upper := 6792,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6859, upper := 6922,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6923, upper := 6942,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6962, upper := 7001,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7258,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7259, upper := 7285,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7458,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7459, upper := 7471,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7500, upper := 7507,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7514, upper := 7572,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7573, upper := 7634,
        witness := RowWitness.topPrime 7573
      },
      {
        lower := 7935, upper := 7998,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7999, upper := 8000,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8214, upper := 8274,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8275, upper := 8279,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8454,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8455, upper := 8492,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8750, upper := 8812,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8813, upper := 8815,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8853,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9245, upper := 9306,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9307, upper := 9310,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9583, upper := 9587,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9666,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9667, upper := 9669,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10065,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10144,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10145, upper := 10151,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10580, upper := 10632,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10633, upper := 10645,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10935, upper := 10974,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10975, upper := 11017,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11045, upper := 11050,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11158,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11159, upper := 11159,
        witness := RowWitness.topPrime 11159
      },
      {
        lower := 11163, upper := 11174,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11308,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11309, upper := 11315,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11808,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11809, upper := 11832,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12321, upper := 12353,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12558,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13186,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13187, upper := 13190,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13454, upper := 13516,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13517, upper := 13519,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13776,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13777, upper := 13783,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14336, upper := 14362,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14401,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14466,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14467, upper := 14471,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14792, upper := 14804,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15194,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15379, upper := 15441,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 16384, upper := 16402,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16449,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16852,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16853, upper := 16885,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 18490, upper := 18546,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18547, upper := 18555,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 19208, upper := 19272,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19273, upper := 19273,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19663, upper := 19726,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19727, upper := 19728,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 20535, upper := 20545,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20600,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21875, upper := 21936,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21937, upper := 21940,
        witness := RowWitness.topPrime 21937
      },
      {
        lower := 24037, upper := 24075,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24364,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24424,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24425, upper := 24432,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24630,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26047, upper := 26076,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26429,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 27436, upper := 27445,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28155,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28626,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28737,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29833,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30964,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31278,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32833,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33679,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34440,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 36517, upper := 36562,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36563, upper := 36566,
        witness := RowWitness.topPrime 36563
      },
      {
        lower := 37553, upper := 37565,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39388,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39389, upper := 39391,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 40996,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48778, upper := 48799,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49195,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59582, upper := 59601,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 327701, upper := 327745,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 4290, upper := 8580, M := 27
      },
      {
        lower := 8580, upper := 17160, M := 23
      },
      {
        lower := 17160, upper := 34320, M := 20
      },
      {
        lower := 34320, upper := 68640, M := 18
      },
      {
        lower := 68640, upper := 137280, M := 15
      },
      {
        lower := 137280, upper := 274560, M := 13
      },
      {
        lower := 274560, upper := 549120, M := 11
      },
      {
        lower := 549120, upper := 1098240, M := 10
      },
      {
        lower := 1098240, upper := 2196480, M := 9
      },
      {
        lower := 2196480, upper := 4392960, M := 7
      },
      {
        lower := 4392960, upper := 8785920, M := 7
      },
      {
        lower := 8785920, upper := 17571840, M := 6
      },
      {
        lower := 17571840, upper := 35143680, M := 5
      },
      {
        lower := 35143680, upper := 70287360, M := 4
      },
      {
        lower := 70287360, upper := 140574720, M := 4
      },
      {
        lower := 140574720, upper := 281149440, M := 3
      },
      {
        lower := 281149440, upper := 562298880, M := 3
      },
      {
        lower := 562298880, upper := 1124597760, M := 3
      },
      {
        lower := 1124597760, upper := 2249195520, M := 2
      },
      {
        lower := 2249195520, upper := 4498391040, M := 2
      },
      {
        lower := 4498391040, upper := 8996782080, M := 2
      },
      {
        lower := 8996782080, upper := 17993564160, M := 2
      },
      {
        lower := 17993564160, upper := 35987128320, M := 2
      },
      {
        lower := 35987128320, upper := 71974256640, M := 1
      },
      {
        lower := 71974256640, upper := 100000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 67, r := 22, s := 46,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 136, upper := 197,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 198, upper := 263,
        witness := RowWitness.topPrime 197
      },
      {
        lower := 264, upper := 329,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 330, upper := 383,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 384, upper := 449,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 450, upper := 515,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 516, upper := 575,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 576, upper := 637,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 638, upper := 697,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 698, upper := 757,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 758, upper := 823,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 824, upper := 889,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 890, upper := 953,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 954, upper := 1019,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1020, upper := 1085,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1086, upper := 1135,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1136, upper := 1195,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1196, upper := 1259,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1260, upper := 1325,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1326, upper := 1387,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1388, upper := 1447,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1448, upper := 1513,
        witness := RowWitness.topPrime 1447
      },
      {
        lower := 1514, upper := 1577,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1578, upper := 1637,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1638, upper := 1703,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1704, upper := 1765,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1766, upper := 1825,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1826, upper := 1889,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1890, upper := 1955,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1956, upper := 2017,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2018, upper := 2083,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2084, upper := 2149,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2150, upper := 2209,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2210, upper := 2273,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2274, upper := 2339,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2340, upper := 2405,
        witness := RowWitness.topPrime 2339
      },
      {
        lower := 2406, upper := 2465,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2466, upper := 2525,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2526, upper := 2587,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2588, upper := 2645,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2646, upper := 2699,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2700, upper := 2765,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2766, upper := 2819,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2820, upper := 2885,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2886, upper := 2945,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2946, upper := 3005,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3006, upper := 3067,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3068, upper := 3133,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3134, upper := 3187,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3188, upper := 3253,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3254, upper := 3319,
        witness := RowWitness.topPrime 3253
      },
      {
        lower := 3320, upper := 3385,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3386, upper := 3439,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3440, upper := 3499,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3500, upper := 3565,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3566, upper := 3625,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3626, upper := 3689,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3690, upper := 3743,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3744, upper := 3805,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3806, upper := 3869,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3870, upper := 3929,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3930, upper := 3995,
        witness := RowWitness.topPrime 3929
      },
      {
        lower := 3996, upper := 4055,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4117,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4118, upper := 4177,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4178, upper := 4243,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4244, upper := 4309,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4310, upper := 4363,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4364, upper := 4429,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4430, upper := 4484,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4617, upper := 4669,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4670, upper := 4683,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4802, upper := 4867,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4868, upper := 4927,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4928, upper := 4930,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5043, upper := 5105,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5106, upper := 5167,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5168, upper := 5186,
        witness := RowWitness.topPrime 5167
      },
      {
        lower := 5202, upper := 5211,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5389,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5390, upper := 5412,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5415, upper := 5442,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5476, upper := 5481,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5549,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5550, upper := 5557,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5613,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5657,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5658, upper := 5691,
        witness := RowWitness.topPrime 5657
      },
      {
        lower := 5776, upper := 5815,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5816, upper := 5879,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5880, upper := 5945,
        witness := RowWitness.topPrime 5879
      },
      {
        lower := 5946, upper := 5953,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6075, upper := 6135,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6137, upper := 6141,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6144, upper := 6209,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6210, upper := 6210,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6358, upper := 6419,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6420, upper := 6424,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6557,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6558, upper := 6583,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6647,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6648, upper := 6703,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6704, upper := 6721,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6727, upper := 6785,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6786, upper := 6793,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6859, upper := 6923,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6924, upper := 6943,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6962, upper := 7002,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7259,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7260, upper := 7286,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7290, upper := 7291,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7406, upper := 7459,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7460, upper := 7472,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7500, upper := 7508,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7546, upper := 7566,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7627,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7628, upper := 7635,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7688, upper := 7746,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7999,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8000, upper := 8008,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8052,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8275,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8276, upper := 8280,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8455,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8456, upper := 8493,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8729,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8730, upper := 8730,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8748, upper := 8813,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8814, upper := 8816,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8854,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9245, upper := 9307,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9308, upper := 9311,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9317, upper := 9317,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9383,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9543,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9588,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9667,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9668, upper := 9670,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10066,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10145,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10146, upper := 10152,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10272,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10633,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10634, upper := 10646,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10648, upper := 10691,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10975,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10976, upper := 11018,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11045, upper := 11051,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11159,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11160, upper := 11160,
        witness := RowWitness.topPrime 11159
      },
      {
        lower := 11163, upper := 11175,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11309,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11310, upper := 11316,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11809,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11810, upper := 11833,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12005, upper := 12045,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12354,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12559,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13187,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13188, upper := 13191,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13310, upper := 13375,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13376, upper := 13376,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13517,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13518, upper := 13520,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13756,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14336, upper := 14363,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14472,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14646,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14805,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15195,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15425,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15426, upper := 15442,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16038,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16403,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16450,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16853,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16854, upper := 16886,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17364,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17467,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17468, upper := 17471,
        witness := RowWitness.topPrime 17467
      },
      {
        lower := 17672, upper := 17687,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18547,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18548, upper := 18556,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18671,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19232,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19727,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19728, upper := 19729,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 20535, upper := 20546,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20601,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21929,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21930, upper := 21941,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 21970, upper := 21970,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22528, upper := 22538,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24024,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24095,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24096, upper := 24103,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24334, upper := 24365,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24367, upper := 24425,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24426, upper := 24433,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24631,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24642, upper := 24642,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25281, upper := 25281,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26430,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 28125, upper := 28156,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28627,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28738,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29834,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30786,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30965,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31279,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32834,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34441,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34816, upper := 34873,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34874, upper := 34876,
        witness := RowWitness.topPrime 34871
      },
      {
        lower := 36517, upper := 36563,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36564, upper := 36567,
        witness := RowWitness.topPrime 36563
      },
      {
        lower := 39326, upper := 39389,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39390, upper := 39392,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 40997,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48734, upper := 48734,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48800,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49196,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59582, upper := 59602,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 73205, upper := 73233,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137847,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 4422, upper := 8844, M := 25
      },
      {
        lower := 8844, upper := 17688, M := 21
      },
      {
        lower := 17688, upper := 35376, M := 18
      },
      {
        lower := 35376, upper := 70752, M := 16
      },
      {
        lower := 70752, upper := 141504, M := 13
      },
      {
        lower := 141504, upper := 283008, M := 11
      },
      {
        lower := 283008, upper := 566016, M := 10
      },
      {
        lower := 566016, upper := 1132032, M := 8
      },
      {
        lower := 1132032, upper := 2264064, M := 7
      },
      {
        lower := 2264064, upper := 4528128, M := 6
      },
      {
        lower := 4528128, upper := 9056256, M := 5
      },
      {
        lower := 9056256, upper := 18112512, M := 5
      },
      {
        lower := 18112512, upper := 36225024, M := 4
      },
      {
        lower := 36225024, upper := 72450048, M := 3
      },
      {
        lower := 72450048, upper := 144900096, M := 3
      },
      {
        lower := 144900096, upper := 289800192, M := 3
      },
      {
        lower := 289800192, upper := 579600384, M := 2
      },
      {
        lower := 579600384, upper := 1159200768, M := 2
      },
      {
        lower := 1159200768, upper := 2318401536, M := 2
      },
      {
        lower := 2318401536, upper := 4636803072, M := 2
      },
      {
        lower := 4636803072, upper := 9273606144, M := 1
      },
      {
        lower := 9273606144, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 68, r := 22, s := 47,
      n0Power10 := 12
    },
    goods := [
      {
        lower := 138, upper := 204,
        witness := RowWitness.topPrime 137
      },
      {
        lower := 205, upper := 266,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 267, upper := 330,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 331, upper := 398,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 399, upper := 464,
        witness := RowWitness.topPrime 397
      },
      {
        lower := 465, upper := 530,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 531, upper := 590,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 591, upper := 654,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 655, upper := 720,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 721, upper := 786,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 787, upper := 854,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 855, upper := 920,
        witness := RowWitness.topPrime 853
      },
      {
        lower := 921, upper := 986,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 987, upper := 1050,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1051, upper := 1118,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1119, upper := 1184,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1185, upper := 1248,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1249, upper := 1316,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1317, upper := 1374,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1375, upper := 1440,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1441, upper := 1506,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1507, upper := 1566,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1567, upper := 1634,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1635, upper := 1694,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1695, upper := 1760,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1761, upper := 1826,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1827, upper := 1890,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1891, upper := 1956,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1957, upper := 2018,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2019, upper := 2084,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2085, upper := 2150,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2151, upper := 2210,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2211, upper := 2274,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2275, upper := 2340,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2341, upper := 2408,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2409, upper := 2466,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2467, upper := 2534,
        witness := RowWitness.topPrime 2467
      },
      {
        lower := 2535, upper := 2598,
        witness := RowWitness.topPrime 2531
      },
      {
        lower := 2599, upper := 2660,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2661, upper := 2726,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2727, upper := 2786,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2787, upper := 2844,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2845, upper := 2910,
        witness := RowWitness.topPrime 2843
      },
      {
        lower := 2911, upper := 2976,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2977, upper := 3038,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3039, upper := 3104,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3105, upper := 3156,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3157, upper := 3204,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3205, upper := 3270,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3271, upper := 3338,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3339, upper := 3398,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3399, upper := 3458,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3459, upper := 3524,
        witness := RowWitness.topPrime 3457
      },
      {
        lower := 3525, upper := 3584,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3585, upper := 3650,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3651, upper := 3710,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3711, upper := 3776,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3777, upper := 3836,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3837, upper := 3900,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3901, upper := 3956,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3957, upper := 4014,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4015, upper := 4080,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4081, upper := 4146,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4147, upper := 4206,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4207, upper := 4268,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4269, upper := 4328,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4329, upper := 4394,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4395, upper := 4458,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4459, upper := 4524,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4525, upper := 4555,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4617, upper := 4630,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4732, upper := 4796,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4797, upper := 4799,
        witness := RowWitness.topPrime 4793
      },
      {
        lower := 4802, upper := 4868,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4869, upper := 4872,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4901, upper := 4956,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4957, upper := 4968,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5043, upper := 5106,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5107, upper := 5174,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5175, upper := 5187,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5290, upper := 5306,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5390,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5391, upper := 5391,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5476, upper := 5482,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5543,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5547, upper := 5555,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5614,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5658,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5659, upper := 5685,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5816,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5817, upper := 5880,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5881, upper := 5899,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6137, upper := 6142,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6144, upper := 6210,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6211, upper := 6211,
        witness := RowWitness.topPrime 6211
      },
      {
        lower := 6348, upper := 6385,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6517, upper := 6558,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6559, upper := 6584,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6648,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6649, upper := 6694,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6727, upper := 6786,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6787, upper := 6794,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6845, upper := 6908,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6909, upper := 6942,
        witness := RowWitness.topPrime 6907
      },
      {
        lower := 7203, upper := 7260,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7261, upper := 7270,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7460,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7461, upper := 7473,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7500, upper := 7509,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7533, upper := 7596,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7597, upper := 7636,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7935, upper := 8000,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8001, upper := 8009,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8053,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8192, upper := 8192,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8214, upper := 8276,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8277, upper := 8281,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8456,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8457, upper := 8494,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8716,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8750, upper := 8814,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8815, upper := 8817,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8855,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8978, upper := 8985,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 8993, upper := 9038,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9039, upper := 9060,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9251, upper := 9308,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9309, upper := 9328,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9384,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9386, upper := 9442,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9544,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9589,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9668,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9669, upper := 9671,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10067,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10146,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10147, upper := 10153,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10273,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10634,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10635, upper := 10692,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10935, upper := 10976,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10977, upper := 11019,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11045, upper := 11052,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11160,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11161, upper := 11161,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11163, upper := 11176,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11303,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11664, upper := 11705,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11810,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11811, upper := 11834,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12005, upper := 12046,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12355,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12560,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13188,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13189, upper := 13192,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13225, upper := 13249,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13292,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13321,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13518,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13519, upper := 13523,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13778,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13779, upper := 13817,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14350,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14468,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14469, upper := 14473,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14641, upper := 14647,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 15059, upper := 15067,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15138, upper := 15196,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15376, upper := 15376,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15379, upper := 15443,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16040,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16041, upper := 16046,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16384, upper := 16404,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16451,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16854,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16855, upper := 16910,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16911, upper := 16921,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17365,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17728,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18548,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18549, upper := 18558,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18672,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19274,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19275, upper := 19275,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19683, upper := 19730,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20244,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20245, upper := 20248,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20535, upper := 20547,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20602,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21930,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21931, upper := 21942,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 21970, upper := 21971,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22157,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22472, upper := 22512,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24025,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24096,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24097, upper := 24104,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24334, upper := 24396,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24397, upper := 24434,
        witness := RowWitness.topPrime 24391
      },
      {
        lower := 24642, upper := 24643,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25281, upper := 25282,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25289, upper := 25328,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25329, upper := 25348,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26078,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26431,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26934, upper := 26963,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27447,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28157,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28628,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28784,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28812, upper := 28816,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29835,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30660,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30661, upper := 30680,
        witness := RowWitness.topPrime 30661
      },
      {
        lower := 30926, upper := 30966,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31280,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31433, upper := 31464,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31465, upper := 31465,
        witness := RowWitness.largeDivisor 288305496407015086792952523880145369208044970036396164958445775786992236688736286008616094989109063867653691394505436093480470695466293680882883828072259014539010435954115480014981669999501
      },
      {
        lower := 31466, upper := 31466,
        witness := RowWitness.largeDivisor 866789676088585583893277672120452339719123163306443887500712285583173869639573473681168932249885897540568608199838338631516958809816777848524825390227565655597601985260099149068547031168001
      },
      {
        lower := 31467, upper := 31467,
        witness := RowWitness.largeDivisor 289555620003604388339010462208077473528261500682228412879230904279814985147599801440866936219913155810790921093286548422114761010101219237974995812544887931512571968005133283689926106242911
      },
      {
        lower := 31468, upper := 31468,
        witness := RowWitness.largeDivisor 14509134156486342185114619784655703721317409081955993147266939643116589096536099604683440683070425457092306855037485837176922451378766189459549630938156900364391106192970595813940437438299241
      },
      {
        lower := 31469, upper := 31500,
        witness := RowWitness.topPrime 31469
      },
      {
        lower := 31944, upper := 31974,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31975, upper := 32006,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32835,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32856, upper := 32872,
        witness := RowWitness.topPrime 32843
      },
      {
        lower := 33620, upper := 33681,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35198,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35368,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36564,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36565, upper := 36568,
        witness := RowWitness.topPrime 36563
      },
      {
        lower := 37210, upper := 37246,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37553, upper := 37567,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39366, upper := 39393,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40960, upper := 40998,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41810,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43788,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43789, upper := 43807,
        witness := RowWitness.topPrime 43789
      },
      {
        lower := 43940, upper := 43990,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44944, upper := 44957,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48020, upper := 48080,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48734, upper := 48735,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48801,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 59049, upper := 59056,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59603,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 65625, upper := 65677,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 73205, upper := 73234,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85293, upper := 85326,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85327, upper := 85358,
        witness := RowWitness.topPrime 85313
      },
      {
        lower := 137842, upper := 137848,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 4556, upper := 9112, M := 31
      },
      {
        lower := 9112, upper := 18224, M := 27
      },
      {
        lower := 18224, upper := 36448, M := 24
      },
      {
        lower := 36448, upper := 72896, M := 21
      },
      {
        lower := 72896, upper := 145792, M := 19
      },
      {
        lower := 145792, upper := 291584, M := 16
      },
      {
        lower := 291584, upper := 583168, M := 15
      },
      {
        lower := 583168, upper := 1166336, M := 13
      },
      {
        lower := 1166336, upper := 2332672, M := 11
      },
      {
        lower := 2332672, upper := 4665344, M := 10
      },
      {
        lower := 4665344, upper := 9330688, M := 9
      },
      {
        lower := 9330688, upper := 18661376, M := 8
      },
      {
        lower := 18661376, upper := 37322752, M := 7
      },
      {
        lower := 37322752, upper := 74645504, M := 6
      },
      {
        lower := 74645504, upper := 149291008, M := 6
      },
      {
        lower := 149291008, upper := 298582016, M := 5
      },
      {
        lower := 298582016, upper := 597164032, M := 4
      },
      {
        lower := 597164032, upper := 1194328064, M := 4
      },
      {
        lower := 1194328064, upper := 2388656128, M := 4
      },
      {
        lower := 2388656128, upper := 4777312256, M := 3
      },
      {
        lower := 4777312256, upper := 9554624512, M := 3
      },
      {
        lower := 9554624512, upper := 19109249024, M := 3
      },
      {
        lower := 19109249024, upper := 38218498048, M := 2
      },
      {
        lower := 38218498048, upper := 76436996096, M := 2
      },
      {
        lower := 76436996096, upper := 152873992192, M := 2
      },
      {
        lower := 152873992192, upper := 305747984384, M := 2
      },
      {
        lower := 305747984384, upper := 611495968768, M := 2
      },
      {
        lower := 611495968768, upper := 1000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 69, r := 22, s := 47,
      n0Power10 := 11
    },
    goods := [
      {
        lower := 140, upper := 207,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 208, upper := 267,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 268, upper := 331,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 332, upper := 399,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 400, upper := 465,
        witness := RowWitness.topPrime 397
      },
      {
        lower := 466, upper := 531,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 532, upper := 591,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 592, upper := 655,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 656, upper := 721,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 722, upper := 787,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 788, upper := 855,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 856, upper := 921,
        witness := RowWitness.topPrime 853
      },
      {
        lower := 922, upper := 987,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 988, upper := 1051,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1052, upper := 1119,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1120, upper := 1185,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1186, upper := 1249,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1250, upper := 1317,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1318, upper := 1375,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1376, upper := 1441,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1442, upper := 1507,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1508, upper := 1567,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1568, upper := 1635,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1636, upper := 1695,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1696, upper := 1761,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1762, upper := 1827,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1828, upper := 1891,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1892, upper := 1957,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1958, upper := 2019,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2020, upper := 2085,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2086, upper := 2151,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2152, upper := 2211,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2212, upper := 2275,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2276, upper := 2341,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2342, upper := 2409,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2410, upper := 2467,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2468, upper := 2535,
        witness := RowWitness.topPrime 2467
      },
      {
        lower := 2536, upper := 2599,
        witness := RowWitness.topPrime 2531
      },
      {
        lower := 2600, upper := 2661,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2662, upper := 2727,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2728, upper := 2787,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2788, upper := 2845,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2846, upper := 2911,
        witness := RowWitness.topPrime 2843
      },
      {
        lower := 2912, upper := 2977,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2978, upper := 3039,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3040, upper := 3105,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3106, upper := 3157,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3158, upper := 3205,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3206, upper := 3271,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3272, upper := 3339,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3340, upper := 3399,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3400, upper := 3459,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3460, upper := 3525,
        witness := RowWitness.topPrime 3457
      },
      {
        lower := 3526, upper := 3585,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3586, upper := 3651,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3652, upper := 3711,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3712, upper := 3777,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3778, upper := 3837,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3838, upper := 3901,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3902, upper := 3957,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3958, upper := 4015,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4016, upper := 4081,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4082, upper := 4147,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4148, upper := 4207,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4208, upper := 4269,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4270, upper := 4329,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4330, upper := 4395,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4396, upper := 4459,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4460, upper := 4525,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4526, upper := 4591,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4592, upper := 4659,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4660, upper := 4691,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4732, upper := 4761,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4805, upper := 4869,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4870, upper := 4873,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4901, upper := 4957,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4958, upper := 4969,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5043, upper := 5107,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5108, upper := 5175,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5176, upper := 5188,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5202, upper := 5213,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5376, upper := 5392,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5415, upper := 5444,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5476, upper := 5483,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5551,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5552, upper := 5559,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5625, upper := 5691,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5692, upper := 5693,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5776, upper := 5817,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5818, upper := 5881,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5882, upper := 5949,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5950, upper := 5955,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6137, upper := 6137,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6144, upper := 6211,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6212, upper := 6212,
        witness := RowWitness.topPrime 6211
      },
      {
        lower := 6400, upper := 6426,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6559,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6560, upper := 6585,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6649,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6650, upper := 6705,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6706, upper := 6724,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6727, upper := 6787,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6788, upper := 6795,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6859, upper := 6925,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6926, upper := 6985,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6986, upper := 7004,
        witness := RowWitness.topPrime 6983
      },
      {
        lower := 7203, upper := 7261,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7262, upper := 7288,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7424, upper := 7485,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7486, upper := 7492,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7500, upper := 7510,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7514, upper := 7575,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7576, upper := 7637,
        witness := RowWitness.topPrime 7573
      },
      {
        lower := 7688, upper := 7748,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7942, upper := 7957,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 7986, upper := 8010,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8125, upper := 8160,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8192, upper := 8193,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8214, upper := 8277,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8278, upper := 8282,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8405, upper := 8457,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8458, upper := 8478,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8731,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8732, upper := 8732,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8748, upper := 8815,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8816, upper := 8818,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8856,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8978, upper := 8986,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9046,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9309,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9310, upper := 9329,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9439,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9440, upper := 9443,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9604, upper := 9669,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9670, upper := 9672,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10092, upper := 10154,
        witness := RowWitness.topPrime 10091
      },
      {
        lower := 10625, upper := 10639,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10693,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10977,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10978, upper := 11020,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11045, upper := 11053,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11113,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11250, upper := 11311,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11312, upper := 11318,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11811,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11812, upper := 11842,
        witness := RowWitness.topPrime 11807
      },
      {
        lower := 12005, upper := 12047,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12356,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12561,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13189,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13190, upper := 13193,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13310, upper := 13377,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13378, upper := 13378,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13519,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13520, upper := 13524,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13779,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13780, upper := 13786,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14336, upper := 14365,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14404,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14469,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14470, upper := 14474,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14792, upper := 14807,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15059, upper := 15068,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15138, upper := 15197,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15427,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15428, upper := 15444,
        witness := RowWitness.topPrime 15427
      },
      {
        lower := 15979, upper := 16040,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16405,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16452,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16855,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16856, upper := 16888,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17366,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17469,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17470, upper := 17473,
        witness := RowWitness.topPrime 17467
      },
      {
        lower := 17672, upper := 17729,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18549,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18550, upper := 18559,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18673,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19275,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19276, upper := 19276,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19663, upper := 19729,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19730, upper := 19731,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 20181, upper := 20240,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20535, upper := 20548,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20603,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21875, upper := 21939,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21940, upper := 21943,
        witness := RowWitness.topPrime 21937
      },
      {
        lower := 21970, upper := 21972,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22513,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22528, upper := 22540,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24026,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24078,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24367, upper := 24367,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24389, upper := 24435,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24633,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24642, upper := 24644,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25281, upper := 25283,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25289, upper := 25329,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25330, upper := 25349,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26079,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26432,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26665,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26666, upper := 26688,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26934, upper := 26964,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27448,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28158,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28629,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28740,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28785,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28812, upper := 28817,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29836,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30788,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30967,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31281,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31433, upper := 31465,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31466, upper := 31466,
        witness := RowWitness.largeDivisor 4535910374971568360513522058206327093750171513582620863291227390456748859823887987773557022463652901829795526709754026058728245451771198481330411267060851075742251188866098847075706614102149233
      },
      {
        lower := 31467, upper := 31467,
        witness := RowWitness.largeDivisor 534809230146657305262152323698319093606698991760075878587939480204818277567616833261281231198179598782530831259300254935645963585656951932539817265770408009503720424905481174975293518230656617
      },
      {
        lower := 31468, upper := 31468,
        witness := RowWitness.largeDivisor 2277934062568355723062995306190945484246833225867090924120909523969304488156167637935300187242056796763492176240885276436776824866466291745149292057290633357209403672296383542788648677812980837
      },
      {
        lower := 31469, upper := 31491,
        witness := RowWitness.topPrime 31469
      },
      {
        lower := 32805, upper := 32836,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33682,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34443,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34816, upper := 34875,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34876, upper := 34878,
        witness := RowWitness.topPrime 34871
      },
      {
        lower := 35152, upper := 35199,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35369,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36982, upper := 37047,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37048, upper := 37048,
        witness := RowWitness.topPrime 37039
      },
      {
        lower := 37553, upper := 37568,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39391,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39392, upper := 39394,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 40999,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41811,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 44944, upper := 44958,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48778, upper := 48802,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49198,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59582, upper := 59604,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 73205, upper := 73235,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73763,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327748,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 4692, upper := 9384, M := 29
      },
      {
        lower := 9384, upper := 18768, M := 26
      },
      {
        lower := 18768, upper := 37536, M := 22
      },
      {
        lower := 37536, upper := 75072, M := 19
      },
      {
        lower := 75072, upper := 150144, M := 17
      },
      {
        lower := 150144, upper := 300288, M := 15
      },
      {
        lower := 300288, upper := 600576, M := 13
      },
      {
        lower := 600576, upper := 1201152, M := 11
      },
      {
        lower := 1201152, upper := 2402304, M := 10
      },
      {
        lower := 2402304, upper := 4804608, M := 9
      },
      {
        lower := 4804608, upper := 9609216, M := 8
      },
      {
        lower := 9609216, upper := 19218432, M := 7
      },
      {
        lower := 19218432, upper := 38436864, M := 6
      },
      {
        lower := 38436864, upper := 76873728, M := 5
      },
      {
        lower := 76873728, upper := 153747456, M := 5
      },
      {
        lower := 153747456, upper := 307494912, M := 4
      },
      {
        lower := 307494912, upper := 614989824, M := 4
      },
      {
        lower := 614989824, upper := 1229979648, M := 3
      },
      {
        lower := 1229979648, upper := 2459959296, M := 3
      },
      {
        lower := 2459959296, upper := 4919918592, M := 2
      },
      {
        lower := 4919918592, upper := 9839837184, M := 2
      },
      {
        lower := 9839837184, upper := 19679674368, M := 2
      },
      {
        lower := 19679674368, upper := 39359348736, M := 2
      },
      {
        lower := 39359348736, upper := 78718697472, M := 2
      },
      {
        lower := 78718697472, upper := 100000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 70, r := 23, s := 48,
      n0Power10 := 11
    },
    goods := [
      {
        lower := 142, upper := 208,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 209, upper := 268,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 269, upper := 338,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 339, upper := 406,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 407, upper := 470,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 471, upper := 536,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 537, upper := 592,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 593, upper := 662,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 663, upper := 730,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 731, upper := 796,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 797, upper := 866,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 867, upper := 932,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 933, upper := 998,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 999, upper := 1066,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1067, upper := 1132,
        witness := RowWitness.topPrime 1063
      },
      {
        lower := 1133, upper := 1198,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1199, upper := 1262,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1263, upper := 1328,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1329, upper := 1396,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1397, upper := 1450,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1451, upper := 1520,
        witness := RowWitness.topPrime 1451
      },
      {
        lower := 1521, upper := 1580,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1581, upper := 1648,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1649, upper := 1706,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1707, upper := 1768,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1769, upper := 1828,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1829, upper := 1892,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1893, upper := 1958,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1959, upper := 2020,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2021, upper := 2086,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2087, upper := 2156,
        witness := RowWitness.topPrime 2087
      },
      {
        lower := 2157, upper := 2222,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2223, upper := 2290,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2291, upper := 2356,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2357, upper := 2426,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2427, upper := 2492,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2493, upper := 2546,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2547, upper := 2612,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2613, upper := 2678,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2679, upper := 2746,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2747, upper := 2810,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2811, upper := 2872,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2873, upper := 2930,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2931, upper := 2996,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 2997, upper := 3040,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3041, upper := 3110,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3111, upper := 3178,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3179, upper := 3238,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3239, upper := 3298,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3299, upper := 3368,
        witness := RowWitness.topPrime 3299
      },
      {
        lower := 3369, upper := 3430,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3431, upper := 3482,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3483, upper := 3538,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3539, upper := 3608,
        witness := RowWitness.topPrime 3539
      },
      {
        lower := 3609, upper := 3676,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3677, upper := 3746,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3747, upper := 3808,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3809, upper := 3872,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3873, upper := 3932,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3933, upper := 4000,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4001, upper := 4070,
        witness := RowWitness.topPrime 4001
      },
      {
        lower := 4071, upper := 4126,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4127, upper := 4196,
        witness := RowWitness.topPrime 4127
      },
      {
        lower := 4197, upper := 4246,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4247, upper := 4312,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4313, upper := 4366,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4367, upper := 4432,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4433, upper := 4492,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4493, upper := 4562,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4563, upper := 4630,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4631, upper := 4690,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4691, upper := 4760,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4761, upper := 4828,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4829, upper := 4874,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4913, upper := 4929,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5108,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5109, upper := 5172,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5324, upper := 5392,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5393, upper := 5393,
        witness := RowWitness.topPrime 5393
      },
      {
        lower := 5415, upper := 5415,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5476, upper := 5484,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5491, upper := 5545,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5547, upper := 5560,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5616,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5618, upper := 5660,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5661, upper := 5687,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5818,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5819, upper := 5882,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5883, upper := 5901,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6075, upper := 6142,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6143, upper := 6206,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6318, upper := 6319,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6348, upper := 6412,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6413, upper := 6417,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6561, upper := 6567,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6650,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6651, upper := 6706,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6707, upper := 6725,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6727, upper := 6788,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6789, upper := 6796,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6859, upper := 6926,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6927, upper := 6928,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6936, upper := 6946,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6962, upper := 7005,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7262,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7263, upper := 7294,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7462,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7463, upper := 7475,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7569, upper := 7630,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7631, upper := 7638,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7942, upper := 8006,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8007, upper := 8011,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8055,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8261,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8410, upper := 8458,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8459, upper := 8496,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8718,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8788, upper := 8817,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8857,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8993, upper := 9040,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9041, upper := 9062,
        witness := RowWitness.topPrime 9041
      },
      {
        lower := 9245, upper := 9310,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9311, upper := 9314,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9317, upper := 9320,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9440,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9441, upper := 9444,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9522, upper := 9546,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9591,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9610, upper := 9652,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 10086, upper := 10148,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10149, upper := 10155,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10275,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10636,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10637, upper := 10640,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10648, upper := 10649,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10978,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10979, upper := 11021,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11045, upper := 11054,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11162,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11178,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11264, upper := 11305,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11707,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11812,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11813, upper := 11836,
        witness := RowWitness.topPrime 11813
      },
      {
        lower := 12321, upper := 12357,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12562,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13182, upper := 13191,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13310, upper := 13323,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13520,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13521, upper := 13525,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13759,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14336, upper := 14366,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14641, upper := 14649,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14808,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15138, upper := 15198,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15376, upper := 15442,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15443, upper := 15445,
        witness := RowWitness.topPrime 15443
      },
      {
        lower := 15979, upper := 16042,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16043, upper := 16048,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16384, upper := 16406,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16453,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16856,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16857, upper := 16889,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17367,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17730,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18550,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18551, upper := 18560,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18674,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19220, upper := 19235,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19730,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19731, upper := 19732,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 20535, upper := 20549,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20604,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21932,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21933, upper := 21939,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 21970, upper := 21973,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22514,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24057, upper := 24106,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24334, upper := 24398,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24399, upper := 24436,
        witness := RowWitness.topPrime 24391
      },
      {
        lower := 24576, upper := 24634,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24642, upper := 24645,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25281, upper := 25284,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25289, upper := 25330,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25331, upper := 25350,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26047, upper := 26080,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26934, upper := 26965,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27449,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28577, upper := 28630,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28741,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29837,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30968,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31433, upper := 31466,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31467, upper := 31467,
        witness := RowWitness.largeDivisor 2798656701357457678436843109913303816843855823880477072650687299911814046511338888456284682860073840428983839979918234078235327443742829462980863751776545113732968983530382988645710980901026076761
      },
      {
        lower := 31468, upper := 31468,
        witness := RowWitness.largeDivisor 4207344213563753020497352330534676309403900968176516936851319890771305389624441627266499445836078903622170049516915105578726795528363240853290742429815799810765768582731420403530634107920575605939
      },
      {
        lower := 31469, upper := 31492,
        witness := RowWitness.topPrime 31469
      },
      {
        lower := 32805, upper := 32837,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33683,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35200,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36517, upper := 36566,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36567, upper := 36570,
        witness := RowWitness.topPrime 36563
      },
      {
        lower := 37210, upper := 37248,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 39326, upper := 39392,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39393, upper := 39395,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 41000,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 44944, upper := 44959,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48734, upper := 48737,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48803,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49199,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59582, upper := 59605,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 73205, upper := 73236,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137850,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 327701, upper := 327749,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 4830, upper := 9660, M := 27
      },
      {
        lower := 9660, upper := 19320, M := 23
      },
      {
        lower := 19320, upper := 38640, M := 20
      },
      {
        lower := 38640, upper := 77280, M := 17
      },
      {
        lower := 77280, upper := 154560, M := 15
      },
      {
        lower := 154560, upper := 309120, M := 13
      },
      {
        lower := 309120, upper := 618240, M := 11
      },
      {
        lower := 618240, upper := 1236480, M := 10
      },
      {
        lower := 1236480, upper := 2472960, M := 8
      },
      {
        lower := 2472960, upper := 4945920, M := 7
      },
      {
        lower := 4945920, upper := 9891840, M := 6
      },
      {
        lower := 9891840, upper := 19783680, M := 5
      },
      {
        lower := 19783680, upper := 39567360, M := 5
      },
      {
        lower := 39567360, upper := 79134720, M := 4
      },
      {
        lower := 79134720, upper := 158269440, M := 4
      },
      {
        lower := 158269440, upper := 316538880, M := 3
      },
      {
        lower := 316538880, upper := 633077760, M := 3
      },
      {
        lower := 633077760, upper := 1266155520, M := 2
      },
      {
        lower := 1266155520, upper := 2532311040, M := 2
      },
      {
        lower := 2532311040, upper := 5064622080, M := 2
      },
      {
        lower := 5064622080, upper := 10129244160, M := 2
      },
      {
        lower := 10129244160, upper := 20258488320, M := 2
      },
      {
        lower := 20258488320, upper := 40516976640, M := 1
      },
      {
        lower := 40516976640, upper := 81033953280, M := 1
      },
      {
        lower := 81033953280, upper := 100000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 71, r := 23, s := 49,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 144, upper := 209,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 210, upper := 269,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 270, upper := 339,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 340, upper := 407,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 408, upper := 471,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 472, upper := 537,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 538, upper := 593,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 594, upper := 663,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 664, upper := 731,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 732, upper := 797,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 798, upper := 867,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 868, upper := 933,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 934, upper := 999,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1000, upper := 1067,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1068, upper := 1133,
        witness := RowWitness.topPrime 1063
      },
      {
        lower := 1134, upper := 1199,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1200, upper := 1263,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1264, upper := 1329,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1330, upper := 1397,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1398, upper := 1451,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1452, upper := 1521,
        witness := RowWitness.topPrime 1451
      },
      {
        lower := 1522, upper := 1581,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1582, upper := 1649,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1650, upper := 1707,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1708, upper := 1769,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1770, upper := 1829,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1830, upper := 1893,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1894, upper := 1959,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1960, upper := 2021,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2022, upper := 2087,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2088, upper := 2157,
        witness := RowWitness.topPrime 2087
      },
      {
        lower := 2158, upper := 2223,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2224, upper := 2291,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2292, upper := 2357,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2358, upper := 2427,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2428, upper := 2493,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2494, upper := 2547,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2548, upper := 2613,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2614, upper := 2679,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2680, upper := 2747,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2748, upper := 2811,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2812, upper := 2873,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2874, upper := 2931,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2932, upper := 2997,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 2998, upper := 3041,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3042, upper := 3111,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3112, upper := 3179,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3180, upper := 3239,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3240, upper := 3299,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3300, upper := 3369,
        witness := RowWitness.topPrime 3299
      },
      {
        lower := 3370, upper := 3431,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3432, upper := 3483,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3484, upper := 3539,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3540, upper := 3609,
        witness := RowWitness.topPrime 3539
      },
      {
        lower := 3610, upper := 3677,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3678, upper := 3747,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3748, upper := 3809,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3810, upper := 3873,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3874, upper := 3933,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3934, upper := 4001,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4002, upper := 4071,
        witness := RowWitness.topPrime 4001
      },
      {
        lower := 4072, upper := 4127,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4128, upper := 4197,
        witness := RowWitness.topPrime 4127
      },
      {
        lower := 4198, upper := 4247,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4248, upper := 4313,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4314, upper := 4367,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4368, upper := 4433,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4434, upper := 4493,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4494, upper := 4563,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4564, upper := 4631,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4632, upper := 4691,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4692, upper := 4761,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4762, upper := 4829,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4830, upper := 4887,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4888, upper := 4947,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 4948, upper := 4969,
        witness := RowWitness.topPrime 4943
      },
      {
        lower := 5043, upper := 5109,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5110, upper := 5177,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5178, upper := 5190,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5202, upper := 5215,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5393,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5394, upper := 5446,
        witness := RowWitness.topPrime 5393
      },
      {
        lower := 5476, upper := 5485,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5488, upper := 5553,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5554, upper := 5561,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5651,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5652, upper := 5695,
        witness := RowWitness.topPrime 5651
      },
      {
        lower := 5776, upper := 5819,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5820, upper := 5883,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5884, upper := 5951,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5952, upper := 5957,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6075, upper := 6143,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6213,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6214, upper := 6214,
        witness := RowWitness.topPrime 6211
      },
      {
        lower := 6358, upper := 6423,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6424, upper := 6428,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6517, upper := 6561,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6562, upper := 6587,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6651,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6652, upper := 6707,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6708, upper := 6773,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6774, upper := 6797,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6927,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6928, upper := 6947,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6962, upper := 7006,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7263,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7264, upper := 7295,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7463,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7464, upper := 7476,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7500, upper := 7512,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7546, upper := 7611,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7612, upper := 7639,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7688, upper := 7750,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 8003,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8004, upper := 8012,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8019, upper := 8056,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8192, upper := 8195,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8214, upper := 8279,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8280, upper := 8284,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8459,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8460, upper := 8497,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8664, upper := 8733,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8734, upper := 8734,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8748, upper := 8817,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8818, upper := 8820,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8836, upper := 8858,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8993, upper := 9041,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9042, upper := 9063,
        witness := RowWitness.topPrime 9041
      },
      {
        lower := 9245, upper := 9311,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9312, upper := 9315,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9317, upper := 9321,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9375, upper := 9387,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9547,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9592,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9671,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9672, upper := 9674,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 10051, upper := 10070,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10149,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10150, upper := 10156,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10240, upper := 10276,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10637,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10638, upper := 10695,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10935, upper := 10979,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10980, upper := 11022,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11045, upper := 11055,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11163,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11164, upper := 11179,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11250, upper := 11313,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11314, upper := 11320,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11813,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11814, upper := 11837,
        witness := RowWitness.topPrime 11813
      },
      {
        lower := 12005, upper := 12049,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12358,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12563,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13191,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13192, upper := 13195,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13310, upper := 13379,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13380, upper := 13380,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13521,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13522, upper := 13526,
        witness := RowWitness.topPrime 13513
      },
      {
        lower := 13718, upper := 13760,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 14336, upper := 14367,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14406,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14415, upper := 14476,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14650,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14809,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15129, upper := 15129,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15138, upper := 15199,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15429,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15430, upper := 15446,
        witness := RowWitness.topPrime 15427
      },
      {
        lower := 15979, upper := 16042,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16407,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16454,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16857,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16858, upper := 16890,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17368,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17471,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17472, upper := 17475,
        witness := RowWitness.topPrime 17471
      },
      {
        lower := 17672, upper := 17731,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18551,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18552, upper := 18560,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18634, upper := 18675,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 19208, upper := 19277,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19278, upper := 19278,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19663, upper := 19731,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19732, upper := 19733,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 20535, upper := 20550,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20605,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21933,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21934, upper := 21945,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 21970, upper := 21974,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22515,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22528, upper := 22542,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 24010, upper := 24028,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24037, upper := 24099,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24100, upper := 24107,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24334, upper := 24399,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24400, upper := 24437,
        witness := RowWitness.topPrime 24391
      },
      {
        lower := 24576, upper := 24635,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24642, upper := 24646,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25281, upper := 25285,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26434,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26934, upper := 26966,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28160,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28631,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28742,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29838,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30790,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30969,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31283,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31433, upper := 31467,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31468, upper := 31468,
        witness := RowWitness.largeDivisor 310099046050410134595248517544900860945219912203770607472436013921214663435277507542050585916340857783870646043972066866105314380280631540637612044158113808587848830893429901009518426573920734448997
      },
      {
        lower := 31469, upper := 31493,
        witness := RowWitness.topPrime 31469
      },
      {
        lower := 32805, upper := 32838,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34445,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34816, upper := 34877,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34878, upper := 34880,
        witness := RowWitness.topPrime 34877
      },
      {
        lower := 36517, upper := 36567,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36568, upper := 36571,
        witness := RowWitness.topPrime 36563
      },
      {
        lower := 37210, upper := 37249,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37553, upper := 37570,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39393,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39394, upper := 39396,
        witness := RowWitness.topPrime 39383
      },
      {
        lower := 40960, upper := 41001,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48734, upper := 48738,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48804,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49200,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73237,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73765,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 137842, upper := 137851,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 4970, upper := 9940, M := 25
      },
      {
        lower := 9940, upper := 19880, M := 21
      },
      {
        lower := 19880, upper := 39760, M := 18
      },
      {
        lower := 39760, upper := 79520, M := 15
      },
      {
        lower := 79520, upper := 159040, M := 13
      },
      {
        lower := 159040, upper := 318080, M := 11
      },
      {
        lower := 318080, upper := 636160, M := 10
      },
      {
        lower := 636160, upper := 1272320, M := 8
      },
      {
        lower := 1272320, upper := 2544640, M := 7
      },
      {
        lower := 2544640, upper := 5089280, M := 6
      },
      {
        lower := 5089280, upper := 10178560, M := 5
      },
      {
        lower := 10178560, upper := 20357120, M := 4
      },
      {
        lower := 20357120, upper := 40714240, M := 4
      },
      {
        lower := 40714240, upper := 81428480, M := 3
      },
      {
        lower := 81428480, upper := 162856960, M := 3
      },
      {
        lower := 162856960, upper := 325713920, M := 3
      },
      {
        lower := 325713920, upper := 651427840, M := 2
      },
      {
        lower := 651427840, upper := 1302855680, M := 2
      },
      {
        lower := 1302855680, upper := 2605711360, M := 2
      },
      {
        lower := 2605711360, upper := 5211422720, M := 2
      },
      {
        lower := 5211422720, upper := 10000000000, M := 1
      }
    ]
  }
]

theorem coverRows01_checked :
    coverRows01.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows01_checked

end B699LowIndex
