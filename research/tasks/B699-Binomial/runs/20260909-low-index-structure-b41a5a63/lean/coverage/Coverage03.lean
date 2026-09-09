import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows03 : List FiniteCoverRow := [
  {
    height := {
      i := 91, r := 30, s := 63,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 184, upper := 271,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 272, upper := 361,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 362, upper := 449,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 450, upper := 539,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 540, upper := 613,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 614, upper := 703,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 704, upper := 791,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 792, upper := 877,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 878, upper := 967,
        witness := RowWitness.topPrime 877
      },
      {
        lower := 968, upper := 1057,
        witness := RowWitness.topPrime 967
      },
      {
        lower := 1058, upper := 1141,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1142, upper := 1219,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1220, upper := 1307,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1308, upper := 1397,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1398, upper := 1471,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1472, upper := 1561,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1562, upper := 1649,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1650, upper := 1727,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1728, upper := 1813,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1814, upper := 1901,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1902, upper := 1991,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 1992, upper := 2077,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2078, upper := 2159,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2160, upper := 2243,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2244, upper := 2333,
        witness := RowWitness.topPrime 2243
      },
      {
        lower := 2334, upper := 2423,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2424, upper := 2513,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2514, upper := 2593,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2594, upper := 2683,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2684, upper := 2773,
        witness := RowWitness.topPrime 2683
      },
      {
        lower := 2774, upper := 2857,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2858, upper := 2947,
        witness := RowWitness.topPrime 2857
      },
      {
        lower := 2948, upper := 3029,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3030, upper := 3113,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3114, upper := 3199,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3200, upper := 3281,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3282, upper := 3361,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3451,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3452, upper := 3539,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3540, upper := 3629,
        witness := RowWitness.topPrime 3539
      },
      {
        lower := 3630, upper := 3713,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3714, upper := 3799,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3800, upper := 3887,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3888, upper := 3971,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3972, upper := 4057,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4058, upper := 4147,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4148, upper := 4229,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4230, upper := 4319,
        witness := RowWitness.topPrime 4229
      },
      {
        lower := 4320, upper := 4387,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4388, upper := 4463,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4464, upper := 4553,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4554, upper := 4639,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4640, upper := 4729,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4730, upper := 4819,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4820, upper := 4907,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4908, upper := 4993,
        witness := RowWitness.topPrime 4903
      },
      {
        lower := 4994, upper := 5083,
        witness := RowWitness.topPrime 4993
      },
      {
        lower := 5084, upper := 5171,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5172, upper := 5261,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5262, upper := 5351,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5352, upper := 5441,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5442, upper := 5531,
        witness := RowWitness.topPrime 5441
      },
      {
        lower := 5532, upper := 5621,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5622, upper := 5681,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5682, upper := 5759,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5760, upper := 5839,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5840, upper := 5929,
        witness := RowWitness.topPrime 5839
      },
      {
        lower := 5930, upper := 6017,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6018, upper := 6101,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6102, upper := 6191,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6192, upper := 6263,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6264, upper := 6353,
        witness := RowWitness.topPrime 6263
      },
      {
        lower := 6354, upper := 6443,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6444, upper := 6517,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6518, upper := 6581,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6582, upper := 6671,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6672, upper := 6751,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6752, upper := 6827,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6828, upper := 6917,
        witness := RowWitness.topPrime 6827
      },
      {
        lower := 6918, upper := 7007,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7008, upper := 7091,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7092, upper := 7169,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7170, upper := 7249,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7250, upper := 7337,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7338, upper := 7423,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7424, upper := 7507,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7508, upper := 7597,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7598, upper := 7681,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7682, upper := 7771,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7772, upper := 7849,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7850, upper := 7931,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7932, upper := 8017,
        witness := RowWitness.topPrime 7927
      },
      {
        lower := 8018, upper := 8107,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8108, upper := 8189,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8192, upper := 8281,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8282, upper := 8282,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8303, upper := 8304,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8410, upper := 8479,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8480, upper := 8517,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8664, upper := 8753,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8754, upper := 8840,
        witness := RowWitness.topPrime 8753
      },
      {
        lower := 8993, upper := 9061,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9062, upper := 9083,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9245, upper := 9331,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9332, upper := 9341,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9375, upper := 9461,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9462, upper := 9465,
        witness := RowWitness.topPrime 9461
      },
      {
        lower := 9522, upper := 9567,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9641,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9642, upper := 9673,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10051, upper := 10129,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10130, upper := 10176,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10296,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10657,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10658, upper := 10738,
        witness := RowWitness.topPrime 10657
      },
      {
        lower := 10935, upper := 10999,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11000, upper := 11025,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11094, upper := 11183,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11184, upper := 11199,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11303,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11304, upper := 11340,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11664, upper := 11728,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11833,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11834, upper := 11864,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 12321, upper := 12378,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12411,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12483,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12581,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12582, upper := 12583,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12696, upper := 12705,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 13125, upper := 13211,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13212, upper := 13212,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13254, upper := 13339,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13340, upper := 13400,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13541,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13542, upper := 13546,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13801,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13802, upper := 13844,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 13851, upper := 13868,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13941,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14417,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14418, upper := 14465,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14670,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14829,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15059, upper := 15090,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15211,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15212, upper := 15219,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15360, upper := 15449,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15450, upper := 15450,
        witness := RowWitness.topPrime 15443
      },
      {
        lower := 15463, upper := 15466,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16063,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16064, upper := 16077,
        witness := RowWitness.topPrime 16063
      },
      {
        lower := 16337, upper := 16340,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16471,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16472, upper := 16474,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16810, upper := 16877,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16878, upper := 16910,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17303, upper := 17388,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17491,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17492, upper := 17498,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17672, upper := 17751,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18571,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18572, upper := 18581,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18695,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18724,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18813,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19220, upper := 19256,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19751,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19752, upper := 19753,
        witness := RowWitness.topPrime 19751
      },
      {
        lower := 19965, upper := 19971,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20251,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20252, upper := 20262,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20570,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20625,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20667,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21386,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21953,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21954, upper := 21965,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22472, upper := 22559,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22560, upper := 22562,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 24037, upper := 24048,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24057, upper := 24127,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24334, upper := 24419,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24420, upper := 24457,
        witness := RowWitness.topPrime 24419
      },
      {
        lower := 24576, upper := 24661,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24662, upper := 24666,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 25000, upper := 25054,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25279,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25280, upper := 25351,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25352, upper := 25371,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 26047, upper := 26101,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26624, upper := 26687,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26688, upper := 26714,
        witness := RowWitness.topPrime 26687
      },
      {
        lower := 26934, upper := 26986,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27470,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28180,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28651,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28801,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28802, upper := 28807,
        witness := RowWitness.topPrime 28793
      },
      {
        lower := 29791, upper := 29858,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30336,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 30989,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31295,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31329, upper := 31340,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31433, upper := 31487,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31488, upper := 31513,
        witness := RowWitness.topPrime 31481
      },
      {
        lower := 31974, upper := 32029,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32858,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34385,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34391, upper := 34471,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34472, upper := 34481,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 34816, upper := 34897,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34898, upper := 34900,
        witness := RowWitness.topPrime 34897
      },
      {
        lower := 35344, upper := 35377,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36587,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36588, upper := 36591,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37210, upper := 37269,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37500, upper := 37536,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37590,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39413,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39414, upper := 39416,
        witness := RowWitness.topPrime 39409
      },
      {
        lower := 40401, upper := 40418,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41021,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43777,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 44980,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48051,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48758,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48824,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49220,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50018,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 53290, upper := 53338,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 53371, upper := 53380,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55531,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55532, upper := 55537,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 56250, upper := 56259,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 58619, upper := 58654,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59582, upper := 59626,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62500,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63959,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65611,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65612, upper := 65626,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68680,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68980,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73257,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73785,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85293, upper := 85349,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85350, upper := 85354,
        witness := RowWitness.topPrime 85333
      },
      {
        lower := 102973, upper := 102975,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 137842, upper := 137871,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146424,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148967,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327770,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 8190, upper := 16380, M := 26
      },
      {
        lower := 16380, upper := 32760, M := 22
      },
      {
        lower := 32760, upper := 65520, M := 19
      },
      {
        lower := 65520, upper := 131040, M := 16
      },
      {
        lower := 131040, upper := 262080, M := 13
      },
      {
        lower := 262080, upper := 524160, M := 11
      },
      {
        lower := 524160, upper := 1048320, M := 9
      },
      {
        lower := 1048320, upper := 2096640, M := 8
      },
      {
        lower := 2096640, upper := 4193280, M := 7
      },
      {
        lower := 4193280, upper := 8386560, M := 6
      },
      {
        lower := 8386560, upper := 16773120, M := 5
      },
      {
        lower := 16773120, upper := 33546240, M := 4
      },
      {
        lower := 33546240, upper := 67092480, M := 4
      },
      {
        lower := 67092480, upper := 134184960, M := 3
      },
      {
        lower := 134184960, upper := 268369920, M := 3
      },
      {
        lower := 268369920, upper := 536739840, M := 2
      },
      {
        lower := 536739840, upper := 1073479680, M := 2
      },
      {
        lower := 1073479680, upper := 2146959360, M := 2
      },
      {
        lower := 2146959360, upper := 4293918720, M := 2
      },
      {
        lower := 4293918720, upper := 8587837440, M := 1
      },
      {
        lower := 8587837440, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 92, r := 30, s := 64,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 186, upper := 272,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 273, upper := 362,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 363, upper := 450,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 451, upper := 540,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 541, upper := 632,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 633, upper := 722,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 723, upper := 810,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 811, upper := 902,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 903, upper := 978,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 979, upper := 1068,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1069, upper := 1160,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1161, upper := 1244,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1245, upper := 1328,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1329, upper := 1418,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1419, upper := 1500,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1501, upper := 1590,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1591, upper := 1674,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1675, upper := 1760,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1761, upper := 1850,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1851, upper := 1938,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1939, upper := 2024,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2025, upper := 2108,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2109, upper := 2190,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2191, upper := 2270,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2271, upper := 2360,
        witness := RowWitness.topPrime 2269
      },
      {
        lower := 2361, upper := 2448,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2449, upper := 2538,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2539, upper := 2630,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2631, upper := 2712,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2713, upper := 2804,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2805, upper := 2894,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2895, upper := 2978,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 2979, upper := 3062,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3063, upper := 3152,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3153, upper := 3228,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3229, upper := 3320,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3321, upper := 3410,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3411, upper := 3498,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3499, upper := 3590,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3591, upper := 3674,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3675, upper := 3764,
        witness := RowWitness.topPrime 3673
      },
      {
        lower := 3765, upper := 3852,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3853, upper := 3944,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3945, upper := 4034,
        witness := RowWitness.topPrime 3943
      },
      {
        lower := 4035, upper := 4118,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4119, upper := 4202,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4203, upper := 4292,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4293, upper := 4380,
        witness := RowWitness.topPrime 4289
      },
      {
        lower := 4381, upper := 4464,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4465, upper := 4554,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4555, upper := 4640,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4641, upper := 4730,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4731, upper := 4820,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4821, upper := 4908,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4909, upper := 5000,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5001, upper := 5090,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5091, upper := 5178,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5179, upper := 5270,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5271, upper := 5352,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5353, upper := 5442,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5443, upper := 5534,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5535, upper := 5622,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5623, upper := 5714,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5715, upper := 5802,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5803, upper := 5892,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5893, upper := 5972,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5973, upper := 6044,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6045, upper := 6134,
        witness := RowWitness.topPrime 6043
      },
      {
        lower := 6135, upper := 6224,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6225, upper := 6312,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6313, upper := 6402,
        witness := RowWitness.topPrime 6311
      },
      {
        lower := 6403, upper := 6488,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6489, upper := 6572,
        witness := RowWitness.topPrime 6481
      },
      {
        lower := 6573, upper := 6662,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6663, upper := 6752,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6753, upper := 6828,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6829, upper := 6920,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6921, upper := 7008,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7009, upper := 7092,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7093, upper := 7170,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7171, upper := 7250,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7251, upper := 7338,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7339, upper := 7424,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7425, upper := 7508,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7509, upper := 7598,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7599, upper := 7682,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7683, upper := 7772,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7773, upper := 7850,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7851, upper := 7932,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7933, upper := 8024,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8025, upper := 8108,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8109, upper := 8192,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8193, upper := 8282,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8283, upper := 8364,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8365, upper := 8371,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8410, upper := 8480,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8481, upper := 8501,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8649, upper := 8738,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8739, upper := 8740,
        witness := RowWitness.topPrime 8737
      },
      {
        lower := 8748, upper := 8838,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8839, upper := 8879,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 9025, upper := 9069,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9332,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9333, upper := 9342,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9375, upper := 9408,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9604, upper := 9692,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9693, upper := 9695,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 10082, upper := 10170,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10171, upper := 10177,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10240, upper := 10297,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10625, upper := 10704,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10705, upper := 10739,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10935, upper := 11000,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11001, upper := 11043,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11045, upper := 11076,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11136,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11185,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11236, upper := 11304,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11305, upper := 11327,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11834,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11835, upper := 11858,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 12005, upper := 12070,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12379,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12412,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12484,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12582,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12583, upper := 12584,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13125, upper := 13212,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13213, upper := 13216,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13254, upper := 13273,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13345,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13542,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13543, upper := 13547,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13802,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13803, upper := 13841,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 13851, upper := 13869,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13942,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14375, upper := 14388,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14492,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14493, upper := 14497,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14641, upper := 14671,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14830,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15059, upper := 15091,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15212,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15213, upper := 15220,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15376, upper := 15464,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15465, upper := 15470,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16064,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16065, upper := 16078,
        witness := RowWitness.topPrime 16063
      },
      {
        lower := 16384, upper := 16472,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16473, upper := 16475,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16810, upper := 16878,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16879, upper := 16911,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17303, upper := 17389,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17496,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17587,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17667,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17672, upper := 17752,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18572,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18573, upper := 18581,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18696,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18725,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18814,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19208, upper := 19298,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19299, upper := 19299,
        witness := RowWitness.topPrime 19289
      },
      {
        lower := 19663, upper := 19752,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19753, upper := 19754,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19774,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19972,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20252,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20253, upper := 20263,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20571,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20626,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20668,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21387,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21954,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21955, upper := 21966,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 21970, upper := 21995,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22536,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24098,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24099, upper := 24128,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24367, upper := 24450,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24451, upper := 24458,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24662,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24663, upper := 24667,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 25000, upper := 25055,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25280,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25281, upper := 25352,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25353, upper := 25372,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 26047, upper := 26102,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26455,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26645, upper := 26711,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26987,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27471,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28181,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28652,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28808,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28812, upper := 28840,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29859,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30337,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 30990,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31284,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31285, upper := 31304,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31341,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31433, upper := 31488,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31489, upper := 31514,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32030,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32859,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34386,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34391, upper := 34472,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34473, upper := 34482,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35344, upper := 35378,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 37210, upper := 37270,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37349, upper := 37394,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37500, upper := 37537,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37591,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 39326, upper := 39414,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39415, upper := 39417,
        witness := RowWitness.topPrime 39409
      },
      {
        lower := 40401, upper := 40419,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 43750, upper := 43778,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 44981,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48052,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48825,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49221,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50019,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50501,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55532,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55533, upper := 55538,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58655,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59582, upper := 59627,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62501,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63960,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65612,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65613, upper := 65627,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68681,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68981,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73258,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137872,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146425,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148968,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 8372, upper := 16744, M := 25
      },
      {
        lower := 16744, upper := 33488, M := 21
      },
      {
        lower := 33488, upper := 66976, M := 17
      },
      {
        lower := 66976, upper := 133952, M := 14
      },
      {
        lower := 133952, upper := 267904, M := 12
      },
      {
        lower := 267904, upper := 535808, M := 10
      },
      {
        lower := 535808, upper := 1071616, M := 8
      },
      {
        lower := 1071616, upper := 2143232, M := 7
      },
      {
        lower := 2143232, upper := 4286464, M := 6
      },
      {
        lower := 4286464, upper := 8572928, M := 5
      },
      {
        lower := 8572928, upper := 17145856, M := 4
      },
      {
        lower := 17145856, upper := 34291712, M := 4
      },
      {
        lower := 34291712, upper := 68583424, M := 3
      },
      {
        lower := 68583424, upper := 137166848, M := 3
      },
      {
        lower := 137166848, upper := 274333696, M := 2
      },
      {
        lower := 274333696, upper := 548667392, M := 2
      },
      {
        lower := 548667392, upper := 1000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 93, r := 30, s := 65,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 188, upper := 273,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 274, upper := 363,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 364, upper := 451,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 452, upper := 541,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 542, upper := 633,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 634, upper := 723,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 724, upper := 811,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 812, upper := 903,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 904, upper := 979,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 980, upper := 1069,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1070, upper := 1161,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1162, upper := 1245,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1246, upper := 1329,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1330, upper := 1419,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1420, upper := 1501,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1502, upper := 1591,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1592, upper := 1675,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1676, upper := 1761,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1762, upper := 1851,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1852, upper := 1939,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1940, upper := 2025,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2026, upper := 2109,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2110, upper := 2191,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2192, upper := 2271,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2272, upper := 2361,
        witness := RowWitness.topPrime 2269
      },
      {
        lower := 2362, upper := 2449,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2450, upper := 2539,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2540, upper := 2631,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2632, upper := 2713,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2714, upper := 2805,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2806, upper := 2895,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2896, upper := 2979,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 2980, upper := 3063,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3064, upper := 3153,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3154, upper := 3229,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3230, upper := 3321,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3322, upper := 3411,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3412, upper := 3499,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3500, upper := 3591,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3592, upper := 3675,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3676, upper := 3765,
        witness := RowWitness.topPrime 3673
      },
      {
        lower := 3766, upper := 3853,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3854, upper := 3945,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3946, upper := 4035,
        witness := RowWitness.topPrime 3943
      },
      {
        lower := 4036, upper := 4119,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4120, upper := 4203,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4204, upper := 4293,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4294, upper := 4381,
        witness := RowWitness.topPrime 4289
      },
      {
        lower := 4382, upper := 4465,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4466, upper := 4555,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4556, upper := 4641,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4642, upper := 4731,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4732, upper := 4821,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4822, upper := 4909,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4910, upper := 5001,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5002, upper := 5091,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5092, upper := 5179,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5180, upper := 5271,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5272, upper := 5353,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5354, upper := 5443,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5444, upper := 5535,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5536, upper := 5623,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5624, upper := 5715,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5716, upper := 5803,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5804, upper := 5893,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5894, upper := 5973,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5974, upper := 6045,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6046, upper := 6135,
        witness := RowWitness.topPrime 6043
      },
      {
        lower := 6136, upper := 6225,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6226, upper := 6313,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6314, upper := 6403,
        witness := RowWitness.topPrime 6311
      },
      {
        lower := 6404, upper := 6489,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6490, upper := 6573,
        witness := RowWitness.topPrime 6481
      },
      {
        lower := 6574, upper := 6663,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6664, upper := 6753,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6754, upper := 6829,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6830, upper := 6921,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6922, upper := 7009,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7010, upper := 7093,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7094, upper := 7171,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7172, upper := 7251,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7252, upper := 7339,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7340, upper := 7425,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7426, upper := 7509,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7510, upper := 7599,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7600, upper := 7683,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7684, upper := 7773,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7774, upper := 7851,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7852, upper := 7933,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7934, upper := 8025,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8026, upper := 8109,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8110, upper := 8193,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8194, upper := 8283,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8284, upper := 8365,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8366, upper := 8455,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8456, upper := 8539,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8540, upper := 8555,
        witness := RowWitness.topPrime 8539
      },
      {
        lower := 8748, upper := 8839,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8840, upper := 8880,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8993, upper := 9063,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9064, upper := 9070,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9245, upper := 9333,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9334, upper := 9343,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9375, upper := 9409,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9583, upper := 9643,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9644, upper := 9675,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10051, upper := 10131,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10132, upper := 10178,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10625, upper := 10705,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10706, upper := 10740,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10935, upper := 11001,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11002, upper := 11077,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11094, upper := 11185,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11186, upper := 11201,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11305,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11306, upper := 11342,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11835,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11836, upper := 11866,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 12005, upper := 12071,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12380,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12574,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13213,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13214, upper := 13217,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13254, upper := 13274,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13401,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13402, upper := 13402,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13456, upper := 13543,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13544, upper := 13548,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13803,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13804, upper := 13842,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 14336, upper := 14419,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14420, upper := 14467,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14792, upper := 14831,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14884,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15213,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15214, upper := 15221,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15360, upper := 15451,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15452, upper := 15452,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15463, upper := 15471,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16065,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16066, upper := 16071,
        witness := RowWitness.topPrime 16063
      },
      {
        lower := 16428, upper := 16476,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16879,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16880, upper := 16912,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17408, upper := 17493,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17494, upper := 17497,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 18490, upper := 18573,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18574, upper := 18582,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18697,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18726,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18815,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19208, upper := 19258,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19753,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19754, upper := 19755,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19775,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19973,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20253,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20254, upper := 20256,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20572,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20627,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20669,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21388,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21875, upper := 21963,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21964, upper := 21967,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 21970, upper := 21996,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22561,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22562, upper := 22564,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 24010, upper := 24099,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24100, upper := 24102,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24334, upper := 24421,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24422, upper := 24459,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24663,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24664, upper := 24668,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 25000, upper := 25056,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25281,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25282, upper := 25353,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25354, upper := 25373,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 26047, upper := 26103,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26456,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26645, upper := 26716,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26988,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28182,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28653,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28764,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 30258, upper := 30338,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30758, upper := 30812,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30991,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31285,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31286, upper := 31305,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31342,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31433, upper := 31489,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31490, upper := 31515,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32031,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32860,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34387,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34391, upper := 34473,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34474, upper := 34483,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35344, upper := 35379,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36589,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36590, upper := 36593,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37500, upper := 37538,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 39326, upper := 39415,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39416, upper := 39418,
        witness := RowWitness.topPrime 39409
      },
      {
        lower := 40401, upper := 40420,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41023,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43779,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 44982,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48053,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48760,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48826,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49222,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50020,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50502,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53290, upper := 53340,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55533,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55534, upper := 55539,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58656,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62502,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63961,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65613,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65614, upper := 65625,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68682,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68982,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73259,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 146410, upper := 146426,
        witness := RowWitness.topPrime 146407
      }
    ],
    layers := [
      {
        lower := 8556, upper := 17112, M := 23
      },
      {
        lower := 17112, upper := 34224, M := 19
      },
      {
        lower := 34224, upper := 68448, M := 16
      },
      {
        lower := 68448, upper := 136896, M := 13
      },
      {
        lower := 136896, upper := 273792, M := 11
      },
      {
        lower := 273792, upper := 547584, M := 9
      },
      {
        lower := 547584, upper := 1095168, M := 7
      },
      {
        lower := 1095168, upper := 2190336, M := 6
      },
      {
        lower := 2190336, upper := 4380672, M := 5
      },
      {
        lower := 4380672, upper := 8761344, M := 4
      },
      {
        lower := 8761344, upper := 17522688, M := 4
      },
      {
        lower := 17522688, upper := 35045376, M := 3
      },
      {
        lower := 35045376, upper := 70090752, M := 3
      },
      {
        lower := 70090752, upper := 140181504, M := 2
      },
      {
        lower := 140181504, upper := 280363008, M := 2
      },
      {
        lower := 280363008, upper := 560726016, M := 2
      },
      {
        lower := 560726016, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 94, r := 31, s := 65,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 190, upper := 274,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 275, upper := 364,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 365, upper := 452,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 453, upper := 542,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 543, upper := 634,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 635, upper := 724,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 725, upper := 812,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 813, upper := 904,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 905, upper := 980,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 981, upper := 1070,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1071, upper := 1162,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1163, upper := 1256,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1257, upper := 1342,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1343, upper := 1420,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1421, upper := 1502,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1503, upper := 1592,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1593, upper := 1676,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1677, upper := 1762,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1763, upper := 1852,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1853, upper := 1940,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1941, upper := 2026,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2027, upper := 2120,
        witness := RowWitness.topPrime 2027
      },
      {
        lower := 2121, upper := 2206,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2207, upper := 2300,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2301, upper := 2390,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2391, upper := 2482,
        witness := RowWitness.topPrime 2389
      },
      {
        lower := 2483, upper := 2570,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2571, upper := 2650,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2651, upper := 2740,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2741, upper := 2834,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2835, upper := 2926,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2927, upper := 3020,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3021, upper := 3112,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3113, upper := 3202,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3203, upper := 3296,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3297, upper := 3364,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3365, upper := 3454,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3455, upper := 3542,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3543, upper := 3634,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3635, upper := 3724,
        witness := RowWitness.topPrime 3631
      },
      {
        lower := 3725, upper := 3812,
        witness := RowWitness.topPrime 3719
      },
      {
        lower := 3813, upper := 3896,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3897, upper := 3982,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3983, upper := 4060,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4061, upper := 4150,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4151, upper := 4232,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4233, upper := 4324,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4325, upper := 4390,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4391, upper := 4484,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4485, upper := 4576,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4577, upper := 4660,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4661, upper := 4750,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4751, upper := 4844,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4845, upper := 4924,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4925, upper := 5012,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5013, upper := 5104,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5105, upper := 5194,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5195, upper := 5282,
        witness := RowWitness.topPrime 5189
      },
      {
        lower := 5283, upper := 5374,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5375, upper := 5444,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5445, upper := 5536,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5537, upper := 5624,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5625, upper := 5716,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5717, upper := 5810,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5811, upper := 5900,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5901, upper := 5990,
        witness := RowWitness.topPrime 5897
      },
      {
        lower := 5991, upper := 6080,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6081, upper := 6172,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6173, upper := 6266,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6267, upper := 6356,
        witness := RowWitness.topPrime 6263
      },
      {
        lower := 6357, upper := 6446,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6447, upper := 6520,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6521, upper := 6614,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6615, upper := 6700,
        witness := RowWitness.topPrime 6607
      },
      {
        lower := 6701, upper := 6794,
        witness := RowWitness.topPrime 6701
      },
      {
        lower := 6795, upper := 6886,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6887, upper := 6976,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 6977, upper := 7070,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7071, upper := 7162,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7163, upper := 7252,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7253, upper := 7346,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7347, upper := 7426,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7427, upper := 7510,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7511, upper := 7600,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7601, upper := 7684,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7685, upper := 7774,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7775, upper := 7852,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7853, upper := 7946,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7947, upper := 8030,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8031, upper := 8110,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8111, upper := 8204,
        witness := RowWitness.topPrime 8111
      },
      {
        lower := 8205, upper := 8284,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8285, upper := 8366,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8367, upper := 8456,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8457, upper := 8540,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8541, upper := 8632,
        witness := RowWitness.topPrime 8539
      },
      {
        lower := 8633, upper := 8722,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8723, upper := 8741,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8750, upper := 8840,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8841, upper := 8843,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8993, upper := 9064,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9065, upper := 9071,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9245, upper := 9334,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9335, upper := 9344,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9375, upper := 9410,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9570,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9644,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9645, upper := 9697,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10051, upper := 10132,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10133, upper := 10179,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10299,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10660,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10661, upper := 10741,
        witness := RowWitness.topPrime 10657
      },
      {
        lower := 10935, upper := 11002,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11003, upper := 11045,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11109, upper := 11186,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11187, upper := 11202,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11306,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11307, upper := 11343,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11664, upper := 11731,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11836,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11837, upper := 11860,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 12005, upper := 12072,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12381,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12414,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12486,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12584,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12585, upper := 12586,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13125, upper := 13214,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13215, upper := 13218,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13454, upper := 13544,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13545, upper := 13549,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13804,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13805, upper := 13843,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 13851, upper := 13871,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13944,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14390,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14494,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14495, upper := 14499,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14641, upper := 14673,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14832,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14885,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15214,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15215, upper := 15222,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15376, upper := 15466,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15467, upper := 15469,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15979, upper := 16066,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16067, upper := 16080,
        witness := RowWitness.topPrime 16067
      },
      {
        lower := 16384, upper := 16474,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16475, upper := 16477,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16810, upper := 16880,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16881, upper := 16913,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17303, upper := 17391,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17498,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17589,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 18490, upper := 18574,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18575, upper := 18583,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18698,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18727,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18816,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19208, upper := 19259,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19754,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19755, upper := 19756,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19776,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 20172, upper := 20254,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20255, upper := 20257,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20573,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20628,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20670,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21389,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21956,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21957, upper := 21968,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 21970, upper := 21997,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22538,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24100,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24101, upper := 24130,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24367, upper := 24452,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24453, upper := 24460,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24664,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24665, upper := 24669,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 25000, upper := 25057,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25282,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25283, upper := 25308,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26457,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26934, upper := 26989,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28183,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28654,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 29791, upper := 29861,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30339,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 31213, upper := 31286,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31287, upper := 31306,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31343,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31433, upper := 31490,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31491, upper := 31516,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 32805, upper := 32861,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34388,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34391, upper := 34474,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34475, upper := 34484,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36590,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36591, upper := 36594,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37303,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37539,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 39326, upper := 39416,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39417, upper := 39419,
        witness := RowWitness.topPrime 39409
      },
      {
        lower := 40401, upper := 40421,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41024,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43780,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48054,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48761,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48827,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49223,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50503,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55534,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55535, upper := 55540,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58657,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59049,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62503,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63962,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65614,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65615, upper := 65629,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68683,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68983,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73260,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137874,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146427,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148970,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 8742, upper := 17484, M := 22
      },
      {
        lower := 17484, upper := 34968, M := 18
      },
      {
        lower := 34968, upper := 69936, M := 15
      },
      {
        lower := 69936, upper := 139872, M := 12
      },
      {
        lower := 139872, upper := 279744, M := 10
      },
      {
        lower := 279744, upper := 559488, M := 8
      },
      {
        lower := 559488, upper := 1118976, M := 7
      },
      {
        lower := 1118976, upper := 2237952, M := 6
      },
      {
        lower := 2237952, upper := 4475904, M := 5
      },
      {
        lower := 4475904, upper := 8951808, M := 4
      },
      {
        lower := 8951808, upper := 17903616, M := 3
      },
      {
        lower := 17903616, upper := 35807232, M := 3
      },
      {
        lower := 35807232, upper := 71614464, M := 2
      },
      {
        lower := 71614464, upper := 143228928, M := 2
      },
      {
        lower := 143228928, upper := 286457856, M := 2
      },
      {
        lower := 286457856, upper := 572915712, M := 1
      },
      {
        lower := 572915712, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 95, r := 31, s := 66,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 192, upper := 285,
        witness := RowWitness.topPrime 191
      },
      {
        lower := 286, upper := 377,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 378, upper := 467,
        witness := RowWitness.topPrime 373
      },
      {
        lower := 468, upper := 561,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 562, upper := 651,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 652, upper := 741,
        witness := RowWitness.topPrime 647
      },
      {
        lower := 742, upper := 833,
        witness := RowWitness.topPrime 739
      },
      {
        lower := 834, upper := 923,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 924, upper := 1013,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1014, upper := 1107,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1108, upper := 1197,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1198, upper := 1287,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1288, upper := 1377,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1378, upper := 1467,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1468, upper := 1553,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1554, upper := 1647,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1648, upper := 1731,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1732, upper := 1817,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1818, upper := 1905,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1906, upper := 1995,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 1996, upper := 2087,
        witness := RowWitness.topPrime 1993
      },
      {
        lower := 2088, upper := 2181,
        witness := RowWitness.topPrime 2087
      },
      {
        lower := 2182, upper := 2273,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2274, upper := 2367,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2368, upper := 2451,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2452, upper := 2541,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2542, upper := 2633,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2634, upper := 2727,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2728, upper := 2813,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2814, upper := 2897,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2898, upper := 2991,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2992, upper := 3065,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3066, upper := 3155,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3156, upper := 3231,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3232, upper := 3323,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3324, upper := 3417,
        witness := RowWitness.topPrime 3323
      },
      {
        lower := 3418, upper := 3507,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3508, upper := 3593,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3594, upper := 3687,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3688, upper := 3771,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3772, upper := 3863,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3864, upper := 3957,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3958, upper := 4041,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4042, upper := 4121,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4122, upper := 4205,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4206, upper := 4295,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4296, upper := 4383,
        witness := RowWitness.topPrime 4289
      },
      {
        lower := 4384, upper := 4467,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4468, upper := 4557,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4558, upper := 4643,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4644, upper := 4737,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4738, upper := 4827,
        witness := RowWitness.topPrime 4733
      },
      {
        lower := 4828, upper := 4911,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4912, upper := 5003,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5004, upper := 5097,
        witness := RowWitness.topPrime 5003
      },
      {
        lower := 5098, upper := 5181,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5182, upper := 5273,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5274, upper := 5367,
        witness := RowWitness.topPrime 5273
      },
      {
        lower := 5368, upper := 5445,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5446, upper := 5537,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5538, upper := 5625,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5626, upper := 5717,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5718, upper := 5811,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5812, upper := 5901,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5902, upper := 5991,
        witness := RowWitness.topPrime 5897
      },
      {
        lower := 5992, upper := 6081,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6082, upper := 6173,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6174, upper := 6267,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6268, upper := 6357,
        witness := RowWitness.topPrime 6263
      },
      {
        lower := 6358, upper := 6447,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6448, upper := 6521,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6522, upper := 6615,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6616, upper := 6701,
        witness := RowWitness.topPrime 6607
      },
      {
        lower := 6702, upper := 6795,
        witness := RowWitness.topPrime 6701
      },
      {
        lower := 6796, upper := 6887,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6888, upper := 6977,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 6978, upper := 7071,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7072, upper := 7163,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7164, upper := 7253,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7254, upper := 7347,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7348, upper := 7427,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7428, upper := 7511,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7512, upper := 7601,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7602, upper := 7685,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7686, upper := 7775,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7776, upper := 7853,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7854, upper := 7947,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7948, upper := 8031,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8032, upper := 8111,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8112, upper := 8205,
        witness := RowWitness.topPrime 8111
      },
      {
        lower := 8206, upper := 8285,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8286, upper := 8367,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8368, upper := 8457,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8458, upper := 8541,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8542, upper := 8633,
        witness := RowWitness.topPrime 8539
      },
      {
        lower := 8634, upper := 8723,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8724, upper := 8813,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8814, upper := 8901,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8902, upper := 8929,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 8993, upper := 9065,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9066, upper := 9072,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9245, upper := 9335,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9336, upper := 9345,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9375, upper := 9411,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9571,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9645,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9646, upper := 9698,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10082, upper := 10173,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10174, upper := 10180,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10240, upper := 10300,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10661,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10662, upper := 10742,
        witness := RowWitness.topPrime 10657
      },
      {
        lower := 10752, upper := 10752,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10935, upper := 11003,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11004, upper := 11079,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11187,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11188, upper := 11203,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11257,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11264, upper := 11330,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11774, upper := 11837,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11838, upper := 11861,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 12005, upper := 12073,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12382,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12415,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12487,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12585,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12586, upper := 12587,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13182, upper := 13216,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13276,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13403,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13404, upper := 13404,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13454, upper := 13545,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13546, upper := 13550,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13778, upper := 13784,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13851, upper := 13872,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13945,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14391,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14495,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14496, upper := 14500,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14641, upper := 14674,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14833,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14886,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15215,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15216, upper := 15223,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15360, upper := 15453,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15454, upper := 15473,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15979, upper := 16067,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16068, upper := 16073,
        witness := RowWitness.topPrime 16067
      },
      {
        lower := 16384, upper := 16475,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16476, upper := 16478,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16810, upper := 16881,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16882, upper := 16914,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17303, upper := 17392,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17495,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17502,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17590,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17670,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17672, upper := 17755,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18575,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18576, upper := 18584,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18699,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18728,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 19208, upper := 19260,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19755,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19756, upper := 19757,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19777,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19975,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20255,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20256, upper := 20258,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20574,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 21316, upper := 21390,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21957,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21958, upper := 21964,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 21970, upper := 21998,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22563,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22564, upper := 22566,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 24037, upper := 24123,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24124, upper := 24131,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24423,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24424, upper := 24461,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24659,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25283,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25284, upper := 25309,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26458,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26645, upper := 26718,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26990,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28577, upper := 28655,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28766,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29862,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30814,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30993,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31287,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31288, upper := 31307,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31344,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31423,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31433, upper := 31491,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31492, upper := 31517,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 32805, upper := 32862,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33708,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34445, upper := 34485,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34901,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34902, upper := 34904,
        witness := RowWitness.topPrime 34897
      },
      {
        lower := 35344, upper := 35381,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36591,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36592, upper := 36595,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37304,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 39326, upper := 39417,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39418, upper := 39420,
        witness := RowWitness.topPrime 39409
      },
      {
        lower := 40401, upper := 40422,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41025,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48734, upper := 48762,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48828,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49224,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50504,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53290, upper := 53342,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55535,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55536, upper := 55541,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58658,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59050,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63948, upper := 63963,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65615,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65616, upper := 65630,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68921, upper := 68984,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73261,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137875,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 148971,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 8930, upper := 17860, M := 21
      },
      {
        lower := 17860, upper := 35720, M := 17
      },
      {
        lower := 35720, upper := 71440, M := 14
      },
      {
        lower := 71440, upper := 142880, M := 11
      },
      {
        lower := 142880, upper := 285760, M := 9
      },
      {
        lower := 285760, upper := 571520, M := 7
      },
      {
        lower := 571520, upper := 1143040, M := 6
      },
      {
        lower := 1143040, upper := 2286080, M := 5
      },
      {
        lower := 2286080, upper := 4572160, M := 4
      },
      {
        lower := 4572160, upper := 9144320, M := 3
      },
      {
        lower := 9144320, upper := 18288640, M := 3
      },
      {
        lower := 18288640, upper := 36577280, M := 2
      },
      {
        lower := 36577280, upper := 73154560, M := 2
      },
      {
        lower := 73154560, upper := 146309120, M := 2
      },
      {
        lower := 146309120, upper := 292618240, M := 1
      },
      {
        lower := 292618240, upper := 585236480, M := 1
      },
      {
        lower := 585236480, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 96, r := 31, s := 67,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 194, upper := 288,
        witness := RowWitness.topPrime 193
      },
      {
        lower := 289, upper := 378,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 379, upper := 474,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 475, upper := 562,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 563, upper := 658,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 659, upper := 754,
        witness := RowWitness.topPrime 659
      },
      {
        lower := 755, upper := 846,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 847, upper := 934,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 935, upper := 1024,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1025, upper := 1116,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1117, upper := 1212,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1213, upper := 1308,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1309, upper := 1402,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1403, upper := 1494,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1495, upper := 1588,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1589, upper := 1678,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1679, upper := 1764,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1765, upper := 1854,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1855, upper := 1942,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1943, upper := 2028,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2029, upper := 2124,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2125, upper := 2208,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2209, upper := 2302,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2303, upper := 2392,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2393, upper := 2488,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2489, upper := 2572,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2573, upper := 2652,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2653, upper := 2742,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2743, upper := 2836,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2837, upper := 2932,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 2933, upper := 3022,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3023, upper := 3118,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3119, upper := 3214,
        witness := RowWitness.topPrime 3119
      },
      {
        lower := 3215, upper := 3304,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3305, upper := 3396,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3397, upper := 3486,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3487, upper := 3564,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3565, upper := 3654,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3655, upper := 3738,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3739, upper := 3834,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3835, upper := 3928,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3929, upper := 4024,
        witness := RowWitness.topPrime 3929
      },
      {
        lower := 4025, upper := 4116,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4117, upper := 4206,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4207, upper := 4296,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4297, upper := 4392,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4393, upper := 4486,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4487, upper := 4578,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4579, upper := 4662,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4663, upper := 4758,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4759, upper := 4854,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4855, upper := 4926,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4927, upper := 5014,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5015, upper := 5106,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5107, upper := 5202,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5203, upper := 5292,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5293, upper := 5376,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5377, upper := 5446,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5447, upper := 5538,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5539, upper := 5626,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5627, upper := 5718,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5719, upper := 5812,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5813, upper := 5908,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5909, upper := 5998,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 5999, upper := 6082,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6083, upper := 6174,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6175, upper := 6268,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6269, upper := 6364,
        witness := RowWitness.topPrime 6269
      },
      {
        lower := 6365, upper := 6456,
        witness := RowWitness.topPrime 6361
      },
      {
        lower := 6457, upper := 6546,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6547, upper := 6642,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6643, upper := 6732,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6733, upper := 6828,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6829, upper := 6924,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6925, upper := 7012,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7013, upper := 7108,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7109, upper := 7204,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7205, upper := 7288,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7289, upper := 7378,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7379, upper := 7464,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7465, upper := 7554,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7555, upper := 7644,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7645, upper := 7738,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7739, upper := 7822,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7823, upper := 7918,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7919, upper := 8014,
        witness := RowWitness.topPrime 7919
      },
      {
        lower := 8015, upper := 8106,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8107, upper := 8196,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8197, upper := 8286,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8287, upper := 8382,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8383, upper := 8472,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8473, upper := 8562,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8563, upper := 8658,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8659, upper := 8742,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8743, upper := 8836,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8837, upper := 8932,
        witness := RowWitness.topPrime 8837
      },
      {
        lower := 8933, upper := 9028,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9029, upper := 9119,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9251, upper := 9336,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9337, upper := 9346,
        witness := RowWitness.topPrime 9337
      },
      {
        lower := 9375, upper := 9412,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9583, upper := 9646,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9647, upper := 9699,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10051, upper := 10134,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10135, upper := 10181,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10625, upper := 10708,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10709, upper := 10743,
        witness := RowWitness.topPrime 10709
      },
      {
        lower := 10935, upper := 11004,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11005, upper := 11080,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11140,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11189,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11236, upper := 11308,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11309, upper := 11331,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11838,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11839, upper := 11862,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12005, upper := 12074,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12493, upper := 12586,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12587, upper := 12588,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13182, upper := 13217,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13277,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13349,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13546,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13547, upper := 13551,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13806,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13807, upper := 13813,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14415, upper := 14501,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14792, upper := 14834,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14887,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15216,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15217, upper := 15224,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15379, upper := 15472,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15473, upper := 15474,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16068,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16069, upper := 16074,
        witness := RowWitness.topPrime 16069
      },
      {
        lower := 16428, upper := 16432,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16882,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16883, upper := 16905,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17303, upper := 17393,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18491, upper := 18576,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18577, upper := 18585,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18700,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18729,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18818,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19208, upper := 19261,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19756,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19757, upper := 19758,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19778,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19976,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20256,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20257, upper := 20259,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20577, upper := 20630,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20672,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21391,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21875, upper := 21966,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21967, upper := 21999,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22540,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24037, upper := 24105,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24424,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24425, upper := 24462,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 25000, upper := 25059,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25284,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25285, upper := 25310,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26459,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26934, upper := 26991,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28185,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28812, upper := 28812,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29863,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30994,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31288,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31289, upper := 31308,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31345,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31424,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 33708, upper := 33709,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34464,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34465, upper := 34486,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35344, upper := 35382,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 37303, upper := 37305,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37541,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 39366, upper := 39399,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40423,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 48013, upper := 48056,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 50421, upper := 50505,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55536,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55537, upper := 55542,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58659,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59051,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62505,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68651, upper := 68685,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68985,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73262,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 148955, upper := 148972,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 9120, upper := 18240, M := 19
      },
      {
        lower := 18240, upper := 36480, M := 16
      },
      {
        lower := 36480, upper := 72960, M := 12
      },
      {
        lower := 72960, upper := 145920, M := 10
      },
      {
        lower := 145920, upper := 291840, M := 8
      },
      {
        lower := 291840, upper := 583680, M := 7
      },
      {
        lower := 583680, upper := 1167360, M := 5
      },
      {
        lower := 1167360, upper := 2334720, M := 4
      },
      {
        lower := 2334720, upper := 4669440, M := 4
      },
      {
        lower := 4669440, upper := 9338880, M := 3
      },
      {
        lower := 9338880, upper := 18677760, M := 2
      },
      {
        lower := 18677760, upper := 37355520, M := 2
      },
      {
        lower := 37355520, upper := 74711040, M := 2
      },
      {
        lower := 74711040, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 97, r := 32, s := 68,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 196, upper := 289,
        witness := RowWitness.topPrime 193
      },
      {
        lower := 290, upper := 379,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 380, upper := 475,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 476, upper := 563,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 564, upper := 659,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 660, upper := 755,
        witness := RowWitness.topPrime 659
      },
      {
        lower := 756, upper := 847,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 848, upper := 935,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 936, upper := 1025,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1026, upper := 1117,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1118, upper := 1213,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1214, upper := 1309,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1310, upper := 1403,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1404, upper := 1495,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1496, upper := 1589,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1590, upper := 1679,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1680, upper := 1765,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1766, upper := 1855,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1856, upper := 1943,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1944, upper := 2029,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2030, upper := 2125,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2126, upper := 2209,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2210, upper := 2303,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2304, upper := 2393,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2394, upper := 2489,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2490, upper := 2573,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2574, upper := 2653,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2654, upper := 2743,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2744, upper := 2837,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2838, upper := 2933,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 2934, upper := 3023,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3024, upper := 3119,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3120, upper := 3215,
        witness := RowWitness.topPrime 3119
      },
      {
        lower := 3216, upper := 3305,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3306, upper := 3397,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3398, upper := 3487,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3488, upper := 3565,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3566, upper := 3655,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3656, upper := 3739,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3740, upper := 3835,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3836, upper := 3929,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3930, upper := 4025,
        witness := RowWitness.topPrime 3929
      },
      {
        lower := 4026, upper := 4117,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4118, upper := 4207,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4208, upper := 4297,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4298, upper := 4393,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4394, upper := 4487,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4488, upper := 4579,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4580, upper := 4663,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4664, upper := 4759,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4760, upper := 4855,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4856, upper := 4927,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4928, upper := 5015,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5016, upper := 5107,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5108, upper := 5203,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5204, upper := 5293,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5294, upper := 5377,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5378, upper := 5447,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5448, upper := 5539,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5540, upper := 5627,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5628, upper := 5719,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5720, upper := 5813,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5814, upper := 5909,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5910, upper := 5999,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6000, upper := 6083,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6084, upper := 6175,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6176, upper := 6269,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6270, upper := 6365,
        witness := RowWitness.topPrime 6269
      },
      {
        lower := 6366, upper := 6457,
        witness := RowWitness.topPrime 6361
      },
      {
        lower := 6458, upper := 6547,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6548, upper := 6643,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6644, upper := 6733,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6734, upper := 6829,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6830, upper := 6925,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6926, upper := 7013,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7014, upper := 7109,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7110, upper := 7205,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7206, upper := 7289,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7290, upper := 7379,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7380, upper := 7465,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7466, upper := 7555,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7556, upper := 7645,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7646, upper := 7739,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7740, upper := 7823,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7824, upper := 7919,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7920, upper := 8015,
        witness := RowWitness.topPrime 7919
      },
      {
        lower := 8016, upper := 8107,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8108, upper := 8197,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8198, upper := 8287,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8288, upper := 8383,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8384, upper := 8473,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8474, upper := 8563,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8564, upper := 8659,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8660, upper := 8743,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8744, upper := 8837,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8838, upper := 8933,
        witness := RowWitness.topPrime 8837
      },
      {
        lower := 8934, upper := 9029,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9030, upper := 9125,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9126, upper := 9205,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9206, upper := 9299,
        witness := RowWitness.topPrime 9203
      },
      {
        lower := 9300, upper := 9347,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9375, upper := 9413,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9522, upper := 9573,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9647,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9648, upper := 9700,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10082, upper := 10175,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10176, upper := 10182,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10240, upper := 10302,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10625, upper := 10709,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10710, upper := 10744,
        witness := RowWitness.topPrime 10709
      },
      {
        lower := 10935, upper := 11005,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11006, upper := 11081,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11141,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11190,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11236, upper := 11309,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11310, upper := 11346,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11774, upper := 11839,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11840, upper := 11863,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12005, upper := 12075,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12384,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12417,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12489,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12587,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12588, upper := 12589,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13182, upper := 13218,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13278,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13405,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13406, upper := 13406,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13454, upper := 13547,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13548, upper := 13552,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13807,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13808, upper := 13814,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14336, upper := 14393,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14497,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14498, upper := 14502,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14792, upper := 14835,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14888,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15217,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15218, upper := 15225,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15360, upper := 15455,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15456, upper := 15475,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15987, upper := 16068,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16477,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16478, upper := 16480,
        witness := RowWitness.topPrime 16477
      },
      {
        lower := 16810, upper := 16883,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16884, upper := 16906,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17303, upper := 17394,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17497,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17498, upper := 17504,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17576, upper := 17592,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17672,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18577,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18578, upper := 18586,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18701,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18730,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18819,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 19208, upper := 19262,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19757,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19758, upper := 19759,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19773, upper := 19779,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 20172, upper := 20257,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20258, upper := 20260,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20667, upper := 20673,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21870, upper := 21959,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21960, upper := 21966,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 21970, upper := 21971,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22565,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22566, upper := 22568,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 24037, upper := 24125,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24126, upper := 24133,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24425,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24426, upper := 24463,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24661,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25060,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25301,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26460,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26645, upper := 26720,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 28125, upper := 28186,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28717, upper := 28768,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28813,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29864,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30995,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31289,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31290, upper := 31309,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31346,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31425,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32864,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33710,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34465,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34466, upper := 34487,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36593,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36594, upper := 36597,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37306,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 39366, upper := 39400,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40424,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41027,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48013, upper := 48057,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 49152, upper := 49226,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50506,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55537,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55538, upper := 55543,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58660,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62506,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65632,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68686,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68986,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73263,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137877,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 148973,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 9312, upper := 18624, M := 18
      },
      {
        lower := 18624, upper := 37248, M := 14
      },
      {
        lower := 37248, upper := 74496, M := 11
      },
      {
        lower := 74496, upper := 148992, M := 9
      },
      {
        lower := 148992, upper := 297984, M := 7
      },
      {
        lower := 297984, upper := 595968, M := 6
      },
      {
        lower := 595968, upper := 1191936, M := 5
      },
      {
        lower := 1191936, upper := 2383872, M := 4
      },
      {
        lower := 2383872, upper := 4767744, M := 3
      },
      {
        lower := 4767744, upper := 9535488, M := 3
      },
      {
        lower := 9535488, upper := 19070976, M := 2
      },
      {
        lower := 19070976, upper := 38141952, M := 2
      },
      {
        lower := 38141952, upper := 76283904, M := 2
      },
      {
        lower := 76283904, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 98, r := 32, s := 68,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 198, upper := 294,
        witness := RowWitness.topPrime 197
      },
      {
        lower := 295, upper := 390,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 391, upper := 486,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 487, upper := 584,
        witness := RowWitness.topPrime 487
      },
      {
        lower := 585, upper := 674,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 675, upper := 770,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 771, upper := 866,
        witness := RowWitness.topPrime 769
      },
      {
        lower := 867, upper := 960,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 961, upper := 1050,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1051, upper := 1148,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1149, upper := 1226,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1227, upper := 1320,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1321, upper := 1418,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1419, upper := 1506,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1507, upper := 1596,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1597, upper := 1694,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1695, upper := 1790,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1791, upper := 1886,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1887, upper := 1976,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1977, upper := 2070,
        witness := RowWitness.topPrime 1973
      },
      {
        lower := 2071, upper := 2166,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2167, upper := 2258,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2259, upper := 2348,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2349, upper := 2444,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2445, upper := 2538,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2539, upper := 2636,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2637, upper := 2730,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2731, upper := 2828,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2829, upper := 2916,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2917, upper := 3014,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3015, upper := 3108,
        witness := RowWitness.topPrime 3011
      },
      {
        lower := 3109, upper := 3206,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3207, upper := 3300,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3301, upper := 3398,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3399, upper := 3488,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3489, upper := 3566,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3567, upper := 3656,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3657, upper := 3740,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3741, upper := 3836,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3837, upper := 3930,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3931, upper := 4028,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4029, upper := 4124,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4125, upper := 4208,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4209, upper := 4298,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4299, upper := 4394,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4395, upper := 4488,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4489, upper := 4580,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4581, upper := 4664,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4665, upper := 4760,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4761, upper := 4856,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4857, upper := 4928,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4929, upper := 5016,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5017, upper := 5108,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5109, upper := 5204,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5205, upper := 5294,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5295, upper := 5378,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5379, upper := 5448,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5449, upper := 5546,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5547, upper := 5628,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5629, upper := 5720,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5721, upper := 5814,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5815, upper := 5910,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5911, upper := 6000,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6001, upper := 6084,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6085, upper := 6176,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6177, upper := 6270,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6271, upper := 6368,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6369, upper := 6464,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6465, upper := 6548,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6549, upper := 6644,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6645, upper := 6734,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6735, upper := 6830,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6831, upper := 6926,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6927, upper := 7014,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7015, upper := 7110,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7111, upper := 7206,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7207, upper := 7304,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7305, upper := 7394,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7395, upper := 7490,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7491, upper := 7586,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7587, upper := 7680,
        witness := RowWitness.topPrime 7583
      },
      {
        lower := 7681, upper := 7778,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7779, upper := 7856,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7857, upper := 7950,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7951, upper := 8048,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8049, upper := 8136,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8137, upper := 8220,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8221, upper := 8318,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8319, upper := 8414,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8415, upper := 8486,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8487, upper := 8564,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8565, upper := 8660,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8661, upper := 8744,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8745, upper := 8838,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8839, upper := 8936,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8937, upper := 9030,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9031, upper := 9126,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9127, upper := 9224,
        witness := RowWitness.topPrime 9127
      },
      {
        lower := 9225, upper := 9318,
        witness := RowWitness.topPrime 9221
      },
      {
        lower := 9319, upper := 9416,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9417, upper := 9506,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9522, upper := 9574,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9583, upper := 9648,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9649, upper := 9680,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10136,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10137, upper := 10183,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10303,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10664,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10665, upper := 10745,
        witness := RowWitness.topPrime 10663
      },
      {
        lower := 10935, upper := 11006,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11007, upper := 11082,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11190,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11191, upper := 11206,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11310,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11311, upper := 11347,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11664, upper := 11735,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11840,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11841, upper := 11864,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12321, upper := 12385,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12418,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12490,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12493, upper := 12588,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12589, upper := 12590,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 13125, upper := 13218,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13219, upper := 13222,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13279,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13351,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13548,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13549, upper := 13553,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13808,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13809, upper := 13847,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13851, upper := 13875,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13948,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14424,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14425, upper := 14472,
        witness := RowWitness.topPrime 14423
      },
      {
        lower := 14641, upper := 14677,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14792, upper := 14836,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14889,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15218,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15219, upper := 15226,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15376, upper := 15470,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15471, upper := 15476,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15979, upper := 16070,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16071, upper := 16084,
        witness := RowWitness.topPrime 16069
      },
      {
        lower := 16384, upper := 16478,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16479, upper := 16481,
        witness := RowWitness.topPrime 16477
      },
      {
        lower := 16810, upper := 16884,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16885, upper := 16917,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17303, upper := 17395,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17502,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17593,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17756,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17757, upper := 17758,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 18490, upper := 18578,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18579, upper := 18588,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18702,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18731,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18846,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18847, upper := 18847,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19663, upper := 19758,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19759, upper := 19760,
        witness := RowWitness.topPrime 19759
      },
      {
        lower := 19773, upper := 19780,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19978,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20258,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20259, upper := 20261,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20630,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20631, upper := 20632,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20674,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21393,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21960,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21961, upper := 22001,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22472, upper := 22542,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24037, upper := 24055,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24057, upper := 24134,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24334, upper := 24426,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24427, upper := 24464,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24668,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24669, upper := 24673,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 25000, upper := 25061,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25286,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25287, upper := 25312,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26934, upper := 26993,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28187,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28658,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28674,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28769,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29865,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30343,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 30996,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31302,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31329, upper := 31347,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31426,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31433, upper := 31494,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31495, upper := 31520,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 32805, upper := 32865,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34466,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34467, upper := 34488,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35344, upper := 35384,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36594,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36595, upper := 36598,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37210, upper := 37276,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37307,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37400,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37446,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37543,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37597,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37650,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39420,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39421, upper := 39423,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 40401, upper := 40425,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41028,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43784,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48058,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48765,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48831,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49227,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 55451, upper := 55538,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55539, upper := 55544,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 58619, upper := 58661,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59053,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62507,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63966,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65618,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65619, upper := 65633,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68687,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68987,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73264,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137878,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146431,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148974,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 9506, upper := 19012, M := 23
      },
      {
        lower := 19012, upper := 38024, M := 18
      },
      {
        lower := 38024, upper := 76048, M := 15
      },
      {
        lower := 76048, upper := 152096, M := 12
      },
      {
        lower := 152096, upper := 304192, M := 10
      },
      {
        lower := 304192, upper := 608384, M := 8
      },
      {
        lower := 608384, upper := 1216768, M := 7
      },
      {
        lower := 1216768, upper := 2433536, M := 6
      },
      {
        lower := 2433536, upper := 4867072, M := 5
      },
      {
        lower := 4867072, upper := 9734144, M := 4
      },
      {
        lower := 9734144, upper := 19468288, M := 3
      },
      {
        lower := 19468288, upper := 38936576, M := 3
      },
      {
        lower := 38936576, upper := 77873152, M := 2
      },
      {
        lower := 77873152, upper := 155746304, M := 2
      },
      {
        lower := 155746304, upper := 311492608, M := 2
      },
      {
        lower := 311492608, upper := 622985216, M := 1
      },
      {
        lower := 622985216, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 99, r := 32, s := 69,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 200, upper := 297,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 298, upper := 391,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 392, upper := 487,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 488, upper := 585,
        witness := RowWitness.topPrime 487
      },
      {
        lower := 586, upper := 675,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 676, upper := 771,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 772, upper := 867,
        witness := RowWitness.topPrime 769
      },
      {
        lower := 868, upper := 961,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 962, upper := 1051,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1052, upper := 1149,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1150, upper := 1227,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1228, upper := 1321,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1322, upper := 1419,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1420, upper := 1507,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1508, upper := 1597,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1598, upper := 1695,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1696, upper := 1791,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1792, upper := 1887,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1888, upper := 1977,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1978, upper := 2071,
        witness := RowWitness.topPrime 1973
      },
      {
        lower := 2072, upper := 2167,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2168, upper := 2259,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2260, upper := 2349,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2350, upper := 2445,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2446, upper := 2539,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2540, upper := 2637,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2638, upper := 2731,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2732, upper := 2829,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2830, upper := 2917,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2918, upper := 3015,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3016, upper := 3109,
        witness := RowWitness.topPrime 3011
      },
      {
        lower := 3110, upper := 3207,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3208, upper := 3301,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3302, upper := 3399,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3400, upper := 3489,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3490, upper := 3567,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3568, upper := 3657,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3658, upper := 3741,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3742, upper := 3837,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3838, upper := 3931,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3932, upper := 4029,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4030, upper := 4125,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4126, upper := 4209,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4210, upper := 4299,
        witness := RowWitness.topPrime 4201
      },
      {
        lower := 4300, upper := 4395,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4396, upper := 4489,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4490, upper := 4581,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4582, upper := 4665,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4666, upper := 4761,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4762, upper := 4857,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4858, upper := 4929,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4930, upper := 5017,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5018, upper := 5109,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5110, upper := 5205,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5206, upper := 5295,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5296, upper := 5379,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5380, upper := 5449,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5450, upper := 5547,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5548, upper := 5629,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5630, upper := 5721,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5722, upper := 5815,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5816, upper := 5911,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5912, upper := 6001,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6002, upper := 6085,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6086, upper := 6177,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6178, upper := 6271,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6272, upper := 6369,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6370, upper := 6465,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6466, upper := 6549,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6550, upper := 6645,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6646, upper := 6735,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6736, upper := 6831,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6832, upper := 6927,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6928, upper := 7015,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7016, upper := 7111,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7112, upper := 7207,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7208, upper := 7305,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7306, upper := 7395,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7396, upper := 7491,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7492, upper := 7587,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7588, upper := 7681,
        witness := RowWitness.topPrime 7583
      },
      {
        lower := 7682, upper := 7779,
        witness := RowWitness.topPrime 7681
      },
      {
        lower := 7780, upper := 7857,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7858, upper := 7951,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7952, upper := 8049,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8050, upper := 8137,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8138, upper := 8221,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8222, upper := 8319,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8320, upper := 8415,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8416, upper := 8487,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8488, upper := 8565,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8566, upper := 8661,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8662, upper := 8745,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8746, upper := 8839,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8840, upper := 8937,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8938, upper := 9031,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9032, upper := 9127,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9128, upper := 9225,
        witness := RowWitness.topPrime 9127
      },
      {
        lower := 9226, upper := 9319,
        witness := RowWitness.topPrime 9221
      },
      {
        lower := 9320, upper := 9417,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9418, upper := 9511,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9512, upper := 9609,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9610, upper := 9699,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9700, upper := 9702,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9826, upper := 9826,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 10051, upper := 10137,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10138, upper := 10184,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10580, upper := 10665,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10666, upper := 10723,
        witness := RowWitness.topPrime 10663
      },
      {
        lower := 10752, upper := 10756,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10952, upper := 11047,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11048, upper := 11083,
        witness := RowWitness.topPrime 11047
      },
      {
        lower := 11094, upper := 11191,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11192, upper := 11207,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11311,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11312, upper := 11348,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11841,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11842, upper := 11865,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12321, upper := 12386,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12493, upper := 12589,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12590, upper := 12591,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 13125, upper := 13219,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13220, upper := 13223,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13280,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13312, upper := 13352,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13549,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13550, upper := 13554,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13809,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13810, upper := 13816,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14336, upper := 14395,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14499,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14500, upper := 14504,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14739, upper := 14739,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14837,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14890,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15219,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15220, upper := 15227,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15376, upper := 15471,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15472, upper := 15477,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15987, upper := 16071,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16072, upper := 16077,
        witness := RowWitness.topPrime 16069
      },
      {
        lower := 16384, upper := 16479,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16480, upper := 16482,
        witness := RowWitness.topPrime 16477
      },
      {
        lower := 16810, upper := 16885,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16886, upper := 16918,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17408, upper := 17499,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17500, upper := 17503,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17661, upper := 17757,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17758, upper := 17759,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 18490, upper := 18579,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18580, upper := 18588,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18750, upper := 18847,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18848, upper := 18848,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19305,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19306, upper := 19306,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19663, upper := 19759,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19760, upper := 19761,
        witness := RowWitness.topPrime 19759
      },
      {
        lower := 19773, upper := 19781,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 20172, upper := 20259,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20260, upper := 20262,
        witness := RowWitness.topPrime 20249
      },
      {
        lower := 20535, upper := 20631,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20632, upper := 20633,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20675,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21875, upper := 21969,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21970, upper := 22002,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22188,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22567,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22568, upper := 22570,
        witness := RowWitness.topPrime 22567
      },
      {
        lower := 24037, upper := 24108,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24427,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24428, upper := 24465,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24663,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25062,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25287,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25288, upper := 25313,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26462,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26509,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26722,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26994,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28188,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28659,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28675,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28770,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28815,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29866,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30818,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30997,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31291,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31292, upper := 31311,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31348,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31427,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31433, upper := 31495,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31496, upper := 31521,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 33708, upper := 33712,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34467,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34468, upper := 34489,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 34816, upper := 34905,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34906, upper := 34908,
        witness := RowWitness.topPrime 34897
      },
      {
        lower := 35344, upper := 35385,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36595,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36596, upper := 36599,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37308,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37401,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37447,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37544,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37598,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37651,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39402,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 40401, upper := 40426,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41029,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43785,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48059,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48766,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48832,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49228,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50508,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53290, upper := 53346,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55539,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55540, upper := 55545,
        witness := RowWitness.topPrime 55529
      },
      {
        lower := 59049, upper := 59054,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62508,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63967,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65619,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65620, upper := 65631,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68688,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68988,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 148955, upper := 148975,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 9702, upper := 19404, M := 21
      },
      {
        lower := 19404, upper := 38808, M := 17
      },
      {
        lower := 38808, upper := 77616, M := 14
      },
      {
        lower := 77616, upper := 155232, M := 11
      },
      {
        lower := 155232, upper := 310464, M := 9
      },
      {
        lower := 310464, upper := 620928, M := 7
      },
      {
        lower := 620928, upper := 1241856, M := 6
      },
      {
        lower := 1241856, upper := 2483712, M := 5
      },
      {
        lower := 2483712, upper := 4967424, M := 4
      },
      {
        lower := 4967424, upper := 9934848, M := 3
      },
      {
        lower := 9934848, upper := 19869696, M := 3
      },
      {
        lower := 19869696, upper := 39739392, M := 2
      },
      {
        lower := 39739392, upper := 79478784, M := 2
      },
      {
        lower := 79478784, upper := 158957568, M := 2
      },
      {
        lower := 158957568, upper := 317915136, M := 1
      },
      {
        lower := 317915136, upper := 635830272, M := 1
      },
      {
        lower := 635830272, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 100, r := 33, s := 70,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 202, upper := 298,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 299, upper := 392,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 393, upper := 488,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 489, upper := 586,
        witness := RowWitness.topPrime 487
      },
      {
        lower := 587, upper := 686,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 687, upper := 782,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 783, upper := 872,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 873, upper := 962,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 963, upper := 1052,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1053, upper := 1150,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1151, upper := 1250,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1251, upper := 1348,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1349, upper := 1426,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1427, upper := 1526,
        witness := RowWitness.topPrime 1427
      },
      {
        lower := 1527, upper := 1622,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1623, upper := 1720,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1721, upper := 1820,
        witness := RowWitness.topPrime 1721
      },
      {
        lower := 1821, upper := 1910,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1911, upper := 2006,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2007, upper := 2102,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2103, upper := 2198,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2199, upper := 2278,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2279, upper := 2372,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2373, upper := 2470,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2471, upper := 2566,
        witness := RowWitness.topPrime 2467
      },
      {
        lower := 2567, upper := 2656,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2657, upper := 2756,
        witness := RowWitness.topPrime 2657
      },
      {
        lower := 2757, upper := 2852,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2853, upper := 2950,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2951, upper := 3038,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3039, upper := 3136,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3137, upper := 3236,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3237, upper := 3328,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3329, upper := 3428,
        witness := RowWitness.topPrime 3329
      },
      {
        lower := 3429, upper := 3512,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3513, upper := 3610,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3611, upper := 3706,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3707, upper := 3800,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3801, upper := 3896,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3897, upper := 3988,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3989, upper := 4088,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4089, upper := 4178,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4179, upper := 4276,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4277, upper := 4372,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4373, upper := 4472,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4473, upper := 4562,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4563, upper := 4660,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4661, upper := 4756,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4757, upper := 4850,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4851, upper := 4930,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4931, upper := 5030,
        witness := RowWitness.topPrime 4931
      },
      {
        lower := 5031, upper := 5122,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5123, upper := 5218,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5219, upper := 5308,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5309, upper := 5408,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5409, upper := 5506,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5507, upper := 5606,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5607, upper := 5690,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5691, upper := 5788,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5789, upper := 5882,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5883, upper := 5980,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5981, upper := 6080,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6081, upper := 6178,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6179, upper := 6272,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6273, upper := 6370,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6371, upper := 6466,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6467, upper := 6550,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6551, upper := 6650,
        witness := RowWitness.topPrime 6551
      },
      {
        lower := 6651, upper := 6736,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6737, upper := 6836,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6837, upper := 6932,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6933, upper := 7016,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7017, upper := 7112,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7113, upper := 7208,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7209, upper := 7306,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7307, upper := 7406,
        witness := RowWitness.topPrime 7307
      },
      {
        lower := 7407, upper := 7492,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7493, upper := 7588,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7589, upper := 7688,
        witness := RowWitness.topPrime 7589
      },
      {
        lower := 7689, upper := 7786,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7787, upper := 7858,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7859, upper := 7952,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7953, upper := 8050,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8051, upper := 8138,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8139, upper := 8222,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8223, upper := 8320,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8321, upper := 8416,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8417, upper := 8488,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8489, upper := 8566,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8567, upper := 8662,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8663, upper := 8762,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8763, upper := 8860,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8861, upper := 8960,
        witness := RowWitness.topPrime 8861
      },
      {
        lower := 8961, upper := 9050,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9051, upper := 9148,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9149, upper := 9236,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9237, upper := 9326,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9327, upper := 9422,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9423, upper := 9520,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9521, upper := 9620,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9621, upper := 9718,
        witness := RowWitness.topPrime 9619
      },
      {
        lower := 9719, upper := 9818,
        witness := RowWitness.topPrime 9719
      },
      {
        lower := 9819, upper := 9899,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 10082, upper := 10178,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10179, upper := 10185,
        witness := RowWitness.topPrime 10177
      },
      {
        lower := 10240, upper := 10305,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10666,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10667, upper := 10747,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 11008,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11009, upper := 11084,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11144,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11193,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11236, upper := 11262,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11774, upper := 11842,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11843, upper := 11866,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12005, upper := 12078,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12387,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12420,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12578,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12579, upper := 12581,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 13182, upper := 13221,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13281,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13353,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13550,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13551, upper := 13555,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13810,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13811, upper := 13817,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13851, upper := 13877,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13950,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14415, upper := 14505,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14679,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14740,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14838,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14891,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15220,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15221, upper := 15228,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15376, upper := 15472,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15473, upper := 15478,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16072,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16073, upper := 16078,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16480,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16481, upper := 16483,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16810, upper := 16886,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16887, upper := 16919,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17303, upper := 17397,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17504,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17595,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17675,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18580,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18581, upper := 18589,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18704,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18733,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18818, upper := 18822,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19306,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19307, upper := 19307,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19663, upper := 19760,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19761, upper := 19762,
        witness := RowWitness.topPrime 19759
      },
      {
        lower := 19773, upper := 19782,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19980,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20260,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20261, upper := 20263,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20577, upper := 20634,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20676,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21395,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21962,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21963, upper := 22003,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22189,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22544,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24037, upper := 24128,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24129, upper := 24136,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24428,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24429, upper := 24466,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24664,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25288,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25289, upper := 25314,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26463,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26510,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 26995,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28812, upper := 28816,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29867,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 30998,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31292,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31293, upper := 31304,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31423, upper := 31428,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32867,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33713,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34391, upper := 34394,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34445, upper := 34490,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35344, upper := 35386,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36596,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36597, upper := 36600,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37309,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 39326, upper := 39422,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39423, upper := 39425,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 40401, upper := 40427,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 48013, upper := 48060,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 49152, upper := 49229,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50509,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55540,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55541, upper := 55546,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 58619, upper := 58663,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59055,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63948, upper := 63968,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65620,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65621, upper := 65635,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68689,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68989,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73266,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137880,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146433,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148976,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 9900, upper := 19800, M := 20
      },
      {
        lower := 19800, upper := 39600, M := 16
      },
      {
        lower := 39600, upper := 79200, M := 13
      },
      {
        lower := 79200, upper := 158400, M := 10
      },
      {
        lower := 158400, upper := 316800, M := 8
      },
      {
        lower := 316800, upper := 633600, M := 7
      },
      {
        lower := 633600, upper := 1267200, M := 5
      },
      {
        lower := 1267200, upper := 2534400, M := 4
      },
      {
        lower := 2534400, upper := 5068800, M := 4
      },
      {
        lower := 5068800, upper := 10137600, M := 3
      },
      {
        lower := 10137600, upper := 20275200, M := 2
      },
      {
        lower := 20275200, upper := 40550400, M := 2
      },
      {
        lower := 40550400, upper := 81100800, M := 2
      },
      {
        lower := 81100800, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 101, r := 33, s := 71,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 204, upper := 299,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 300, upper := 393,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 394, upper := 489,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 490, upper := 587,
        witness := RowWitness.topPrime 487
      },
      {
        lower := 588, upper := 687,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 688, upper := 783,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 784, upper := 873,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 874, upper := 963,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 964, upper := 1053,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1054, upper := 1151,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1152, upper := 1251,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1252, upper := 1349,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1350, upper := 1427,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1428, upper := 1527,
        witness := RowWitness.topPrime 1427
      },
      {
        lower := 1528, upper := 1623,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1624, upper := 1721,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1722, upper := 1821,
        witness := RowWitness.topPrime 1721
      },
      {
        lower := 1822, upper := 1911,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1912, upper := 2007,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2008, upper := 2103,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2104, upper := 2199,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2200, upper := 2279,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2280, upper := 2373,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2374, upper := 2471,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2472, upper := 2567,
        witness := RowWitness.topPrime 2467
      },
      {
        lower := 2568, upper := 2657,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2658, upper := 2757,
        witness := RowWitness.topPrime 2657
      },
      {
        lower := 2758, upper := 2853,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2854, upper := 2951,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2952, upper := 3039,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3040, upper := 3137,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3138, upper := 3237,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3238, upper := 3329,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3330, upper := 3429,
        witness := RowWitness.topPrime 3329
      },
      {
        lower := 3430, upper := 3513,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3514, upper := 3611,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3612, upper := 3707,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3708, upper := 3801,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3802, upper := 3897,
        witness := RowWitness.topPrime 3797
      },
      {
        lower := 3898, upper := 3989,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3990, upper := 4089,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4090, upper := 4179,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4180, upper := 4277,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4278, upper := 4373,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4374, upper := 4473,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4474, upper := 4563,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4564, upper := 4661,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4662, upper := 4757,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4758, upper := 4851,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4852, upper := 4931,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4932, upper := 5031,
        witness := RowWitness.topPrime 4931
      },
      {
        lower := 5032, upper := 5123,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5124, upper := 5219,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5220, upper := 5309,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5310, upper := 5409,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5410, upper := 5507,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5508, upper := 5607,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5608, upper := 5691,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5692, upper := 5789,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5790, upper := 5883,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5884, upper := 5981,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5982, upper := 6081,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6082, upper := 6179,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6180, upper := 6273,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6274, upper := 6371,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6372, upper := 6467,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6468, upper := 6551,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6552, upper := 6651,
        witness := RowWitness.topPrime 6551
      },
      {
        lower := 6652, upper := 6737,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6738, upper := 6837,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6838, upper := 6933,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6934, upper := 7017,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7018, upper := 7113,
        witness := RowWitness.topPrime 7013
      },
      {
        lower := 7114, upper := 7209,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7210, upper := 7307,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7308, upper := 7407,
        witness := RowWitness.topPrime 7307
      },
      {
        lower := 7408, upper := 7493,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7494, upper := 7589,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7590, upper := 7689,
        witness := RowWitness.topPrime 7589
      },
      {
        lower := 7690, upper := 7787,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7788, upper := 7859,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7860, upper := 7953,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7954, upper := 8051,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8052, upper := 8139,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8140, upper := 8223,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8224, upper := 8321,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8322, upper := 8417,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8418, upper := 8489,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8490, upper := 8567,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8568, upper := 8663,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8664, upper := 8763,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8764, upper := 8861,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8862, upper := 8961,
        witness := RowWitness.topPrime 8861
      },
      {
        lower := 8962, upper := 9051,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9052, upper := 9149,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9150, upper := 9237,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9238, upper := 9327,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9328, upper := 9423,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9424, upper := 9521,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9522, upper := 9621,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9622, upper := 9719,
        witness := RowWitness.topPrime 9619
      },
      {
        lower := 9720, upper := 9819,
        witness := RowWitness.topPrime 9719
      },
      {
        lower := 9820, upper := 9917,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9918, upper := 10007,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10008, upper := 10107,
        witness := RowWitness.topPrime 10007
      },
      {
        lower := 10108, upper := 10186,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10240, upper := 10306,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10625, upper := 10713,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10714, upper := 10748,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10935, upper := 11009,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11010, upper := 11085,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11145,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11163, upper := 11194,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11236, upper := 11313,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11314, upper := 11350,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11843,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11844, upper := 11867,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12005, upper := 12079,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12388,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12421,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12579,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12580, upper := 12593,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 13182, upper := 13222,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13282,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13409,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13410, upper := 13410,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13454, upper := 13551,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13552, upper := 13556,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13811,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13812, upper := 13818,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13851, upper := 13878,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13951,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14397,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14501,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14502, upper := 14506,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14739, upper := 14741,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14839,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14892,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15221,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15222, upper := 15229,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15360, upper := 15459,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15460, upper := 15479,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15979, upper := 16073,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16074, upper := 16079,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16481,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16482, upper := 16484,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16810, upper := 16887,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16888, upper := 16910,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17303, upper := 17398,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17501,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17502, upper := 17508,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17576, upper := 17596,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17676,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18581,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18582, upper := 18590,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18634, upper := 18705,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18734,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18849,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18850, upper := 18850,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19266,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19761,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19762, upper := 19763,
        witness := RowWitness.topPrime 19759
      },
      {
        lower := 19773, upper := 19783,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19981,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20261,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20262, upper := 20264,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20535, upper := 20633,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20634, upper := 20635,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20677,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21870, upper := 21963,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21964, upper := 21975,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22190,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22569,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22570, upper := 22572,
        witness := RowWitness.topPrime 22567
      },
      {
        lower := 24037, upper := 24129,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24130, upper := 24137,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24429,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24430, upper := 24467,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24665,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25064,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25289,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25290, upper := 25315,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26464,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26511,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26724,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 28125, upper := 28190,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28717, upper := 28772,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28817,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29868,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30820,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30999,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31293,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31294, upper := 31313,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31350,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31429,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32868,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33714,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34469,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34470, upper := 34491,
        witness := RowWitness.topPrime 34469
      },
      {
        lower := 36517, upper := 36597,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36598, upper := 36601,
        witness := RowWitness.topPrime 36587
      },
      {
        lower := 37303, upper := 37310,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37546,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 39326, upper := 39423,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39424, upper := 39426,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 40401, upper := 40428,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41031,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 48013, upper := 48061,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 49152, upper := 49230,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50510,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55541,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55542, upper := 55547,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 58619, upper := 58664,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59056,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62510,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65636,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68690,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68990,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73267,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137881,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 148977,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 10100, upper := 20200, M := 19
      },
      {
        lower := 20200, upper := 40400, M := 15
      },
      {
        lower := 40400, upper := 80800, M := 12
      },
      {
        lower := 80800, upper := 161600, M := 9
      },
      {
        lower := 161600, upper := 323200, M := 7
      },
      {
        lower := 323200, upper := 646400, M := 6
      },
      {
        lower := 646400, upper := 1292800, M := 5
      },
      {
        lower := 1292800, upper := 2585600, M := 4
      },
      {
        lower := 2585600, upper := 5171200, M := 3
      },
      {
        lower := 5171200, upper := 10342400, M := 3
      },
      {
        lower := 10342400, upper := 20684800, M := 2
      },
      {
        lower := 20684800, upper := 41369600, M := 2
      },
      {
        lower := 41369600, upper := 82739200, M := 2
      },
      {
        lower := 82739200, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 102, r := 33, s := 71,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 206, upper := 300,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 301, upper := 394,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 395, upper := 490,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 491, upper := 592,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 593, upper := 694,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 695, upper := 792,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 793, upper := 888,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 889, upper := 988,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 989, upper := 1084,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1085, upper := 1170,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1171, upper := 1272,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1273, upper := 1360,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1361, upper := 1462,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1463, upper := 1560,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1561, upper := 1660,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1661, upper := 1758,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1759, upper := 1860,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1861, upper := 1962,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1963, upper := 2052,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2053, upper := 2154,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2155, upper := 2254,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2255, upper := 2352,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2353, upper := 2452,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2453, upper := 2548,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2549, upper := 2650,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2651, upper := 2748,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2749, upper := 2850,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2851, upper := 2952,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2953, upper := 3054,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3055, upper := 3150,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3151, upper := 3238,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3239, upper := 3330,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3331, upper := 3432,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3433, upper := 3534,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3535, upper := 3634,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3635, upper := 3732,
        witness := RowWitness.topPrime 3631
      },
      {
        lower := 3733, upper := 3834,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3835, upper := 3934,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3935, upper := 4032,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4033, upper := 4128,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4129, upper := 4230,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4231, upper := 4332,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4333, upper := 4428,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4429, upper := 4524,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4525, upper := 4624,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4625, upper := 4722,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4723, upper := 4824,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4825, upper := 4918,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4919, upper := 5020,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5021, upper := 5122,
        witness := RowWitness.topPrime 5021
      },
      {
        lower := 5123, upper := 5220,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5221, upper := 5310,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5311, upper := 5410,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5411, upper := 5508,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5509, upper := 5608,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5609, upper := 5692,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5693, upper := 5794,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5795, upper := 5892,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5893, upper := 5982,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5983, upper := 6082,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6083, upper := 6180,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6181, upper := 6274,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6275, upper := 6372,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6373, upper := 6474,
        witness := RowWitness.topPrime 6373
      },
      {
        lower := 6475, upper := 6574,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6575, upper := 6672,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6673, upper := 6774,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6775, upper := 6864,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6865, upper := 6964,
        witness := RowWitness.topPrime 6863
      },
      {
        lower := 6965, upper := 7062,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7063, upper := 7158,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7159, upper := 7260,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7261, upper := 7354,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7355, upper := 7452,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7453, upper := 7552,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7553, upper := 7650,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7651, upper := 7750,
        witness := RowWitness.topPrime 7649
      },
      {
        lower := 7751, upper := 7842,
        witness := RowWitness.topPrime 7741
      },
      {
        lower := 7843, upper := 7942,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7943, upper := 8038,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8039, upper := 8140,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8141, upper := 8224,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8225, upper := 8322,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8323, upper := 8418,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8419, upper := 8520,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8521, upper := 8622,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8623, upper := 8724,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8725, upper := 8820,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8821, upper := 8922,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8923, upper := 9024,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9025, upper := 9114,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9115, upper := 9210,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9211, upper := 9310,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9311, upper := 9412,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9413, upper := 9514,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9515, upper := 9612,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9613, upper := 9714,
        witness := RowWitness.topPrime 9613
      },
      {
        lower := 9715, upper := 9798,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9799, upper := 9892,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9893, upper := 9988,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9989, upper := 10074,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10075, upper := 10170,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10171, upper := 10270,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10271, upper := 10302,
        witness := RowWitness.topPrime 10271
      },
      {
        lower := 10580, upper := 10668,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10669, upper := 10749,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 11010,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11011, upper := 11086,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11194,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11195, upper := 11210,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11314,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11315, upper := 11351,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11844,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11845, upper := 11868,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11875, upper := 11875,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12005, upper := 12080,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12389,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12493, upper := 12592,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12593, upper := 12594,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 13125, upper := 13222,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13223, upper := 13226,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13283,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13355,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13552,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13553, upper := 13557,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13812,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13813, upper := 13851,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14336, upper := 14428,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14429, upper := 14507,
        witness := RowWitness.topPrime 14423
      },
      {
        lower := 14884, upper := 14893,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15222,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15223, upper := 15230,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15376, upper := 15474,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15475, upper := 15480,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16074,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16075, upper := 16080,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16482,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16483, upper := 16485,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16810, upper := 16888,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16889, upper := 16921,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17399,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17661, upper := 17760,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17761, upper := 17762,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18582,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18583, upper := 18592,
        witness := RowWitness.topPrime 18583
      },
      {
        lower := 18634, upper := 18706,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18735,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18850,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18851, upper := 18851,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19308,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19309, upper := 19309,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19683, upper := 19764,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 19773, upper := 19784,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19982,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20262,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20263, upper := 20273,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20440,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20503,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20634,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20635, upper := 20636,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20678,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21397,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21875, upper := 21972,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21973, upper := 22005,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22191,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22546,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24108,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24109, upper := 24111,
        witness := RowWitness.topPrime 24109
      },
      {
        lower := 24334, upper := 24430,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24431, upper := 24468,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24642, upper := 24677,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25000, upper := 25065,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25290,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25291, upper := 25362,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25363, upper := 25382,
        witness := RowWitness.topPrime 25357
      },
      {
        lower := 26047, upper := 26112,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26465,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26512,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 26997,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28191,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28577, upper := 28662,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28678,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28773,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28818,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29869,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30347,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 31000,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31294,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31295, upper := 31314,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31351,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31430,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31433, upper := 31498,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31499, upper := 31524,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32040,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32869,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33715,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34396,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34445, upper := 34476,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35232,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35388,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36598,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36599, upper := 36602,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 37303, upper := 37311,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37404,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37450,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37547,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37601,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37654,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39366, upper := 39427,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 39605, upper := 39647,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40429,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40905,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41032,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43788,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48062,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48769,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48835,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50511,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55542,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55543, upper := 55548,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 58619, upper := 58665,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62511,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65536, upper := 65622,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65623, upper := 65634,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68691,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68991,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73268,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 146410, upper := 146435,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148978,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 10302, upper := 20604, M := 23
      },
      {
        lower := 20604, upper := 41208, M := 19
      },
      {
        lower := 41208, upper := 82416, M := 15
      },
      {
        lower := 82416, upper := 164832, M := 12
      },
      {
        lower := 164832, upper := 329664, M := 10
      },
      {
        lower := 329664, upper := 659328, M := 8
      },
      {
        lower := 659328, upper := 1318656, M := 7
      },
      {
        lower := 1318656, upper := 2637312, M := 6
      },
      {
        lower := 2637312, upper := 5274624, M := 5
      },
      {
        lower := 5274624, upper := 10549248, M := 4
      },
      {
        lower := 10549248, upper := 21098496, M := 3
      },
      {
        lower := 21098496, upper := 42196992, M := 3
      },
      {
        lower := 42196992, upper := 84393984, M := 2
      },
      {
        lower := 84393984, upper := 168787968, M := 2
      },
      {
        lower := 168787968, upper := 337575936, M := 2
      },
      {
        lower := 337575936, upper := 675151872, M := 1
      },
      {
        lower := 675151872, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 103, r := 34, s := 72,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 208, upper := 301,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 302, upper := 395,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 396, upper := 491,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 492, upper := 593,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 594, upper := 695,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 696, upper := 793,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 794, upper := 889,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 890, upper := 989,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 990, upper := 1085,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1086, upper := 1171,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1172, upper := 1273,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1274, upper := 1361,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1362, upper := 1463,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1464, upper := 1561,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1562, upper := 1661,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1662, upper := 1759,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1760, upper := 1861,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1862, upper := 1963,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1964, upper := 2053,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2054, upper := 2155,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2156, upper := 2255,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2256, upper := 2353,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2354, upper := 2453,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2454, upper := 2549,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2550, upper := 2651,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2652, upper := 2749,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2750, upper := 2851,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2852, upper := 2953,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 2954, upper := 3055,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3056, upper := 3151,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3152, upper := 3239,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3240, upper := 3331,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3332, upper := 3433,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3434, upper := 3535,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3536, upper := 3635,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3636, upper := 3733,
        witness := RowWitness.topPrime 3631
      },
      {
        lower := 3734, upper := 3835,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3836, upper := 3935,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3936, upper := 4033,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4034, upper := 4129,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4130, upper := 4231,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4232, upper := 4333,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4334, upper := 4429,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4430, upper := 4525,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4526, upper := 4625,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4626, upper := 4723,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4724, upper := 4825,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4826, upper := 4919,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4920, upper := 5021,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5022, upper := 5123,
        witness := RowWitness.topPrime 5021
      },
      {
        lower := 5124, upper := 5221,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5222, upper := 5311,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5312, upper := 5411,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5412, upper := 5509,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5510, upper := 5609,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5610, upper := 5693,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5694, upper := 5795,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5796, upper := 5893,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5894, upper := 5983,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5984, upper := 6083,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6084, upper := 6181,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6182, upper := 6275,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6276, upper := 6373,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6374, upper := 6475,
        witness := RowWitness.topPrime 6373
      },
      {
        lower := 6476, upper := 6575,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6576, upper := 6673,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6674, upper := 6775,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6776, upper := 6865,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6866, upper := 6965,
        witness := RowWitness.topPrime 6863
      },
      {
        lower := 6966, upper := 7063,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7064, upper := 7159,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7160, upper := 7261,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7262, upper := 7355,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7356, upper := 7453,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7454, upper := 7553,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7554, upper := 7651,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7652, upper := 7751,
        witness := RowWitness.topPrime 7649
      },
      {
        lower := 7752, upper := 7843,
        witness := RowWitness.topPrime 7741
      },
      {
        lower := 7844, upper := 7943,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7944, upper := 8039,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8040, upper := 8141,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8142, upper := 8225,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8226, upper := 8323,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8324, upper := 8419,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8420, upper := 8521,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8522, upper := 8623,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8624, upper := 8725,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8726, upper := 8821,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8822, upper := 8923,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8924, upper := 9025,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9026, upper := 9115,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9116, upper := 9211,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9212, upper := 9311,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9312, upper := 9413,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9414, upper := 9515,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9516, upper := 9613,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9614, upper := 9715,
        witness := RowWitness.topPrime 9613
      },
      {
        lower := 9716, upper := 9799,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9800, upper := 9893,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9894, upper := 9989,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9990, upper := 10075,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10076, upper := 10171,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10172, upper := 10271,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10272, upper := 10373,
        witness := RowWitness.topPrime 10271
      },
      {
        lower := 10374, upper := 10471,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10472, upper := 10505,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10580, upper := 10669,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10670, upper := 10750,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10752, upper := 10760,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10935, upper := 11011,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11012, upper := 11087,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11195,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11196, upper := 11211,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11236, upper := 11315,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11316, upper := 11352,
        witness := RowWitness.topPrime 11311
      },
      {
        lower := 11774, upper := 11845,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11846, upper := 11869,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11875, upper := 11876,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12005, upper := 12081,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12390,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12423,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12581,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12582, upper := 12595,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 13125, upper := 13223,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13224, upper := 13227,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13284,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13411,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13412, upper := 13412,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13454, upper := 13553,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13554, upper := 13558,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13813,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13814, upper := 13820,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13851, upper := 13880,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13924, upper := 13953,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14399,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14503,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14504, upper := 14508,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14641, upper := 14682,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14743,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14841,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14894,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15223,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15224, upper := 15231,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15360, upper := 15461,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15462, upper := 15481,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16075,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16076, upper := 16081,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16483,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16484, upper := 16486,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16810, upper := 16889,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16890, upper := 16922,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17400,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17405, upper := 17405,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17408, upper := 17503,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17504, upper := 17510,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17576, upper := 17598,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17761,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17762, upper := 17763,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18583,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18584, upper := 18592,
        witness := RowWitness.topPrime 18583
      },
      {
        lower := 18634, upper := 18707,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18736,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18851,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18852, upper := 18852,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19309,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19310, upper := 19310,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19763,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19764, upper := 19765,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19773, upper := 19785,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19983,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20263,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20264, upper := 20274,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20441,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20504,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20635,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20636, upper := 20637,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20679,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21398,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21965,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21966, upper := 22006,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22192,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22571,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22572, upper := 22574,
        witness := RowWitness.topPrime 22571
      },
      {
        lower := 22627, upper := 22630,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 24037, upper := 24131,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24132, upper := 24139,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24431,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24432, upper := 24469,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24667,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25066,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25291,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25292, upper := 25317,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26466,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26513,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26726,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26998,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28192,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28227,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28663,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28679,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28774,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28819,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29870,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30695,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30696, upper := 30705,
        witness := RowWitness.topPrime 30689
      },
      {
        lower := 30720, upper := 30720,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30822,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31001,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31295,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31296, upper := 31315,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31352,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31431,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31433, upper := 31499,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31500, upper := 31525,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 32805, upper := 32870,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33716,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34471,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34472, upper := 34493,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 34816, upper := 34909,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34910, upper := 34912,
        witness := RowWitness.topPrime 34897
      },
      {
        lower := 35344, upper := 35389,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36599,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36600, upper := 36603,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 37210, upper := 37281,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37312,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37405,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37451,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37548,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37602,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37655,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39425,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39426, upper := 39428,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 40401, upper := 40430,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40906,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41033,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43789,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48063,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48770,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48836,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49232,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50512,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53290, upper := 53350,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55543,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55544, upper := 55549,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 58619, upper := 58666,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59058,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62512,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63971,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65623,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65624, upper := 65638,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68692,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68992,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73269,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137883,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146436,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148979,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 10506, upper := 21012, M := 21
      },
      {
        lower := 21012, upper := 42024, M := 17
      },
      {
        lower := 42024, upper := 84048, M := 14
      },
      {
        lower := 84048, upper := 168096, M := 11
      },
      {
        lower := 168096, upper := 336192, M := 9
      },
      {
        lower := 336192, upper := 672384, M := 7
      },
      {
        lower := 672384, upper := 1344768, M := 6
      },
      {
        lower := 1344768, upper := 2689536, M := 5
      },
      {
        lower := 2689536, upper := 5379072, M := 4
      },
      {
        lower := 5379072, upper := 10758144, M := 3
      },
      {
        lower := 10758144, upper := 21516288, M := 3
      },
      {
        lower := 21516288, upper := 43032576, M := 2
      },
      {
        lower := 43032576, upper := 86065152, M := 2
      },
      {
        lower := 86065152, upper := 172130304, M := 2
      },
      {
        lower := 172130304, upper := 344260608, M := 1
      },
      {
        lower := 344260608, upper := 688521216, M := 1
      },
      {
        lower := 688521216, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 104, r := 34, s := 72,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 210, upper := 302,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 303, upper := 396,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 397, upper := 500,
        witness := RowWitness.topPrime 397
      },
      {
        lower := 501, upper := 602,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 603, upper := 704,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 705, upper := 804,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 805, upper := 900,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 901, upper := 990,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 991, upper := 1094,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1095, upper := 1196,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1197, upper := 1296,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1297, upper := 1400,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1401, upper := 1502,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1503, upper := 1602,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1603, upper := 1704,
        witness := RowWitness.topPrime 1601
      },
      {
        lower := 1705, upper := 1802,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1803, upper := 1904,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1905, upper := 2004,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 2005, upper := 2106,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2107, upper := 2202,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2203, upper := 2306,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2307, upper := 2400,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2401, upper := 2502,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2503, upper := 2606,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2607, upper := 2696,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2697, upper := 2796,
        witness := RowWitness.topPrime 2693
      },
      {
        lower := 2797, upper := 2900,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2901, upper := 3000,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3001, upper := 3104,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3105, upper := 3192,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3193, upper := 3294,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3295, upper := 3374,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3375, upper := 3476,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3477, upper := 3572,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3573, upper := 3674,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3675, upper := 3776,
        witness := RowWitness.topPrime 3673
      },
      {
        lower := 3777, upper := 3872,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3873, upper := 3966,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3967, upper := 4070,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4071, upper := 4160,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4161, upper := 4262,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4263, upper := 4364,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4365, upper := 4466,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4467, upper := 4566,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4567, upper := 4670,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4671, upper := 4766,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4767, upper := 4862,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4863, upper := 4964,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4965, upper := 5060,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5061, upper := 5162,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5163, upper := 5256,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5257, upper := 5340,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5341, upper := 5436,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5437, upper := 5540,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5541, upper := 5634,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5635, upper := 5726,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5727, upper := 5820,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5821, upper := 5924,
        witness := RowWitness.topPrime 5821
      },
      {
        lower := 5925, upper := 6026,
        witness := RowWitness.topPrime 5923
      },
      {
        lower := 6027, upper := 6114,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6115, upper := 6216,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6217, upper := 6320,
        witness := RowWitness.topPrime 6217
      },
      {
        lower := 6321, upper := 6420,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6421, upper := 6524,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6525, upper := 6624,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6625, upper := 6722,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6723, upper := 6822,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6823, upper := 6926,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6927, upper := 7020,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7021, upper := 7122,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7123, upper := 7224,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7225, upper := 7322,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7323, upper := 7424,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7425, upper := 7520,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7521, upper := 7620,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7621, upper := 7724,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7725, upper := 7826,
        witness := RowWitness.topPrime 7723
      },
      {
        lower := 7827, upper := 7926,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7927, upper := 8030,
        witness := RowWitness.topPrime 7927
      },
      {
        lower := 8031, upper := 8120,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8121, upper := 8220,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8221, upper := 8324,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8325, upper := 8420,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8421, upper := 8522,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8523, upper := 8624,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8625, upper := 8726,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8727, upper := 8822,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8823, upper := 8924,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8925, upper := 9026,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9027, upper := 9116,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9117, upper := 9212,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9213, upper := 9312,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9313, upper := 9414,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9415, upper := 9516,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9517, upper := 9614,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9615, upper := 9716,
        witness := RowWitness.topPrime 9613
      },
      {
        lower := 9717, upper := 9800,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9801, upper := 9894,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9895, upper := 9990,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9991, upper := 10076,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10077, upper := 10172,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10173, upper := 10272,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10273, upper := 10376,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10377, upper := 10472,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10473, upper := 10566,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10567, upper := 10670,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10671, upper := 10751,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 11012,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11013, upper := 11038,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11045, upper := 11055,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11094, upper := 11196,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11197, upper := 11212,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11236, upper := 11316,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11317, upper := 11339,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11664, upper := 11741,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11767, upper := 11767,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11774, upper := 11846,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11847, upper := 11870,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11875, upper := 11877,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12005, upper := 12082,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12391,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12393, upper := 12424,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12482, upper := 12582,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12583, upper := 12596,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 12696, upper := 12718,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 13125, upper := 13224,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13225, upper := 13228,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13352,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13353, upper := 13357,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13554,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13555, upper := 13559,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13814,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13815, upper := 13881,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13954,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14375, upper := 14400,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14504,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14505, upper := 14509,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14641, upper := 14683,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14744,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14842,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14895,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15103,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15224,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15225, upper := 15232,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15376, upper := 15412,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15463, upper := 15479,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16076,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16077, upper := 16090,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16337, upper := 16353,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16484,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16485, upper := 16487,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16807, upper := 16890,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16891, upper := 16923,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17401,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17405, upper := 17406,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17508,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17672, upper := 17764,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18328,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18584,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18585, upper := 18594,
        witness := RowWitness.topPrime 18583
      },
      {
        lower := 18605, upper := 18605,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18708,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18737,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18852,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18853, upper := 18853,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19310,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19311, upper := 19311,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19764,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19765, upper := 19766,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19984,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20264,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20265, upper := 20284,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20442,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20638,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20680,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21245,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21386,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21387, upper := 21399,
        witness := RowWitness.topPrime 21383
      },
      {
        lower := 21870, upper := 21966,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21967, upper := 21978,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22193,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22548,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24110,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24111, upper := 24140,
        witness := RowWitness.topPrime 24109
      },
      {
        lower := 24334, upper := 24432,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24433, upper := 24470,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24642, upper := 24668,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25000, upper := 25067,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25292,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25293, upper := 25364,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25365, upper := 25384,
        witness := RowWitness.topPrime 25357
      },
      {
        lower := 26047, upper := 26114,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26508, upper := 26514,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26723,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 26999,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27483,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27951, upper := 27951,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28193,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28228,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28664,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28832,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28833, upper := 28852,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29871,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30349,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30696,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30697, upper := 30706,
        witness := RowWitness.topPrime 30697
      },
      {
        lower := 30926, upper := 31002,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31296,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31297, upper := 31316,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31353,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31500,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31501, upper := 31526,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32042,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32871,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33722,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33723, upper := 33723,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34375, upper := 34472,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34473, upper := 34494,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35301, upper := 35394,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35395, upper := 35404,
        witness := RowWitness.topPrime 35393
      },
      {
        lower := 36015, upper := 36015,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36600,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36601, upper := 36604,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 36982, upper := 37082,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37083, upper := 37083,
        witness := RowWitness.topPrime 37061
      },
      {
        lower := 37210, upper := 37282,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37313,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37549,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37603,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37656,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39426,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39427, upper := 39429,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 40401, upper := 40431,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40678, upper := 40728,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40817, upper := 40907,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 43750, upper := 43790,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 44993,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48064,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48771,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48837,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50000, upper := 50031,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50513,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50665,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 53125, upper := 53148,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 55451, upper := 55544,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55545, upper := 55550,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 56250, upper := 56272,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 58619, upper := 58667,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59059,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59639,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62513,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63972,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65624,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65625, upper := 65639,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68693,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68993,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73270,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85264, upper := 85272,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85362,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85363, upper := 85367,
        witness := RowWitness.topPrime 85363
      },
      {
        lower := 91854, upper := 91912,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 102973, upper := 102988,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 122412, upper := 122420,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131829,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137884,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137945,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 146410, upper := 146437,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148980,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 10712, upper := 21424, M := 26
      },
      {
        lower := 21424, upper := 42848, M := 22
      },
      {
        lower := 42848, upper := 85696, M := 18
      },
      {
        lower := 85696, upper := 171392, M := 15
      },
      {
        lower := 171392, upper := 342784, M := 12
      },
      {
        lower := 342784, upper := 685568, M := 10
      },
      {
        lower := 685568, upper := 1371136, M := 8
      },
      {
        lower := 1371136, upper := 2742272, M := 7
      },
      {
        lower := 2742272, upper := 5484544, M := 6
      },
      {
        lower := 5484544, upper := 10969088, M := 5
      },
      {
        lower := 10969088, upper := 21938176, M := 4
      },
      {
        lower := 21938176, upper := 43876352, M := 4
      },
      {
        lower := 43876352, upper := 87752704, M := 3
      },
      {
        lower := 87752704, upper := 175505408, M := 3
      },
      {
        lower := 175505408, upper := 351010816, M := 2
      },
      {
        lower := 351010816, upper := 702021632, M := 2
      },
      {
        lower := 702021632, upper := 1404043264, M := 2
      },
      {
        lower := 1404043264, upper := 2808086528, M := 1
      },
      {
        lower := 2808086528, upper := 5616173056, M := 1
      },
      {
        lower := 5616173056, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 105, r := 34, s := 73,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 212, upper := 315,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 316, upper := 417,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 418, upper := 513,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 514, upper := 613,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 614, upper := 717,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 718, upper := 813,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 814, upper := 915,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 916, upper := 1015,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 1016, upper := 1117,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1118, upper := 1221,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1222, upper := 1321,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1322, upper := 1425,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1426, upper := 1527,
        witness := RowWitness.topPrime 1423
      },
      {
        lower := 1528, upper := 1627,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1628, upper := 1731,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1732, upper := 1827,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1828, upper := 1927,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1928, upper := 2017,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2018, upper := 2121,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2122, upper := 2217,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2218, upper := 2317,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2318, upper := 2415,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2416, upper := 2515,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2516, upper := 2607,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2608, upper := 2697,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2698, upper := 2797,
        witness := RowWitness.topPrime 2693
      },
      {
        lower := 2798, upper := 2901,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2902, upper := 3001,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3002, upper := 3105,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3106, upper := 3193,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3194, upper := 3295,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3296, upper := 3375,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3376, upper := 3477,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3478, upper := 3573,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3574, upper := 3675,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3676, upper := 3777,
        witness := RowWitness.topPrime 3673
      },
      {
        lower := 3778, upper := 3873,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3874, upper := 3967,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3968, upper := 4071,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4072, upper := 4161,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4162, upper := 4263,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4264, upper := 4365,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4366, upper := 4467,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4468, upper := 4567,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4568, upper := 4671,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4672, upper := 4767,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4768, upper := 4863,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4864, upper := 4965,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4966, upper := 5061,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5062, upper := 5163,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5164, upper := 5257,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5258, upper := 5341,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5342, upper := 5437,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5438, upper := 5541,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5542, upper := 5635,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5636, upper := 5727,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5728, upper := 5821,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5822, upper := 5925,
        witness := RowWitness.topPrime 5821
      },
      {
        lower := 5926, upper := 6027,
        witness := RowWitness.topPrime 5923
      },
      {
        lower := 6028, upper := 6115,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6116, upper := 6217,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6218, upper := 6321,
        witness := RowWitness.topPrime 6217
      },
      {
        lower := 6322, upper := 6421,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6422, upper := 6525,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6526, upper := 6625,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6626, upper := 6723,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6724, upper := 6823,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6824, upper := 6927,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6928, upper := 7021,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7022, upper := 7123,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7124, upper := 7225,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7226, upper := 7323,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7324, upper := 7425,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7426, upper := 7521,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7522, upper := 7621,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7622, upper := 7725,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7726, upper := 7827,
        witness := RowWitness.topPrime 7723
      },
      {
        lower := 7828, upper := 7927,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7928, upper := 8031,
        witness := RowWitness.topPrime 7927
      },
      {
        lower := 8032, upper := 8121,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8122, upper := 8221,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8222, upper := 8325,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8326, upper := 8421,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8422, upper := 8523,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8524, upper := 8625,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8626, upper := 8727,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8728, upper := 8823,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8824, upper := 8925,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8926, upper := 9027,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9028, upper := 9117,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9118, upper := 9213,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9214, upper := 9313,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9314, upper := 9415,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9416, upper := 9517,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9518, upper := 9615,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9616, upper := 9717,
        witness := RowWitness.topPrime 9613
      },
      {
        lower := 9718, upper := 9801,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9802, upper := 9895,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9896, upper := 9991,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9992, upper := 10077,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10078, upper := 10173,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10174, upper := 10273,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10274, upper := 10377,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10378, upper := 10473,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10474, upper := 10567,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10568, upper := 10671,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10672, upper := 10771,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10772, upper := 10875,
        witness := RowWitness.topPrime 10771
      },
      {
        lower := 10876, upper := 10919,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 10935, upper := 11013,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11014, upper := 11089,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11197,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11198, upper := 11213,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11236, upper := 11317,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11318, upper := 11340,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11774, upper := 11847,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11848, upper := 11878,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12321, upper := 12392,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12493, upper := 12595,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12596, upper := 12597,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12696, upper := 12719,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12800, upper := 12800,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 13182, upper := 13281,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13282, upper := 13371,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13372, upper := 13414,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13555,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13556, upper := 13560,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13815,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13816, upper := 13822,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14336, upper := 14401,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14440,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14739, upper := 14745,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14843,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14896,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15225,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15226, upper := 15233,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15360, upper := 15463,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15464, upper := 15483,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16077,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16078, upper := 16083,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16485,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16486, upper := 16488,
        witness := RowWitness.topPrime 16481
      },
      {
        lower := 16810, upper := 16891,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16892, upper := 16924,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17402,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17405, upper := 17505,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17506, upper := 17512,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17576, upper := 17600,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17763,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17764, upper := 17765,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18585,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18586, upper := 18595,
        witness := RowWitness.topPrime 18583
      },
      {
        lower := 18605, upper := 18606,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18709,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18738,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18818, upper := 18827,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19220, upper := 19270,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19765,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19766, upper := 19767,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19773, upper := 19787,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19985,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20265,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20266, upper := 20285,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20443,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20506,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20637,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20638, upper := 20639,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 20667, upper := 20681,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21246,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21387,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21388, upper := 21400,
        witness := RowWitness.topPrime 21383
      },
      {
        lower := 21904, upper := 21957,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 21970, upper := 22008,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22194,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22573,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22574, upper := 22576,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22632,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 24037, upper := 24062,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24334, upper := 24433,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24434, upper := 24471,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24675,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24676, upper := 24680,
        witness := RowWitness.topPrime 24671
      },
      {
        lower := 25215, upper := 25293,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25294, upper := 25365,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25366, upper := 25385,
        witness := RowWitness.topPrime 25357
      },
      {
        lower := 26047, upper := 26115,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26624, upper := 26701,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26702, upper := 26728,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26934, upper := 27000,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27484,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28577, upper := 28665,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28681,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28776,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29872,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30350,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30758, upper := 30824,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31003,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31309,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31329, upper := 31354,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31501,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31502, upper := 31527,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32043,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32872,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33723,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33724, upper := 33724,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34391, upper := 34399,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34445, upper := 34495,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34911,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34912, upper := 34914,
        witness := RowWitness.topPrime 34897
      },
      {
        lower := 35152, upper := 35235,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35391,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36601,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36602, upper := 36605,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 37303, upper := 37314,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37407,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37453,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37636, upper := 37657,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39427,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39428, upper := 39430,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39650,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40432,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41035,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41847,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 44944, upper := 44994,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48065,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48772,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48838,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49234,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 53290, upper := 53352,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55545,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55546, upper := 55551,
        witness := RowWitness.topPrime 55541
      },
      {
        lower := 58619, upper := 58668,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59060,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59640,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 63948, upper := 63973,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65625,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65626, upper := 65637,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68694,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68994,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73271,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73799,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85264, upper := 85273,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85697, upper := 85787,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 122412, upper := 122421,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131830,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137917, upper := 137946,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142909,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146438,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148981,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327784,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 10920, upper := 21840, M := 25
      },
      {
        lower := 21840, upper := 43680, M := 20
      },
      {
        lower := 43680, upper := 87360, M := 17
      },
      {
        lower := 87360, upper := 174720, M := 14
      },
      {
        lower := 174720, upper := 349440, M := 11
      },
      {
        lower := 349440, upper := 698880, M := 9
      },
      {
        lower := 698880, upper := 1397760, M := 8
      },
      {
        lower := 1397760, upper := 2795520, M := 6
      },
      {
        lower := 2795520, upper := 5591040, M := 5
      },
      {
        lower := 5591040, upper := 11182080, M := 4
      },
      {
        lower := 11182080, upper := 22364160, M := 4
      },
      {
        lower := 22364160, upper := 44728320, M := 3
      },
      {
        lower := 44728320, upper := 89456640, M := 3
      },
      {
        lower := 89456640, upper := 178913280, M := 2
      },
      {
        lower := 178913280, upper := 357826560, M := 2
      },
      {
        lower := 357826560, upper := 715653120, M := 2
      },
      {
        lower := 715653120, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 106, r := 35, s := 74,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 214, upper := 316,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 317, upper := 422,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 423, upper := 526,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 527, upper := 628,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 629, upper := 724,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 725, upper := 824,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 825, upper := 928,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 929, upper := 1034,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1035, upper := 1138,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1139, upper := 1234,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1235, upper := 1336,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1337, upper := 1432,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1433, upper := 1538,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1539, upper := 1636,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1637, upper := 1742,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1743, upper := 1846,
        witness := RowWitness.topPrime 1741
      },
      {
        lower := 1847, upper := 1952,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1953, upper := 2056,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2057, upper := 2158,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2159, upper := 2258,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2259, upper := 2356,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2357, upper := 2462,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2463, upper := 2564,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2565, upper := 2662,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2663, upper := 2768,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2769, upper := 2872,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2873, upper := 2966,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2967, upper := 3068,
        witness := RowWitness.topPrime 2963
      },
      {
        lower := 3069, upper := 3172,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3173, upper := 3274,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3275, upper := 3376,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3377, upper := 3478,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3479, upper := 3574,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3575, upper := 3676,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3677, upper := 3782,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3783, upper := 3884,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3885, upper := 3986,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3987, upper := 4072,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4073, upper := 4178,
        witness := RowWitness.topPrime 4073
      },
      {
        lower := 4179, upper := 4282,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4283, upper := 4388,
        witness := RowWitness.topPrime 4283
      },
      {
        lower := 4389, upper := 4478,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4479, upper := 4568,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4569, upper := 4672,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4673, upper := 4778,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4779, upper := 4864,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4865, upper := 4966,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4967, upper := 5072,
        witness := RowWitness.topPrime 4967
      },
      {
        lower := 5073, upper := 5164,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5165, upper := 5258,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5259, upper := 5342,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5343, upper := 5438,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5439, upper := 5542,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5543, upper := 5636,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5637, upper := 5728,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5729, upper := 5822,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5823, upper := 5926,
        witness := RowWitness.topPrime 5821
      },
      {
        lower := 5927, upper := 6032,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6033, upper := 6134,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6135, upper := 6238,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6239, upper := 6334,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6335, upper := 6434,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6435, upper := 6532,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6533, upper := 6634,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6635, upper := 6724,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6725, upper := 6824,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6825, upper := 6928,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6929, upper := 7022,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7023, upper := 7124,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7125, upper := 7226,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7227, upper := 7324,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7325, upper := 7426,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7427, upper := 7522,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7523, upper := 7628,
        witness := RowWitness.topPrime 7523
      },
      {
        lower := 7629, upper := 7726,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7727, upper := 7832,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7833, upper := 7934,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7935, upper := 8038,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8039, upper := 8144,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8145, upper := 8228,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8229, upper := 8326,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8327, upper := 8422,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8423, upper := 8528,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8529, upper := 8632,
        witness := RowWitness.topPrime 8527
      },
      {
        lower := 8633, upper := 8734,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8735, upper := 8836,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8837, upper := 8942,
        witness := RowWitness.topPrime 8837
      },
      {
        lower := 8943, upper := 9046,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9047, upper := 9148,
        witness := RowWitness.topPrime 9043
      },
      {
        lower := 9149, upper := 9242,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9243, upper := 9346,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9347, upper := 9448,
        witness := RowWitness.topPrime 9343
      },
      {
        lower := 9449, upper := 9544,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9545, upper := 9644,
        witness := RowWitness.topPrime 9539
      },
      {
        lower := 9645, upper := 9748,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9749, upper := 9854,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9855, upper := 9956,
        witness := RowWitness.topPrime 9851
      },
      {
        lower := 9957, upper := 10054,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10055, upper := 10144,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10145, upper := 10246,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10247, upper := 10352,
        witness := RowWitness.topPrime 10247
      },
      {
        lower := 10353, upper := 10448,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10449, upper := 10538,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10539, upper := 10636,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10637, upper := 10736,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10737, upper := 10838,
        witness := RowWitness.topPrime 10733
      },
      {
        lower := 10839, upper := 10942,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10943, upper := 11044,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11045, upper := 11132,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11133, upper := 11214,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11250, upper := 11348,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11349, upper := 11355,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11664, upper := 11743,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11767, upper := 11769,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11774, upper := 11848,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11849, upper := 11872,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11875, upper := 11879,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11979, upper := 11980,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12005, upper := 12084,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12406,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12407, upper := 12426,
        witness := RowWitness.topPrime 12401
      },
      {
        lower := 12482, upper := 12584,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12585, upper := 12598,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13125, upper := 13226,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13227, upper := 13230,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13287,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13359,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13454, upper := 13556,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13557, upper := 13561,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13816,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13817, upper := 13883,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13956,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14432,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14433, upper := 14511,
        witness := RowWitness.topPrime 14431
      },
      {
        lower := 14641, upper := 14685,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14746,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14844,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14897,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15226,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15227, upper := 15234,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15376, upper := 15478,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15479, upper := 15484,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16078,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16079, upper := 16092,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16486,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16487, upper := 16489,
        witness := RowWitness.topPrime 16487
      },
      {
        lower := 16807, upper := 16892,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16893, upper := 16915,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17403,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17405, upper := 17408,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17510,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17601,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17764,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17765, upper := 17766,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18586,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18587, upper := 18596,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18607,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18710,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18739,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18854,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18855, upper := 18855,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19312,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19313, upper := 19313,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19683, upper := 19757,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 19773, upper := 19788,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19986,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20266,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20267, upper := 20277,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20444,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20507,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20638,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20639, upper := 20640,
        witness := RowWitness.topPrime 20639
      },
      {
        lower := 20667, upper := 20682,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21247,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21388,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21389, upper := 21401,
        witness := RowWitness.topPrime 21383
      },
      {
        lower := 21870, upper := 21968,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21969, upper := 22009,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22198,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22199, upper := 22208,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 24010, upper := 24112,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24113, upper := 24142,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24334, upper := 24434,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24435, upper := 24472,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24676,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24677, upper := 24681,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 25000, upper := 25069,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25294,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25295, upper := 25320,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26047, upper := 26116,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26469,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26516,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27001,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28227, upper := 28230,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28666,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28682,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28777,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28822,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29873,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30351,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30698,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30699, upper := 30708,
        witness := RowWitness.topPrime 30697
      },
      {
        lower := 31213, upper := 31298,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31299, upper := 31318,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31355,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31502,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31503, upper := 31528,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32044,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32873,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34375, upper := 34474,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34475, upper := 34496,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35152, upper := 35236,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35392,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36017,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 37210, upper := 37284,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37315,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37408,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37454,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37551,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37553, upper := 37605,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37658,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39366, upper := 39409,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 39605, upper := 39651,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40433,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40909,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41036,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41848,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43792,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 48013, upper := 48066,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48773,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48839,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49235,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50515,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 55451, upper := 55546,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55547, upper := 55552,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 58619, upper := 58669,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59061,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62515,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63974,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65626,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65627, upper := 65641,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68695,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68995,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73272,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137886,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146439,
        witness := RowWitness.topPrime 146407
      }
    ],
    layers := [
      {
        lower := 11130, upper := 22260, M := 23
      },
      {
        lower := 22260, upper := 44520, M := 19
      },
      {
        lower := 44520, upper := 89040, M := 15
      },
      {
        lower := 89040, upper := 178080, M := 12
      },
      {
        lower := 178080, upper := 356160, M := 10
      },
      {
        lower := 356160, upper := 712320, M := 8
      },
      {
        lower := 712320, upper := 1424640, M := 7
      },
      {
        lower := 1424640, upper := 2849280, M := 6
      },
      {
        lower := 2849280, upper := 5698560, M := 5
      },
      {
        lower := 5698560, upper := 11397120, M := 4
      },
      {
        lower := 11397120, upper := 22794240, M := 3
      },
      {
        lower := 22794240, upper := 45588480, M := 3
      },
      {
        lower := 45588480, upper := 91176960, M := 2
      },
      {
        lower := 91176960, upper := 182353920, M := 2
      },
      {
        lower := 182353920, upper := 364707840, M := 2
      },
      {
        lower := 364707840, upper := 729415680, M := 1
      },
      {
        lower := 729415680, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 107, r := 35, s := 75,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 216, upper := 317,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 318, upper := 423,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 424, upper := 527,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 528, upper := 629,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 630, upper := 725,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 726, upper := 825,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 826, upper := 929,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 930, upper := 1035,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1036, upper := 1139,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1140, upper := 1235,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1236, upper := 1337,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1338, upper := 1433,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1434, upper := 1539,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1540, upper := 1637,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1638, upper := 1743,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1744, upper := 1847,
        witness := RowWitness.topPrime 1741
      },
      {
        lower := 1848, upper := 1953,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1954, upper := 2057,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2058, upper := 2159,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2160, upper := 2259,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2260, upper := 2357,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2358, upper := 2463,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2464, upper := 2565,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2566, upper := 2663,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2664, upper := 2769,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2770, upper := 2873,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2874, upper := 2967,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2968, upper := 3069,
        witness := RowWitness.topPrime 2963
      },
      {
        lower := 3070, upper := 3173,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3174, upper := 3275,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3276, upper := 3377,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3378, upper := 3479,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3480, upper := 3575,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3576, upper := 3677,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3678, upper := 3783,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3784, upper := 3885,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3886, upper := 3987,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3988, upper := 4073,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4074, upper := 4179,
        witness := RowWitness.topPrime 4073
      },
      {
        lower := 4180, upper := 4283,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4284, upper := 4389,
        witness := RowWitness.topPrime 4283
      },
      {
        lower := 4390, upper := 4479,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4480, upper := 4569,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4570, upper := 4673,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4674, upper := 4779,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4780, upper := 4865,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4866, upper := 4967,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4968, upper := 5073,
        witness := RowWitness.topPrime 4967
      },
      {
        lower := 5074, upper := 5165,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5166, upper := 5259,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5260, upper := 5343,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5344, upper := 5439,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5440, upper := 5543,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5544, upper := 5637,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5638, upper := 5729,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5730, upper := 5823,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5824, upper := 5927,
        witness := RowWitness.topPrime 5821
      },
      {
        lower := 5928, upper := 6033,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6034, upper := 6135,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6136, upper := 6239,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6240, upper := 6335,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6336, upper := 6435,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6436, upper := 6533,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6534, upper := 6635,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6636, upper := 6725,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6726, upper := 6825,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6826, upper := 6929,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6930, upper := 7023,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7024, upper := 7125,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7126, upper := 7227,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7228, upper := 7325,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7326, upper := 7427,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7428, upper := 7523,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7524, upper := 7629,
        witness := RowWitness.topPrime 7523
      },
      {
        lower := 7630, upper := 7727,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7728, upper := 7833,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7834, upper := 7935,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7936, upper := 8039,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8040, upper := 8145,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8146, upper := 8229,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8230, upper := 8327,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8328, upper := 8423,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8424, upper := 8529,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8530, upper := 8633,
        witness := RowWitness.topPrime 8527
      },
      {
        lower := 8634, upper := 8735,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8736, upper := 8837,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8838, upper := 8943,
        witness := RowWitness.topPrime 8837
      },
      {
        lower := 8944, upper := 9047,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9048, upper := 9149,
        witness := RowWitness.topPrime 9043
      },
      {
        lower := 9150, upper := 9243,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9244, upper := 9347,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9348, upper := 9449,
        witness := RowWitness.topPrime 9343
      },
      {
        lower := 9450, upper := 9545,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9546, upper := 9645,
        witness := RowWitness.topPrime 9539
      },
      {
        lower := 9646, upper := 9749,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9750, upper := 9855,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9856, upper := 9957,
        witness := RowWitness.topPrime 9851
      },
      {
        lower := 9958, upper := 10055,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10056, upper := 10145,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10146, upper := 10247,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10248, upper := 10353,
        witness := RowWitness.topPrime 10247
      },
      {
        lower := 10354, upper := 10449,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10450, upper := 10539,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10540, upper := 10637,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10638, upper := 10737,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10738, upper := 10839,
        witness := RowWitness.topPrime 10733
      },
      {
        lower := 10840, upper := 10943,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10944, upper := 11045,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11046, upper := 11133,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11134, upper := 11237,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11238, upper := 11319,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11320, upper := 11356,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11638, upper := 11638,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11664, upper := 11744,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11767, upper := 11770,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11774, upper := 11849,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11850, upper := 11873,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11875, upper := 11880,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11979, upper := 11981,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12005, upper := 12085,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12407,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12408, upper := 12427,
        witness := RowWitness.topPrime 12401
      },
      {
        lower := 12482, upper := 12585,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12586, upper := 12599,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 13125, upper := 13227,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13228, upper := 13231,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13288,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13415,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13416, upper := 13416,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13454, upper := 13557,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13558, upper := 13562,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13817,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13818, upper := 13884,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13957,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14403,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14406, upper := 14507,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14508, upper := 14512,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14641, upper := 14686,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14747,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14845,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14898,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15227,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15228, upper := 15235,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15360, upper := 15465,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15466, upper := 15485,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15979, upper := 16079,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16080, upper := 16093,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16487,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16488, upper := 16490,
        witness := RowWitness.topPrime 16487
      },
      {
        lower := 16810, upper := 16893,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16894, upper := 16926,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17405,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17406, upper := 17507,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17508, upper := 17514,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17576, upper := 17602,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17765,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17766, upper := 17767,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18587,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18588, upper := 18597,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18608,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18711,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18740,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18855,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18856, upper := 18856,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19313,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19314, upper := 19314,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19767,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19768, upper := 19769,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19773, upper := 19789,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19965, upper := 19987,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20267,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20268, upper := 20278,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20402, upper := 20445,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20508,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20639,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20640, upper := 20641,
        witness := RowWitness.topPrime 20639
      },
      {
        lower := 20667, upper := 20683,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21248,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21389,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21390, upper := 21402,
        witness := RowWitness.topPrime 21383
      },
      {
        lower := 21609, upper := 21610,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21870, upper := 21969,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21970, upper := 22010,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22188, upper := 22196,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22575,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22576, upper := 22578,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22634,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 24010, upper := 24113,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24114, upper := 24143,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24334, upper := 24435,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24436, upper := 24473,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24677,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24678, upper := 24682,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 25000, upper := 25070,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25295,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25296, upper := 25321,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26411, upper := 26470,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26517,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26730,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27002,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28125, upper := 28196,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28231,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28667,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28683,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28778,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28823,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29584,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29874,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30352,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30699,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30700, upper := 30709,
        witness := RowWitness.topPrime 30697
      },
      {
        lower := 30720, upper := 30724,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30826,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31005,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31299,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31300, upper := 31319,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31356,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31503,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31504, upper := 31529,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 32805, upper := 32874,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33720,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34375, upper := 34475,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34476, upper := 34497,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 34816, upper := 34913,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34914, upper := 34916,
        witness := RowWitness.topPrime 34913
      },
      {
        lower := 35344, upper := 35393,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36018,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36603,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36604, upper := 36607,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 37210, upper := 37285,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37316,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37409,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37455,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37599,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37600, upper := 37606,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37659,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39429,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39430, upper := 39432,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39652,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40434,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40910,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41037,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43793,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 44996,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48067,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48774,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48840,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49236,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50516,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53290, upper := 53354,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55547,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55548, upper := 55553,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 58619, upper := 58670,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59062,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62516,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63975,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65627,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65628, upper := 65642,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68651, upper := 68696,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68921, upper := 68996,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73273,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137887,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146440,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148983,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 11342, upper := 22684, M := 22
      },
      {
        lower := 22684, upper := 45368, M := 18
      },
      {
        lower := 45368, upper := 90736, M := 14
      },
      {
        lower := 90736, upper := 181472, M := 11
      },
      {
        lower := 181472, upper := 362944, M := 9
      },
      {
        lower := 362944, upper := 725888, M := 8
      },
      {
        lower := 725888, upper := 1451776, M := 6
      },
      {
        lower := 1451776, upper := 2903552, M := 5
      },
      {
        lower := 2903552, upper := 5807104, M := 4
      },
      {
        lower := 5807104, upper := 11614208, M := 3
      },
      {
        lower := 11614208, upper := 23228416, M := 3
      },
      {
        lower := 23228416, upper := 46456832, M := 2
      },
      {
        lower := 46456832, upper := 92913664, M := 2
      },
      {
        lower := 92913664, upper := 185827328, M := 2
      },
      {
        lower := 185827328, upper := 371654656, M := 1
      },
      {
        lower := 371654656, upper := 743309312, M := 1
      },
      {
        lower := 743309312, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 108, r := 35, s := 75,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 218, upper := 318,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 319, upper := 424,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 425, upper := 528,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 529, upper := 630,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 631, upper := 738,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 739, upper := 846,
        witness := RowWitness.topPrime 739
      },
      {
        lower := 847, upper := 946,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 947, upper := 1054,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 1055, upper := 1158,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1159, upper := 1260,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1261, upper := 1366,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1367, upper := 1474,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1475, upper := 1578,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1579, upper := 1686,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1687, upper := 1776,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1777, upper := 1884,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1885, upper := 1986,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1987, upper := 2094,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2095, upper := 2196,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2197, upper := 2286,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2287, upper := 2394,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2395, upper := 2500,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2501, upper := 2584,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2585, upper := 2686,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2687, upper := 2794,
        witness := RowWitness.topPrime 2687
      },
      {
        lower := 2795, upper := 2898,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2899, upper := 3004,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3005, upper := 3108,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3109, upper := 3216,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3217, upper := 3324,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3325, upper := 3430,
        witness := RowWitness.topPrime 3323
      },
      {
        lower := 3431, upper := 3520,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3521, upper := 3624,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3625, upper := 3730,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3731, upper := 3834,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3835, upper := 3940,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3941, upper := 4038,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4039, upper := 4134,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4135, upper := 4240,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4241, upper := 4348,
        witness := RowWitness.topPrime 4241
      },
      {
        lower := 4349, upper := 4456,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4457, upper := 4564,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4565, upper := 4668,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4669, upper := 4770,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4771, upper := 4866,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4867, upper := 4968,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4969, upper := 5076,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5077, upper := 5184,
        witness := RowWitness.topPrime 5077
      },
      {
        lower := 5185, upper := 5286,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5287, upper := 5388,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5389, upper := 5494,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5495, upper := 5590,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5591, upper := 5698,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5699, upper := 5800,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5801, upper := 5908,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5909, upper := 6010,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6011, upper := 6118,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6119, upper := 6220,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6221, upper := 6328,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6329, upper := 6436,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6437, upper := 6534,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6535, upper := 6636,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6637, upper := 6744,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6745, upper := 6844,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6845, upper := 6948,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6949, upper := 7056,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7057, upper := 7164,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7165, upper := 7266,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7267, upper := 7360,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7361, upper := 7458,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7459, upper := 7566,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7567, upper := 7668,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7669, upper := 7776,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7777, upper := 7866,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7867, upper := 7974,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 7975, upper := 8070,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8071, upper := 8176,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8177, upper := 8278,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8279, upper := 8380,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8381, upper := 8484,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8485, upper := 8574,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8575, upper := 8680,
        witness := RowWitness.topPrime 8573
      },
      {
        lower := 8681, upper := 8788,
        witness := RowWitness.topPrime 8681
      },
      {
        lower := 8789, upper := 8890,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8891, upper := 8994,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 8995, upper := 9078,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9079, upper := 9174,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9175, upper := 9280,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9281, upper := 9388,
        witness := RowWitness.topPrime 9281
      },
      {
        lower := 9389, upper := 9484,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9485, upper := 9586,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9587, upper := 9694,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9695, upper := 9796,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9797, upper := 9898,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9899, upper := 9994,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9995, upper := 10080,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10081, upper := 10186,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10187, upper := 10288,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10289, upper := 10396,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10397, upper := 10498,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10499, upper := 10606,
        witness := RowWitness.topPrime 10499
      },
      {
        lower := 10607, upper := 10714,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10715, upper := 10818,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10819, upper := 10906,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10907, upper := 11010,
        witness := RowWitness.topPrime 10903
      },
      {
        lower := 11011, upper := 11110,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11111, upper := 11200,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11201, upper := 11304,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11305, upper := 11406,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11407, upper := 11506,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11507, upper := 11556,
        witness := RowWitness.topPrime 11503
      },
      {
        lower := 11638, upper := 11639,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11774, upper := 11850,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11851, upper := 11881,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11979, upper := 11982,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12005, upper := 12086,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12395,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12493, upper := 12598,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12599, upper := 12600,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12696, upper := 12722,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 13182, upper := 13284,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13285, upper := 13361,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13454, upper := 13558,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13559, upper := 13563,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13818,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13819, upper := 13861,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14375, upper := 14404,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14508,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14509, upper := 14513,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14739, upper := 14748,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14846,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14899,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15107,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15228,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15229, upper := 15236,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15379, upper := 15484,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15485, upper := 15486,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16080,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16081, upper := 16086,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16337, upper := 16357,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16488,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16489, upper := 16491,
        witness := RowWitness.topPrime 16487
      },
      {
        lower := 16810, upper := 16894,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16895, upper := 16927,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17406,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17407, upper := 17410,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17661, upper := 17766,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17767, upper := 17768,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18491, upper := 18588,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18589, upper := 18598,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18609,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18712,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18741,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18856,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18857, upper := 18857,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19314,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19315, upper := 19315,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19759,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19965, upper := 19988,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20268,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20269, upper := 20288,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20446,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20509,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20640,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20641, upper := 20642,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20684,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21249,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21390,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21391, upper := 21403,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21866, upper := 21970,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21971, upper := 22011,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22200,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22201, upper := 22210,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22552,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 24010, upper := 24114,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24115, upper := 24117,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24334, upper := 24436,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24437, upper := 24474,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24678,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24679, upper := 24683,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 25000, upper := 25071,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25296,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25297, upper := 25368,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25369, upper := 25388,
        witness := RowWitness.topPrime 25367
      },
      {
        lower := 26047, upper := 26118,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26471,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26518,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26727,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27003,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27487,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27951, upper := 27955,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28197,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28232,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28668,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28836,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28837, upper := 28856,
        witness := RowWitness.topPrime 28837
      },
      {
        lower := 29584, upper := 29585,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29875,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30353,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 31006,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31300,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31301, upper := 31320,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31357,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31504,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31505, upper := 31530,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32046,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33620, upper := 33726,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33727, upper := 33727,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34444,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34445, upper := 34498,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35238,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35398,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35399, upper := 35408,
        witness := RowWitness.topPrime 35393
      },
      {
        lower := 36015, upper := 36019,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36604,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36605, upper := 36608,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 36982, upper := 37086,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37087, upper := 37087,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37303, upper := 37317,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37410,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37456,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37600,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37601, upper := 37607,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37660,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39411,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39605, upper := 39653,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40435,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40678, upper := 40732,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40817, upper := 40911,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41038,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41850,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43794,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 44030,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44287,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 44997,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48068,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48775,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48841,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49237,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50035,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50517,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50669,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 53125, upper := 53152,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 55451, upper := 55548,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55549, upper := 55554,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56250, upper := 56276,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 58619, upper := 58671,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59582, upper := 59643,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62517,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63976,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65628,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65629, upper := 65640,
        witness := RowWitness.topPrime 65629
      },
      {
        lower := 67335, upper := 67335,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68746,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68747, upper := 68758,
        witness := RowWitness.topPrime 68743
      },
      {
        lower := 68782, upper := 68801,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 68997,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73274,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85264, upper := 85276,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85697, upper := 85790,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 102973, upper := 102992,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103080,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 122412, upper := 122424,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131833,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137917, upper := 137949,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142912,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146441,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148944,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148984,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 11556, upper := 23112, M := 26
      },
      {
        lower := 23112, upper := 46224, M := 22
      },
      {
        lower := 46224, upper := 92448, M := 18
      },
      {
        lower := 92448, upper := 184896, M := 15
      },
      {
        lower := 184896, upper := 369792, M := 12
      },
      {
        lower := 369792, upper := 739584, M := 10
      },
      {
        lower := 739584, upper := 1479168, M := 9
      },
      {
        lower := 1479168, upper := 2958336, M := 7
      },
      {
        lower := 2958336, upper := 5916672, M := 6
      },
      {
        lower := 5916672, upper := 11833344, M := 5
      },
      {
        lower := 11833344, upper := 23666688, M := 4
      },
      {
        lower := 23666688, upper := 47333376, M := 4
      },
      {
        lower := 47333376, upper := 94666752, M := 3
      },
      {
        lower := 94666752, upper := 189333504, M := 3
      },
      {
        lower := 189333504, upper := 378667008, M := 2
      },
      {
        lower := 378667008, upper := 757334016, M := 2
      },
      {
        lower := 757334016, upper := 1514668032, M := 2
      },
      {
        lower := 1514668032, upper := 3029336064, M := 1
      },
      {
        lower := 3029336064, upper := 6058672128, M := 1
      },
      {
        lower := 6058672128, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 109, r := 36, s := 76,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 220, upper := 319,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 320, upper := 425,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 426, upper := 529,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 530, upper := 631,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 632, upper := 739,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 740, upper := 847,
        witness := RowWitness.topPrime 739
      },
      {
        lower := 848, upper := 947,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 948, upper := 1055,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 1056, upper := 1159,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1160, upper := 1261,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1262, upper := 1367,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1368, upper := 1475,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1476, upper := 1579,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1580, upper := 1687,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1688, upper := 1777,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1778, upper := 1885,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1886, upper := 1987,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1988, upper := 2095,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2096, upper := 2197,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2198, upper := 2287,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2288, upper := 2395,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2396, upper := 2501,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2502, upper := 2585,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2586, upper := 2687,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2688, upper := 2795,
        witness := RowWitness.topPrime 2687
      },
      {
        lower := 2796, upper := 2899,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2900, upper := 3005,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3006, upper := 3109,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3110, upper := 3217,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3218, upper := 3325,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3326, upper := 3431,
        witness := RowWitness.topPrime 3323
      },
      {
        lower := 3432, upper := 3521,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3522, upper := 3625,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3626, upper := 3731,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3732, upper := 3835,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3836, upper := 3941,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3942, upper := 4039,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 4040, upper := 4135,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4136, upper := 4241,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4242, upper := 4349,
        witness := RowWitness.topPrime 4241
      },
      {
        lower := 4350, upper := 4457,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4458, upper := 4565,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4566, upper := 4669,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4670, upper := 4771,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4772, upper := 4867,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4868, upper := 4969,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4970, upper := 5077,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5078, upper := 5185,
        witness := RowWitness.topPrime 5077
      },
      {
        lower := 5186, upper := 5287,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5288, upper := 5389,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5390, upper := 5495,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5496, upper := 5591,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5592, upper := 5699,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5700, upper := 5801,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5802, upper := 5909,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5910, upper := 6011,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6012, upper := 6119,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6120, upper := 6221,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6222, upper := 6329,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6330, upper := 6437,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6438, upper := 6535,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6536, upper := 6637,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6638, upper := 6745,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6746, upper := 6845,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6846, upper := 6949,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6950, upper := 7057,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7058, upper := 7165,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7166, upper := 7267,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7268, upper := 7361,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7362, upper := 7459,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7460, upper := 7567,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7568, upper := 7669,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7670, upper := 7777,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7778, upper := 7867,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7868, upper := 7975,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 7976, upper := 8071,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8072, upper := 8177,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8178, upper := 8279,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8280, upper := 8381,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8382, upper := 8485,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8486, upper := 8575,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8576, upper := 8681,
        witness := RowWitness.topPrime 8573
      },
      {
        lower := 8682, upper := 8789,
        witness := RowWitness.topPrime 8681
      },
      {
        lower := 8790, upper := 8891,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8892, upper := 8995,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 8996, upper := 9079,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9080, upper := 9175,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9176, upper := 9281,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9282, upper := 9389,
        witness := RowWitness.topPrime 9281
      },
      {
        lower := 9390, upper := 9485,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9486, upper := 9587,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9588, upper := 9695,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9696, upper := 9797,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9798, upper := 9899,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9900, upper := 9995,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 9996, upper := 10081,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10082, upper := 10187,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10188, upper := 10289,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10290, upper := 10397,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10398, upper := 10499,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10500, upper := 10607,
        witness := RowWitness.topPrime 10499
      },
      {
        lower := 10608, upper := 10715,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10716, upper := 10819,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10820, upper := 10907,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10908, upper := 11011,
        witness := RowWitness.topPrime 10903
      },
      {
        lower := 11012, upper := 11111,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11112, upper := 11201,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11202, upper := 11305,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11306, upper := 11407,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11408, upper := 11507,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11508, upper := 11611,
        witness := RowWitness.topPrime 11503
      },
      {
        lower := 11612, upper := 11705,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11706, upper := 11772,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11774, upper := 11851,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11852, upper := 11884,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11979, upper := 11983,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12005, upper := 12087,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12409,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12410, upper := 12429,
        witness := RowWitness.topPrime 12409
      },
      {
        lower := 12482, upper := 12587,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12588, upper := 12601,
        witness := RowWitness.topPrime 12583
      },
      {
        lower := 12696, upper := 12723,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12800, upper := 12804,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 13125, upper := 13229,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13230, upper := 13337,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13338, upper := 13418,
        witness := RowWitness.topPrime 13337
      },
      {
        lower := 13454, upper := 13559,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13560, upper := 13564,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13819,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13820, upper := 13886,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13959,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14435,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14436, upper := 14514,
        witness := RowWitness.topPrime 14431
      },
      {
        lower := 14641, upper := 14688,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14749,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14847,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14900,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15108,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15229,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15230, upper := 15237,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15360, upper := 15467,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15468, upper := 15487,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15979, upper := 16081,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16082, upper := 16095,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16489,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16490, upper := 16492,
        witness := RowWitness.topPrime 16487
      },
      {
        lower := 16807, upper := 16895,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16896, upper := 16928,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17407,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17408, upper := 17509,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17510, upper := 17516,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17576, upper := 17604,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17767,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17768, upper := 17769,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18259, upper := 18333,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18490, upper := 18589,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18590, upper := 18599,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18610,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18713,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18742,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18857,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18858, upper := 18858,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19315,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19316, upper := 19316,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19769,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19770, upper := 19771,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19773, upper := 19791,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19881,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19989,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20269,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20270, upper := 20289,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20447,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20510,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20641,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20642, upper := 20643,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20685,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21250,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21391,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21392, upper := 21404,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21609, upper := 21612,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21870, upper := 21971,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21972, upper := 22012,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22201,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22202, upper := 22211,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22577,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22578, upper := 22580,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22636,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 24010, upper := 24115,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24116, upper := 24145,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24334, upper := 24437,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24438, upper := 24475,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24576, upper := 24679,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24680, upper := 24684,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 25000, upper := 25072,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25297,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25298, upper := 25369,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25370, upper := 25389,
        witness := RowWitness.topPrime 25367
      },
      {
        lower := 26047, upper := 26119,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26472,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26519,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26705,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26706, upper := 26732,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26934, upper := 27004,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27488,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28198,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28233,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28669,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28685,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28780,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28825,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29586,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29876,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30354,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30701,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30702, upper := 30711,
        witness := RowWitness.topPrime 30697
      },
      {
        lower := 30720, upper := 30726,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30828,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31007,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31301,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31302, upper := 31321,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31358,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31505,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31506, upper := 31531,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32047,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32876,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33727,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33728, upper := 33728,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34445,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34446, upper := 34499,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34915,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34916, upper := 34918,
        witness := RowWitness.topPrime 34913
      },
      {
        lower := 35152, upper := 35239,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35395,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36020,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36605,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36606, upper := 36609,
        witness := RowWitness.topPrime 36599
      },
      {
        lower := 37210, upper := 37287,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37318,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37411,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37457,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37601,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37602, upper := 37608,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37661,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39431,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39432, upper := 39434,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39654,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40436,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40912,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41039,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41851,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43740, upper := 43829,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43830, upper := 43848,
        witness := RowWitness.topPrime 43801
      },
      {
        lower := 43940, upper := 44031,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44288,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 44998,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 48013, upper := 48069,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48776,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48778, upper := 48842,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49238,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50036,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50518,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53125, upper := 53153,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53290, upper := 53356,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55549,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55550, upper := 55555,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57353,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58672,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59064,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59644,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62518,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63977,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65629,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65630, upper := 65644,
        witness := RowWitness.topPrime 65629
      },
      {
        lower := 67335, upper := 67336,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68747,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68748, upper := 68759,
        witness := RowWitness.topPrime 68743
      },
      {
        lower := 68782, upper := 68802,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68890,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 68998,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 73205, upper := 73275,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73803,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85264, upper := 85277,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85367,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85368, upper := 85372,
        witness := RowWitness.topPrime 85363
      },
      {
        lower := 85697, upper := 85791,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 91854, upper := 91917,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 103041, upper := 103081,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 122412, upper := 122425,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131834,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137889,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137950,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142913,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146442,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148945,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148985,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327788,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 11772, upper := 23544, M := 25
      },
      {
        lower := 23544, upper := 47088, M := 20
      },
      {
        lower := 47088, upper := 94176, M := 17
      },
      {
        lower := 94176, upper := 188352, M := 14
      },
      {
        lower := 188352, upper := 376704, M := 11
      },
      {
        lower := 376704, upper := 753408, M := 9
      },
      {
        lower := 753408, upper := 1506816, M := 8
      },
      {
        lower := 1506816, upper := 3013632, M := 6
      },
      {
        lower := 3013632, upper := 6027264, M := 5
      },
      {
        lower := 6027264, upper := 12054528, M := 4
      },
      {
        lower := 12054528, upper := 24109056, M := 4
      },
      {
        lower := 24109056, upper := 48218112, M := 3
      },
      {
        lower := 48218112, upper := 96436224, M := 3
      },
      {
        lower := 96436224, upper := 192872448, M := 2
      },
      {
        lower := 192872448, upper := 385744896, M := 2
      },
      {
        lower := 385744896, upper := 771489792, M := 2
      },
      {
        lower := 771489792, upper := 1000000000, M := 1
      }
    ]
  }
]

theorem coverRows03_checked :
    coverRows03.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows03_checked

end B699LowIndex
