import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows00 : List FiniteCoverRow := [
  {
    height := {
      i := 29, r := 9, s := 19,
      n0Power10 := 37
    },
    goods := [
      {
        lower := 60, upper := 87,
        witness := RowWitness.topPrime 59
      },
      {
        lower := 88, upper := 111,
        witness := RowWitness.topPrime 83
      },
      {
        lower := 112, upper := 137,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 138, upper := 165,
        witness := RowWitness.topPrime 137
      },
      {
        lower := 166, upper := 191,
        witness := RowWitness.topPrime 163
      },
      {
        lower := 192, upper := 219,
        witness := RowWitness.topPrime 191
      },
      {
        lower := 220, upper := 239,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 240, upper := 267,
        witness := RowWitness.topPrime 239
      },
      {
        lower := 268, upper := 291,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 292, upper := 311,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 312, upper := 339,
        witness := RowWitness.topPrime 311
      },
      {
        lower := 340, upper := 365,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 366, upper := 387,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 388, upper := 411,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 412, upper := 437,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 438, upper := 461,
        witness := RowWitness.topPrime 433
      },
      {
        lower := 462, upper := 489,
        witness := RowWitness.topPrime 461
      },
      {
        lower := 490, upper := 515,
        witness := RowWitness.topPrime 487
      },
      {
        lower := 516, upper := 537,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 538, upper := 551,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 552, upper := 575,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 576, upper := 599,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 600, upper := 627,
        witness := RowWitness.topPrime 599
      },
      {
        lower := 628, upper := 647,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 648, upper := 675,
        witness := RowWitness.topPrime 647
      },
      {
        lower := 676, upper := 701,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 702, upper := 729,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 730, upper := 755,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 756, upper := 779,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 780, upper := 801,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 802, upper := 825,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 826, upper := 851,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 852, upper := 867,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 868, upper := 891,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 892, upper := 915,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 916, upper := 919,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 931, upper := 956,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 968, upper := 995,
        witness := RowWitness.topPrime 967
      },
      {
        lower := 996, upper := 1019,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1020, upper := 1047,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1048, upper := 1067,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1068, upper := 1091,
        witness := RowWitness.topPrime 1063
      },
      {
        lower := 1092, upper := 1116,
        witness := RowWitness.topPrime 1091
      },
      {
        lower := 1127, upper := 1151,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1152, upper := 1179,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1180, upper := 1199,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1200, upper := 1204,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1210, upper := 1211,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1215, upper := 1241,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1242, upper := 1244,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1250, upper := 1253,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1274, upper := 1278,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1280, upper := 1307,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1308, upper := 1308,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1323, upper := 1324,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1331, upper := 1355,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1356, upper := 1356,
        witness := RowWitness.largeDivisor 1815068943375751502988867192965646653087223540945133
      },
      {
        lower := 1357, upper := 1357,
        witness := RowWitness.largeDivisor 1290229730833365526221001980541845211230676974888709
      },
      {
        lower := 1358, upper := 1358,
        witness := RowWitness.largeDivisor 282510798850646627637555738403067687334933784569311
      },
      {
        lower := 1359, upper := 1359,
        witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961
      },
      {
        lower := 1360, upper := 1360,
        witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961
      },
      {
        lower := 1361, upper := 1389,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1390, upper := 1403,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1421, upper := 1436,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1444, upper := 1467,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1468, upper := 1487,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1488, upper := 1498,
        witness := RowWitness.topPrime 1487
      },
      {
        lower := 1500, upper := 1500,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1519, upper := 1539,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1540, upper := 1559,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1560, upper := 1564,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1573, upper := 1599,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1600, upper := 1615,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1617, upper := 1641,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1642, upper := 1648,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1690, upper := 1692,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1694, upper := 1721,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1722, upper := 1749,
        witness := RowWitness.topPrime 1721
      },
      {
        lower := 1750, upper := 1762,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1792, upper := 1817,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1818, upper := 1833,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1859, upper := 1875,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1876, upper := 1891,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1936, upper := 1961,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1962, upper := 1964,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2000, upper := 2012,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2023, upper := 2045,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2046, upper := 2067,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2068, upper := 2085,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2116, upper := 2141,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2142, upper := 2144,
        witness := RowWitness.topPrime 2141
      },
      {
        lower := 2176, upper := 2189,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2190, upper := 2207,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2208, upper := 2215,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2268, upper := 2278,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2304, upper := 2325,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2326, upper := 2332,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2366, upper := 2385,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2386, upper := 2394,
        witness := RowWitness.topPrime 2383
      },
      {
        lower := 2401, upper := 2403,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2445,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2446, upper := 2458,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2511, upper := 2531,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2532, upper := 2559,
        witness := RowWitness.topPrime 2531
      },
      {
        lower := 2560, upper := 2569,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2601, upper := 2620,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2625, upper := 2629,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2653,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2662, upper := 2687,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2688, upper := 2701,
        witness := RowWitness.topPrime 2687
      },
      {
        lower := 2704, upper := 2716,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2750, upper := 2772,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2875, upper := 2889,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2890, upper := 2915,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 2916, upper := 2932,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2944, upper := 2944,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3028,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3042, upper := 3053,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3087, upper := 3100,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3146, upper := 3153,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3159, upper := 3165,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3166, upper := 3191,
        witness := RowWitness.topPrime 3163
      },
      {
        lower := 3192, upper := 3207,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3211, upper := 3228,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3250, upper := 3257,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3258, upper := 3278,
        witness := RowWitness.topPrime 3257
      },
      {
        lower := 3380, upper := 3401,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3402, upper := 3416,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3430, upper := 3430,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3458,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3468, upper := 3484,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3509, upper := 3527,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3528, upper := 3528,
        witness := RowWitness.topPrime 3527
      },
      {
        lower := 3610, upper := 3612,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3625, upper := 3651,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3652, upper := 3658,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3712, upper := 3737,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3738, upper := 3740,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3751, upper := 3767,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3768, upper := 3785,
        witness := RowWitness.topPrime 3767
      },
      {
        lower := 3887, upper := 3909,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3910, upper := 3915,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 3971, upper := 3995,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 3996, upper := 3999,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4074,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4116, upper := 4124,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4131, upper := 4144,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4232, upper := 4253,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4335, upper := 4355,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4356, upper := 4363,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4374, upper := 4401,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4402, upper := 4403,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4617, upper := 4631,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4632, upper := 4645,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4864, upper := 4888,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4913, upper := 4929,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5070, upper := 5082,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5120, upper := 5131,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5147,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5148, upper := 5148,
        witness := RowWitness.topPrime 5147
      },
      {
        lower := 5346, upper := 5352,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5491, upper := 5511,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5512, upper := 5516,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5632, upper := 5651,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5652, upper := 5653,
        witness := RowWitness.topPrime 5651
      },
      {
        lower := 5780, upper := 5804,
        witness := RowWitness.topPrime 5779
      },
      {
        lower := 5831, upper := 5855,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5856, upper := 5859,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 6075, upper := 6097,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6165,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6358, upper := 6376,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6519,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6520, upper := 6520,
        witness := RowWitness.largeDivisor 60421990750951813132935796085831089696994808504804701818967609664746561
      },
      {
        lower := 6521, upper := 6526,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6655, upper := 6681,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6682, upper := 6683,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6860, upper := 6885,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6886, upper := 6903,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 6936, upper := 6940,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7220, upper := 7247,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7248, upper := 7248,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7424, upper := 7434,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7514, upper := 7528,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7942, upper := 7963,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8670, upper := 8692,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8750, upper := 8775,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8776, upper := 8776,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 9386, upper := 9403,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9747, upper := 9756,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10648, upper := 10653,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 11264, upper := 11278,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11666,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 12005, upper := 12007,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 13125, upper := 13149,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13150, upper := 13150,
        witness := RowWitness.topPrime 13147
      },
      {
        lower := 13312, upper := 13337,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13338, upper := 13338,
        witness := RowWitness.topPrime 13337
      },
      {
        lower := 13754, upper := 13778,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 13851, upper := 13852,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 15360, upper := 15369,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15379, upper := 15388,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 17500, upper := 17524,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 21875, upper := 21898,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 24576, upper := 24593,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26624, upper := 26625,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26626, upper := 26626,
        witness := RowWitness.largeDivisor 1599393369684335078023765979521119447092836559551135567799388628574914560984441069761
      },
      {
        lower := 26627, upper := 26648,
        witness := RowWitness.topPrime 26627
      },
      {
        lower := 30618, upper := 30621,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30622, upper := 30622,
        witness := RowWitness.largeDivisor 277864952332438311946331093736932694502651256920421324580787985003384871304054691249560169441
      },
      {
        lower := 30623, upper := 30623,
        witness := RowWitness.largeDivisor 1668770040258140503379583660228689920328434877559141443937530979556512044311446717029864888957
      },
      {
        lower := 30624, upper := 30624,
        witness := RowWitness.largeDivisor 7908862750038580584737363318619383508665568140090717743779767675623279830859937047534904687
      },
      {
        lower := 30625, upper := 30625,
        witness := RowWitness.largeDivisor 1033973427904115647109081359474360505774031656437536637963102062442578092673543868157263
      },
      {
        lower := 30626, upper := 30626,
        witness := RowWitness.largeDivisor 10867011051129528417420290224866768994452811774212764953417283378300067490123525911525167
      },
      {
        lower := 30627, upper := 30627,
        witness := RowWitness.largeDivisor 2417180116804613713607506872032264519780568564458202440452252783603838791351745779261399
      },
      {
        lower := 30628, upper := 30628,
        witness := RowWitness.largeDivisor 2448857270529854737796421877610385964024890535579733836204445775735122145557178965231
      },
      {
        lower := 30629, upper := 30629,
        witness := RowWitness.largeDivisor 75006049339058920763966605689328511692118372214271667669105969664991056196270834526060299
      },
      {
        lower := 30630, upper := 30630,
        witness := RowWitness.largeDivisor 2502571039350974089082379804869266051359526094924066948470873338386192228240662790467879
      },
      {
        lower := 30631, upper := 30641,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 34391, upper := 34403,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 43750, upper := 43750,
        witness := RowWitness.largeDivisor 79151417224128815605412941307060434965575198636617814853139977938763458226043835282876365259
      },
      {
        lower := 43751, upper := 43751,
        witness := RowWitness.largeDivisor 9979693530181152194675566556556775476019828575073965468702383789045648590339031231876437626647
      },
      {
        lower := 43752, upper := 43752,
        witness := RowWitness.largeDivisor 9570216362714487349233854725198843604831219091194023697761412755092171162644952096639003573581
      },
      {
        lower := 43753, upper := 43768,
        witness := RowWitness.topPrime 43753
      },
      {
        lower := 43940, upper := 43951,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48041,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49158,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65638,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 150903, upper := 150926,
        witness := RowWitness.topPrime 150901
      }
    ],
    layers := [
      {
        lower := 812, upper := 1624, M := 33
      },
      {
        lower := 1624, upper := 3248, M := 32
      },
      {
        lower := 3248, upper := 6496, M := 31
      },
      {
        lower := 6496, upper := 12992, M := 30
      },
      {
        lower := 12992, upper := 25984, M := 29
      },
      {
        lower := 25984, upper := 51968, M := 28
      },
      {
        lower := 51968, upper := 103936, M := 27
      },
      {
        lower := 103936, upper := 207872, M := 27
      },
      {
        lower := 207872, upper := 415744, M := 26
      },
      {
        lower := 415744, upper := 831488, M := 25
      },
      {
        lower := 831488, upper := 1662976, M := 24
      },
      {
        lower := 1662976, upper := 3325952, M := 24
      },
      {
        lower := 3325952, upper := 6651904, M := 23
      },
      {
        lower := 6651904, upper := 13303808, M := 22
      },
      {
        lower := 13303808, upper := 26607616, M := 22
      },
      {
        lower := 26607616, upper := 53215232, M := 21
      },
      {
        lower := 53215232, upper := 106430464, M := 20
      },
      {
        lower := 106430464, upper := 212860928, M := 20
      },
      {
        lower := 212860928, upper := 425721856, M := 19
      },
      {
        lower := 425721856, upper := 851443712, M := 19
      },
      {
        lower := 851443712, upper := 1702887424, M := 18
      },
      {
        lower := 1702887424, upper := 3405774848, M := 18
      },
      {
        lower := 3405774848, upper := 6811549696, M := 17
      },
      {
        lower := 6811549696, upper := 13623099392, M := 17
      },
      {
        lower := 13623099392, upper := 27246198784, M := 16
      },
      {
        lower := 27246198784, upper := 54492397568, M := 16
      },
      {
        lower := 54492397568, upper := 108984795136, M := 15
      },
      {
        lower := 108984795136, upper := 217969590272, M := 15
      },
      {
        lower := 217969590272, upper := 435939180544, M := 14
      },
      {
        lower := 435939180544, upper := 871878361088, M := 14
      },
      {
        lower := 871878361088, upper := 1743756722176, M := 14
      },
      {
        lower := 1743756722176, upper := 3487513444352, M := 13
      },
      {
        lower := 3487513444352, upper := 6975026888704, M := 13
      },
      {
        lower := 6975026888704, upper := 13950053777408, M := 12
      },
      {
        lower := 13950053777408, upper := 27900107554816, M := 12
      },
      {
        lower := 27900107554816, upper := 55800215109632, M := 12
      },
      {
        lower := 55800215109632, upper := 111600430219264, M := 11
      },
      {
        lower := 111600430219264, upper := 223200860438528, M := 11
      },
      {
        lower := 223200860438528, upper := 446401720877056, M := 11
      },
      {
        lower := 446401720877056, upper := 892803441754112, M := 11
      },
      {
        lower := 892803441754112, upper := 1785606883508224, M := 10
      },
      {
        lower := 1785606883508224, upper := 3571213767016448, M := 10
      },
      {
        lower := 3571213767016448, upper := 7142427534032896, M := 10
      },
      {
        lower := 7142427534032896, upper := 14284855068065792, M := 9
      },
      {
        lower := 14284855068065792, upper := 28569710136131584, M := 9
      },
      {
        lower := 28569710136131584, upper := 57139420272263168, M := 9
      },
      {
        lower := 57139420272263168, upper := 114278840544526336, M := 9
      },
      {
        lower := 114278840544526336, upper := 228557681089052672, M := 8
      },
      {
        lower := 228557681089052672, upper := 457115362178105344, M := 8
      },
      {
        lower := 457115362178105344, upper := 914230724356210688, M := 8
      },
      {
        lower := 914230724356210688, upper := 1828461448712421376, M := 8
      },
      {
        lower := 1828461448712421376, upper := 3656922897424842752, M := 7
      },
      {
        lower := 3656922897424842752, upper := 7313845794849685504, M := 7
      },
      {
        lower := 7313845794849685504, upper := 14627691589699371008, M := 7
      },
      {
        lower := 14627691589699371008, upper := 29255383179398742016, M := 7
      },
      {
        lower := 29255383179398742016, upper := 58510766358797484032, M := 7
      },
      {
        lower := 58510766358797484032, upper := 117021532717594968064, M := 7
      },
      {
        lower := 117021532717594968064, upper := 234043065435189936128, M := 6
      },
      {
        lower := 234043065435189936128, upper := 468086130870379872256, M := 6
      },
      {
        lower := 468086130870379872256, upper := 936172261740759744512, M := 6
      },
      {
        lower := 936172261740759744512, upper := 1872344523481519489024, M := 6
      },
      {
        lower := 1872344523481519489024, upper := 3744689046963038978048, M := 6
      },
      {
        lower := 3744689046963038978048, upper := 7489378093926077956096, M := 6
      },
      {
        lower := 7489378093926077956096, upper := 14978756187852155912192, M := 5
      },
      {
        lower := 14978756187852155912192, upper := 29957512375704311824384, M := 5
      },
      {
        lower := 29957512375704311824384, upper := 59915024751408623648768, M := 5
      },
      {
        lower := 59915024751408623648768, upper := 119830049502817247297536, M := 5
      },
      {
        lower := 119830049502817247297536, upper := 239660099005634494595072, M := 5
      },
      {
        lower := 239660099005634494595072, upper := 479320198011268989190144, M := 5
      },
      {
        lower := 479320198011268989190144, upper := 958640396022537978380288, M := 5
      },
      {
        lower := 958640396022537978380288, upper := 1917280792045075956760576, M := 4
      },
      {
        lower := 1917280792045075956760576, upper := 3834561584090151913521152, M := 4
      },
      {
        lower := 3834561584090151913521152, upper := 7669123168180303827042304, M := 4
      },
      {
        lower := 7669123168180303827042304, upper := 15338246336360607654084608, M := 4
      },
      {
        lower := 15338246336360607654084608, upper := 30676492672721215308169216, M := 4
      },
      {
        lower := 30676492672721215308169216, upper := 61352985345442430616338432, M := 4
      },
      {
        lower := 61352985345442430616338432, upper := 122705970690884861232676864, M := 4
      },
      {
        lower := 122705970690884861232676864, upper := 245411941381769722465353728, M := 4
      },
      {
        lower := 245411941381769722465353728, upper := 490823882763539444930707456, M := 4
      },
      {
        lower := 490823882763539444930707456, upper := 981647765527078889861414912, M := 4
      },
      {
        lower := 981647765527078889861414912, upper := 1963295531054157779722829824, M := 3
      },
      {
        lower := 1963295531054157779722829824, upper := 3926591062108315559445659648, M := 3
      },
      {
        lower := 3926591062108315559445659648, upper := 7853182124216631118891319296, M := 3
      },
      {
        lower := 7853182124216631118891319296, upper := 15706364248433262237782638592, M := 3
      },
      {
        lower := 15706364248433262237782638592, upper := 31412728496866524475565277184, M := 3
      },
      {
        lower := 31412728496866524475565277184, upper := 62825456993733048951130554368, M := 3
      },
      {
        lower := 62825456993733048951130554368, upper := 125650913987466097902261108736, M := 3
      },
      {
        lower := 125650913987466097902261108736, upper := 251301827974932195804522217472, M := 3
      },
      {
        lower := 251301827974932195804522217472, upper := 502603655949864391609044434944, M := 3
      },
      {
        lower := 502603655949864391609044434944, upper := 1005207311899728783218088869888, M := 3
      },
      {
        lower := 1005207311899728783218088869888, upper := 2010414623799457566436177739776, M := 3
      },
      {
        lower := 2010414623799457566436177739776, upper := 4020829247598915132872355479552, M := 3
      },
      {
        lower := 4020829247598915132872355479552, upper := 8041658495197830265744710959104, M := 3
      },
      {
        lower := 8041658495197830265744710959104, upper := 16083316990395660531489421918208, M := 2
      },
      {
        lower := 16083316990395660531489421918208, upper := 32166633980791321062978843836416, M := 2
      },
      {
        lower := 32166633980791321062978843836416, upper := 64333267961582642125957687672832, M := 2
      },
      {
        lower := 64333267961582642125957687672832, upper := 128666535923165284251915375345664, M := 2
      },
      {
        lower := 128666535923165284251915375345664, upper := 257333071846330568503830750691328, M := 2
      },
      {
        lower := 257333071846330568503830750691328, upper := 514666143692661137007661501382656, M := 2
      },
      {
        lower := 514666143692661137007661501382656, upper := 1029332287385322274015323002765312, M := 2
      },
      {
        lower := 1029332287385322274015323002765312, upper := 2058664574770644548030646005530624, M := 2
      },
      {
        lower := 2058664574770644548030646005530624, upper := 4117329149541289096061292011061248, M := 2
      },
      {
        lower := 4117329149541289096061292011061248, upper := 8234658299082578192122584022122496, M := 2
      },
      {
        lower := 8234658299082578192122584022122496, upper := 16469316598165156384245168044244992, M := 2
      },
      {
        lower := 16469316598165156384245168044244992, upper := 32938633196330312768490336088489984, M := 2
      },
      {
        lower := 32938633196330312768490336088489984, upper := 65877266392660625536980672176979968, M := 2
      },
      {
        lower := 65877266392660625536980672176979968, upper := 131754532785321251073961344353959936, M := 2
      },
      {
        lower := 131754532785321251073961344353959936, upper := 263509065570642502147922688707919872, M := 2
      },
      {
        lower := 263509065570642502147922688707919872, upper := 527018131141285004295845377415839744, M := 2
      },
      {
        lower := 527018131141285004295845377415839744, upper := 1054036262282570008591690754831679488, M := 2
      },
      {
        lower := 1054036262282570008591690754831679488, upper := 2108072524565140017183381509663358976, M := 2
      },
      {
        lower := 2108072524565140017183381509663358976, upper := 4216145049130280034366763019326717952, M := 2
      },
      {
        lower := 4216145049130280034366763019326717952, upper := 8432290098260560068733526038653435904, M := 2
      },
      {
        lower := 8432290098260560068733526038653435904, upper := 10000000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 35, r := 11, s := 23,
      n0Power10 := 49
    },
    goods := [
      {
        lower := 72, upper := 105,
        witness := RowWitness.topPrime 71
      },
      {
        lower := 106, upper := 137,
        witness := RowWitness.topPrime 103
      },
      {
        lower := 138, upper := 171,
        witness := RowWitness.topPrime 137
      },
      {
        lower := 172, upper := 201,
        witness := RowWitness.topPrime 167
      },
      {
        lower := 202, upper := 233,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 234, upper := 267,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 268, upper := 297,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 298, upper := 327,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 328, upper := 351,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 352, upper := 383,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 384, upper := 417,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 418, upper := 443,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 444, upper := 477,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 478, upper := 501,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 502, upper := 533,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 534, upper := 557,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 558, upper := 591,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 592, upper := 621,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 622, upper := 653,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 654, upper := 687,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 688, upper := 717,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 718, upper := 743,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 744, upper := 777,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 778, upper := 807,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 808, upper := 831,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 832, upper := 863,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 864, upper := 897,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 898, upper := 921,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 922, upper := 953,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 954, upper := 987,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 988, upper := 1017,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1018, upper := 1047,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1048, upper := 1073,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1074, upper := 1103,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1104, upper := 1137,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1138, upper := 1163,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1164, upper := 1197,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1198, upper := 1227,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1228, upper := 1250,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1280, upper := 1284,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1296, upper := 1314,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1344, upper := 1361,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1362, upper := 1395,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1396, upper := 1406,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1408, upper := 1411,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1445, upper := 1473,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1474, upper := 1492,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1536, upper := 1565,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1566, upper := 1570,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1573, upper := 1573,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1587, upper := 1617,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1618, upper := 1634,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1682, upper := 1703,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1704, upper := 1733,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1734, upper := 1762,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1792, upper := 1823,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1824, upper := 1839,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1859, upper := 1881,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1882, upper := 1897,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1922, upper := 1947,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1948, upper := 1967,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1968, upper := 1970,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2025, upper := 2051,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2052, upper := 2073,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2074, upper := 2082,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2112, upper := 2145,
        witness := RowWitness.topPrime 2111
      },
      {
        lower := 2146, upper := 2146,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2176, upper := 2195,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2196, upper := 2213,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2214, upper := 2221,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2268, upper := 2274,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2302,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2304, upper := 2331,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2332, upper := 2338,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2366, upper := 2391,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2392, upper := 2402,
        witness := RowWitness.topPrime 2389
      },
      {
        lower := 2420, upper := 2451,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2452, upper := 2464,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2511, upper := 2537,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2538, upper := 2565,
        witness := RowWitness.topPrime 2531
      },
      {
        lower := 2566, upper := 2575,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2592, upper := 2594,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2601, upper := 2626,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2662, upper := 2693,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2694, upper := 2722,
        witness := RowWitness.topPrime 2693
      },
      {
        lower := 2783, upper := 2788,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2817,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2850,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2883, upper := 2913,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2914, upper := 2938,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2944, upper := 2950,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3031,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3042, upper := 3059,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3076,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3146, upper := 3171,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3172, upper := 3203,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3204, upper := 3234,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3267, upper := 3283,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3380, upper := 3407,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3408, upper := 3422,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3468, upper := 3490,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3610, upper := 3618,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3630, upper := 3657,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3658, upper := 3664,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3712, upper := 3743,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3744, upper := 3746,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3750, upper := 3773,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3774, upper := 3785,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3844, upper := 3867,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3868, upper := 3878,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3887, upper := 3915,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3916, upper := 3921,
        witness := RowWitness.topPrime 3911
      },
      {
        lower := 3971, upper := 4001,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4002, upper := 4005,
        witness := RowWitness.topPrime 4001
      },
      {
        lower := 4056, upper := 4080,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4114, upper := 4145,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4146, upper := 4148,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4253,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4254, upper := 4266,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4335, upper := 4361,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4362, upper := 4391,
        witness := RowWitness.topPrime 4357
      },
      {
        lower := 4392, upper := 4409,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4480, upper := 4497,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4498, upper := 4511,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4617, upper := 4637,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4638, upper := 4651,
        witness := RowWitness.topPrime 4637
      },
      {
        lower := 4736, upper := 4759,
        witness := RowWitness.topPrime 4733
      },
      {
        lower := 4761, upper := 4766,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4835,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4836, upper := 4836,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4894,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4913, upper := 4935,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5054, upper := 5085,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5086, upper := 5088,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5104,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5137,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5324, upper := 5324,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5358,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5380,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5410,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5415, upper := 5442,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5589, upper := 5611,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5766, upper := 5783,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5784, upper := 5810,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5832, upper := 5853,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5888, upper := 5915,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5916, upper := 5922,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6107,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6108, upper := 6109,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6144, upper := 6171,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6348, upper := 6352,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6358, upper := 6382,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6591, upper := 6595,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6687,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6688, upper := 6689,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6728, upper := 6753,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6754, upper := 6761,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6877, upper := 6893,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 6936, upper := 6946,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7220, upper := 7253,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7254, upper := 7254,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7424, upper := 7440,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7533, upper := 7548,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7581, upper := 7603,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7714,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7810,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7936, upper := 7967,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7968, upper := 7970,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8020,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8410, upper := 8415,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8464, upper := 8482,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8664, upper := 8697,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8698, upper := 8698,
        witness := RowWitness.topPrime 8693
      },
      {
        lower := 8704, upper := 8704,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8960, upper := 8985,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8986, upper := 8994,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9027,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9248, upper := 9275,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9276, upper := 9282,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9409,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9556,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9610, upper := 9635,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9636, upper := 9638,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9747, upper := 9762,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10108, upper := 10137,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10138, upper := 10142,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10240,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10601,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10602, upper := 10605,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10935, upper := 10943,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10944, upper := 10967,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11552, upper := 11566,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11664, upper := 11672,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11776, upper := 11777,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11778, upper := 11808,
        witness := RowWitness.topPrime 11777
      },
      {
        lower := 12005, upper := 12013,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12288, upper := 12308,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12500, upper := 12527,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12649,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 13312, upper := 13343,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13344, upper := 13344,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13456, upper := 13485,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13486, upper := 13488,
        witness := RowWitness.topPrime 13477
      },
      {
        lower := 13851, upper := 13858,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14317,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 15341, upper := 15343,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15393,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15394, upper := 15410,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15872, upper := 15893,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15894, upper := 15904,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 15979, upper := 16006,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16399, upper := 16415,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16416, upper := 16418,
        witness := RowWitness.topPrime 16411
      },
      {
        lower := 16820, upper := 16841,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16928, upper := 16930,
        witness := RowWitness.topPrime 16927
      },
      {
        lower := 17303, upper := 17332,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18259, upper := 18259,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18515, upper := 18536,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 19683, upper := 19686,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20184, upper := 20215,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21142, upper := 21173,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21174, upper := 21175,
        witness := RowWitness.topPrime 21169
      },
      {
        lower := 21870, upper := 21897,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21898, upper := 21900,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22627, upper := 22633,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23552, upper := 23582,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 24057, upper := 24059,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24576, upper := 24599,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26624, upper := 26631,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26632, upper := 26654,
        witness := RowWitness.topPrime 26627
      },
      {
        lower := 26912, upper := 26937,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26938, upper := 26942,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28594, upper := 28595,
        witness := RowWitness.topPrime 28591
      },
      {
        lower := 30618, upper := 30627,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30628, upper := 30628,
        witness := RowWitness.largeDivisor 14303490897463494516675862543180546846166241569527665681170565565386068032859947087143100170929235154267
      },
      {
        lower := 30629, upper := 30629,
        witness := RowWitness.largeDivisor 85919125847893581790795252762321429564860916460690894714370122122418097230528989867053542878092085416757
      },
      {
        lower := 30630, upper := 30630,
        witness := RowWitness.largeDivisor 415750841188148564020862336826209381922857799556234139826407083824591835414076296939628754874559332751227
      },
      {
        lower := 30631, upper := 30647,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 30752, upper := 30754,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30786,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31744, upper := 31747,
        witness := RowWitness.topPrime 31741
      },
      {
        lower := 43940, upper := 43957,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 49152, upper := 49164,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73728, upper := 73729,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 150903, upper := 150932,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 219501, upper := 219522,
        witness := RowWitness.topPrime 219491
      },
      {
        lower := 327701, upper := 327714,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 1190, upper := 2380, M := 38
      },
      {
        lower := 2380, upper := 4760, M := 37
      },
      {
        lower := 4760, upper := 9520, M := 36
      },
      {
        lower := 9520, upper := 19040, M := 35
      },
      {
        lower := 19040, upper := 38080, M := 34
      },
      {
        lower := 38080, upper := 76160, M := 34
      },
      {
        lower := 76160, upper := 152320, M := 33
      },
      {
        lower := 152320, upper := 304640, M := 32
      },
      {
        lower := 304640, upper := 609280, M := 31
      },
      {
        lower := 609280, upper := 1218560, M := 31
      },
      {
        lower := 1218560, upper := 2437120, M := 30
      },
      {
        lower := 2437120, upper := 4874240, M := 29
      },
      {
        lower := 4874240, upper := 9748480, M := 29
      },
      {
        lower := 9748480, upper := 19496960, M := 28
      },
      {
        lower := 19496960, upper := 38993920, M := 27
      },
      {
        lower := 38993920, upper := 77987840, M := 27
      },
      {
        lower := 77987840, upper := 155975680, M := 26
      },
      {
        lower := 155975680, upper := 311951360, M := 25
      },
      {
        lower := 311951360, upper := 623902720, M := 25
      },
      {
        lower := 623902720, upper := 1247805440, M := 24
      },
      {
        lower := 1247805440, upper := 2495610880, M := 24
      },
      {
        lower := 2495610880, upper := 4991221760, M := 23
      },
      {
        lower := 4991221760, upper := 9982443520, M := 23
      },
      {
        lower := 9982443520, upper := 19964887040, M := 22
      },
      {
        lower := 19964887040, upper := 39929774080, M := 22
      },
      {
        lower := 39929774080, upper := 79859548160, M := 21
      },
      {
        lower := 79859548160, upper := 159719096320, M := 21
      },
      {
        lower := 159719096320, upper := 319438192640, M := 20
      },
      {
        lower := 319438192640, upper := 638876385280, M := 20
      },
      {
        lower := 638876385280, upper := 1277752770560, M := 19
      },
      {
        lower := 1277752770560, upper := 2555505541120, M := 19
      },
      {
        lower := 2555505541120, upper := 5111011082240, M := 18
      },
      {
        lower := 5111011082240, upper := 10222022164480, M := 18
      },
      {
        lower := 10222022164480, upper := 20444044328960, M := 18
      },
      {
        lower := 20444044328960, upper := 40888088657920, M := 17
      },
      {
        lower := 40888088657920, upper := 81776177315840, M := 17
      },
      {
        lower := 81776177315840, upper := 163552354631680, M := 16
      },
      {
        lower := 163552354631680, upper := 327104709263360, M := 16
      },
      {
        lower := 327104709263360, upper := 654209418526720, M := 16
      },
      {
        lower := 654209418526720, upper := 1308418837053440, M := 15
      },
      {
        lower := 1308418837053440, upper := 2616837674106880, M := 15
      },
      {
        lower := 2616837674106880, upper := 5233675348213760, M := 15
      },
      {
        lower := 5233675348213760, upper := 10467350696427520, M := 14
      },
      {
        lower := 10467350696427520, upper := 20934701392855040, M := 14
      },
      {
        lower := 20934701392855040, upper := 41869402785710080, M := 14
      },
      {
        lower := 41869402785710080, upper := 83738805571420160, M := 13
      },
      {
        lower := 83738805571420160, upper := 167477611142840320, M := 13
      },
      {
        lower := 167477611142840320, upper := 334955222285680640, M := 13
      },
      {
        lower := 334955222285680640, upper := 669910444571361280, M := 12
      },
      {
        lower := 669910444571361280, upper := 1339820889142722560, M := 12
      },
      {
        lower := 1339820889142722560, upper := 2679641778285445120, M := 12
      },
      {
        lower := 2679641778285445120, upper := 5359283556570890240, M := 12
      },
      {
        lower := 5359283556570890240, upper := 10718567113141780480, M := 11
      },
      {
        lower := 10718567113141780480, upper := 21437134226283560960, M := 11
      },
      {
        lower := 21437134226283560960, upper := 42874268452567121920, M := 11
      },
      {
        lower := 42874268452567121920, upper := 85748536905134243840, M := 11
      },
      {
        lower := 85748536905134243840, upper := 171497073810268487680, M := 10
      },
      {
        lower := 171497073810268487680, upper := 342994147620536975360, M := 10
      },
      {
        lower := 342994147620536975360, upper := 685988295241073950720, M := 10
      },
      {
        lower := 685988295241073950720, upper := 1371976590482147901440, M := 10
      },
      {
        lower := 1371976590482147901440, upper := 2743953180964295802880, M := 9
      },
      {
        lower := 2743953180964295802880, upper := 5487906361928591605760, M := 9
      },
      {
        lower := 5487906361928591605760, upper := 10975812723857183211520, M := 9
      },
      {
        lower := 10975812723857183211520, upper := 21951625447714366423040, M := 9
      },
      {
        lower := 21951625447714366423040, upper := 43903250895428732846080, M := 9
      },
      {
        lower := 43903250895428732846080, upper := 87806501790857465692160, M := 8
      },
      {
        lower := 87806501790857465692160, upper := 175613003581714931384320, M := 8
      },
      {
        lower := 175613003581714931384320, upper := 351226007163429862768640, M := 8
      },
      {
        lower := 351226007163429862768640, upper := 702452014326859725537280, M := 8
      },
      {
        lower := 702452014326859725537280, upper := 1404904028653719451074560, M := 8
      },
      {
        lower := 1404904028653719451074560, upper := 2809808057307438902149120, M := 8
      },
      {
        lower := 2809808057307438902149120, upper := 5619616114614877804298240, M := 7
      },
      {
        lower := 5619616114614877804298240, upper := 11239232229229755608596480, M := 7
      },
      {
        lower := 11239232229229755608596480, upper := 22478464458459511217192960, M := 7
      },
      {
        lower := 22478464458459511217192960, upper := 44956928916919022434385920, M := 7
      },
      {
        lower := 44956928916919022434385920, upper := 89913857833838044868771840, M := 7
      },
      {
        lower := 89913857833838044868771840, upper := 179827715667676089737543680, M := 7
      },
      {
        lower := 179827715667676089737543680, upper := 359655431335352179475087360, M := 6
      },
      {
        lower := 359655431335352179475087360, upper := 719310862670704358950174720, M := 6
      },
      {
        lower := 719310862670704358950174720, upper := 1438621725341408717900349440, M := 6
      },
      {
        lower := 1438621725341408717900349440, upper := 2877243450682817435800698880, M := 6
      },
      {
        lower := 2877243450682817435800698880, upper := 5754486901365634871601397760, M := 6
      },
      {
        lower := 5754486901365634871601397760, upper := 11508973802731269743202795520, M := 6
      },
      {
        lower := 11508973802731269743202795520, upper := 23017947605462539486405591040, M := 6
      },
      {
        lower := 23017947605462539486405591040, upper := 46035895210925078972811182080, M := 6
      },
      {
        lower := 46035895210925078972811182080, upper := 92071790421850157945622364160, M := 5
      },
      {
        lower := 92071790421850157945622364160, upper := 184143580843700315891244728320, M := 5
      },
      {
        lower := 184143580843700315891244728320, upper := 368287161687400631782489456640, M := 5
      },
      {
        lower := 368287161687400631782489456640, upper := 736574323374801263564978913280, M := 5
      },
      {
        lower := 736574323374801263564978913280, upper := 1473148646749602527129957826560, M := 5
      },
      {
        lower := 1473148646749602527129957826560, upper := 2946297293499205054259915653120, M := 5
      },
      {
        lower := 2946297293499205054259915653120, upper := 5892594586998410108519831306240, M := 5
      },
      {
        lower := 5892594586998410108519831306240, upper := 11785189173996820217039662612480, M := 5
      },
      {
        lower := 11785189173996820217039662612480, upper := 23570378347993640434079325224960, M := 5
      },
      {
        lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4
      },
      {
        lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4
      },
      {
        lower := 94281513391974561736317300899840, upper := 188563026783949123472634601799680, M := 4
      },
      {
        lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4
      },
      {
        lower := 377126053567898246945269203599360, upper := 754252107135796493890538407198720, M := 4
      },
      {
        lower := 754252107135796493890538407198720, upper := 1508504214271592987781076814397440, M := 4
      },
      {
        lower := 1508504214271592987781076814397440, upper := 3017008428543185975562153628794880, M := 4
      },
      {
        lower := 3017008428543185975562153628794880, upper := 6034016857086371951124307257589760, M := 4
      },
      {
        lower := 6034016857086371951124307257589760, upper := 12068033714172743902248614515179520, M := 4
      },
      {
        lower := 12068033714172743902248614515179520, upper := 24136067428345487804497229030359040, M := 4
      },
      {
        lower := 24136067428345487804497229030359040, upper := 48272134856690975608994458060718080, M := 4
      },
      {
        lower := 48272134856690975608994458060718080, upper := 96544269713381951217988916121436160, M := 4
      },
      {
        lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4
      },
      {
        lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3
      },
      {
        lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3
      },
      {
        lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3
      },
      {
        lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3
      },
      {
        lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3
      },
      {
        lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3
      },
      {
        lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3
      },
      {
        lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3
      },
      {
        lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3
      },
      {
        lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3
      },
      {
        lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3
      },
      {
        lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3
      },
      {
        lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3
      },
      {
        lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3
      },
      {
        lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3
      },
      {
        lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3
      },
      {
        lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3
      },
      {
        lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2
      },
      {
        lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2
      },
      {
        lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2
      },
      {
        lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2
      },
      {
        lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2
      },
      {
        lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2
      },
      {
        lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2
      },
      {
        lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2
      },
      {
        lower := 6478976266174668344342652525500866746122240, upper := 12957952532349336688685305051001733492244480, M := 2
      },
      {
        lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2
      },
      {
        lower := 25915905064698673377370610102003466984488960, upper := 51831810129397346754741220204006933968977920, M := 2
      },
      {
        lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2
      },
      {
        lower := 103663620258794693509482440408013867937955840, upper := 207327240517589387018964880816027735875911680, M := 2
      },
      {
        lower := 207327240517589387018964880816027735875911680, upper := 414654481035178774037929761632055471751823360, M := 2
      },
      {
        lower := 414654481035178774037929761632055471751823360, upper := 829308962070357548075859523264110943503646720, M := 2
      },
      {
        lower := 829308962070357548075859523264110943503646720, upper := 1658617924140715096151719046528221887007293440, M := 2
      },
      {
        lower := 1658617924140715096151719046528221887007293440, upper := 3317235848281430192303438093056443774014586880, M := 2
      },
      {
        lower := 3317235848281430192303438093056443774014586880, upper := 6634471696562860384606876186112887548029173760, M := 2
      },
      {
        lower := 6634471696562860384606876186112887548029173760, upper := 13268943393125720769213752372225775096058347520, M := 2
      },
      {
        lower := 13268943393125720769213752372225775096058347520, upper := 26537886786251441538427504744451550192116695040, M := 2
      },
      {
        lower := 26537886786251441538427504744451550192116695040, upper := 53075773572502883076855009488903100384233390080, M := 2
      },
      {
        lower := 53075773572502883076855009488903100384233390080, upper := 106151547145005766153710018977806200768466780160, M := 2
      },
      {
        lower := 106151547145005766153710018977806200768466780160, upper := 212303094290011532307420037955612401536933560320, M := 2
      },
      {
        lower := 212303094290011532307420037955612401536933560320, upper := 424606188580023064614840075911224803073867120640, M := 2
      },
      {
        lower := 424606188580023064614840075911224803073867120640, upper := 849212377160046129229680151822449606147734241280, M := 2
      },
      {
        lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2
      },
      {
        lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2
      },
      {
        lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2
      },
      {
        lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 36, r := 11, s := 24,
      n0Power10 := 26
    },
    goods := [
      {
        lower := 74, upper := 108,
        witness := RowWitness.topPrime 73
      },
      {
        lower := 109, upper := 144,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 145, upper := 174,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 175, upper := 208,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 209, upper := 234,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 235, upper := 268,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 269, upper := 304,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 305, upper := 328,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 329, upper := 352,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 353, upper := 388,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 389, upper := 424,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 425, upper := 456,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 457, upper := 492,
        witness := RowWitness.topPrime 457
      },
      {
        lower := 493, upper := 526,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 527, upper := 558,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 559, upper := 592,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 593, upper := 628,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 629, upper := 654,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 655, upper := 688,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 689, upper := 718,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 719, upper := 754,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 755, upper := 786,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 787, upper := 822,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 823, upper := 858,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 859, upper := 894,
        witness := RowWitness.topPrime 859
      },
      {
        lower := 895, upper := 922,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 923, upper := 954,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 955, upper := 988,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 989, upper := 1018,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1019, upper := 1054,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1055, upper := 1086,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1087, upper := 1122,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1123, upper := 1158,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1159, upper := 1188,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1189, upper := 1222,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1223, upper := 1258,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1259, upper := 1260,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1274, upper := 1294,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1295, upper := 1309,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1331, upper := 1362,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1363, upper := 1366,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1372, upper := 1402,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1403, upper := 1407,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1444, upper := 1474,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1475, upper := 1493,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1500, upper := 1505,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1519, upper := 1546,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1547, upper := 1556,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1568, upper := 1571,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1573, upper := 1606,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1607, upper := 1608,
        witness := RowWitness.topPrime 1607
      },
      {
        lower := 1617, upper := 1622,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1625, upper := 1652,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1682, upper := 1704,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1705, upper := 1729,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1734, upper := 1768,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1769, upper := 1769,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1805, upper := 1836,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1837, upper := 1840,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1875, upper := 1894,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1936, upper := 1957,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2023, upper := 2052,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2053, upper := 2088,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2089, upper := 2092,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2125, upper := 2148,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2149, upper := 2151,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2178, upper := 2196,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2197, upper := 2214,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2215, upper := 2222,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2312, upper := 2334,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2375, upper := 2406,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2407, upper := 2410,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2436,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2523, upper := 2556,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2557, upper := 2576,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2625, upper := 2636,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2660,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2662, upper := 2680,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2750, upper := 2779,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2783, upper := 2785,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2875, upper := 2896,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2897, upper := 2925,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3025, upper := 3035,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3042, upper := 3060,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3077,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3107,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3146, upper := 3160,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3174, upper := 3204,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3205, upper := 3209,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3211, upper := 3214,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3250, upper := 3264,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3265, upper := 3285,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3375, upper := 3408,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3409, upper := 3415,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3500, upper := 3503,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3509, upper := 3534,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3535, upper := 3535,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3584, upper := 3584,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3619,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3625, upper := 3658,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3659, upper := 3660,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3718, upper := 3738,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3774,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3775, upper := 3792,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3872, upper := 3898,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3899, upper := 3910,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3993, upper := 4024,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4025, upper := 4028,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4056, upper := 4081,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4116, upper := 4131,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4225, upper := 4254,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4255, upper := 4260,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4335, upper := 4362,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4363, upper := 4367,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4375, upper := 4408,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4409, upper := 4410,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4761, upper := 4767,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4836,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4837, upper := 4837,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4913, upper := 4936,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5054, upper := 5086,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5087, upper := 5089,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5145, upper := 5154,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5155, upper := 5155,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5324, upper := 5325,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5491, upper := 5518,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5519, upper := 5523,
        witness := RowWitness.topPrime 5519
      },
      {
        lower := 5776, upper := 5784,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5785, upper := 5811,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5831, upper := 5854,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 6144, upper := 6172,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6174, upper := 6179,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6358, upper := 6383,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6526,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6527, upper := 6533,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6591, upper := 6596,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6682,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6728, upper := 6754,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6755, upper := 6762,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6860, upper := 6892,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6893, upper := 6910,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7203, upper := 7203,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7254,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7255, upper := 7255,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7514, upper := 7535,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7546, upper := 7549,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7596,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7597, upper := 7604,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7942, upper := 7970,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8125, upper := 8127,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8410, upper := 8416,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8664, upper := 8698,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8699, upper := 8699,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8993, upper := 8994,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9028,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9261, upper := 9286,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9410,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9610, upper := 9636,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9637, upper := 9639,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10108, upper := 10127,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10580, upper := 10602,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10603, upper := 10606,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10648, upper := 10660,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 12005, upper := 12014,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12500, upper := 12528,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13156,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13157, upper := 13157,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13456, upper := 13486,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13487, upper := 13489,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13750, upper := 13764,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13765, upper := 13785,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14318,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14410,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14415, upper := 14441,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 15376, upper := 15376,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15379, upper := 15411,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16007,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16820, upper := 16842,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17333,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 19220, upper := 19243,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19687,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20184, upper := 20216,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21875, upper := 21901,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 24025, upper := 24045,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24576, upper := 24600,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25021,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 34391, upper := 34410,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 43940, upper := 43958,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48048,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49165,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 68782, upper := 68785,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 327701, upper := 327715,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 1260, upper := 2520, M := 34
      },
      {
        lower := 2520, upper := 5040, M := 32
      },
      {
        lower := 5040, upper := 10080, M := 31
      },
      {
        lower := 10080, upper := 20160, M := 29
      },
      {
        lower := 20160, upper := 40320, M := 28
      },
      {
        lower := 40320, upper := 80640, M := 27
      },
      {
        lower := 80640, upper := 161280, M := 25
      },
      {
        lower := 161280, upper := 322560, M := 24
      },
      {
        lower := 322560, upper := 645120, M := 23
      },
      {
        lower := 645120, upper := 1290240, M := 22
      },
      {
        lower := 1290240, upper := 2580480, M := 21
      },
      {
        lower := 2580480, upper := 5160960, M := 20
      },
      {
        lower := 5160960, upper := 10321920, M := 19
      },
      {
        lower := 10321920, upper := 20643840, M := 18
      },
      {
        lower := 20643840, upper := 41287680, M := 18
      },
      {
        lower := 41287680, upper := 82575360, M := 17
      },
      {
        lower := 82575360, upper := 165150720, M := 16
      },
      {
        lower := 165150720, upper := 330301440, M := 15
      },
      {
        lower := 330301440, upper := 660602880, M := 15
      },
      {
        lower := 660602880, upper := 1321205760, M := 14
      },
      {
        lower := 1321205760, upper := 2642411520, M := 13
      },
      {
        lower := 2642411520, upper := 5284823040, M := 13
      },
      {
        lower := 5284823040, upper := 10569646080, M := 12
      },
      {
        lower := 10569646080, upper := 21139292160, M := 12
      },
      {
        lower := 21139292160, upper := 42278584320, M := 11
      },
      {
        lower := 42278584320, upper := 84557168640, M := 11
      },
      {
        lower := 84557168640, upper := 169114337280, M := 10
      },
      {
        lower := 169114337280, upper := 338228674560, M := 10
      },
      {
        lower := 338228674560, upper := 676457349120, M := 9
      },
      {
        lower := 676457349120, upper := 1352914698240, M := 9
      },
      {
        lower := 1352914698240, upper := 2705829396480, M := 9
      },
      {
        lower := 2705829396480, upper := 5411658792960, M := 8
      },
      {
        lower := 5411658792960, upper := 10823317585920, M := 8
      },
      {
        lower := 10823317585920, upper := 21646635171840, M := 8
      },
      {
        lower := 21646635171840, upper := 43293270343680, M := 7
      },
      {
        lower := 43293270343680, upper := 86586540687360, M := 7
      },
      {
        lower := 86586540687360, upper := 173173081374720, M := 7
      },
      {
        lower := 173173081374720, upper := 346346162749440, M := 6
      },
      {
        lower := 346346162749440, upper := 692692325498880, M := 6
      },
      {
        lower := 692692325498880, upper := 1385384650997760, M := 6
      },
      {
        lower := 1385384650997760, upper := 2770769301995520, M := 6
      },
      {
        lower := 2770769301995520, upper := 5541538603991040, M := 5
      },
      {
        lower := 5541538603991040, upper := 11083077207982080, M := 5
      },
      {
        lower := 11083077207982080, upper := 22166154415964160, M := 5
      },
      {
        lower := 22166154415964160, upper := 44332308831928320, M := 5
      },
      {
        lower := 44332308831928320, upper := 88664617663856640, M := 5
      },
      {
        lower := 88664617663856640, upper := 177329235327713280, M := 4
      },
      {
        lower := 177329235327713280, upper := 354658470655426560, M := 4
      },
      {
        lower := 354658470655426560, upper := 709316941310853120, M := 4
      },
      {
        lower := 709316941310853120, upper := 1418633882621706240, M := 4
      },
      {
        lower := 1418633882621706240, upper := 2837267765243412480, M := 4
      },
      {
        lower := 2837267765243412480, upper := 5674535530486824960, M := 4
      },
      {
        lower := 5674535530486824960, upper := 11349071060973649920, M := 3
      },
      {
        lower := 11349071060973649920, upper := 22698142121947299840, M := 3
      },
      {
        lower := 22698142121947299840, upper := 45396284243894599680, M := 3
      },
      {
        lower := 45396284243894599680, upper := 90792568487789199360, M := 3
      },
      {
        lower := 90792568487789199360, upper := 181585136975578398720, M := 3
      },
      {
        lower := 181585136975578398720, upper := 363170273951156797440, M := 3
      },
      {
        lower := 363170273951156797440, upper := 726340547902313594880, M := 3
      },
      {
        lower := 726340547902313594880, upper := 1452681095804627189760, M := 3
      },
      {
        lower := 1452681095804627189760, upper := 2905362191609254379520, M := 2
      },
      {
        lower := 2905362191609254379520, upper := 5810724383218508759040, M := 2
      },
      {
        lower := 5810724383218508759040, upper := 11621448766437017518080, M := 2
      },
      {
        lower := 11621448766437017518080, upper := 23242897532874035036160, M := 2
      },
      {
        lower := 23242897532874035036160, upper := 46485795065748070072320, M := 2
      },
      {
        lower := 46485795065748070072320, upper := 92971590131496140144640, M := 2
      },
      {
        lower := 92971590131496140144640, upper := 185943180262992280289280, M := 2
      },
      {
        lower := 185943180262992280289280, upper := 371886360525984560578560, M := 2
      },
      {
        lower := 371886360525984560578560, upper := 743772721051969121157120, M := 2
      },
      {
        lower := 743772721051969121157120, upper := 1487545442103938242314240, M := 2
      },
      {
        lower := 1487545442103938242314240, upper := 2975090884207876484628480, M := 2
      },
      {
        lower := 2975090884207876484628480, upper := 5950181768415752969256960, M := 2
      },
      {
        lower := 5950181768415752969256960, upper := 11900363536831505938513920, M := 2
      },
      {
        lower := 11900363536831505938513920, upper := 23800727073663011877027840, M := 2
      },
      {
        lower := 23800727073663011877027840, upper := 47601454147326023754055680, M := 2
      },
      {
        lower := 47601454147326023754055680, upper := 95202908294652047508111360, M := 1
      },
      {
        lower := 95202908294652047508111360, upper := 100000000000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 37, r := 12, s := 25,
      n0Power10 := 18
    },
    goods := [
      {
        lower := 76, upper := 109,
        witness := RowWitness.topPrime 73
      },
      {
        lower := 110, upper := 145,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 146, upper := 175,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 176, upper := 209,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 210, upper := 235,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 236, upper := 269,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 270, upper := 305,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 306, upper := 329,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 330, upper := 353,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 354, upper := 389,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 390, upper := 425,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 426, upper := 457,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 458, upper := 493,
        witness := RowWitness.topPrime 457
      },
      {
        lower := 494, upper := 527,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 528, upper := 559,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 560, upper := 593,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 594, upper := 629,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 630, upper := 655,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 656, upper := 689,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 690, upper := 719,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 720, upper := 755,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 756, upper := 787,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 788, upper := 823,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 824, upper := 859,
        witness := RowWitness.topPrime 823
      },
      {
        lower := 860, upper := 895,
        witness := RowWitness.topPrime 859
      },
      {
        lower := 896, upper := 923,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 924, upper := 955,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 956, upper := 989,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 990, upper := 1019,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1020, upper := 1055,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1056, upper := 1087,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1088, upper := 1123,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1124, upper := 1159,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1160, upper := 1189,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1190, upper := 1223,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1224, upper := 1259,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1260, upper := 1295,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1296, upper := 1327,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1328, upper := 1363,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1364, upper := 1397,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1398, upper := 1413,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1421, upper := 1445,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1446, upper := 1475,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1476, upper := 1507,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1508, upper := 1508,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1521, upper := 1547,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1548, upper := 1575,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1587, upper := 1619,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1620, upper := 1655,
        witness := RowWitness.topPrime 1619
      },
      {
        lower := 1656, upper := 1656,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1682, upper := 1705,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1706, upper := 1735,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1736, upper := 1769,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1770, upper := 1770,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1782, upper := 1786,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1792, upper := 1825,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1826, upper := 1841,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1859, upper := 1883,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1884, upper := 1899,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1922, upper := 1949,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1950, upper := 1972,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2023, upper := 2053,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2054, upper := 2089,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2090, upper := 2093,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2116, upper := 2149,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2150, upper := 2152,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2176, upper := 2197,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2198, upper := 2215,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2216, upper := 2223,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2268, upper := 2286,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2333,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2334, upper := 2340,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2366, upper := 2393,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2394, upper := 2411,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2420, upper := 2453,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2454, upper := 2466,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2523, upper := 2557,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2558, upper := 2577,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2625, upper := 2637,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2669,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2670, upper := 2699,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2700, upper := 2724,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2750, upper := 2780,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2783, upper := 2786,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2819,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2897,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2898, upper := 2933,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2934, upper := 2940,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 2944, upper := 2952,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3036,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3042, upper := 3061,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3078,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3108,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3146, upper := 3173,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3174, upper := 3205,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3206, upper := 3236,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3250, upper := 3265,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3266, upper := 3286,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3364, upper := 3364,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3375, upper := 3409,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3410, upper := 3424,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3430, upper := 3438,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3466,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3468, upper := 3492,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3500, upper := 3504,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3584, upper := 3585,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3620,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3645, upper := 3646,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3718, upper := 3739,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3754,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3757, upper := 3775,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3776, upper := 3793,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3844, upper := 3869,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3870, upper := 3876,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3888, upper := 3917,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3918, upper := 3923,
        witness := RowWitness.topPrime 3917
      },
      {
        lower := 3993, upper := 4007,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4082,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4116, upper := 4147,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4148, upper := 4152,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4255,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4256, upper := 4261,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4335, upper := 4363,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4364, upper := 4371,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4374, upper := 4409,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4410, upper := 4411,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4617, upper := 4639,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4640, upper := 4653,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4761, upper := 4768,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4837,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4838, upper := 4838,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4896,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5054, upper := 5082,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5120, upper := 5139,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5155,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5156, upper := 5156,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5324, upper := 5326,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5360,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5382,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5491, upper := 5519,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5520, upper := 5524,
        witness := RowWitness.topPrime 5519
      },
      {
        lower := 5625, upper := 5625,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5632, upper := 5659,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5660, upper := 5661,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5785,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5786, upper := 5812,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5831, upper := 5863,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5864, upper := 5867,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5888, upper := 5917,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5918, upper := 5923,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6105,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6179,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6180, upper := 6180,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6354,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6358, upper := 6384,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6527,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6528, upper := 6534,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6591, upper := 6597,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6689,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6690, upper := 6691,
        witness := RowWitness.topPrime 6689
      },
      {
        lower := 6728, upper := 6755,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6756, upper := 6763,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6860, upper := 6893,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6894, upper := 6911,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7203, upper := 7204,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7255,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7256, upper := 7256,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7514, upper := 7536,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7546, upper := 7550,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7597,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7598, upper := 7605,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7716,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7942, upper := 7971,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8019, upper := 8022,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8664, upper := 8685,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8750, upper := 8783,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8784, upper := 8784,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 9025, upper := 9029,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9252,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9386, upper := 9411,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9610, upper := 9637,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9638, upper := 9640,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10240, upper := 10242,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10603,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10604, upper := 10607,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10648, upper := 10661,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10945,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10946, upper := 10969,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11264, upper := 11286,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11674,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11776, upper := 11779,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11780, upper := 11810,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 12005, upper := 12015,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12500, upper := 12529,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13157,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13158, upper := 13158,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13312, upper := 13345,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13346, upper := 13346,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13456, upper := 13487,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13488, upper := 13490,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13750, upper := 13754,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 14406, upper := 14411,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14415, upper := 14442,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 15376, upper := 15409,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15410, upper := 15412,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15979, upper := 16008,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16820, upper := 16843,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17334,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 19220, upper := 19244,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19688,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20184, upper := 20217,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21875, upper := 21906,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 24576, upper := 24601,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26624, upper := 26633,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26634, upper := 26656,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 30618, upper := 30629,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30630, upper := 30630,
        witness := RowWitness.largeDivisor 12089236669596647848536258343394961775881123110993437634153872729971791492211219811840006525763101782550942319
      },
      {
        lower := 30631, upper := 30649,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 34391, upper := 34411,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 43750, upper := 43757,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43758, upper := 43776,
        witness := RowWitness.topPrime 43753
      },
      {
        lower := 43940, upper := 43959,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48049,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49166,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65646,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 73728, upper := 73731,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327716,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 1332, upper := 2664, M := 30
      },
      {
        lower := 2664, upper := 5328, M := 28
      },
      {
        lower := 5328, upper := 10656, M := 26
      },
      {
        lower := 10656, upper := 21312, M := 24
      },
      {
        lower := 21312, upper := 42624, M := 23
      },
      {
        lower := 42624, upper := 85248, M := 21
      },
      {
        lower := 85248, upper := 170496, M := 20
      },
      {
        lower := 170496, upper := 340992, M := 18
      },
      {
        lower := 340992, upper := 681984, M := 17
      },
      {
        lower := 681984, upper := 1363968, M := 16
      },
      {
        lower := 1363968, upper := 2727936, M := 15
      },
      {
        lower := 2727936, upper := 5455872, M := 14
      },
      {
        lower := 5455872, upper := 10911744, M := 13
      },
      {
        lower := 10911744, upper := 21823488, M := 12
      },
      {
        lower := 21823488, upper := 43646976, M := 12
      },
      {
        lower := 43646976, upper := 87293952, M := 11
      },
      {
        lower := 87293952, upper := 174587904, M := 10
      },
      {
        lower := 174587904, upper := 349175808, M := 9
      },
      {
        lower := 349175808, upper := 698351616, M := 9
      },
      {
        lower := 698351616, upper := 1396703232, M := 8
      },
      {
        lower := 1396703232, upper := 2793406464, M := 8
      },
      {
        lower := 2793406464, upper := 5586812928, M := 7
      },
      {
        lower := 5586812928, upper := 11173625856, M := 7
      },
      {
        lower := 11173625856, upper := 22347251712, M := 6
      },
      {
        lower := 22347251712, upper := 44694503424, M := 6
      },
      {
        lower := 44694503424, upper := 89389006848, M := 6
      },
      {
        lower := 89389006848, upper := 178778013696, M := 5
      },
      {
        lower := 178778013696, upper := 357556027392, M := 5
      },
      {
        lower := 357556027392, upper := 715112054784, M := 5
      },
      {
        lower := 715112054784, upper := 1430224109568, M := 4
      },
      {
        lower := 1430224109568, upper := 2860448219136, M := 4
      },
      {
        lower := 2860448219136, upper := 5720896438272, M := 4
      },
      {
        lower := 5720896438272, upper := 11441792876544, M := 4
      },
      {
        lower := 11441792876544, upper := 22883585753088, M := 3
      },
      {
        lower := 22883585753088, upper := 45767171506176, M := 3
      },
      {
        lower := 45767171506176, upper := 91534343012352, M := 3
      },
      {
        lower := 91534343012352, upper := 183068686024704, M := 3
      },
      {
        lower := 183068686024704, upper := 366137372049408, M := 3
      },
      {
        lower := 366137372049408, upper := 732274744098816, M := 3
      },
      {
        lower := 732274744098816, upper := 1464549488197632, M := 2
      },
      {
        lower := 1464549488197632, upper := 2929098976395264, M := 2
      },
      {
        lower := 2929098976395264, upper := 5858197952790528, M := 2
      },
      {
        lower := 5858197952790528, upper := 11716395905581056, M := 2
      },
      {
        lower := 11716395905581056, upper := 23432791811162112, M := 2
      },
      {
        lower := 23432791811162112, upper := 46865583622324224, M := 2
      },
      {
        lower := 46865583622324224, upper := 93731167244648448, M := 2
      },
      {
        lower := 93731167244648448, upper := 187462334489296896, M := 2
      },
      {
        lower := 187462334489296896, upper := 374924668978593792, M := 2
      },
      {
        lower := 374924668978593792, upper := 749849337957187584, M := 2
      },
      {
        lower := 749849337957187584, upper := 1000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 38, r := 12, s := 25,
      n0Power10 := 54
    },
    goods := [
      {
        lower := 78, upper := 110,
        witness := RowWitness.topPrime 73
      },
      {
        lower := 111, upper := 146,
        witness := RowWitness.topPrime 109
      },
      {
        lower := 147, upper := 176,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 177, upper := 210,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 211, upper := 248,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 249, upper := 278,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 279, upper := 314,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 315, upper := 350,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 351, upper := 386,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 387, upper := 420,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 421, upper := 458,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 459, upper := 494,
        witness := RowWitness.topPrime 457
      },
      {
        lower := 495, upper := 528,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 529, upper := 560,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 561, upper := 594,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 595, upper := 630,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 631, upper := 668,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 669, upper := 698,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 699, upper := 728,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 729, upper := 764,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 765, upper := 798,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 799, upper := 834,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 835, upper := 866,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 867, upper := 900,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 901, upper := 924,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 925, upper := 956,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 957, upper := 990,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 991, upper := 1028,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1029, upper := 1058,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1059, upper := 1088,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1089, upper := 1124,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1125, upper := 1160,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1161, upper := 1190,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1191, upper := 1224,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1225, upper := 1260,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1261, upper := 1296,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1297, upper := 1334,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1335, upper := 1364,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1365, upper := 1398,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1399, upper := 1436,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1437, upper := 1470,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1471, upper := 1508,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1509, upper := 1517,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1519, upper := 1548,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1549, upper := 1586,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1587, upper := 1610,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1617, upper := 1650,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1651, upper := 1657,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1666, upper := 1700,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1701, upper := 1736,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1737, upper := 1770,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1771, upper := 1796,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1797, upper := 1826,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1827, upper := 1850,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1862, upper := 1898,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1899, upper := 1900,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1911, upper := 1912,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 1920, upper := 1950,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1951, upper := 1981,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2023, upper := 2054,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2055, upper := 2090,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2091, upper := 2094,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2116, upper := 2150,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2151, upper := 2153,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2178, upper := 2198,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2199, upper := 2216,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2217, upper := 2224,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2268, upper := 2287,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2334,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2335, upper := 2341,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2349, upper := 2349,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2366, upper := 2394,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2395, upper := 2412,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2420, upper := 2454,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2455, upper := 2467,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2511, upper := 2540,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2541, upper := 2576,
        witness := RowWitness.topPrime 2539
      },
      {
        lower := 2577, upper := 2578,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2592, upper := 2597,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2601, upper := 2630,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2631, upper := 2638,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2670,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2671, upper := 2699,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2704, upper := 2710,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2738, upper := 2741,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2744, upper := 2778,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2779, upper := 2791,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2820,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2853,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2875, upper := 2898,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2899, upper := 2934,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2935, upper := 2941,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3000, upper := 3036,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3037, upper := 3037,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3042, upper := 3062,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3104,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3105, upper := 3115,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3146, upper := 3174,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3175, upper := 3206,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3207, upper := 3216,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3240, upper := 3248,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3250, upper := 3266,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3267, upper := 3287,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3364, upper := 3365,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3375, upper := 3410,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3411, upper := 3425,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3430, upper := 3439,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3500, upper := 3505,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3509, upper := 3536,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3537, upper := 3537,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3584, upper := 3586,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3630, upper := 3660,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3661, upper := 3667,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3718, upper := 3740,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3776,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3777, upper := 3794,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3844, upper := 3870,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3871, upper := 3900,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3901, upper := 3924,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4000, upper := 4026,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4027, upper := 4030,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4083,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4107, upper := 4136,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4137, upper := 4162,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4225, upper := 4256,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4257, upper := 4272,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4352, upper := 4386,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4387, upper := 4410,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4411, upper := 4412,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4477, upper := 4496,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4500, upper := 4514,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4598, upper := 4600,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4608, upper := 4640,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4641, upper := 4661,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4732, upper := 4766,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4767, upper := 4787,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4838,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4839, upper := 4842,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4860, upper := 4868,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4869, upper := 4898,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4899, upper := 4926,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4927, upper := 4938,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5070, upper := 5083,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5103, upper := 5107,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5140,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5156,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5157, upper := 5157,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5239,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5327,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5361,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5488, upper := 5520,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5521, upper := 5525,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5589, upper := 5614,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5625, upper := 5626,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5632, upper := 5660,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5661, upper := 5662,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5766, upper := 5786,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5787, upper := 5803,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5831, upper := 5864,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5865, upper := 5868,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5915, upper := 5924,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6110,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6111, upper := 6112,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6174, upper := 6181,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6253, upper := 6284,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6285, upper := 6287,
        witness := RowWitness.topPrime 6277
      },
      {
        lower := 6348, upper := 6355,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6358, upper := 6385,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6591, upper := 6598,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6690,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6691, upper := 6692,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6728, upper := 6756,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6757, upper := 6764,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6859, upper := 6894,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6895, upper := 6912,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7203, upper := 7205,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7225, upper := 7240,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7514, upper := 7544,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7545, upper := 7578,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7579, upper := 7583,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7717,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7813,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 8019, upper := 8023,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8129,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8229,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8232, upper := 8251,
        witness := RowWitness.topPrime 8231
      },
      {
        lower := 8262, upper := 8269,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8410, upper := 8418,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8670, upper := 8686,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8704, upper := 8707,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8750, upper := 8784,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8785, upper := 8785,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8991, upper := 9008,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9009, upper := 9028,
        witness := RowWitness.topPrime 9007
      },
      {
        lower := 9234, upper := 9264,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9265, upper := 9288,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9537, upper := 9559,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9604, upper := 9638,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9639, upper := 9641,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10115, upper := 10129,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10243,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10604,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10605, upper := 10608,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10633, upper := 10668,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10669, upper := 10670,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 10946,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10947, upper := 10972,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 10976, upper := 11010,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11011, upper := 11019,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11264, upper := 11287,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11662, upper := 11694,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11695, upper := 11699,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 12005, upper := 12016,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12325,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12348, upper := 12358,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12500, upper := 12530,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12696, upper := 12726,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12727, upper := 12728,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 13125, upper := 13158,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13159, upper := 13159,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13312, upper := 13346,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13347, upper := 13347,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13456, upper := 13488,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13489, upper := 13491,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13727,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13766,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13767, upper := 13787,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14320,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14412,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14415, upper := 14443,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 15341, upper := 15346,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15396,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15397, upper := 15413,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15979, upper := 16009,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16399, upper := 16418,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16419, upper := 16421,
        witness := RowWitness.topPrime 16417
      },
      {
        lower := 16428, upper := 16436,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16820, upper := 16844,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17335,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17533,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 18259, upper := 18262,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18515, upper := 18539,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 19220, upper := 19245,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19375, upper := 19380,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19689,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20002,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20184, upper := 20218,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21142, upper := 21176,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21177, upper := 21178,
        witness := RowWitness.topPrime 21169
      },
      {
        lower := 21870, upper := 21900,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21901, upper := 21912,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22528, upper := 22537,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 22627, upper := 22636,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 24025, upper := 24047,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24057, upper := 24062,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24576, upper := 24602,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25023,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 26624, upper := 26634,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26635, upper := 26657,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 26912, upper := 26940,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26941, upper := 26945,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28594, upper := 28598,
        witness := RowWitness.topPrime 28591
      },
      {
        lower := 28830, upper := 28849,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 30618, upper := 30630,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30631, upper := 30650,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 30752, upper := 30764,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30765, upper := 30789,
        witness := RowWitness.topPrime 30763
      },
      {
        lower := 31250, upper := 31250,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32805,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33635, upper := 33651,
        witness := RowWitness.topPrime 33629
      },
      {
        lower := 34391, upper := 34412,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34606, upper := 34633,
        witness := RowWitness.topPrime 34603
      },
      {
        lower := 35594, upper := 35594,
        witness := RowWitness.topPrime 35593
      },
      {
        lower := 43750, upper := 43758,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43759, upper := 43777,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43960,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 47916, upper := 47948,
        witness := RowWitness.topPrime 47911
      },
      {
        lower := 47949, upper := 47952,
        witness := RowWitness.topPrime 47947
      },
      {
        lower := 49152, upper := 49167,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65647,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68787,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 69632, upper := 69660,
        witness := RowWitness.topPrime 69623
      },
      {
        lower := 69661, upper := 69666,
        witness := RowWitness.topPrime 69661
      },
      {
        lower := 73728, upper := 73732,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327717,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 658503, upper := 658524,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658525, upper := 658526,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 1406, upper := 2812, M := 40
      },
      {
        lower := 2812, upper := 5624, M := 40
      },
      {
        lower := 5624, upper := 11248, M := 39
      },
      {
        lower := 11248, upper := 22496, M := 38
      },
      {
        lower := 22496, upper := 44992, M := 37
      },
      {
        lower := 44992, upper := 89984, M := 36
      },
      {
        lower := 89984, upper := 179968, M := 36
      },
      {
        lower := 179968, upper := 359936, M := 35
      },
      {
        lower := 359936, upper := 719872, M := 34
      },
      {
        lower := 719872, upper := 1439744, M := 33
      },
      {
        lower := 1439744, upper := 2879488, M := 33
      },
      {
        lower := 2879488, upper := 5758976, M := 32
      },
      {
        lower := 5758976, upper := 11517952, M := 31
      },
      {
        lower := 11517952, upper := 23035904, M := 31
      },
      {
        lower := 23035904, upper := 46071808, M := 30
      },
      {
        lower := 46071808, upper := 92143616, M := 29
      },
      {
        lower := 92143616, upper := 184287232, M := 29
      },
      {
        lower := 184287232, upper := 368574464, M := 28
      },
      {
        lower := 368574464, upper := 737148928, M := 28
      },
      {
        lower := 737148928, upper := 1474297856, M := 27
      },
      {
        lower := 1474297856, upper := 2948595712, M := 26
      },
      {
        lower := 2948595712, upper := 5897191424, M := 26
      },
      {
        lower := 5897191424, upper := 11794382848, M := 25
      },
      {
        lower := 11794382848, upper := 23588765696, M := 25
      },
      {
        lower := 23588765696, upper := 47177531392, M := 24
      },
      {
        lower := 47177531392, upper := 94355062784, M := 24
      },
      {
        lower := 94355062784, upper := 188710125568, M := 23
      },
      {
        lower := 188710125568, upper := 377420251136, M := 23
      },
      {
        lower := 377420251136, upper := 754840502272, M := 22
      },
      {
        lower := 754840502272, upper := 1509681004544, M := 22
      },
      {
        lower := 1509681004544, upper := 3019362009088, M := 21
      },
      {
        lower := 3019362009088, upper := 6038724018176, M := 21
      },
      {
        lower := 6038724018176, upper := 12077448036352, M := 21
      },
      {
        lower := 12077448036352, upper := 24154896072704, M := 20
      },
      {
        lower := 24154896072704, upper := 48309792145408, M := 20
      },
      {
        lower := 48309792145408, upper := 96619584290816, M := 19
      },
      {
        lower := 96619584290816, upper := 193239168581632, M := 19
      },
      {
        lower := 193239168581632, upper := 386478337163264, M := 18
      },
      {
        lower := 386478337163264, upper := 772956674326528, M := 18
      },
      {
        lower := 772956674326528, upper := 1545913348653056, M := 18
      },
      {
        lower := 1545913348653056, upper := 3091826697306112, M := 17
      },
      {
        lower := 3091826697306112, upper := 6183653394612224, M := 17
      },
      {
        lower := 6183653394612224, upper := 12367306789224448, M := 17
      },
      {
        lower := 12367306789224448, upper := 24734613578448896, M := 16
      },
      {
        lower := 24734613578448896, upper := 49469227156897792, M := 16
      },
      {
        lower := 49469227156897792, upper := 98938454313795584, M := 16
      },
      {
        lower := 98938454313795584, upper := 197876908627591168, M := 15
      },
      {
        lower := 197876908627591168, upper := 395753817255182336, M := 15
      },
      {
        lower := 395753817255182336, upper := 791507634510364672, M := 15
      },
      {
        lower := 791507634510364672, upper := 1583015269020729344, M := 14
      },
      {
        lower := 1583015269020729344, upper := 3166030538041458688, M := 14
      },
      {
        lower := 3166030538041458688, upper := 6332061076082917376, M := 14
      },
      {
        lower := 6332061076082917376, upper := 12664122152165834752, M := 14
      },
      {
        lower := 12664122152165834752, upper := 25328244304331669504, M := 13
      },
      {
        lower := 25328244304331669504, upper := 50656488608663339008, M := 13
      },
      {
        lower := 50656488608663339008, upper := 101312977217326678016, M := 13
      },
      {
        lower := 101312977217326678016, upper := 202625954434653356032, M := 12
      },
      {
        lower := 202625954434653356032, upper := 405251908869306712064, M := 12
      },
      {
        lower := 405251908869306712064, upper := 810503817738613424128, M := 12
      },
      {
        lower := 810503817738613424128, upper := 1621007635477226848256, M := 12
      },
      {
        lower := 1621007635477226848256, upper := 3242015270954453696512, M := 11
      },
      {
        lower := 3242015270954453696512, upper := 6484030541908907393024, M := 11
      },
      {
        lower := 6484030541908907393024, upper := 12968061083817814786048, M := 11
      },
      {
        lower := 12968061083817814786048, upper := 25936122167635629572096, M := 11
      },
      {
        lower := 25936122167635629572096, upper := 51872244335271259144192, M := 11
      },
      {
        lower := 51872244335271259144192, upper := 103744488670542518288384, M := 10
      },
      {
        lower := 103744488670542518288384, upper := 207488977341085036576768, M := 10
      },
      {
        lower := 207488977341085036576768, upper := 414977954682170073153536, M := 10
      },
      {
        lower := 414977954682170073153536, upper := 829955909364340146307072, M := 10
      },
      {
        lower := 829955909364340146307072, upper := 1659911818728680292614144, M := 10
      },
      {
        lower := 1659911818728680292614144, upper := 3319823637457360585228288, M := 9
      },
      {
        lower := 3319823637457360585228288, upper := 6639647274914721170456576, M := 9
      },
      {
        lower := 6639647274914721170456576, upper := 13279294549829442340913152, M := 9
      },
      {
        lower := 13279294549829442340913152, upper := 26558589099658884681826304, M := 9
      },
      {
        lower := 26558589099658884681826304, upper := 53117178199317769363652608, M := 9
      },
      {
        lower := 53117178199317769363652608, upper := 106234356398635538727305216, M := 8
      },
      {
        lower := 106234356398635538727305216, upper := 212468712797271077454610432, M := 8
      },
      {
        lower := 212468712797271077454610432, upper := 424937425594542154909220864, M := 8
      },
      {
        lower := 424937425594542154909220864, upper := 849874851189084309818441728, M := 8
      },
      {
        lower := 849874851189084309818441728, upper := 1699749702378168619636883456, M := 8
      },
      {
        lower := 1699749702378168619636883456, upper := 3399499404756337239273766912, M := 8
      },
      {
        lower := 3399499404756337239273766912, upper := 6798998809512674478547533824, M := 7
      },
      {
        lower := 6798998809512674478547533824, upper := 13597997619025348957095067648, M := 7
      },
      {
        lower := 13597997619025348957095067648, upper := 27195995238050697914190135296, M := 7
      },
      {
        lower := 27195995238050697914190135296, upper := 54391990476101395828380270592, M := 7
      },
      {
        lower := 54391990476101395828380270592, upper := 108783980952202791656760541184, M := 7
      },
      {
        lower := 108783980952202791656760541184, upper := 217567961904405583313521082368, M := 7
      },
      {
        lower := 217567961904405583313521082368, upper := 435135923808811166627042164736, M := 7
      },
      {
        lower := 435135923808811166627042164736, upper := 870271847617622333254084329472, M := 6
      },
      {
        lower := 870271847617622333254084329472, upper := 1740543695235244666508168658944, M := 6
      },
      {
        lower := 1740543695235244666508168658944, upper := 3481087390470489333016337317888, M := 6
      },
      {
        lower := 3481087390470489333016337317888, upper := 6962174780940978666032674635776, M := 6
      },
      {
        lower := 6962174780940978666032674635776, upper := 13924349561881957332065349271552, M := 6
      },
      {
        lower := 13924349561881957332065349271552, upper := 27848699123763914664130698543104, M := 6
      },
      {
        lower := 27848699123763914664130698543104, upper := 55697398247527829328261397086208, M := 6
      },
      {
        lower := 55697398247527829328261397086208, upper := 111394796495055658656522794172416, M := 6
      },
      {
        lower := 111394796495055658656522794172416, upper := 222789592990111317313045588344832, M := 6
      },
      {
        lower := 222789592990111317313045588344832, upper := 445579185980222634626091176689664, M := 5
      },
      {
        lower := 445579185980222634626091176689664, upper := 891158371960445269252182353379328, M := 5
      },
      {
        lower := 891158371960445269252182353379328, upper := 1782316743920890538504364706758656, M := 5
      },
      {
        lower := 1782316743920890538504364706758656, upper := 3564633487841781077008729413517312, M := 5
      },
      {
        lower := 3564633487841781077008729413517312, upper := 7129266975683562154017458827034624, M := 5
      },
      {
        lower := 7129266975683562154017458827034624, upper := 14258533951367124308034917654069248, M := 5
      },
      {
        lower := 14258533951367124308034917654069248, upper := 28517067902734248616069835308138496, M := 5
      },
      {
        lower := 28517067902734248616069835308138496, upper := 57034135805468497232139670616276992, M := 5
      },
      {
        lower := 57034135805468497232139670616276992, upper := 114068271610936994464279341232553984, M := 5
      },
      {
        lower := 114068271610936994464279341232553984, upper := 228136543221873988928558682465107968, M := 5
      },
      {
        lower := 228136543221873988928558682465107968, upper := 456273086443747977857117364930215936, M := 4
      },
      {
        lower := 456273086443747977857117364930215936, upper := 912546172887495955714234729860431872, M := 4
      },
      {
        lower := 912546172887495955714234729860431872, upper := 1825092345774991911428469459720863744, M := 4
      },
      {
        lower := 1825092345774991911428469459720863744, upper := 3650184691549983822856938919441727488, M := 4
      },
      {
        lower := 3650184691549983822856938919441727488, upper := 7300369383099967645713877838883454976, M := 4
      },
      {
        lower := 7300369383099967645713877838883454976, upper := 14600738766199935291427755677766909952, M := 4
      },
      {
        lower := 14600738766199935291427755677766909952, upper := 29201477532399870582855511355533819904, M := 4
      },
      {
        lower := 29201477532399870582855511355533819904, upper := 58402955064799741165711022711067639808, M := 4
      },
      {
        lower := 58402955064799741165711022711067639808, upper := 116805910129599482331422045422135279616, M := 4
      },
      {
        lower := 116805910129599482331422045422135279616, upper := 233611820259198964662844090844270559232, M := 4
      },
      {
        lower := 233611820259198964662844090844270559232, upper := 467223640518397929325688181688541118464, M := 4
      },
      {
        lower := 467223640518397929325688181688541118464, upper := 934447281036795858651376363377082236928, M := 4
      },
      {
        lower := 934447281036795858651376363377082236928, upper := 1868894562073591717302752726754164473856, M := 4
      },
      {
        lower := 1868894562073591717302752726754164473856, upper := 3737789124147183434605505453508328947712, M := 4
      },
      {
        lower := 3737789124147183434605505453508328947712, upper := 7475578248294366869211010907016657895424, M := 3
      },
      {
        lower := 7475578248294366869211010907016657895424, upper := 14951156496588733738422021814033315790848, M := 3
      },
      {
        lower := 14951156496588733738422021814033315790848, upper := 29902312993177467476844043628066631581696, M := 3
      },
      {
        lower := 29902312993177467476844043628066631581696, upper := 59804625986354934953688087256133263163392, M := 3
      },
      {
        lower := 59804625986354934953688087256133263163392, upper := 119609251972709869907376174512266526326784, M := 3
      },
      {
        lower := 119609251972709869907376174512266526326784, upper := 239218503945419739814752349024533052653568, M := 3
      },
      {
        lower := 239218503945419739814752349024533052653568, upper := 478437007890839479629504698049066105307136, M := 3
      },
      {
        lower := 478437007890839479629504698049066105307136, upper := 956874015781678959259009396098132210614272, M := 3
      },
      {
        lower := 956874015781678959259009396098132210614272, upper := 1913748031563357918518018792196264421228544, M := 3
      },
      {
        lower := 1913748031563357918518018792196264421228544, upper := 3827496063126715837036037584392528842457088, M := 3
      },
      {
        lower := 3827496063126715837036037584392528842457088, upper := 7654992126253431674072075168785057684914176, M := 3
      },
      {
        lower := 7654992126253431674072075168785057684914176, upper := 15309984252506863348144150337570115369828352, M := 3
      },
      {
        lower := 15309984252506863348144150337570115369828352, upper := 30619968505013726696288300675140230739656704, M := 3
      },
      {
        lower := 30619968505013726696288300675140230739656704, upper := 61239937010027453392576601350280461479313408, M := 3
      },
      {
        lower := 61239937010027453392576601350280461479313408, upper := 122479874020054906785153202700560922958626816, M := 3
      },
      {
        lower := 122479874020054906785153202700560922958626816, upper := 244959748040109813570306405401121845917253632, M := 3
      },
      {
        lower := 244959748040109813570306405401121845917253632, upper := 489919496080219627140612810802243691834507264, M := 3
      },
      {
        lower := 489919496080219627140612810802243691834507264, upper := 979838992160439254281225621604487383669014528, M := 3
      },
      {
        lower := 979838992160439254281225621604487383669014528, upper := 1959677984320878508562451243208974767338029056, M := 2
      },
      {
        lower := 1959677984320878508562451243208974767338029056, upper := 3919355968641757017124902486417949534676058112, M := 2
      },
      {
        lower := 3919355968641757017124902486417949534676058112, upper := 7838711937283514034249804972835899069352116224, M := 2
      },
      {
        lower := 7838711937283514034249804972835899069352116224, upper := 15677423874567028068499609945671798138704232448, M := 2
      },
      {
        lower := 15677423874567028068499609945671798138704232448, upper := 31354847749134056136999219891343596277408464896, M := 2
      },
      {
        lower := 31354847749134056136999219891343596277408464896, upper := 62709695498268112273998439782687192554816929792, M := 2
      },
      {
        lower := 62709695498268112273998439782687192554816929792, upper := 125419390996536224547996879565374385109633859584, M := 2
      },
      {
        lower := 125419390996536224547996879565374385109633859584, upper := 250838781993072449095993759130748770219267719168, M := 2
      },
      {
        lower := 250838781993072449095993759130748770219267719168, upper := 501677563986144898191987518261497540438535438336, M := 2
      },
      {
        lower := 501677563986144898191987518261497540438535438336, upper := 1003355127972289796383975036522995080877070876672, M := 2
      },
      {
        lower := 1003355127972289796383975036522995080877070876672, upper := 2006710255944579592767950073045990161754141753344, M := 2
      },
      {
        lower := 2006710255944579592767950073045990161754141753344, upper := 4013420511889159185535900146091980323508283506688, M := 2
      },
      {
        lower := 4013420511889159185535900146091980323508283506688, upper := 8026841023778318371071800292183960647016567013376, M := 2
      },
      {
        lower := 8026841023778318371071800292183960647016567013376, upper := 16053682047556636742143600584367921294033134026752, M := 2
      },
      {
        lower := 16053682047556636742143600584367921294033134026752, upper := 32107364095113273484287201168735842588066268053504, M := 2
      },
      {
        lower := 32107364095113273484287201168735842588066268053504, upper := 64214728190226546968574402337471685176132536107008, M := 2
      },
      {
        lower := 64214728190226546968574402337471685176132536107008, upper := 128429456380453093937148804674943370352265072214016, M := 2
      },
      {
        lower := 128429456380453093937148804674943370352265072214016, upper := 256858912760906187874297609349886740704530144428032, M := 2
      },
      {
        lower := 256858912760906187874297609349886740704530144428032, upper := 513717825521812375748595218699773481409060288856064, M := 2
      },
      {
        lower := 513717825521812375748595218699773481409060288856064, upper := 1027435651043624751497190437399546962818120577712128, M := 2
      },
      {
        lower := 1027435651043624751497190437399546962818120577712128, upper := 2054871302087249502994380874799093925636241155424256, M := 2
      },
      {
        lower := 2054871302087249502994380874799093925636241155424256, upper := 4109742604174499005988761749598187851272482310848512, M := 2
      },
      {
        lower := 4109742604174499005988761749598187851272482310848512, upper := 8219485208348998011977523499196375702544964621697024, M := 2
      },
      {
        lower := 8219485208348998011977523499196375702544964621697024, upper := 16438970416697996023955046998392751405089929243394048, M := 2
      },
      {
        lower := 16438970416697996023955046998392751405089929243394048, upper := 32877940833395992047910093996785502810179858486788096, M := 2
      },
      {
        lower := 32877940833395992047910093996785502810179858486788096, upper := 65755881666791984095820187993571005620359716973576192, M := 2
      },
      {
        lower := 65755881666791984095820187993571005620359716973576192, upper := 131511763333583968191640375987142011240719433947152384, M := 2
      },
      {
        lower := 131511763333583968191640375987142011240719433947152384, upper := 263023526667167936383280751974284022481438867894304768, M := 2
      },
      {
        lower := 263023526667167936383280751974284022481438867894304768, upper := 526047053334335872766561503948568044962877735788609536, M := 2
      },
      {
        lower := 526047053334335872766561503948568044962877735788609536, upper := 1000000000000000000000000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 39, r := 12, s := 26,
      n0Power10 := 29
    },
    goods := [
      {
        lower := 80, upper := 117,
        witness := RowWitness.topPrime 79
      },
      {
        lower := 118, upper := 151,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 152, upper := 189,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 190, upper := 219,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 220, upper := 249,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 250, upper := 279,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 280, upper := 315,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 316, upper := 351,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 352, upper := 387,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 388, upper := 421,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 422, upper := 459,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 460, upper := 495,
        witness := RowWitness.topPrime 457
      },
      {
        lower := 496, upper := 529,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 530, upper := 561,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 562, upper := 595,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 596, upper := 631,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 632, upper := 669,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 670, upper := 699,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 700, upper := 729,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 730, upper := 765,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 766, upper := 799,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 800, upper := 835,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 836, upper := 867,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 868, upper := 901,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 902, upper := 925,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 926, upper := 957,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 958, upper := 991,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 992, upper := 1029,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1030, upper := 1059,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1060, upper := 1089,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1090, upper := 1125,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1126, upper := 1161,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1162, upper := 1191,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1192, upper := 1225,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1226, upper := 1261,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1262, upper := 1297,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1298, upper := 1335,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1336, upper := 1365,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1366, upper := 1399,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1400, upper := 1437,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1438, upper := 1471,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1472, upper := 1509,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1510, upper := 1510,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1519, upper := 1549,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1550, upper := 1557,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1568, upper := 1605,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1606, upper := 1639,
        witness := RowWitness.topPrime 1601
      },
      {
        lower := 1640, upper := 1655,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1666, upper := 1701,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1702, upper := 1737,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1738, upper := 1771,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1772, upper := 1788,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1792, upper := 1802,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1805, upper := 1839,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1840, upper := 1843,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1875, upper := 1894,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1922, upper := 1951,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1952, upper := 1974,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2000, upper := 2037,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2038, upper := 2038,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2048, upper := 2077,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2078, upper := 2095,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2116, upper := 2151,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2152, upper := 2154,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2176, upper := 2199,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2200, upper := 2217,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2218, upper := 2225,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2250, upper := 2278,
        witness := RowWitness.topPrime 2243
      },
      {
        lower := 2304, upper := 2335,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2336, upper := 2342,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2401, upper := 2413,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2455,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2456, upper := 2468,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2523, upper := 2559,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2560, upper := 2579,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2625, upper := 2639,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2671,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2672, upper := 2709,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2710, upper := 2711,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2744, upper := 2779,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2780, upper := 2788,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2821,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2883, upper := 2917,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2918, upper := 2942,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 2944, upper := 2954,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3038,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3087, upper := 3110,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3125,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3163,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3174, upper := 3207,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3208, upper := 3217,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3250, upper := 3267,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3268, upper := 3288,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3364, upper := 3366,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3375, upper := 3411,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3412, upper := 3413,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3456, upper := 3487,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3488, upper := 3494,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3500, upper := 3506,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3509, upper := 3537,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3538, upper := 3538,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3610, upper := 3622,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3625, upper := 3661,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3662, upper := 3668,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3712, upper := 3741,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3777,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3778, upper := 3795,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3844, upper := 3871,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3872, upper := 3901,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3902, upper := 3910,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3971, upper := 4005,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4006, upper := 4031,
        witness := RowWitness.topPrime 4003
      },
      {
        lower := 4107, upper := 4137,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4138, upper := 4154,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4224, upper := 4257,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4258, upper := 4273,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4335, upper := 4365,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4366, upper := 4401,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4402, upper := 4413,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4480, upper := 4497,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4624, upper := 4646,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4805, upper := 4839,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4840, upper := 4840,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 5054, upper := 5084,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5120, upper := 5141,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5157,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5158, upper := 5158,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5324, upper := 5328,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5488, upper := 5521,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5522, upper := 5526,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5632, upper := 5661,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5662, upper := 5663,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5787,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5788, upper := 5814,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5831, upper := 5865,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5866, upper := 5869,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5888, upper := 5919,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5920, upper := 5925,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6144, upper := 6181,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6182, upper := 6182,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6358, upper := 6386,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6529,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6530, upper := 6536,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6655, upper := 6691,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6692, upper := 6693,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6728, upper := 6757,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6758, upper := 6765,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6859, upper := 6895,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6896, upper := 6915,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 6936, upper := 6950,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7203, upper := 7206,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7257,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7258, upper := 7258,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7424, upper := 7444,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7514, upper := 7538,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7546, upper := 7552,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7599,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7600, upper := 7607,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7718,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7936, upper := 7971,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7972, upper := 7974,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8024,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8130,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8230,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8232, upper := 8252,
        witness := RowWitness.topPrime 8231
      },
      {
        lower := 8410, upper := 8419,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8448, upper := 8448,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8464, upper := 8486,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8664, upper := 8701,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8702, upper := 8702,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8704, upper := 8708,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8750, upper := 8785,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8786, upper := 8786,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8993, upper := 8997,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9031,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9248, upper := 9279,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9280, upper := 9289,
        witness := RowWitness.topPrime 9277
      },
      {
        lower := 9386, upper := 9413,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9560,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9604, upper := 9639,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9640, upper := 9642,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9747, upper := 9766,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10108, upper := 10130,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10580, upper := 10605,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10606, upper := 10609,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10633, upper := 10669,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10670, upper := 10671,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 10947,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10948, upper := 10973,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 10976, upper := 10990,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11264, upper := 11288,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11552, upper := 11570,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11776, upper := 11781,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11782, upper := 11812,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 12005, upper := 12017,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12326,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12531,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13159,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13160, upper := 13160,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13312, upper := 13347,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13348, upper := 13348,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13456, upper := 13489,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13490, upper := 13492,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13728,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13767,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13768, upper := 13788,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14321,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14413,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14415, upper := 14444,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14848, upper := 14850,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15341, upper := 15347,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15397,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15398, upper := 15398,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15872, upper := 15897,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15898, upper := 15908,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 15979, upper := 16010,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16399, upper := 16419,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16420, upper := 16422,
        witness := RowWitness.topPrime 16417
      },
      {
        lower := 16428, upper := 16437,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16820, upper := 16845,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17336,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17534,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 19220, upper := 19246,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19375, upper := 19381,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19690,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20003,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20184, upper := 20219,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21870, upper := 21901,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21902, upper := 21913,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 23552, upper := 23586,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 24025, upper := 24048,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24576, upper := 24603,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25024,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 26624, upper := 26635,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26636, upper := 26658,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 28830, upper := 28850,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 31250, upper := 31251,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32806,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34413,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 48020, upper := 48051,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49168,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 59392, upper := 59413,
        witness := RowWitness.topPrime 59387
      },
      {
        lower := 68782, upper := 68788,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 69632, upper := 69661,
        witness := RowWitness.topPrime 69623
      },
      {
        lower := 69662, upper := 69667,
        witness := RowWitness.topPrime 69661
      },
      {
        lower := 73205, upper := 73205,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73733,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327718,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 1482, upper := 2964, M := 36
      },
      {
        lower := 2964, upper := 5928, M := 35
      },
      {
        lower := 5928, upper := 11856, M := 33
      },
      {
        lower := 11856, upper := 23712, M := 32
      },
      {
        lower := 23712, upper := 47424, M := 31
      },
      {
        lower := 47424, upper := 94848, M := 29
      },
      {
        lower := 94848, upper := 189696, M := 28
      },
      {
        lower := 189696, upper := 379392, M := 27
      },
      {
        lower := 379392, upper := 758784, M := 26
      },
      {
        lower := 758784, upper := 1517568, M := 25
      },
      {
        lower := 1517568, upper := 3035136, M := 24
      },
      {
        lower := 3035136, upper := 6070272, M := 23
      },
      {
        lower := 6070272, upper := 12140544, M := 22
      },
      {
        lower := 12140544, upper := 24281088, M := 21
      },
      {
        lower := 24281088, upper := 48562176, M := 20
      },
      {
        lower := 48562176, upper := 97124352, M := 19
      },
      {
        lower := 97124352, upper := 194248704, M := 19
      },
      {
        lower := 194248704, upper := 388497408, M := 18
      },
      {
        lower := 388497408, upper := 776994816, M := 17
      },
      {
        lower := 776994816, upper := 1553989632, M := 16
      },
      {
        lower := 1553989632, upper := 3107979264, M := 16
      },
      {
        lower := 3107979264, upper := 6215958528, M := 15
      },
      {
        lower := 6215958528, upper := 12431917056, M := 14
      },
      {
        lower := 12431917056, upper := 24863834112, M := 14
      },
      {
        lower := 24863834112, upper := 49727668224, M := 13
      },
      {
        lower := 49727668224, upper := 99455336448, M := 13
      },
      {
        lower := 99455336448, upper := 198910672896, M := 12
      },
      {
        lower := 198910672896, upper := 397821345792, M := 12
      },
      {
        lower := 397821345792, upper := 795642691584, M := 11
      },
      {
        lower := 795642691584, upper := 1591285383168, M := 11
      },
      {
        lower := 1591285383168, upper := 3182570766336, M := 10
      },
      {
        lower := 3182570766336, upper := 6365141532672, M := 10
      },
      {
        lower := 6365141532672, upper := 12730283065344, M := 10
      },
      {
        lower := 12730283065344, upper := 25460566130688, M := 9
      },
      {
        lower := 25460566130688, upper := 50921132261376, M := 9
      },
      {
        lower := 50921132261376, upper := 101842264522752, M := 9
      },
      {
        lower := 101842264522752, upper := 203684529045504, M := 8
      },
      {
        lower := 203684529045504, upper := 407369058091008, M := 8
      },
      {
        lower := 407369058091008, upper := 814738116182016, M := 8
      },
      {
        lower := 814738116182016, upper := 1629476232364032, M := 7
      },
      {
        lower := 1629476232364032, upper := 3258952464728064, M := 7
      },
      {
        lower := 3258952464728064, upper := 6517904929456128, M := 7
      },
      {
        lower := 6517904929456128, upper := 13035809858912256, M := 6
      },
      {
        lower := 13035809858912256, upper := 26071619717824512, M := 6
      },
      {
        lower := 26071619717824512, upper := 52143239435649024, M := 6
      },
      {
        lower := 52143239435649024, upper := 104286478871298048, M := 6
      },
      {
        lower := 104286478871298048, upper := 208572957742596096, M := 6
      },
      {
        lower := 208572957742596096, upper := 417145915485192192, M := 5
      },
      {
        lower := 417145915485192192, upper := 834291830970384384, M := 5
      },
      {
        lower := 834291830970384384, upper := 1668583661940768768, M := 5
      },
      {
        lower := 1668583661940768768, upper := 3337167323881537536, M := 5
      },
      {
        lower := 3337167323881537536, upper := 6674334647763075072, M := 5
      },
      {
        lower := 6674334647763075072, upper := 13348669295526150144, M := 4
      },
      {
        lower := 13348669295526150144, upper := 26697338591052300288, M := 4
      },
      {
        lower := 26697338591052300288, upper := 53394677182104600576, M := 4
      },
      {
        lower := 53394677182104600576, upper := 106789354364209201152, M := 4
      },
      {
        lower := 106789354364209201152, upper := 213578708728418402304, M := 4
      },
      {
        lower := 213578708728418402304, upper := 427157417456836804608, M := 4
      },
      {
        lower := 427157417456836804608, upper := 854314834913673609216, M := 4
      },
      {
        lower := 854314834913673609216, upper := 1708629669827347218432, M := 3
      },
      {
        lower := 1708629669827347218432, upper := 3417259339654694436864, M := 3
      },
      {
        lower := 3417259339654694436864, upper := 6834518679309388873728, M := 3
      },
      {
        lower := 6834518679309388873728, upper := 13669037358618777747456, M := 3
      },
      {
        lower := 13669037358618777747456, upper := 27338074717237555494912, M := 3
      },
      {
        lower := 27338074717237555494912, upper := 54676149434475110989824, M := 3
      },
      {
        lower := 54676149434475110989824, upper := 109352298868950221979648, M := 3
      },
      {
        lower := 109352298868950221979648, upper := 218704597737900443959296, M := 3
      },
      {
        lower := 218704597737900443959296, upper := 437409195475800887918592, M := 3
      },
      {
        lower := 437409195475800887918592, upper := 874818390951601775837184, M := 2
      },
      {
        lower := 874818390951601775837184, upper := 1749636781903203551674368, M := 2
      },
      {
        lower := 1749636781903203551674368, upper := 3499273563806407103348736, M := 2
      },
      {
        lower := 3499273563806407103348736, upper := 6998547127612814206697472, M := 2
      },
      {
        lower := 6998547127612814206697472, upper := 13997094255225628413394944, M := 2
      },
      {
        lower := 13997094255225628413394944, upper := 27994188510451256826789888, M := 2
      },
      {
        lower := 27994188510451256826789888, upper := 55988377020902513653579776, M := 2
      },
      {
        lower := 55988377020902513653579776, upper := 111976754041805027307159552, M := 2
      },
      {
        lower := 111976754041805027307159552, upper := 223953508083610054614319104, M := 2
      },
      {
        lower := 223953508083610054614319104, upper := 447907016167220109228638208, M := 2
      },
      {
        lower := 447907016167220109228638208, upper := 895814032334440218457276416, M := 2
      },
      {
        lower := 895814032334440218457276416, upper := 1791628064668880436914552832, M := 2
      },
      {
        lower := 1791628064668880436914552832, upper := 3583256129337760873829105664, M := 2
      },
      {
        lower := 3583256129337760873829105664, upper := 7166512258675521747658211328, M := 2
      },
      {
        lower := 7166512258675521747658211328, upper := 14333024517351043495316422656, M := 2
      },
      {
        lower := 14333024517351043495316422656, upper := 28666049034702086990632845312, M := 2
      },
      {
        lower := 28666049034702086990632845312, upper := 57332098069404173981265690624, M := 2
      },
      {
        lower := 57332098069404173981265690624, upper := 100000000000000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 40, r := 13, s := 27,
      n0Power10 := 20
    },
    goods := [
      {
        lower := 82, upper := 118,
        witness := RowWitness.topPrime 79
      },
      {
        lower := 119, upper := 152,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 153, upper := 190,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 191, upper := 230,
        witness := RowWitness.topPrime 191
      },
      {
        lower := 231, upper := 268,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 269, upper := 308,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 309, upper := 346,
        witness := RowWitness.topPrime 307
      },
      {
        lower := 347, upper := 386,
        witness := RowWitness.topPrime 347
      },
      {
        lower := 387, upper := 422,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 423, upper := 460,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 461, upper := 500,
        witness := RowWitness.topPrime 461
      },
      {
        lower := 501, upper := 538,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 539, upper := 562,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 563, upper := 602,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 603, upper := 640,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 641, upper := 680,
        witness := RowWitness.topPrime 641
      },
      {
        lower := 681, upper := 716,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 717, upper := 748,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 749, upper := 782,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 783, upper := 812,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 813, upper := 850,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 851, upper := 878,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 879, upper := 916,
        witness := RowWitness.topPrime 877
      },
      {
        lower := 917, upper := 950,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 951, upper := 986,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 987, upper := 1022,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1023, upper := 1060,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1061, upper := 1100,
        witness := RowWitness.topPrime 1061
      },
      {
        lower := 1101, upper := 1136,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1137, upper := 1168,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1169, upper := 1202,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1203, upper := 1240,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1241, upper := 1276,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1277, upper := 1316,
        witness := RowWitness.topPrime 1277
      },
      {
        lower := 1317, upper := 1346,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1347, upper := 1366,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1367, upper := 1406,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1407, upper := 1438,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1439, upper := 1478,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1479, upper := 1510,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1511, upper := 1550,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1551, upper := 1588,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1589, upper := 1612,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1620, upper := 1626,
        witness := RowWitness.topPrime 1619
      },
      {
        lower := 1690, upper := 1708,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1709, upper := 1748,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1749, upper := 1754,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1805, upper := 1840,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1841, upper := 1844,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1863, upper := 1900,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1901, upper := 1902,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 1936, upper := 1972,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1973, upper := 1975,
        witness := RowWitness.topPrime 1973
      },
      {
        lower := 2025, upper := 2056,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2057, upper := 2092,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2093, upper := 2096,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2116, upper := 2145,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2178, upper := 2200,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2201, upper := 2218,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2219, upper := 2226,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2299, upper := 2307,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2312, upper := 2338,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2349, upper := 2351,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2366, upper := 2388,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2401, upper := 2405,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2456,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2457, upper := 2459,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2511, upper := 2542,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2543, upper := 2574,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2601, upper := 2631,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2662, upper := 2698,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2699, upper := 2701,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2704, upper := 2712,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2738, upper := 2770,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2771, upper := 2777,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2783, upper := 2783,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2883, upper := 2918,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2919, upper := 2943,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3042, upper := 3064,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3081,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3111,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3126,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3176,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3177, upper := 3208,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3209, upper := 3218,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3250,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3267, upper := 3288,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3380, upper := 3412,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3413, upper := 3427,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3430, upper := 3441,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3469,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3630, upper := 3662,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3663, upper := 3669,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3718, upper := 3742,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3778,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3779, upper := 3796,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3888, upper := 3920,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3921, upper := 3926,
        witness := RowWitness.topPrime 3919
      },
      {
        lower := 3993, upper := 4010,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4085,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4107, upper := 4138,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4139, upper := 4155,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4258,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4259, upper := 4264,
        witness := RowWitness.topPrime 4259
      },
      {
        lower := 4335, upper := 4366,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4367, upper := 4371,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4374, upper := 4374,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4394, upper := 4413,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4624, upper := 4656,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4732, upper := 4732,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4771,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4840,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4841, upper := 4841,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4913, upper := 4940,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5054, upper := 5090,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5091, upper := 5093,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5103, upper := 5109,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5324, upper := 5329,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5363,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5488, upper := 5522,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5523, upper := 5527,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5776, upper := 5788,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5789, upper := 5815,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5819, upper := 5819,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5831, upper := 5866,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5867, upper := 5870,
        witness := RowWitness.topPrime 5867
      },
      {
        lower := 6075, upper := 6108,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6182,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6183, upper := 6183,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6382,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6383, upper := 6387,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6517, upper := 6530,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6531, upper := 6537,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6591, upper := 6600,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6686,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6728, upper := 6758,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6759, upper := 6766,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6859, upper := 6896,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6897, upper := 6899,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7220, upper := 7258,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7259, upper := 7259,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7546, upper := 7553,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7600,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7601, upper := 7608,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7942, upper := 7974,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8019, upper := 8025,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8248,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8249, upper := 8253,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8410, upper := 8420,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8664, upper := 8688,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 9025, upper := 9032,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9261, upper := 9290,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9414,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9604, upper := 9640,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9641, upper := 9643,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10108, upper := 10131,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10580, upper := 10606,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10607, upper := 10610,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10935, upper := 10948,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10949, upper := 10974,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10985, upper := 10991,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11664, upper := 11677,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 12005, upper := 12018,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12327,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12532,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13456, upper := 13490,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13491, upper := 13493,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13729,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13754, upper := 13757,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 14297, upper := 14322,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14415, upper := 14445,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 15379, upper := 15415,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15979, upper := 16011,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16820, upper := 16846,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17337,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18259, upper := 18264,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 19220, upper := 19247,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19691,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20184, upper := 20220,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 21870, upper := 21902,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21903, upper := 21909,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 24025, upper := 24049,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24057, upper := 24064,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24576, upper := 24604,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 30618, upper := 30632,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30633, upper := 30652,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 31250, upper := 31252,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32807,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 43940, upper := 43962,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48052,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49169,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73206,
        witness := RowWitness.topPrime 73189
      }
    ],
    layers := [
      {
        lower := 1560, upper := 3120, M := 32
      },
      {
        lower := 3120, upper := 6240, M := 30
      },
      {
        lower := 6240, upper := 12480, M := 29
      },
      {
        lower := 12480, upper := 24960, M := 27
      },
      {
        lower := 24960, upper := 49920, M := 25
      },
      {
        lower := 49920, upper := 99840, M := 24
      },
      {
        lower := 99840, upper := 199680, M := 22
      },
      {
        lower := 199680, upper := 399360, M := 21
      },
      {
        lower := 399360, upper := 798720, M := 20
      },
      {
        lower := 798720, upper := 1597440, M := 19
      },
      {
        lower := 1597440, upper := 3194880, M := 17
      },
      {
        lower := 3194880, upper := 6389760, M := 16
      },
      {
        lower := 6389760, upper := 12779520, M := 15
      },
      {
        lower := 12779520, upper := 25559040, M := 15
      },
      {
        lower := 25559040, upper := 51118080, M := 14
      },
      {
        lower := 51118080, upper := 102236160, M := 13
      },
      {
        lower := 102236160, upper := 204472320, M := 12
      },
      {
        lower := 204472320, upper := 408944640, M := 11
      },
      {
        lower := 408944640, upper := 817889280, M := 11
      },
      {
        lower := 817889280, upper := 1635778560, M := 10
      },
      {
        lower := 1635778560, upper := 3271557120, M := 10
      },
      {
        lower := 3271557120, upper := 6543114240, M := 9
      },
      {
        lower := 6543114240, upper := 13086228480, M := 8
      },
      {
        lower := 13086228480, upper := 26172456960, M := 8
      },
      {
        lower := 26172456960, upper := 52344913920, M := 8
      },
      {
        lower := 52344913920, upper := 104689827840, M := 7
      },
      {
        lower := 104689827840, upper := 209379655680, M := 7
      },
      {
        lower := 209379655680, upper := 418759311360, M := 6
      },
      {
        lower := 418759311360, upper := 837518622720, M := 6
      },
      {
        lower := 837518622720, upper := 1675037245440, M := 6
      },
      {
        lower := 1675037245440, upper := 3350074490880, M := 5
      },
      {
        lower := 3350074490880, upper := 6700148981760, M := 5
      },
      {
        lower := 6700148981760, upper := 13400297963520, M := 5
      },
      {
        lower := 13400297963520, upper := 26800595927040, M := 4
      },
      {
        lower := 26800595927040, upper := 53601191854080, M := 4
      },
      {
        lower := 53601191854080, upper := 107202383708160, M := 4
      },
      {
        lower := 107202383708160, upper := 214404767416320, M := 4
      },
      {
        lower := 214404767416320, upper := 428809534832640, M := 4
      },
      {
        lower := 428809534832640, upper := 857619069665280, M := 3
      },
      {
        lower := 857619069665280, upper := 1715238139330560, M := 3
      },
      {
        lower := 1715238139330560, upper := 3430476278661120, M := 3
      },
      {
        lower := 3430476278661120, upper := 6860952557322240, M := 3
      },
      {
        lower := 6860952557322240, upper := 13721905114644480, M := 3
      },
      {
        lower := 13721905114644480, upper := 27443810229288960, M := 3
      },
      {
        lower := 27443810229288960, upper := 54887620458577920, M := 2
      },
      {
        lower := 54887620458577920, upper := 109775240917155840, M := 2
      },
      {
        lower := 109775240917155840, upper := 219550481834311680, M := 2
      },
      {
        lower := 219550481834311680, upper := 439100963668623360, M := 2
      },
      {
        lower := 439100963668623360, upper := 878201927337246720, M := 2
      },
      {
        lower := 878201927337246720, upper := 1756403854674493440, M := 2
      },
      {
        lower := 1756403854674493440, upper := 3512807709348986880, M := 2
      },
      {
        lower := 3512807709348986880, upper := 7025615418697973760, M := 2
      },
      {
        lower := 7025615418697973760, upper := 14051230837395947520, M := 2
      },
      {
        lower := 14051230837395947520, upper := 28102461674791895040, M := 2
      },
      {
        lower := 28102461674791895040, upper := 56204923349583790080, M := 2
      },
      {
        lower := 56204923349583790080, upper := 100000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 41, r := 13, s := 28,
      n0Power10 := 16
    },
    goods := [
      {
        lower := 84, upper := 123,
        witness := RowWitness.topPrime 83
      },
      {
        lower := 124, upper := 153,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 154, upper := 191,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 192, upper := 231,
        witness := RowWitness.topPrime 191
      },
      {
        lower := 232, upper := 269,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 270, upper := 309,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 310, upper := 347,
        witness := RowWitness.topPrime 307
      },
      {
        lower := 348, upper := 387,
        witness := RowWitness.topPrime 347
      },
      {
        lower := 388, upper := 423,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 424, upper := 461,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 462, upper := 501,
        witness := RowWitness.topPrime 461
      },
      {
        lower := 502, upper := 539,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 540, upper := 563,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 564, upper := 603,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 604, upper := 641,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 642, upper := 681,
        witness := RowWitness.topPrime 641
      },
      {
        lower := 682, upper := 717,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 718, upper := 749,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 750, upper := 783,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 784, upper := 813,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 814, upper := 851,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 852, upper := 879,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 880, upper := 917,
        witness := RowWitness.topPrime 877
      },
      {
        lower := 918, upper := 951,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 952, upper := 987,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 988, upper := 1023,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1024, upper := 1061,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1062, upper := 1101,
        witness := RowWitness.topPrime 1061
      },
      {
        lower := 1102, upper := 1137,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1138, upper := 1169,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1170, upper := 1203,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1204, upper := 1241,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1242, upper := 1277,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1278, upper := 1317,
        witness := RowWitness.topPrime 1277
      },
      {
        lower := 1318, upper := 1347,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1348, upper := 1367,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1368, upper := 1407,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1408, upper := 1439,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1440, upper := 1479,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1480, upper := 1511,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1512, upper := 1551,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1552, upper := 1589,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1590, upper := 1623,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1624, upper := 1660,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1664, upper := 1665,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1682, upper := 1709,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1710, upper := 1749,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1750, upper := 1774,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1782, upper := 1790,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1792, upper := 1829,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1830, upper := 1845,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1859, upper := 1887,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1888, upper := 1903,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1922, upper := 1953,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1954, upper := 1976,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2023, upper := 2057,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2058, upper := 2093,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2094, upper := 2097,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2116, upper := 2153,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2154, upper := 2156,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2176, upper := 2201,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2202, upper := 2219,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2220, upper := 2227,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2268, upper := 2290,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2337,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2338, upper := 2344,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2349, upper := 2352,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2366, upper := 2397,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2398, upper := 2415,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2420, upper := 2457,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2458, upper := 2470,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2523, upper := 2561,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2562, upper := 2581,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2625, upper := 2641,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2673,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2674, upper := 2711,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2712, upper := 2728,
        witness := RowWitness.topPrime 2711
      },
      {
        lower := 2738, upper := 2771,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2772, upper := 2790,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2816, upper := 2823,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2901,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2902, upper := 2937,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 2938, upper := 2956,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3025, upper := 3040,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3042, upper := 3065,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3082,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3112,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3127,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3177,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3178, upper := 3209,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3210, upper := 3240,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3269,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3270, upper := 3290,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3364, upper := 3368,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3375, upper := 3413,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3414, upper := 3420,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3430, upper := 3442,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3489,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3490, upper := 3496,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3584, upper := 3589,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3624,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3645, upper := 3650,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3718, upper := 3743,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3779,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3780, upper := 3797,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3873,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3874, upper := 3880,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3888, upper := 3921,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3922, upper := 3927,
        witness := RowWitness.topPrime 3919
      },
      {
        lower := 3993, upper := 4011,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4086,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4096,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4139,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4140, upper := 4156,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4259,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4260, upper := 4265,
        witness := RowWitness.topPrime 4259
      },
      {
        lower := 4335, upper := 4367,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4368, upper := 4403,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4404, upper := 4415,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4617, upper := 4643,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4644, upper := 4657,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4805, upper := 4841,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4842, upper := 4842,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4900,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5054, upper := 5086,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5120, upper := 5143,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5145, upper := 5159,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5160, upper := 5160,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5324, upper := 5330,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5364,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5386,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5415, upper := 5416,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5523,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5524, upper := 5528,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5625, upper := 5629,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5632, upper := 5663,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5664, upper := 5665,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5789,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5790, upper := 5816,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5819, upper := 5820,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5831, upper := 5867,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5868, upper := 5871,
        witness := RowWitness.topPrime 5867
      },
      {
        lower := 5888, upper := 5921,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5922, upper := 5927,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6109,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6183,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6184, upper := 6184,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6383,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6384, upper := 6388,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6517, upper := 6531,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6532, upper := 6538,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6591, upper := 6601,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6693,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6694, upper := 6695,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6728, upper := 6759,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6760, upper := 6767,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6859, upper := 6897,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6898, upper := 6915,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7203, upper := 7208,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7243,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7569, upper := 7601,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7602, upper := 7609,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7720,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7942, upper := 7975,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8019, upper := 8026,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8249,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8250, upper := 8254,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8664, upper := 8689,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8704, upper := 8704,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8750, upper := 8787,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8788, upper := 8790,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 9251, upper := 9256,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9604, upper := 9641,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9642, upper := 9644,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 10240, upper := 10246,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10607,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10608, upper := 10611,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10648, upper := 10665,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10949,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10950, upper := 10975,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10985, upper := 10992,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11264, upper := 11290,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11678,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11776, upper := 11783,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11784, upper := 11814,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 12005, upper := 12019,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12328,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12533,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13161,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13162, upper := 13162,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13312, upper := 13349,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13350, upper := 13350,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13456, upper := 13491,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13492, upper := 13494,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13730,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13758,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 14336, upper := 14337,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14376,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14441,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14442, upper := 14446,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 15376, upper := 15413,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15414, upper := 15416,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16012,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16807, upper := 16807,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16820, upper := 16847,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 17303, upper := 17338,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 19220, upper := 19248,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19692,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 21875, upper := 21911,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21912, upper := 21915,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 24576, upper := 24605,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 26624, upper := 26637,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26638, upper := 26660,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 30758, upper := 30760,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31253,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 32805, upper := 32808,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 34391, upper := 34415,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 43750, upper := 43761,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43762, upper := 43780,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43963,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48053,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49170,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 73205, upper := 73207,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73735,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327720,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 1640, upper := 3280, M := 29
      },
      {
        lower := 3280, upper := 6560, M := 27
      },
      {
        lower := 6560, upper := 13120, M := 24
      },
      {
        lower := 13120, upper := 26240, M := 23
      },
      {
        lower := 26240, upper := 52480, M := 21
      },
      {
        lower := 52480, upper := 104960, M := 19
      },
      {
        lower := 104960, upper := 209920, M := 18
      },
      {
        lower := 209920, upper := 419840, M := 16
      },
      {
        lower := 419840, upper := 839680, M := 15
      },
      {
        lower := 839680, upper := 1679360, M := 14
      },
      {
        lower := 1679360, upper := 3358720, M := 13
      },
      {
        lower := 3358720, upper := 6717440, M := 12
      },
      {
        lower := 6717440, upper := 13434880, M := 11
      },
      {
        lower := 13434880, upper := 26869760, M := 10
      },
      {
        lower := 26869760, upper := 53739520, M := 9
      },
      {
        lower := 53739520, upper := 107479040, M := 9
      },
      {
        lower := 107479040, upper := 214958080, M := 8
      },
      {
        lower := 214958080, upper := 429916160, M := 7
      },
      {
        lower := 429916160, upper := 859832320, M := 7
      },
      {
        lower := 859832320, upper := 1719664640, M := 6
      },
      {
        lower := 1719664640, upper := 3439329280, M := 6
      },
      {
        lower := 3439329280, upper := 6878658560, M := 5
      },
      {
        lower := 6878658560, upper := 13757317120, M := 5
      },
      {
        lower := 13757317120, upper := 27514634240, M := 5
      },
      {
        lower := 27514634240, upper := 55029268480, M := 4
      },
      {
        lower := 55029268480, upper := 110058536960, M := 4
      },
      {
        lower := 110058536960, upper := 220117073920, M := 4
      },
      {
        lower := 220117073920, upper := 440234147840, M := 3
      },
      {
        lower := 440234147840, upper := 880468295680, M := 3
      },
      {
        lower := 880468295680, upper := 1760936591360, M := 3
      },
      {
        lower := 1760936591360, upper := 3521873182720, M := 3
      },
      {
        lower := 3521873182720, upper := 7043746365440, M := 3
      },
      {
        lower := 7043746365440, upper := 14087492730880, M := 2
      },
      {
        lower := 14087492730880, upper := 28174985461760, M := 2
      },
      {
        lower := 28174985461760, upper := 56349970923520, M := 2
      },
      {
        lower := 56349970923520, upper := 112699941847040, M := 2
      },
      {
        lower := 112699941847040, upper := 225399883694080, M := 2
      },
      {
        lower := 225399883694080, upper := 450799767388160, M := 2
      },
      {
        lower := 450799767388160, upper := 901599534776320, M := 2
      },
      {
        lower := 901599534776320, upper := 1803199069552640, M := 2
      },
      {
        lower := 1803199069552640, upper := 3606398139105280, M := 2
      },
      {
        lower := 3606398139105280, upper := 7212796278210560, M := 1
      },
      {
        lower := 7212796278210560, upper := 10000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 42, r := 13, s := 28,
      n0Power10 := 31
    },
    goods := [
      {
        lower := 86, upper := 124,
        witness := RowWitness.topPrime 83
      },
      {
        lower := 125, upper := 154,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 155, upper := 192,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 193, upper := 234,
        witness := RowWitness.topPrime 193
      },
      {
        lower := 235, upper := 274,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 275, upper := 312,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 313, upper := 354,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 355, upper := 394,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 395, upper := 430,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 431, upper := 472,
        witness := RowWitness.topPrime 431
      },
      {
        lower := 473, upper := 508,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 509, upper := 550,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 551, upper := 588,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 589, upper := 628,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 629, upper := 660,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 661, upper := 702,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 703, upper := 742,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 743, upper := 784,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 785, upper := 814,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 815, upper := 852,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 853, upper := 894,
        witness := RowWitness.topPrime 853
      },
      {
        lower := 895, upper := 928,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 929, upper := 970,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 971, upper := 1012,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1013, upper := 1054,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1055, upper := 1092,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1093, upper := 1134,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1135, upper := 1170,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1171, upper := 1212,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1213, upper := 1254,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1255, upper := 1290,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1291, upper := 1332,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1333, upper := 1368,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1369, upper := 1408,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1409, upper := 1450,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1451, upper := 1492,
        witness := RowWitness.topPrime 1451
      },
      {
        lower := 1493, upper := 1534,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1535, upper := 1572,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1573, upper := 1612,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1613, upper := 1654,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1655, upper := 1678,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1679, upper := 1710,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1711, upper := 1750,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1751, upper := 1775,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1805, upper := 1842,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1843, upper := 1846,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1875, upper := 1900,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1922, upper := 1954,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1955, upper := 1977,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2023, upper := 2058,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2059, upper := 2089,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2125, upper := 2154,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2155, upper := 2157,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2166, upper := 2166,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2176, upper := 2202,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2203, upper := 2228,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2304, upper := 2338,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2339, upper := 2345,
        witness := RowWitness.topPrime 2339
      },
      {
        lower := 2375, upper := 2412,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2413, upper := 2416,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2420, upper := 2458,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2459, upper := 2471,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2523, upper := 2562,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2563, upper := 2582,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2601, upper := 2601,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2625, upper := 2642,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2645, upper := 2674,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2675, upper := 2712,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2713, upper := 2714,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2738, upper := 2745,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2750, upper := 2779,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2783, upper := 2791,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2824,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2902,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2903, upper := 2944,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 2945, upper := 2945,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3064,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3065, upper := 3066,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3072, upper := 3083,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3146, upper := 3178,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3179, upper := 3210,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3211, upper := 3220,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3270,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3271, upper := 3291,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3402,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3403, upper := 3421,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3500, upper := 3540,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3541, upper := 3541,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3549, upper := 3550,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3590,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3648,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3649, upper := 3671,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3718, upper := 3744,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3780,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3781, upper := 3792,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3874,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3875, upper := 3904,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3905, upper := 3916,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3993, upper := 4030,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4031, upper := 4034,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4087,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4097,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4140,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4141, upper := 4155,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4260,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4261, upper := 4276,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4368,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4369, upper := 4404,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4405, upper := 4416,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4500, upper := 4518,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4624, upper := 4662,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4663, upper := 4665,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4732, upper := 4734,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4773,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4802,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4805, upper := 4842,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4843, upper := 4843,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4913, upper := 4942,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5080,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5081, upper := 5095,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5111,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5144,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5239, upper := 5243,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5331,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5415, upper := 5449,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5491, upper := 5517,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5632, upper := 5664,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5665, upper := 5666,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5766, upper := 5790,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5791, upper := 5817,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5819, upper := 5821,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5832, upper := 5860,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5915, upper := 5928,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6084, upper := 6110,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6144, upper := 6178,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6253, upper := 6288,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6289, upper := 6291,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6358, upper := 6389,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6591, upper := 6602,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6694,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6695, upper := 6696,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6760,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6761, upper := 6768,
        witness := RowWitness.topPrime 6761
      },
      {
        lower := 6859, upper := 6898,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6899, upper := 6916,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7203, upper := 7209,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7260,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7261, upper := 7261,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7514, upper := 7541,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7581, upper := 7610,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7721,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7942, upper := 7976,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8019, upper := 8027,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8133,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8233,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8405, upper := 8430,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8431, upper := 8446,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8704,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8705, upper := 8711,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8750, upper := 8788,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8789, upper := 8791,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8993, upper := 9000,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9034,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9248, upper := 9282,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9283, upper := 9289,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9416,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9563,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9604, upper := 9642,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9643, upper := 9645,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10086, upper := 10120,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10121, upper := 10149,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10580, upper := 10608,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10609, upper := 10612,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10648, upper := 10666,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10950,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10951, upper := 10976,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10985, upper := 10993,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11264, upper := 11291,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11552, upper := 11573,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11774, upper := 11784,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11785, upper := 11808,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 11913, upper := 11916,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12005, upper := 12020,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12288, upper := 12315,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12321, upper := 12329,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12534,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12656,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 13125, upper := 13162,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13163, upper := 13163,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13312, upper := 13350,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13351, upper := 13351,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13492,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13493, upper := 13495,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13731,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13770,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13771, upper := 13791,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14324,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14338,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14377,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14415, upper := 14416,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 15138, upper := 15170,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15350,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15400,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15401, upper := 15417,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15979, upper := 16013,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16399, upper := 16422,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16423, upper := 16425,
        witness := RowWitness.topPrime 16421
      },
      {
        lower := 16428, upper := 16440,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16828,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16829, upper := 16851,
        witness := RowWitness.topPrime 16829
      },
      {
        lower := 17303, upper := 17339,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17498,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17500, upper := 17537,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 18502, upper := 18534,
        witness := RowWitness.topPrime 18493
      },
      {
        lower := 18535, upper := 18543,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19375, upper := 19384,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19693,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20006,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20181, upper := 20218,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20219, upper := 20222,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 21866, upper := 21904,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21905, upper := 21916,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 23548, upper := 23575,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24057, upper := 24066,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24576, upper := 24606,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25027,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25230, upper := 25256,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26624, upper := 26638,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26639, upper := 26661,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 26908, upper := 26944,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26945, upper := 26949,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 28577, upper := 28602,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 30752, upper := 30768,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30769, upper := 30793,
        witness := RowWitness.topPrime 30763
      },
      {
        lower := 31944, upper := 31948,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31949, upper := 31949,
        witness := RowWitness.largeDivisor 15252308274176420322607459461125192974792464609526589494741313699706859719643023027756649516881116428731573421498689507624026773
      },
      {
        lower := 31950, upper := 31950,
        witness := RowWitness.largeDivisor 407263590622988282401327424497889695829358776711691558528256213869570154228903585923551002519202431906709933405944699150547537
      },
      {
        lower := 31951, upper := 31951,
        witness := RowWitness.largeDivisor 6932594024504581039427177698525345589474609629576588698207945812118612678618912346213840213900392595552098605356067705146054531
      },
      {
        lower := 31952, upper := 31952,
        witness := RowWitness.largeDivisor 4338574198350250183558782157303389264237165600208225518746871760200836577625185821181146633393633347952848923502371421866709777
      },
      {
        lower := 31953, upper := 31953,
        witness := RowWitness.largeDivisor 47787129045117388526457692613690174822533661642003940020861355861322761518392817147259971863780340009354492124326533623890719581
      },
      {
        lower := 31954, upper := 31954,
        witness := RowWitness.largeDivisor 14723083879781717347459640065737083193004229169722447301488745638898389046403803528198171326293817465905407576033419359178163541
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 268044738324606830409991253664439110554803908990340672521071701695232790272321933064366795367928679462634092741999080239479617
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 3623366183545319743054856388367519550291587866199376705196009855910684875610118313453851655151238951314693345035246450140782843
      },
      {
        lower := 31957, upper := 31980,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32809,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33655,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34416,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 36982, upper := 37004,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 43940, upper := 43964,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48778, upper := 48790,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49171,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50430, upper := 50462,
        witness := RowWitness.topPrime 50423
      },
      {
        lower := 65625, upper := 65651,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68791,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73208,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73736,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 327701, upper := 327721,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 658503, upper := 658528,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658529, upper := 658530,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 1722, upper := 3444, M := 39
      },
      {
        lower := 3444, upper := 6888, M := 37
      },
      {
        lower := 6888, upper := 13776, M := 36
      },
      {
        lower := 13776, upper := 27552, M := 35
      },
      {
        lower := 27552, upper := 55104, M := 33
      },
      {
        lower := 55104, upper := 110208, M := 32
      },
      {
        lower := 110208, upper := 220416, M := 31
      },
      {
        lower := 220416, upper := 440832, M := 30
      },
      {
        lower := 440832, upper := 881664, M := 29
      },
      {
        lower := 881664, upper := 1763328, M := 27
      },
      {
        lower := 1763328, upper := 3526656, M := 26
      },
      {
        lower := 3526656, upper := 7053312, M := 25
      },
      {
        lower := 7053312, upper := 14106624, M := 24
      },
      {
        lower := 14106624, upper := 28213248, M := 24
      },
      {
        lower := 28213248, upper := 56426496, M := 23
      },
      {
        lower := 56426496, upper := 112852992, M := 22
      },
      {
        lower := 112852992, upper := 225705984, M := 21
      },
      {
        lower := 225705984, upper := 451411968, M := 20
      },
      {
        lower := 451411968, upper := 902823936, M := 19
      },
      {
        lower := 902823936, upper := 1805647872, M := 19
      },
      {
        lower := 1805647872, upper := 3611295744, M := 18
      },
      {
        lower := 3611295744, upper := 7222591488, M := 17
      },
      {
        lower := 7222591488, upper := 14445182976, M := 17
      },
      {
        lower := 14445182976, upper := 28890365952, M := 16
      },
      {
        lower := 28890365952, upper := 57780731904, M := 16
      },
      {
        lower := 57780731904, upper := 115561463808, M := 15
      },
      {
        lower := 115561463808, upper := 231122927616, M := 14
      },
      {
        lower := 231122927616, upper := 462245855232, M := 14
      },
      {
        lower := 462245855232, upper := 924491710464, M := 13
      },
      {
        lower := 924491710464, upper := 1848983420928, M := 13
      },
      {
        lower := 1848983420928, upper := 3697966841856, M := 12
      },
      {
        lower := 3697966841856, upper := 7395933683712, M := 12
      },
      {
        lower := 7395933683712, upper := 14791867367424, M := 12
      },
      {
        lower := 14791867367424, upper := 29583734734848, M := 11
      },
      {
        lower := 29583734734848, upper := 59167469469696, M := 11
      },
      {
        lower := 59167469469696, upper := 118334938939392, M := 10
      },
      {
        lower := 118334938939392, upper := 236669877878784, M := 10
      },
      {
        lower := 236669877878784, upper := 473339755757568, M := 10
      },
      {
        lower := 473339755757568, upper := 946679511515136, M := 9
      },
      {
        lower := 946679511515136, upper := 1893359023030272, M := 9
      },
      {
        lower := 1893359023030272, upper := 3786718046060544, M := 9
      },
      {
        lower := 3786718046060544, upper := 7573436092121088, M := 8
      },
      {
        lower := 7573436092121088, upper := 15146872184242176, M := 8
      },
      {
        lower := 15146872184242176, upper := 30293744368484352, M := 8
      },
      {
        lower := 30293744368484352, upper := 60587488736968704, M := 7
      },
      {
        lower := 60587488736968704, upper := 121174977473937408, M := 7
      },
      {
        lower := 121174977473937408, upper := 242349954947874816, M := 7
      },
      {
        lower := 242349954947874816, upper := 484699909895749632, M := 7
      },
      {
        lower := 484699909895749632, upper := 969399819791499264, M := 6
      },
      {
        lower := 969399819791499264, upper := 1938799639582998528, M := 6
      },
      {
        lower := 1938799639582998528, upper := 3877599279165997056, M := 6
      },
      {
        lower := 3877599279165997056, upper := 7755198558331994112, M := 6
      },
      {
        lower := 7755198558331994112, upper := 15510397116663988224, M := 6
      },
      {
        lower := 15510397116663988224, upper := 31020794233327976448, M := 5
      },
      {
        lower := 31020794233327976448, upper := 62041588466655952896, M := 5
      },
      {
        lower := 62041588466655952896, upper := 124083176933311905792, M := 5
      },
      {
        lower := 124083176933311905792, upper := 248166353866623811584, M := 5
      },
      {
        lower := 248166353866623811584, upper := 496332707733247623168, M := 5
      },
      {
        lower := 496332707733247623168, upper := 992665415466495246336, M := 4
      },
      {
        lower := 992665415466495246336, upper := 1985330830932990492672, M := 4
      },
      {
        lower := 1985330830932990492672, upper := 3970661661865980985344, M := 4
      },
      {
        lower := 3970661661865980985344, upper := 7941323323731961970688, M := 4
      },
      {
        lower := 7941323323731961970688, upper := 15882646647463923941376, M := 4
      },
      {
        lower := 15882646647463923941376, upper := 31765293294927847882752, M := 4
      },
      {
        lower := 31765293294927847882752, upper := 63530586589855695765504, M := 4
      },
      {
        lower := 63530586589855695765504, upper := 127061173179711391531008, M := 4
      },
      {
        lower := 127061173179711391531008, upper := 254122346359422783062016, M := 3
      },
      {
        lower := 254122346359422783062016, upper := 508244692718845566124032, M := 3
      },
      {
        lower := 508244692718845566124032, upper := 1016489385437691132248064, M := 3
      },
      {
        lower := 1016489385437691132248064, upper := 2032978770875382264496128, M := 3
      },
      {
        lower := 2032978770875382264496128, upper := 4065957541750764528992256, M := 3
      },
      {
        lower := 4065957541750764528992256, upper := 8131915083501529057984512, M := 3
      },
      {
        lower := 8131915083501529057984512, upper := 16263830167003058115969024, M := 3
      },
      {
        lower := 16263830167003058115969024, upper := 32527660334006116231938048, M := 3
      },
      {
        lower := 32527660334006116231938048, upper := 65055320668012232463876096, M := 3
      },
      {
        lower := 65055320668012232463876096, upper := 130110641336024464927752192, M := 3
      },
      {
        lower := 130110641336024464927752192, upper := 260221282672048929855504384, M := 2
      },
      {
        lower := 260221282672048929855504384, upper := 520442565344097859711008768, M := 2
      },
      {
        lower := 520442565344097859711008768, upper := 1040885130688195719422017536, M := 2
      },
      {
        lower := 1040885130688195719422017536, upper := 2081770261376391438844035072, M := 2
      },
      {
        lower := 2081770261376391438844035072, upper := 4163540522752782877688070144, M := 2
      },
      {
        lower := 4163540522752782877688070144, upper := 8327081045505565755376140288, M := 2
      },
      {
        lower := 8327081045505565755376140288, upper := 16654162091011131510752280576, M := 2
      },
      {
        lower := 16654162091011131510752280576, upper := 33308324182022263021504561152, M := 2
      },
      {
        lower := 33308324182022263021504561152, upper := 66616648364044526043009122304, M := 2
      },
      {
        lower := 66616648364044526043009122304, upper := 133233296728089052086018244608, M := 2
      },
      {
        lower := 133233296728089052086018244608, upper := 266466593456178104172036489216, M := 2
      },
      {
        lower := 266466593456178104172036489216, upper := 532933186912356208344072978432, M := 2
      },
      {
        lower := 532933186912356208344072978432, upper := 1065866373824712416688145956864, M := 2
      },
      {
        lower := 1065866373824712416688145956864, upper := 2131732747649424833376291913728, M := 2
      },
      {
        lower := 2131732747649424833376291913728, upper := 4263465495298849666752583827456, M := 2
      },
      {
        lower := 4263465495298849666752583827456, upper := 8526930990597699333505167654912, M := 2
      },
      {
        lower := 8526930990597699333505167654912, upper := 10000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 43, r := 14, s := 29,
      n0Power10 := 22
    },
    goods := [
      {
        lower := 88, upper := 125,
        witness := RowWitness.topPrime 83
      },
      {
        lower := 126, upper := 155,
        witness := RowWitness.topPrime 113
      },
      {
        lower := 156, upper := 193,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 194, upper := 235,
        witness := RowWitness.topPrime 193
      },
      {
        lower := 236, upper := 275,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 276, upper := 313,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 314, upper := 355,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 356, upper := 395,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 396, upper := 431,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 432, upper := 473,
        witness := RowWitness.topPrime 431
      },
      {
        lower := 474, upper := 509,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 510, upper := 551,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 552, upper := 589,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 590, upper := 629,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 630, upper := 661,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 662, upper := 703,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 704, upper := 743,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 744, upper := 785,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 786, upper := 815,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 816, upper := 853,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 854, upper := 895,
        witness := RowWitness.topPrime 853
      },
      {
        lower := 896, upper := 929,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 930, upper := 971,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 972, upper := 1013,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1014, upper := 1055,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1056, upper := 1093,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1094, upper := 1135,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1136, upper := 1171,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1172, upper := 1213,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1214, upper := 1255,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1256, upper := 1291,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1292, upper := 1333,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1334, upper := 1369,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1370, upper := 1409,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1410, upper := 1451,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1452, upper := 1493,
        witness := RowWitness.topPrime 1451
      },
      {
        lower := 1494, upper := 1535,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1536, upper := 1573,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1574, upper := 1613,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1614, upper := 1655,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1656, upper := 1679,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1680, upper := 1711,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1712, upper := 1751,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1752, upper := 1789,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1790, upper := 1831,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1832, upper := 1847,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1856, upper := 1857,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1859, upper := 1889,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1890, upper := 1905,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1922, upper := 1955,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1956, upper := 1978,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 1984, upper := 1986,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2000, upper := 2041,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2042, upper := 2081,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2082, upper := 2099,
        witness := RowWitness.topPrime 2081
      },
      {
        lower := 2112, upper := 2153,
        witness := RowWitness.topPrime 2111
      },
      {
        lower := 2154, upper := 2158,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2166, upper := 2167,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2176, upper := 2203,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2204, upper := 2229,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2250, upper := 2285,
        witness := RowWitness.topPrime 2243
      },
      {
        lower := 2286, upper := 2292,
        witness := RowWitness.topPrime 2281
      },
      {
        lower := 2299, upper := 2339,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2340, upper := 2346,
        witness := RowWitness.topPrime 2339
      },
      {
        lower := 2349, upper := 2354,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2366, upper := 2399,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2400, upper := 2417,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2459,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2460, upper := 2472,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2511, upper := 2545,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2546, upper := 2583,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2592, upper := 2633,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2634, upper := 2643,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2645, upper := 2675,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2676, upper := 2713,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2714, upper := 2730,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2738, upper := 2773,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2774, upper := 2796,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2816, upper := 2825,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2858,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2873, upper := 2903,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2904, upper := 2945,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 2946, upper := 2958,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3065,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3066, upper := 3067,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3072, upper := 3084,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3114,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3129,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3179,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3180, upper := 3211,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3212, upper := 3242,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3271,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3272, upper := 3292,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3403,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3404, upper := 3433,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3434, upper := 3444,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3456, upper := 3491,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3492, upper := 3498,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3500, upper := 3541,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3542, upper := 3542,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3549, upper := 3551,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3591,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3649,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3650, upper := 3672,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3712, upper := 3751,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3752, upper := 3781,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3782, upper := 3799,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3875,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3876, upper := 3905,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3906, upper := 3929,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 3971, upper := 4009,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4010, upper := 4035,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4056, upper := 4088,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4098,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4141,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4142, upper := 4167,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4261,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4262, upper := 4267,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4369,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4370, upper := 4405,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4406, upper := 4417,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4617, upper := 4645,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4646, upper := 4659,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4732, upper := 4735,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4774,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4803,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4805, upper := 4843,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4844, upper := 4844,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4903,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4904, upper := 4906,
        witness := RowWitness.topPrime 4903
      },
      {
        lower := 4913, upper := 4943,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5081,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5082, upper := 5096,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5112,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5161,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5162, upper := 5162,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5244,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5332,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5366,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5388,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5449,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5450, upper := 5450,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5525,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5526, upper := 5530,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5589, upper := 5619,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5625, upper := 5665,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5666, upper := 5667,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5776, upper := 5791,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5792, upper := 5822,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5869,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5870, upper := 5873,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5888, upper := 5923,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5924, upper := 5929,
        witness := RowWitness.topPrime 5923
      },
      {
        lower := 6075, upper := 6111,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6185,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6186, upper := 6186,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6385,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6386, upper := 6390,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6400, upper := 6400,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6533,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6534, upper := 6540,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6591, upper := 6603,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6695,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6696, upper := 6697,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6761,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6762, upper := 6769,
        witness := RowWitness.topPrime 6761
      },
      {
        lower := 6845, upper := 6846,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6899,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6900, upper := 6919,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6936, upper := 6954,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7203, upper := 7210,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7261,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7262, upper := 7262,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7424, upper := 7448,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7514, upper := 7549,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7550, upper := 7591,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7592, upper := 7611,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7722,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7936, upper := 7975,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7976, upper := 7978,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8028,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8134,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8251,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8252, upper := 8256,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8405, upper := 8431,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8432, upper := 8447,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8705,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8706, upper := 8712,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8750, upper := 8789,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8790, upper := 8792,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8959, upper := 8960,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9001,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9035,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9258,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9261, upper := 9293,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9417,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9604, upper := 9643,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9644, upper := 9646,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9747, upper := 9770,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10086, upper := 10121,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10122, upper := 10134,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10248,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10609,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10610, upper := 10613,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10633, upper := 10673,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10674, upper := 10675,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 10951,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10952, upper := 10977,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10985, upper := 10994,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11264, upper := 11292,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11680,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11785,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11786, upper := 11816,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 12005, upper := 12021,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12330,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12535,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13163,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13164, upper := 13164,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13312, upper := 13351,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13352, upper := 13352,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13493,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13494, upper := 13496,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13732,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13771,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13772, upper := 13792,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13851, upper := 13866,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14325,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14339,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14378,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14443,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14444, upper := 14448,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14848, upper := 14854,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15171,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15351,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15401,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15402, upper := 15418,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15979, upper := 16014,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16807, upper := 16829,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16830, upper := 16852,
        witness := RowWitness.topPrime 16829
      },
      {
        lower := 17303, upper := 17340,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17538,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 18259, upper := 18267,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18502, upper := 18533,
        witness := RowWitness.topPrime 18493
      },
      {
        lower := 19208, upper := 19208,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19250,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19694,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20219,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20220, upper := 20223,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20577,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21142, upper := 21181,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21182, upper := 21183,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21866, upper := 21905,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21906, upper := 21917,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 23548, upper := 23581,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23582, upper := 23590,
        witness := RowWitness.topPrime 23581
      },
      {
        lower := 24025, upper := 24052,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24057, upper := 24067,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24576, upper := 24607,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25028,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 26624, upper := 26639,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26640, upper := 26662,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 26908, upper := 26938,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 28577, upper := 28603,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 30618, upper := 30635,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30636, upper := 30655,
        witness := RowWitness.topPrime 30631
      },
      {
        lower := 30758, upper := 30762,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31255,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31949,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31950, upper := 31950,
        witness := RowWitness.largeDivisor 25184043894570368439654177249764853516517790401776461723875192387888070699875689185365630597640913173021900300614115233518741881
      },
      {
        lower := 31951, upper := 31951,
        witness := RowWitness.largeDivisor 302615790325467409558251454421676131894042843598029232245030564868526418552737173810311118174210160508169513540775327501375450109
      },
      {
        lower := 31952, upper := 31952,
        witness := RowWitness.largeDivisor 321962564347340658970606368929188724236762684424754596053982971786066733004696929195093928073467070077152114299908539701783044149
      },
      {
        lower := 31953, upper := 31953,
        witness := RowWitness.largeDivisor 1074654739223918946629874157149730210543954669949251395352858863206956055541531492590706809122688111373157997307529256146565717089
      },
      {
        lower := 31954, upper := 31954,
        witness := RowWitness.largeDivisor 1365822827824401639512011726098261043183578375767973076410200147757341253630343541255407102804326462127829553972030461017713822443
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 28418975860974012554398840126887858256263977234580537814501532279734099787244550996289493490288066271398809972343576902599711021
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 16600072980428557892600156011823287242033553712587842114502649804986160941748681575590901768948699381604525324928919783203121397
      },
      {
        lower := 31957, upper := 31981,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32810,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33656,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34417,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 36982, upper := 37005,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 43740, upper := 43748,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43750, upper := 43763,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43764, upper := 43782,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43965,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 47104, upper := 47110,
        witness := RowWitness.topPrime 47093
      },
      {
        lower := 48020, upper := 48055,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49172,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65652,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68792,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73209,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73737,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 150903, upper := 150940,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 327701, upper := 327722,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655402,
        witness := RowWitness.topPrime 655399
      }
    ],
    layers := [
      {
        lower := 1806, upper := 3612, M := 35
      },
      {
        lower := 3612, upper := 7224, M := 33
      },
      {
        lower := 7224, upper := 14448, M := 31
      },
      {
        lower := 14448, upper := 28896, M := 29
      },
      {
        lower := 28896, upper := 57792, M := 28
      },
      {
        lower := 57792, upper := 115584, M := 26
      },
      {
        lower := 115584, upper := 231168, M := 25
      },
      {
        lower := 231168, upper := 462336, M := 23
      },
      {
        lower := 462336, upper := 924672, M := 22
      },
      {
        lower := 924672, upper := 1849344, M := 21
      },
      {
        lower := 1849344, upper := 3698688, M := 20
      },
      {
        lower := 3698688, upper := 7397376, M := 19
      },
      {
        lower := 7397376, upper := 14794752, M := 18
      },
      {
        lower := 14794752, upper := 29589504, M := 17
      },
      {
        lower := 29589504, upper := 59179008, M := 16
      },
      {
        lower := 59179008, upper := 118358016, M := 15
      },
      {
        lower := 118358016, upper := 236716032, M := 14
      },
      {
        lower := 236716032, upper := 473432064, M := 13
      },
      {
        lower := 473432064, upper := 946864128, M := 13
      },
      {
        lower := 946864128, upper := 1893728256, M := 12
      },
      {
        lower := 1893728256, upper := 3787456512, M := 11
      },
      {
        lower := 3787456512, upper := 7574913024, M := 11
      },
      {
        lower := 7574913024, upper := 15149826048, M := 10
      },
      {
        lower := 15149826048, upper := 30299652096, M := 10
      },
      {
        lower := 30299652096, upper := 60599304192, M := 9
      },
      {
        lower := 60599304192, upper := 121198608384, M := 9
      },
      {
        lower := 121198608384, upper := 242397216768, M := 8
      },
      {
        lower := 242397216768, upper := 484794433536, M := 8
      },
      {
        lower := 484794433536, upper := 969588867072, M := 7
      },
      {
        lower := 969588867072, upper := 1939177734144, M := 7
      },
      {
        lower := 1939177734144, upper := 3878355468288, M := 7
      },
      {
        lower := 3878355468288, upper := 7756710936576, M := 6
      },
      {
        lower := 7756710936576, upper := 15513421873152, M := 6
      },
      {
        lower := 15513421873152, upper := 31026843746304, M := 6
      },
      {
        lower := 31026843746304, upper := 62053687492608, M := 5
      },
      {
        lower := 62053687492608, upper := 124107374985216, M := 5
      },
      {
        lower := 124107374985216, upper := 248214749970432, M := 5
      },
      {
        lower := 248214749970432, upper := 496429499940864, M := 5
      },
      {
        lower := 496429499940864, upper := 992858999881728, M := 4
      },
      {
        lower := 992858999881728, upper := 1985717999763456, M := 4
      },
      {
        lower := 1985717999763456, upper := 3971435999526912, M := 4
      },
      {
        lower := 3971435999526912, upper := 7942871999053824, M := 4
      },
      {
        lower := 7942871999053824, upper := 15885743998107648, M := 4
      },
      {
        lower := 15885743998107648, upper := 31771487996215296, M := 3
      },
      {
        lower := 31771487996215296, upper := 63542975992430592, M := 3
      },
      {
        lower := 63542975992430592, upper := 127085951984861184, M := 3
      },
      {
        lower := 127085951984861184, upper := 254171903969722368, M := 3
      },
      {
        lower := 254171903969722368, upper := 508343807939444736, M := 3
      },
      {
        lower := 508343807939444736, upper := 1016687615878889472, M := 3
      },
      {
        lower := 1016687615878889472, upper := 2033375231757778944, M := 3
      },
      {
        lower := 2033375231757778944, upper := 4066750463515557888, M := 2
      },
      {
        lower := 4066750463515557888, upper := 8133500927031115776, M := 2
      },
      {
        lower := 8133500927031115776, upper := 16267001854062231552, M := 2
      },
      {
        lower := 16267001854062231552, upper := 32534003708124463104, M := 2
      },
      {
        lower := 32534003708124463104, upper := 65068007416248926208, M := 2
      },
      {
        lower := 65068007416248926208, upper := 130136014832497852416, M := 2
      },
      {
        lower := 130136014832497852416, upper := 260272029664995704832, M := 2
      },
      {
        lower := 260272029664995704832, upper := 520544059329991409664, M := 2
      },
      {
        lower := 520544059329991409664, upper := 1041088118659982819328, M := 2
      },
      {
        lower := 1041088118659982819328, upper := 2082176237319965638656, M := 2
      },
      {
        lower := 2082176237319965638656, upper := 4164352474639931277312, M := 2
      },
      {
        lower := 4164352474639931277312, upper := 8328704949279862554624, M := 2
      },
      {
        lower := 8328704949279862554624, upper := 10000000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 44, r := 14, s := 29,
      n0Power10 := 66
    },
    goods := [
      {
        lower := 90, upper := 132,
        witness := RowWitness.topPrime 89
      },
      {
        lower := 133, upper := 174,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 175, upper := 216,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 217, upper := 254,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 255, upper := 294,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 295, upper := 336,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 337, upper := 380,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 381, upper := 422,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 423, upper := 464,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 465, upper := 506,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 507, upper := 546,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 547, upper := 590,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 591, upper := 630,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 631, upper := 674,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 675, upper := 716,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 717, upper := 752,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 753, upper := 794,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 795, upper := 830,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 831, upper := 872,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 873, upper := 906,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 907, upper := 950,
        witness := RowWitness.topPrime 907
      },
      {
        lower := 951, upper := 990,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 991, upper := 1034,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1035, upper := 1076,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1077, upper := 1112,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1113, upper := 1152,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1153, upper := 1196,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1197, upper := 1236,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1237, upper := 1280,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1281, upper := 1322,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1323, upper := 1364,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1365, upper := 1404,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1405, upper := 1442,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1443, upper := 1482,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1483, upper := 1526,
        witness := RowWitness.topPrime 1483
      },
      {
        lower := 1527, upper := 1566,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1567, upper := 1610,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1611, upper := 1652,
        witness := RowWitness.topPrime 1609
      },
      {
        lower := 1653, upper := 1680,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1681, upper := 1712,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1713, upper := 1752,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1753, upper := 1796,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1797, upper := 1832,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1833, upper := 1874,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1875, upper := 1916,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1917, upper := 1956,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1957, upper := 1994,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 1995, upper := 2036,
        witness := RowWitness.topPrime 1993
      },
      {
        lower := 2037, upper := 2072,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2073, upper := 2091,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2107, upper := 2142,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2143, upper := 2186,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2187, upper := 2222,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2223, upper := 2240,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2254, upper := 2294,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2295, upper := 2297,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2304, upper := 2340,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2341, upper := 2347,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2349, upper := 2355,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2366, upper := 2400,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2401, upper := 2418,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2430, upper := 2444,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2511, upper := 2546,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2547, upper := 2578,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2592, upper := 2634,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2635, upper := 2676,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2677, upper := 2716,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2738, upper := 2774,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2775, upper := 2793,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2835, upper := 2859,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2873, upper := 2904,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2905, upper := 2933,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3000, upper := 3040,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3042, upper := 3043,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3110,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3111, upper := 3121,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3130,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3159, upper := 3168,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3174, upper := 3212,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3213, upper := 3222,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3240, upper := 3272,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3273, upper := 3292,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3404,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3405, upper := 3423,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3430, upper := 3445,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3473,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3483, upper := 3512,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3513, upper := 3526,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3564, upper := 3602,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3603, upper := 3607,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3610, upper := 3650,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3651, upper := 3668,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3703, upper := 3744,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3745, upper := 3782,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3783, upper := 3800,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3875, upper := 3906,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3907, upper := 3930,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 3993, upper := 4032,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4033, upper := 4036,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4089,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4099,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4142,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4143, upper := 4168,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4262,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4263, upper := 4275,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4370,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4371, upper := 4406,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4407, upper := 4418,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4500, upper := 4502,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4617, upper := 4646,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4647, upper := 4667,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4732, upper := 4736,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4750, upper := 4776,
        witness := RowWitness.topPrime 4733
      },
      {
        lower := 4777, upper := 4793,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4844,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4845, upper := 4845,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4875, upper := 4914,
        witness := RowWitness.topPrime 4871
      },
      {
        lower := 4915, upper := 4944,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5043,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5046, upper := 5082,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5083, upper := 5097,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5113,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5162,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5163, upper := 5168,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5245,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5250, upper := 5280,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5281, upper := 5282,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5290, upper := 5293,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5333,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5367,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5375, upper := 5389,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5450,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5451, upper := 5451,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5526,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5527, upper := 5534,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5577, upper := 5616,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5617, upper := 5620,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5625, upper := 5666,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5667, upper := 5668,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5766, upper := 5792,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5793, upper := 5823,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5870,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5871, upper := 5874,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5915, upper := 5930,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6116,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6117, upper := 6118,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6144, upper := 6186,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6187, upper := 6187,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6253, upper := 6290,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6291, upper := 6293,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6348, upper := 6386,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6387, upper := 6391,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6517, upper := 6534,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6535, upper := 6541,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6591, upper := 6604,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6727, upper := 6762,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6763, upper := 6771,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6847,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6900,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6901, upper := 6918,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6936, upper := 6960,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6961, upper := 6972,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7203, upper := 7211,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7262,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7263, upper := 7263,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7267, upper := 7268,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7290, upper := 7310,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7406, upper := 7436,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7437, upper := 7449,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7550,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7551, upper := 7592,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7593, upper := 7612,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7803, upper := 7819,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7942, upper := 7978,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8125, upper := 8135,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8252,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8253, upper := 8257,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8262, upper := 8275,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8303, upper := 8305,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8405, upper := 8432,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8433, upper := 8448,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8505, upper := 8507,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8664, upper := 8706,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8707, upper := 8707,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8750, upper := 8790,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8791, upper := 8793,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8959, upper := 8961,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8991, upper := 9014,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9015, upper := 9036,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9234, upper := 9270,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9271, upper := 9294,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9418,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9565,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9604, upper := 9644,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9645, upper := 9647,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9747, upper := 9763,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 9963, upper := 9990,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10000, upper := 10006,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10086, upper := 10122,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10123, upper := 10151,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10249,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10469, upper := 10492,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10580, upper := 10610,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10611, upper := 10614,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10633, upper := 10668,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10693, upper := 10734,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10735, upper := 10735,
        witness := RowWitness.topPrime 10733
      },
      {
        lower := 10935, upper := 10952,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10953, upper := 10992,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10993, upper := 11025,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11109, upper := 11136,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11137, upper := 11137,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11264, upper := 11304,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11305, upper := 11307,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11552, upper := 11594,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11595, upper := 11595,
        witness := RowWitness.topPrime 11593
      },
      {
        lower := 11662, upper := 11700,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11701, upper := 11705,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11774, upper := 11786,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11787, upper := 11810,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 11875, upper := 11892,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11913, upper := 11918,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12167, upper := 12181,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12288, upper := 12317,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12321, upper := 12331,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12348, upper := 12364,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12427, upper := 12436,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12500, upper := 12536,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12658,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12696, upper := 12732,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12733, upper := 12739,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 13034, upper := 13039,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13125, upper := 13164,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13165, upper := 13165,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13225, upper := 13225,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13377, upper := 13400,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13494,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13495, upper := 13497,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13754,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13755, upper := 13793,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 14079, upper := 14106,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14297, upper := 14326,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14340,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14379,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14444,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14445, upper := 14458,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14749, upper := 14782,
        witness := RowWitness.topPrime 14747
      },
      {
        lower := 14792, upper := 14792,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14801, upper := 14840,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14841, upper := 14844,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 15092, upper := 15102,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15129, upper := 15135,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15138, upper := 15180,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15181, upper := 15181,
        witness := RowWitness.topPrime 15173
      },
      {
        lower := 15341, upper := 15352,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15376, upper := 15416,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15417, upper := 15419,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 16399, upper := 16424,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16425, upper := 16442,
        witness := RowWitness.topPrime 16421
      },
      {
        lower := 16807, upper := 16830,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16831, upper := 16853,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17496, upper := 17534,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17535, upper := 17539,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 18259, upper := 18268,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18524,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18525, upper := 18545,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19209,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19251,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19375, upper := 19386,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19695,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20220,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20221, upper := 20224,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20578,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20631, upper := 20668,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 21142, upper := 21182,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21183, upper := 21185,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21866, upper := 21906,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21907, upper := 21918,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22218, upper := 22231,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22747, upper := 22750,
        witness := RowWitness.topPrime 22741
      },
      {
        lower := 23548, upper := 23577,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24025, upper := 24066,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24067, upper := 24080,
        witness := RowWitness.topPrime 24061
      },
      {
        lower := 24375, upper := 24377,
        witness := RowWitness.topPrime 24373
      },
      {
        lower := 24389, upper := 24418,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24608,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25029,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25230, upper := 25258,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26250, upper := 26287,
        witness := RowWitness.topPrime 26249
      },
      {
        lower := 26896, upper := 26936,
        witness := RowWitness.topPrime 26893
      },
      {
        lower := 26937, upper := 26951,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27735, upper := 27745,
        witness := RowWitness.topPrime 27733
      },
      {
        lower := 27753, upper := 27778,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 28577, upper := 28616,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28617, upper := 28620,
        witness := RowWitness.topPrime 28607
      },
      {
        lower := 28830, upper := 28855,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29478, upper := 29478,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 30276, upper := 30301,
        witness := RowWitness.topPrime 30271
      },
      {
        lower := 30758, upper := 30795,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31256,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31958, upper := 31982,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32799, upper := 32840,
        witness := RowWitness.topPrime 32797
      },
      {
        lower := 32841, upper := 32842,
        witness := RowWitness.topPrime 32839
      },
      {
        lower := 33620, upper := 33662,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33663, upper := 33678,
        witness := RowWitness.topPrime 33647
      },
      {
        lower := 34391, upper := 34418,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35174,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35322, upper := 35344,
        witness := RowWitness.topPrime 35317
      },
      {
        lower := 35594, upper := 35600,
        witness := RowWitness.topPrime 35593
      },
      {
        lower := 36518, upper := 36540,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36541, upper := 36544,
        witness := RowWitness.topPrime 36541
      },
      {
        lower := 36980, upper := 37022,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37023, upper := 37023,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 37500, upper := 37522,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38440, upper := 38459,
        witness := RowWitness.topPrime 38431
      },
      {
        lower := 39401, upper := 39409,
        witness := RowWitness.topPrime 39397
      },
      {
        lower := 40362, upper := 40387,
        witness := RowWitness.topPrime 40361
      },
      {
        lower := 43740, upper := 43764,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43765, upper := 43783,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43966,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48056,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48114, upper := 48117,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 48778, upper := 48792,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49173,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50430, upper := 50464,
        witness := RowWitness.topPrime 50423
      },
      {
        lower := 55473, upper := 55512,
        witness := RowWitness.topPrime 55469
      },
      {
        lower := 55513, upper := 55513,
        witness := RowWitness.topPrime 55511
      },
      {
        lower := 57154, upper := 57165,
        witness := RowWitness.topPrime 57149
      },
      {
        lower := 57344, upper := 57362,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58867, upper := 58874,
        witness := RowWitness.topPrime 58831
      },
      {
        lower := 58875, upper := 58875,
        witness := RowWitness.largeDivisor 10043284475396850876113164237332660150614874788659569251777115293107166683579801494461919968002247363569864717630636698195278591166228672827
      },
      {
        lower := 58876, upper := 58876,
        witness := RowWitness.largeDivisor 980565441030043368105691041937020667411134090054061833393523086816826989231751084175096347161492195681691986301169043963041885838639133409
      },
      {
        lower := 58877, upper := 58877,
        witness := RowWitness.largeDivisor 291154584830857301130969299739904714004132058864147777056268672404996357059634213612339300878148439929350488819117196624179944992014465037
      },
      {
        lower := 58878, upper := 58878,
        witness := RowWitness.largeDivisor 744618175904405185300547755628794620412444069229575745700590170005272153199424169449540151033951170452623494079227795275756528591774288613
      },
      {
        lower := 63878, upper := 63906,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63907, upper := 63912,
        witness := RowWitness.topPrime 63907
      },
      {
        lower := 65559, upper := 65579,
        witness := RowWitness.topPrime 65557
      },
      {
        lower := 65625, upper := 65653,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 67240, upper := 67271,
        witness := RowWitness.topPrime 67231
      },
      {
        lower := 68782, upper := 68793,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 70304, upper := 70305,
        witness := RowWitness.topPrime 70297
      },
      {
        lower := 73728, upper := 73738,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 81289, upper := 81293,
        witness := RowWitness.topPrime 81283
      },
      {
        lower := 83521, upper := 83529,
        witness := RowWitness.topPrime 83497
      },
      {
        lower := 87500, upper := 87523,
        witness := RowWitness.topPrime 87491
      },
      {
        lower := 96040, upper := 96060,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 96061, upper := 96069,
        witness := RowWitness.topPrime 96059
      },
      {
        lower := 98441, upper := 98458,
        witness := RowWitness.topPrime 98429
      },
      {
        lower := 150903, upper := 150941,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 219501, upper := 219531,
        witness := RowWitness.topPrime 219491
      },
      {
        lower := 327701, upper := 327723,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655403,
        witness := RowWitness.topPrime 655399
      },
      {
        lower := 658503, upper := 658530,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658531, upper := 658532,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 1892, upper := 3784, M := 46
      },
      {
        lower := 3784, upper := 7568, M := 45
      },
      {
        lower := 7568, upper := 15136, M := 44
      },
      {
        lower := 15136, upper := 30272, M := 43
      },
      {
        lower := 30272, upper := 60544, M := 43
      },
      {
        lower := 60544, upper := 121088, M := 42
      },
      {
        lower := 121088, upper := 242176, M := 41
      },
      {
        lower := 242176, upper := 484352, M := 40
      },
      {
        lower := 484352, upper := 968704, M := 40
      },
      {
        lower := 968704, upper := 1937408, M := 39
      },
      {
        lower := 1937408, upper := 3874816, M := 38
      },
      {
        lower := 3874816, upper := 7749632, M := 38
      },
      {
        lower := 7749632, upper := 15499264, M := 37
      },
      {
        lower := 15499264, upper := 30998528, M := 36
      },
      {
        lower := 30998528, upper := 61997056, M := 36
      },
      {
        lower := 61997056, upper := 123994112, M := 35
      },
      {
        lower := 123994112, upper := 247988224, M := 34
      },
      {
        lower := 247988224, upper := 495976448, M := 34
      },
      {
        lower := 495976448, upper := 991952896, M := 33
      },
      {
        lower := 991952896, upper := 1983905792, M := 33
      },
      {
        lower := 1983905792, upper := 3967811584, M := 32
      },
      {
        lower := 3967811584, upper := 7935623168, M := 31
      },
      {
        lower := 7935623168, upper := 15871246336, M := 31
      },
      {
        lower := 15871246336, upper := 31742492672, M := 30
      },
      {
        lower := 31742492672, upper := 63484985344, M := 30
      },
      {
        lower := 63484985344, upper := 126969970688, M := 29
      },
      {
        lower := 126969970688, upper := 253939941376, M := 29
      },
      {
        lower := 253939941376, upper := 507879882752, M := 28
      },
      {
        lower := 507879882752, upper := 1015759765504, M := 28
      },
      {
        lower := 1015759765504, upper := 2031519531008, M := 27
      },
      {
        lower := 2031519531008, upper := 4063039062016, M := 27
      },
      {
        lower := 4063039062016, upper := 8126078124032, M := 26
      },
      {
        lower := 8126078124032, upper := 16252156248064, M := 26
      },
      {
        lower := 16252156248064, upper := 32504312496128, M := 25
      },
      {
        lower := 32504312496128, upper := 65008624992256, M := 25
      },
      {
        lower := 65008624992256, upper := 130017249984512, M := 24
      },
      {
        lower := 130017249984512, upper := 260034499969024, M := 24
      },
      {
        lower := 260034499969024, upper := 520068999938048, M := 24
      },
      {
        lower := 520068999938048, upper := 1040137999876096, M := 23
      },
      {
        lower := 1040137999876096, upper := 2080275999752192, M := 23
      },
      {
        lower := 2080275999752192, upper := 4160551999504384, M := 22
      },
      {
        lower := 4160551999504384, upper := 8321103999008768, M := 22
      },
      {
        lower := 8321103999008768, upper := 16642207998017536, M := 22
      },
      {
        lower := 16642207998017536, upper := 33284415996035072, M := 21
      },
      {
        lower := 33284415996035072, upper := 66568831992070144, M := 21
      },
      {
        lower := 66568831992070144, upper := 133137663984140288, M := 20
      },
      {
        lower := 133137663984140288, upper := 266275327968280576, M := 20
      },
      {
        lower := 266275327968280576, upper := 532550655936561152, M := 20
      },
      {
        lower := 532550655936561152, upper := 1065101311873122304, M := 19
      },
      {
        lower := 1065101311873122304, upper := 2130202623746244608, M := 19
      },
      {
        lower := 2130202623746244608, upper := 4260405247492489216, M := 19
      },
      {
        lower := 4260405247492489216, upper := 8520810494984978432, M := 18
      },
      {
        lower := 8520810494984978432, upper := 17041620989969956864, M := 18
      },
      {
        lower := 17041620989969956864, upper := 34083241979939913728, M := 18
      },
      {
        lower := 34083241979939913728, upper := 68166483959879827456, M := 17
      },
      {
        lower := 68166483959879827456, upper := 136332967919759654912, M := 17
      },
      {
        lower := 136332967919759654912, upper := 272665935839519309824, M := 17
      },
      {
        lower := 272665935839519309824, upper := 545331871679038619648, M := 17
      },
      {
        lower := 545331871679038619648, upper := 1090663743358077239296, M := 16
      },
      {
        lower := 1090663743358077239296, upper := 2181327486716154478592, M := 16
      },
      {
        lower := 2181327486716154478592, upper := 4362654973432308957184, M := 16
      },
      {
        lower := 4362654973432308957184, upper := 8725309946864617914368, M := 15
      },
      {
        lower := 8725309946864617914368, upper := 17450619893729235828736, M := 15
      },
      {
        lower := 17450619893729235828736, upper := 34901239787458471657472, M := 15
      },
      {
        lower := 34901239787458471657472, upper := 69802479574916943314944, M := 15
      },
      {
        lower := 69802479574916943314944, upper := 139604959149833886629888, M := 14
      },
      {
        lower := 139604959149833886629888, upper := 279209918299667773259776, M := 14
      },
      {
        lower := 279209918299667773259776, upper := 558419836599335546519552, M := 14
      },
      {
        lower := 558419836599335546519552, upper := 1116839673198671093039104, M := 14
      },
      {
        lower := 1116839673198671093039104, upper := 2233679346397342186078208, M := 13
      },
      {
        lower := 2233679346397342186078208, upper := 4467358692794684372156416, M := 13
      },
      {
        lower := 4467358692794684372156416, upper := 8934717385589368744312832, M := 13
      },
      {
        lower := 8934717385589368744312832, upper := 17869434771178737488625664, M := 13
      },
      {
        lower := 17869434771178737488625664, upper := 35738869542357474977251328, M := 12
      },
      {
        lower := 35738869542357474977251328, upper := 71477739084714949954502656, M := 12
      },
      {
        lower := 71477739084714949954502656, upper := 142955478169429899909005312, M := 12
      },
      {
        lower := 142955478169429899909005312, upper := 285910956338859799818010624, M := 12
      },
      {
        lower := 285910956338859799818010624, upper := 571821912677719599636021248, M := 12
      },
      {
        lower := 571821912677719599636021248, upper := 1143643825355439199272042496, M := 11
      },
      {
        lower := 1143643825355439199272042496, upper := 2287287650710878398544084992, M := 11
      },
      {
        lower := 2287287650710878398544084992, upper := 4574575301421756797088169984, M := 11
      },
      {
        lower := 4574575301421756797088169984, upper := 9149150602843513594176339968, M := 11
      },
      {
        lower := 9149150602843513594176339968, upper := 18298301205687027188352679936, M := 11
      },
      {
        lower := 18298301205687027188352679936, upper := 36596602411374054376705359872, M := 11
      },
      {
        lower := 36596602411374054376705359872, upper := 73193204822748108753410719744, M := 10
      },
      {
        lower := 73193204822748108753410719744, upper := 146386409645496217506821439488, M := 10
      },
      {
        lower := 146386409645496217506821439488, upper := 292772819290992435013642878976, M := 10
      },
      {
        lower := 292772819290992435013642878976, upper := 585545638581984870027285757952, M := 10
      },
      {
        lower := 585545638581984870027285757952, upper := 1171091277163969740054571515904, M := 10
      },
      {
        lower := 1171091277163969740054571515904, upper := 2342182554327939480109143031808, M := 9
      },
      {
        lower := 2342182554327939480109143031808, upper := 4684365108655878960218286063616, M := 9
      },
      {
        lower := 4684365108655878960218286063616, upper := 9368730217311757920436572127232, M := 9
      },
      {
        lower := 9368730217311757920436572127232, upper := 18737460434623515840873144254464, M := 9
      },
      {
        lower := 18737460434623515840873144254464, upper := 37474920869247031681746288508928, M := 9
      },
      {
        lower := 37474920869247031681746288508928, upper := 74949841738494063363492577017856, M := 9
      },
      {
        lower := 74949841738494063363492577017856, upper := 149899683476988126726985154035712, M := 9
      },
      {
        lower := 149899683476988126726985154035712, upper := 299799366953976253453970308071424, M := 8
      },
      {
        lower := 299799366953976253453970308071424, upper := 599598733907952506907940616142848, M := 8
      },
      {
        lower := 599598733907952506907940616142848, upper := 1199197467815905013815881232285696, M := 8
      },
      {
        lower := 1199197467815905013815881232285696, upper := 2398394935631810027631762464571392, M := 8
      },
      {
        lower := 2398394935631810027631762464571392, upper := 4796789871263620055263524929142784, M := 8
      },
      {
        lower := 4796789871263620055263524929142784, upper := 9593579742527240110527049858285568, M := 8
      },
      {
        lower := 9593579742527240110527049858285568, upper := 19187159485054480221054099716571136, M := 8
      },
      {
        lower := 19187159485054480221054099716571136, upper := 38374318970108960442108199433142272, M := 7
      },
      {
        lower := 38374318970108960442108199433142272, upper := 76748637940217920884216398866284544, M := 7
      },
      {
        lower := 76748637940217920884216398866284544, upper := 153497275880435841768432797732569088, M := 7
      },
      {
        lower := 153497275880435841768432797732569088, upper := 306994551760871683536865595465138176, M := 7
      },
      {
        lower := 306994551760871683536865595465138176, upper := 613989103521743367073731190930276352, M := 7
      },
      {
        lower := 613989103521743367073731190930276352, upper := 1227978207043486734147462381860552704, M := 7
      },
      {
        lower := 1227978207043486734147462381860552704, upper := 2455956414086973468294924763721105408, M := 7
      },
      {
        lower := 2455956414086973468294924763721105408, upper := 4911912828173946936589849527442210816, M := 7
      },
      {
        lower := 4911912828173946936589849527442210816, upper := 9823825656347893873179699054884421632, M := 7
      },
      {
        lower := 9823825656347893873179699054884421632, upper := 19647651312695787746359398109768843264, M := 6
      },
      {
        lower := 19647651312695787746359398109768843264, upper := 39295302625391575492718796219537686528, M := 6
      },
      {
        lower := 39295302625391575492718796219537686528, upper := 78590605250783150985437592439075373056, M := 6
      },
      {
        lower := 78590605250783150985437592439075373056, upper := 157181210501566301970875184878150746112, M := 6
      },
      {
        lower := 157181210501566301970875184878150746112, upper := 314362421003132603941750369756301492224, M := 6
      },
      {
        lower := 314362421003132603941750369756301492224, upper := 628724842006265207883500739512602984448, M := 6
      },
      {
        lower := 628724842006265207883500739512602984448, upper := 1257449684012530415767001479025205968896, M := 6
      },
      {
        lower := 1257449684012530415767001479025205968896, upper := 2514899368025060831534002958050411937792, M := 6
      },
      {
        lower := 2514899368025060831534002958050411937792, upper := 5029798736050121663068005916100823875584, M := 6
      },
      {
        lower := 5029798736050121663068005916100823875584, upper := 10059597472100243326136011832201647751168, M := 6
      },
      {
        lower := 10059597472100243326136011832201647751168, upper := 20119194944200486652272023664403295502336, M := 5
      },
      {
        lower := 20119194944200486652272023664403295502336, upper := 40238389888400973304544047328806591004672, M := 5
      },
      {
        lower := 40238389888400973304544047328806591004672, upper := 80476779776801946609088094657613182009344, M := 5
      },
      {
        lower := 80476779776801946609088094657613182009344, upper := 160953559553603893218176189315226364018688, M := 5
      },
      {
        lower := 160953559553603893218176189315226364018688, upper := 321907119107207786436352378630452728037376, M := 5
      },
      {
        lower := 321907119107207786436352378630452728037376, upper := 643814238214415572872704757260905456074752, M := 5
      },
      {
        lower := 643814238214415572872704757260905456074752, upper := 1287628476428831145745409514521810912149504, M := 5
      },
      {
        lower := 1287628476428831145745409514521810912149504, upper := 2575256952857662291490819029043621824299008, M := 5
      },
      {
        lower := 2575256952857662291490819029043621824299008, upper := 5150513905715324582981638058087243648598016, M := 5
      },
      {
        lower := 5150513905715324582981638058087243648598016, upper := 10301027811430649165963276116174487297196032, M := 5
      },
      {
        lower := 10301027811430649165963276116174487297196032, upper := 20602055622861298331926552232348974594392064, M := 5
      },
      {
        lower := 20602055622861298331926552232348974594392064, upper := 41204111245722596663853104464697949188784128, M := 5
      },
      {
        lower := 41204111245722596663853104464697949188784128, upper := 82408222491445193327706208929395898377568256, M := 4
      },
      {
        lower := 82408222491445193327706208929395898377568256, upper := 164816444982890386655412417858791796755136512, M := 4
      },
      {
        lower := 164816444982890386655412417858791796755136512, upper := 329632889965780773310824835717583593510273024, M := 4
      },
      {
        lower := 329632889965780773310824835717583593510273024, upper := 659265779931561546621649671435167187020546048, M := 4
      },
      {
        lower := 659265779931561546621649671435167187020546048, upper := 1318531559863123093243299342870334374041092096, M := 4
      },
      {
        lower := 1318531559863123093243299342870334374041092096, upper := 2637063119726246186486598685740668748082184192, M := 4
      },
      {
        lower := 2637063119726246186486598685740668748082184192, upper := 5274126239452492372973197371481337496164368384, M := 4
      },
      {
        lower := 5274126239452492372973197371481337496164368384, upper := 10548252478904984745946394742962674992328736768, M := 4
      },
      {
        lower := 10548252478904984745946394742962674992328736768, upper := 21096504957809969491892789485925349984657473536, M := 4
      },
      {
        lower := 21096504957809969491892789485925349984657473536, upper := 42193009915619938983785578971850699969314947072, M := 4
      },
      {
        lower := 42193009915619938983785578971850699969314947072, upper := 84386019831239877967571157943701399938629894144, M := 4
      },
      {
        lower := 84386019831239877967571157943701399938629894144, upper := 168772039662479755935142315887402799877259788288, M := 4
      },
      {
        lower := 168772039662479755935142315887402799877259788288, upper := 337544079324959511870284631774805599754519576576, M := 4
      },
      {
        lower := 337544079324959511870284631774805599754519576576, upper := 675088158649919023740569263549611199509039153152, M := 4
      },
      {
        lower := 675088158649919023740569263549611199509039153152, upper := 1350176317299838047481138527099222399018078306304, M := 4
      },
      {
        lower := 1350176317299838047481138527099222399018078306304, upper := 2700352634599676094962277054198444798036156612608, M := 4
      },
      {
        lower := 2700352634599676094962277054198444798036156612608, upper := 5400705269199352189924554108396889596072313225216, M := 3
      },
      {
        lower := 5400705269199352189924554108396889596072313225216, upper := 10801410538398704379849108216793779192144626450432, M := 3
      },
      {
        lower := 10801410538398704379849108216793779192144626450432, upper := 21602821076797408759698216433587558384289252900864, M := 3
      },
      {
        lower := 21602821076797408759698216433587558384289252900864, upper := 43205642153594817519396432867175116768578505801728, M := 3
      },
      {
        lower := 43205642153594817519396432867175116768578505801728, upper := 86411284307189635038792865734350233537157011603456, M := 3
      },
      {
        lower := 86411284307189635038792865734350233537157011603456, upper := 172822568614379270077585731468700467074314023206912, M := 3
      },
      {
        lower := 172822568614379270077585731468700467074314023206912, upper := 345645137228758540155171462937400934148628046413824, M := 3
      },
      {
        lower := 345645137228758540155171462937400934148628046413824, upper := 691290274457517080310342925874801868297256092827648, M := 3
      },
      {
        lower := 691290274457517080310342925874801868297256092827648, upper := 1382580548915034160620685851749603736594512185655296, M := 3
      },
      {
        lower := 1382580548915034160620685851749603736594512185655296, upper := 2765161097830068321241371703499207473189024371310592, M := 3
      },
      {
        lower := 2765161097830068321241371703499207473189024371310592, upper := 5530322195660136642482743406998414946378048742621184, M := 3
      },
      {
        lower := 5530322195660136642482743406998414946378048742621184, upper := 11060644391320273284965486813996829892756097485242368, M := 3
      },
      {
        lower := 11060644391320273284965486813996829892756097485242368, upper := 22121288782640546569930973627993659785512194970484736, M := 3
      },
      {
        lower := 22121288782640546569930973627993659785512194970484736, upper := 44242577565281093139861947255987319571024389940969472, M := 3
      },
      {
        lower := 44242577565281093139861947255987319571024389940969472, upper := 88485155130562186279723894511974639142048779881938944, M := 3
      },
      {
        lower := 88485155130562186279723894511974639142048779881938944, upper := 176970310261124372559447789023949278284097559763877888, M := 3
      },
      {
        lower := 176970310261124372559447789023949278284097559763877888, upper := 353940620522248745118895578047898556568195119527755776, M := 3
      },
      {
        lower := 353940620522248745118895578047898556568195119527755776, upper := 707881241044497490237791156095797113136390239055511552, M := 3
      },
      {
        lower := 707881241044497490237791156095797113136390239055511552, upper := 1415762482088994980475582312191594226272780478111023104, M := 3
      },
      {
        lower := 1415762482088994980475582312191594226272780478111023104, upper := 2831524964177989960951164624383188452545560956222046208, M := 3
      },
      {
        lower := 2831524964177989960951164624383188452545560956222046208, upper := 5663049928355979921902329248766376905091121912444092416, M := 3
      },
      {
        lower := 5663049928355979921902329248766376905091121912444092416, upper := 11326099856711959843804658497532753810182243824888184832, M := 3
      },
      {
        lower := 11326099856711959843804658497532753810182243824888184832, upper := 22652199713423919687609316995065507620364487649776369664, M := 2
      },
      {
        lower := 22652199713423919687609316995065507620364487649776369664, upper := 45304399426847839375218633990131015240728975299552739328, M := 2
      },
      {
        lower := 45304399426847839375218633990131015240728975299552739328, upper := 90608798853695678750437267980262030481457950599105478656, M := 2
      },
      {
        lower := 90608798853695678750437267980262030481457950599105478656, upper := 181217597707391357500874535960524060962915901198210957312, M := 2
      },
      {
        lower := 181217597707391357500874535960524060962915901198210957312, upper := 362435195414782715001749071921048121925831802396421914624, M := 2
      },
      {
        lower := 362435195414782715001749071921048121925831802396421914624, upper := 724870390829565430003498143842096243851663604792843829248, M := 2
      },
      {
        lower := 724870390829565430003498143842096243851663604792843829248, upper := 1449740781659130860006996287684192487703327209585687658496, M := 2
      },
      {
        lower := 1449740781659130860006996287684192487703327209585687658496, upper := 2899481563318261720013992575368384975406654419171375316992, M := 2
      },
      {
        lower := 2899481563318261720013992575368384975406654419171375316992, upper := 5798963126636523440027985150736769950813308838342750633984, M := 2
      },
      {
        lower := 5798963126636523440027985150736769950813308838342750633984, upper := 11597926253273046880055970301473539901626617676685501267968, M := 2
      },
      {
        lower := 11597926253273046880055970301473539901626617676685501267968, upper := 23195852506546093760111940602947079803253235353371002535936, M := 2
      },
      {
        lower := 23195852506546093760111940602947079803253235353371002535936, upper := 46391705013092187520223881205894159606506470706742005071872, M := 2
      },
      {
        lower := 46391705013092187520223881205894159606506470706742005071872, upper := 92783410026184375040447762411788319213012941413484010143744, M := 2
      },
      {
        lower := 92783410026184375040447762411788319213012941413484010143744, upper := 185566820052368750080895524823576638426025882826968020287488, M := 2
      },
      {
        lower := 185566820052368750080895524823576638426025882826968020287488, upper := 371133640104737500161791049647153276852051765653936040574976, M := 2
      },
      {
        lower := 371133640104737500161791049647153276852051765653936040574976, upper := 742267280209475000323582099294306553704103531307872081149952, M := 2
      },
      {
        lower := 742267280209475000323582099294306553704103531307872081149952, upper := 1484534560418950000647164198588613107408207062615744162299904, M := 2
      },
      {
        lower := 1484534560418950000647164198588613107408207062615744162299904, upper := 2969069120837900001294328397177226214816414125231488324599808, M := 2
      },
      {
        lower := 2969069120837900001294328397177226214816414125231488324599808, upper := 5938138241675800002588656794354452429632828250462976649199616, M := 2
      },
      {
        lower := 5938138241675800002588656794354452429632828250462976649199616, upper := 11876276483351600005177313588708904859265656500925953298399232, M := 2
      },
      {
        lower := 11876276483351600005177313588708904859265656500925953298399232, upper := 23752552966703200010354627177417809718531313001851906596798464, M := 2
      },
      {
        lower := 23752552966703200010354627177417809718531313001851906596798464, upper := 47505105933406400020709254354835619437062626003703813193596928, M := 2
      },
      {
        lower := 47505105933406400020709254354835619437062626003703813193596928, upper := 95010211866812800041418508709671238874125252007407626387193856, M := 2
      },
      {
        lower := 95010211866812800041418508709671238874125252007407626387193856, upper := 190020423733625600082837017419342477748250504014815252774387712, M := 2
      },
      {
        lower := 190020423733625600082837017419342477748250504014815252774387712, upper := 380040847467251200165674034838684955496501008029630505548775424, M := 2
      },
      {
        lower := 380040847467251200165674034838684955496501008029630505548775424, upper := 760081694934502400331348069677369910993002016059261011097550848, M := 2
      },
      {
        lower := 760081694934502400331348069677369910993002016059261011097550848, upper := 1520163389869004800662696139354739821986004032118522022195101696, M := 2
      },
      {
        lower := 1520163389869004800662696139354739821986004032118522022195101696, upper := 3040326779738009601325392278709479643972008064237044044390203392, M := 2
      },
      {
        lower := 3040326779738009601325392278709479643972008064237044044390203392, upper := 6080653559476019202650784557418959287944016128474088088780406784, M := 2
      },
      {
        lower := 6080653559476019202650784557418959287944016128474088088780406784, upper := 12161307118952038405301569114837918575888032256948176177560813568, M := 2
      },
      {
        lower := 12161307118952038405301569114837918575888032256948176177560813568, upper := 24322614237904076810603138229675837151776064513896352355121627136, M := 2
      },
      {
        lower := 24322614237904076810603138229675837151776064513896352355121627136, upper := 48645228475808153621206276459351674303552129027792704710243254272, M := 2
      },
      {
        lower := 48645228475808153621206276459351674303552129027792704710243254272, upper := 97290456951616307242412552918703348607104258055585409420486508544, M := 2
      },
      {
        lower := 97290456951616307242412552918703348607104258055585409420486508544, upper := 194580913903232614484825105837406697214208516111170818840973017088, M := 2
      },
      {
        lower := 194580913903232614484825105837406697214208516111170818840973017088, upper := 389161827806465228969650211674813394428417032222341637681946034176, M := 2
      },
      {
        lower := 389161827806465228969650211674813394428417032222341637681946034176, upper := 778323655612930457939300423349626788856834064444683275363892068352, M := 2
      },
      {
        lower := 778323655612930457939300423349626788856834064444683275363892068352, upper := 1000000000000000000000000000000000000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 45, r := 14, s := 30,
      n0Power10 := 34
    },
    goods := [
      {
        lower := 92, upper := 133,
        witness := RowWitness.topPrime 89
      },
      {
        lower := 134, upper := 175,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 176, upper := 217,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 218, upper := 255,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 256, upper := 295,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 296, upper := 337,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 338, upper := 381,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 382, upper := 423,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 424, upper := 465,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 466, upper := 507,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 508, upper := 547,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 548, upper := 591,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 592, upper := 631,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 632, upper := 675,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 676, upper := 717,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 718, upper := 753,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 754, upper := 795,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 796, upper := 831,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 832, upper := 873,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 874, upper := 907,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 908, upper := 951,
        witness := RowWitness.topPrime 907
      },
      {
        lower := 952, upper := 991,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 992, upper := 1035,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1036, upper := 1077,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1078, upper := 1113,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1114, upper := 1153,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1154, upper := 1197,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1198, upper := 1237,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1238, upper := 1281,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1282, upper := 1323,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1324, upper := 1365,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1366, upper := 1405,
        witness := RowWitness.topPrime 1361
      },
      {
        lower := 1406, upper := 1443,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1444, upper := 1483,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1484, upper := 1527,
        witness := RowWitness.topPrime 1483
      },
      {
        lower := 1528, upper := 1567,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1568, upper := 1611,
        witness := RowWitness.topPrime 1567
      },
      {
        lower := 1612, upper := 1653,
        witness := RowWitness.topPrime 1609
      },
      {
        lower := 1654, upper := 1681,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1682, upper := 1713,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1714, upper := 1753,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1754, upper := 1797,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1798, upper := 1833,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1834, upper := 1875,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1876, upper := 1917,
        witness := RowWitness.topPrime 1873
      },
      {
        lower := 1918, upper := 1957,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1958, upper := 1980,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 1984, upper := 2004,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2009, upper := 2047,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2048, upper := 2083,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2084, upper := 2101,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2116, upper := 2156,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2176, upper := 2205,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2206, upper := 2231,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2240, upper := 2241,
        witness := RowWitness.topPrime 2239
      },
      {
        lower := 2304, upper := 2341,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2342, upper := 2348,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2368, upper := 2401,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2402, upper := 2412,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2461,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2462, upper := 2464,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2500, upper := 2521,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2522, upper := 2565,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2566, upper := 2585,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2601, upper := 2604,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2624, upper := 2665,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2666, upper := 2707,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2708, upper := 2732,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2738, upper := 2775,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2776, upper := 2788,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2816, upper := 2827,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2883, upper := 2923,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2924, upper := 2960,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3042, upper := 3069,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3111,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3112, upper := 3116,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3131,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3169,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3174, upper := 3213,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3214, upper := 3244,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3255,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3267, upper := 3293,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3362, upper := 3405,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3406, upper := 3424,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3430, upper := 3432,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3456, upper := 3493,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3494, upper := 3500,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3509, upper := 3512,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3549, upper := 3553,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3593,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3628,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3630, upper := 3654,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3703, upper := 3745,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3746, upper := 3783,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3784, upper := 3801,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3877,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3878, upper := 3916,
        witness := RowWitness.topPrime 3877
      },
      {
        lower := 3971, upper := 4011,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4012, upper := 4015,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4056, upper := 4090,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4100,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4143,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4144, upper := 4158,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4263,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4264, upper := 4276,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4371,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4372, upper := 4407,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4408, upper := 4419,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4477, upper := 4507,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4508, upper := 4521,
        witness := RowWitness.topPrime 4507
      },
      {
        lower := 4598, upper := 4641,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4642, upper := 4652,
        witness := RowWitness.topPrime 4639
      },
      {
        lower := 4719, upper := 4747,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4748, upper := 4777,
        witness := RowWitness.topPrime 4733
      },
      {
        lower := 4778, upper := 4780,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4845,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4846, upper := 4849,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4884,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4901, upper := 4908,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4913, upper := 4945,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5000, upper := 5036,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5043, upper := 5044,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5046, upper := 5083,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5084, upper := 5098,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5145, upper := 5163,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5164, upper := 5164,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5246,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5334,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5408, upper := 5451,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5452, upper := 5452,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5527,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5528, upper := 5532,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5577, upper := 5591,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5766, upper := 5793,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5794, upper := 5824,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5863,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5888, upper := 5925,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5926, upper := 5932,
        witness := RowWitness.topPrime 5923
      },
      {
        lower := 6084, upper := 6113,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6144, upper := 6187,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6188, upper := 6188,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6253, upper := 6291,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6292, upper := 6294,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6358, upper := 6392,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6400, upper := 6402,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6422, upper := 6444,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6517, upper := 6535,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6536, upper := 6542,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6561,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6605,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6697,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6698, upper := 6699,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6763,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6764, upper := 6772,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6901,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6902, upper := 6904,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6912, upper := 6921,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 6936, upper := 6956,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7203, upper := 7212,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7263,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7264, upper := 7264,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7437,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7438, upper := 7450,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7546, upper := 7558,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7605,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7606, upper := 7613,
        witness := RowWitness.topPrime 7603
      },
      {
        lower := 7688, upper := 7724,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7936, upper := 7977,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7978, upper := 7980,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 7986, upper := 7986,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8214, upper := 8253,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8254, upper := 8258,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8405, upper := 8433,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8434, upper := 8454,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8464, upper := 8492,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8664, upper := 8707,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8708, upper := 8714,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8748, upper := 8748,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8788, upper := 8792,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8959, upper := 8995,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8996, upper := 9004,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9037,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9285,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9286, upper := 9295,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9419,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9537, upper := 9566,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9604, upper := 9645,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9646, upper := 9648,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9747, upper := 9772,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 9984, upper := 9991,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10086, upper := 10123,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10124, upper := 10152,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10580, upper := 10611,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10612, upper := 10615,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10648, upper := 10677,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10952, upper := 10993,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10994, upper := 11026,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11109, upper := 11137,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11138, upper := 11138,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11271, upper := 11305,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11306, upper := 11308,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11552, upper := 11576,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11662, upper := 11682,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11787,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11788, upper := 11818,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 12005, upper := 12023,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12288, upper := 12318,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12321, upper := 12332,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12348, upper := 12365,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12500, upper := 12537,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12659,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12696, upper := 12733,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12734, upper := 12735,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 13034, upper := 13040,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13225, upper := 13226,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13312, upper := 13353,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13354, upper := 13354,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13377, upper := 13401,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13495,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13496, upper := 13498,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13734,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13754, upper := 13762,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 14297, upper := 14327,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14341,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14450,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14812, upper := 14836,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14848, upper := 14856,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15173,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15360, upper := 15403,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15404, upper := 15420,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15872, upper := 15903,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15904, upper := 15914,
        witness := RowWitness.topPrime 15901
      },
      {
        lower := 15979, upper := 16016,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16399, upper := 16425,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16426, upper := 16443,
        witness := RowWitness.topPrime 16421
      },
      {
        lower := 16810, upper := 16831,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16832, upper := 16854,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16928, upper := 16940,
        witness := RowWitness.topPrime 16927
      },
      {
        lower := 17303, upper := 17342,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 18491, upper := 18525,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18526, upper := 18546,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19210,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19252,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19696,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20221,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20222, upper := 20225,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20579,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21907,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21908, upper := 21919,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 23548, upper := 23583,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23584, upper := 23592,
        witness := RowWitness.topPrime 23581
      },
      {
        lower := 24025, upper := 24067,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24068, upper := 24069,
        witness := RowWitness.topPrime 24061
      },
      {
        lower := 24576, upper := 24609,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25230, upper := 25259,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26624, upper := 26641,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26642, upper := 26664,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26908, upper := 26947,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26948, upper := 26952,
        witness := RowWitness.topPrime 26947
      },
      {
        lower := 27753, upper := 27779,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 28577, upper := 28617,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28618, upper := 28621,
        witness := RowWitness.topPrime 28607
      },
      {
        lower := 28830, upper := 28856,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29478, upper := 29479,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 30276, upper := 30302,
        witness := RowWitness.topPrime 30271
      },
      {
        lower := 30752, upper := 30771,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30772, upper := 30796,
        witness := RowWitness.topPrime 30763
      },
      {
        lower := 31250, upper := 31257,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31744, upper := 31757,
        witness := RowWitness.topPrime 31741
      },
      {
        lower := 31944, upper := 31951,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31952, upper := 31952,
        witness := RowWitness.largeDivisor 1606896806791409430504735062762551958908401062490937977893453935154867258622661105887749674660773959132071804800328426864836171714142507
      },
      {
        lower := 31953, upper := 31953,
        witness := RowWitness.largeDivisor 6436652083164837098272257673367409144164490303343730877225715631190105743358391665592486568188004301886309436979427632394648388464585123
      },
      {
        lower := 31954, upper := 31954,
        witness := RowWitness.largeDivisor 4214515402349272665837296047186225806168438243372107217959725365334384634303390174221185930902001751208457271202832477470976488770897771
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 109622305984014299988873573148372529586957184017513287085759074059151966357625002964700229478178046176841727831349136831742729103097623
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 301886453811199669979700439807772540113823144817619321105870128458657379948661202580141376525737473597652038484883920768284268460753847
      },
      {
        lower := 31957, upper := 31983,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 33282, upper := 33291,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33292, upper := 33319,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33663,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33664, upper := 33664,
        witness := RowWitness.topPrime 33647
      },
      {
        lower := 34606, upper := 34640,
        witness := RowWitness.topPrime 34603
      },
      {
        lower := 35152, upper := 35175,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36980, upper := 37023,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37024, upper := 37024,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43940, upper := 43967,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 46585, upper := 46590,
        witness := RowWitness.topPrime 46573
      },
      {
        lower := 47104, upper := 47112,
        witness := RowWitness.topPrime 47093
      },
      {
        lower := 47916, upper := 47955,
        witness := RowWitness.topPrime 47911
      },
      {
        lower := 47956, upper := 47959,
        witness := RowWitness.topPrime 47951
      },
      {
        lower := 48020, upper := 48057,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48778, upper := 48793,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49174,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50430, upper := 50465,
        witness := RowWitness.topPrime 50423
      },
      {
        lower := 55473, upper := 55513,
        witness := RowWitness.topPrime 55469
      },
      {
        lower := 55514, upper := 55514,
        witness := RowWitness.topPrime 55511
      },
      {
        lower := 57154, upper := 57166,
        witness := RowWitness.topPrime 57149
      },
      {
        lower := 57344, upper := 57363,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 69632, upper := 69667,
        witness := RowWitness.topPrime 69623
      },
      {
        lower := 69668, upper := 69673,
        witness := RowWitness.topPrime 69661
      },
      {
        lower := 73205, upper := 73211,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73739,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98304,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 219501, upper := 219532,
        witness := RowWitness.topPrime 219491
      },
      {
        lower := 327701, upper := 327724,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655404,
        witness := RowWitness.topPrime 655399
      },
      {
        lower := 658503, upper := 658531,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658532, upper := 658533,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 1980, upper := 3960, M := 41
      },
      {
        lower := 3960, upper := 7920, M := 40
      },
      {
        lower := 7920, upper := 15840, M := 39
      },
      {
        lower := 15840, upper := 31680, M := 37
      },
      {
        lower := 31680, upper := 63360, M := 36
      },
      {
        lower := 63360, upper := 126720, M := 35
      },
      {
        lower := 126720, upper := 253440, M := 33
      },
      {
        lower := 253440, upper := 506880, M := 32
      },
      {
        lower := 506880, upper := 1013760, M := 31
      },
      {
        lower := 1013760, upper := 2027520, M := 30
      },
      {
        lower := 2027520, upper := 4055040, M := 29
      },
      {
        lower := 4055040, upper := 8110080, M := 28
      },
      {
        lower := 8110080, upper := 16220160, M := 27
      },
      {
        lower := 16220160, upper := 32440320, M := 26
      },
      {
        lower := 32440320, upper := 64880640, M := 25
      },
      {
        lower := 64880640, upper := 129761280, M := 24
      },
      {
        lower := 129761280, upper := 259522560, M := 24
      },
      {
        lower := 259522560, upper := 519045120, M := 23
      },
      {
        lower := 519045120, upper := 1038090240, M := 22
      },
      {
        lower := 1038090240, upper := 2076180480, M := 21
      },
      {
        lower := 2076180480, upper := 4152360960, M := 20
      },
      {
        lower := 4152360960, upper := 8304721920, M := 20
      },
      {
        lower := 8304721920, upper := 16609443840, M := 19
      },
      {
        lower := 16609443840, upper := 33218887680, M := 18
      },
      {
        lower := 33218887680, upper := 66437775360, M := 18
      },
      {
        lower := 66437775360, upper := 132875550720, M := 17
      },
      {
        lower := 132875550720, upper := 265751101440, M := 17
      },
      {
        lower := 265751101440, upper := 531502202880, M := 16
      },
      {
        lower := 531502202880, upper := 1063004405760, M := 15
      },
      {
        lower := 1063004405760, upper := 2126008811520, M := 15
      },
      {
        lower := 2126008811520, upper := 4252017623040, M := 14
      },
      {
        lower := 4252017623040, upper := 8504035246080, M := 14
      },
      {
        lower := 8504035246080, upper := 17008070492160, M := 13
      },
      {
        lower := 17008070492160, upper := 34016140984320, M := 13
      },
      {
        lower := 34016140984320, upper := 68032281968640, M := 13
      },
      {
        lower := 68032281968640, upper := 136064563937280, M := 12
      },
      {
        lower := 136064563937280, upper := 272129127874560, M := 12
      },
      {
        lower := 272129127874560, upper := 544258255749120, M := 11
      },
      {
        lower := 544258255749120, upper := 1088516511498240, M := 11
      },
      {
        lower := 1088516511498240, upper := 2177033022996480, M := 11
      },
      {
        lower := 2177033022996480, upper := 4354066045992960, M := 10
      },
      {
        lower := 4354066045992960, upper := 8708132091985920, M := 10
      },
      {
        lower := 8708132091985920, upper := 17416264183971840, M := 10
      },
      {
        lower := 17416264183971840, upper := 34832528367943680, M := 9
      },
      {
        lower := 34832528367943680, upper := 69665056735887360, M := 9
      },
      {
        lower := 69665056735887360, upper := 139330113471774720, M := 9
      },
      {
        lower := 139330113471774720, upper := 278660226943549440, M := 8
      },
      {
        lower := 278660226943549440, upper := 557320453887098880, M := 8
      },
      {
        lower := 557320453887098880, upper := 1114640907774197760, M := 8
      },
      {
        lower := 1114640907774197760, upper := 2229281815548395520, M := 8
      },
      {
        lower := 2229281815548395520, upper := 4458563631096791040, M := 7
      },
      {
        lower := 4458563631096791040, upper := 8917127262193582080, M := 7
      },
      {
        lower := 8917127262193582080, upper := 17834254524387164160, M := 7
      },
      {
        lower := 17834254524387164160, upper := 35668509048774328320, M := 7
      },
      {
        lower := 35668509048774328320, upper := 71337018097548656640, M := 6
      },
      {
        lower := 71337018097548656640, upper := 142674036195097313280, M := 6
      },
      {
        lower := 142674036195097313280, upper := 285348072390194626560, M := 6
      },
      {
        lower := 285348072390194626560, upper := 570696144780389253120, M := 6
      },
      {
        lower := 570696144780389253120, upper := 1141392289560778506240, M := 6
      },
      {
        lower := 1141392289560778506240, upper := 2282784579121557012480, M := 5
      },
      {
        lower := 2282784579121557012480, upper := 4565569158243114024960, M := 5
      },
      {
        lower := 4565569158243114024960, upper := 9131138316486228049920, M := 5
      },
      {
        lower := 9131138316486228049920, upper := 18262276632972456099840, M := 5
      },
      {
        lower := 18262276632972456099840, upper := 36524553265944912199680, M := 5
      },
      {
        lower := 36524553265944912199680, upper := 73049106531889824399360, M := 5
      },
      {
        lower := 73049106531889824399360, upper := 146098213063779648798720, M := 4
      },
      {
        lower := 146098213063779648798720, upper := 292196426127559297597440, M := 4
      },
      {
        lower := 292196426127559297597440, upper := 584392852255118595194880, M := 4
      },
      {
        lower := 584392852255118595194880, upper := 1168785704510237190389760, M := 4
      },
      {
        lower := 1168785704510237190389760, upper := 2337571409020474380779520, M := 4
      },
      {
        lower := 2337571409020474380779520, upper := 4675142818040948761559040, M := 4
      },
      {
        lower := 4675142818040948761559040, upper := 9350285636081897523118080, M := 4
      },
      {
        lower := 9350285636081897523118080, upper := 18700571272163795046236160, M := 4
      },
      {
        lower := 18700571272163795046236160, upper := 37401142544327590092472320, M := 3
      },
      {
        lower := 37401142544327590092472320, upper := 74802285088655180184944640, M := 3
      },
      {
        lower := 74802285088655180184944640, upper := 149604570177310360369889280, M := 3
      },
      {
        lower := 149604570177310360369889280, upper := 299209140354620720739778560, M := 3
      },
      {
        lower := 299209140354620720739778560, upper := 598418280709241441479557120, M := 3
      },
      {
        lower := 598418280709241441479557120, upper := 1196836561418482882959114240, M := 3
      },
      {
        lower := 1196836561418482882959114240, upper := 2393673122836965765918228480, M := 3
      },
      {
        lower := 2393673122836965765918228480, upper := 4787346245673931531836456960, M := 3
      },
      {
        lower := 4787346245673931531836456960, upper := 9574692491347863063672913920, M := 3
      },
      {
        lower := 9574692491347863063672913920, upper := 19149384982695726127345827840, M := 3
      },
      {
        lower := 19149384982695726127345827840, upper := 38298769965391452254691655680, M := 3
      },
      {
        lower := 38298769965391452254691655680, upper := 76597539930782904509383311360, M := 3
      },
      {
        lower := 76597539930782904509383311360, upper := 153195079861565809018766622720, M := 2
      },
      {
        lower := 153195079861565809018766622720, upper := 306390159723131618037533245440, M := 2
      },
      {
        lower := 306390159723131618037533245440, upper := 612780319446263236075066490880, M := 2
      },
      {
        lower := 612780319446263236075066490880, upper := 1225560638892526472150132981760, M := 2
      },
      {
        lower := 1225560638892526472150132981760, upper := 2451121277785052944300265963520, M := 2
      },
      {
        lower := 2451121277785052944300265963520, upper := 4902242555570105888600531927040, M := 2
      },
      {
        lower := 4902242555570105888600531927040, upper := 9804485111140211777201063854080, M := 2
      },
      {
        lower := 9804485111140211777201063854080, upper := 19608970222280423554402127708160, M := 2
      },
      {
        lower := 19608970222280423554402127708160, upper := 39217940444560847108804255416320, M := 2
      },
      {
        lower := 39217940444560847108804255416320, upper := 78435880889121694217608510832640, M := 2
      },
      {
        lower := 78435880889121694217608510832640, upper := 156871761778243388435217021665280, M := 2
      },
      {
        lower := 156871761778243388435217021665280, upper := 313743523556486776870434043330560, M := 2
      },
      {
        lower := 313743523556486776870434043330560, upper := 627487047112973553740868086661120, M := 2
      },
      {
        lower := 627487047112973553740868086661120, upper := 1254974094225947107481736173322240, M := 2
      },
      {
        lower := 1254974094225947107481736173322240, upper := 2509948188451894214963472346644480, M := 2
      },
      {
        lower := 2509948188451894214963472346644480, upper := 5019896376903788429926944693288960, M := 2
      },
      {
        lower := 5019896376903788429926944693288960, upper := 10000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 46, r := 15, s := 31,
      n0Power10 := 24
    },
    goods := [
      {
        lower := 94, upper := 134,
        witness := RowWitness.topPrime 89
      },
      {
        lower := 135, upper := 176,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 177, upper := 218,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 219, upper := 256,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 257, upper := 302,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 303, upper := 338,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 339, upper := 382,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 383, upper := 428,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 429, upper := 466,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 467, upper := 512,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 513, upper := 554,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 555, upper := 592,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 593, upper := 638,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 639, upper := 676,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 677, upper := 722,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 723, upper := 764,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 765, upper := 806,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 807, upper := 842,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 843, upper := 884,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 885, upper := 928,
        witness := RowWitness.topPrime 883
      },
      {
        lower := 929, upper := 974,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 975, upper := 1016,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1017, upper := 1058,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1059, upper := 1096,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1097, upper := 1142,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1143, upper := 1174,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1175, upper := 1216,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1217, upper := 1262,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1263, upper := 1304,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1305, upper := 1348,
        witness := RowWitness.topPrime 1303
      },
      {
        lower := 1349, upper := 1372,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1373, upper := 1418,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1419, upper := 1454,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1455, upper := 1498,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1499, upper := 1544,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1545, upper := 1588,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1589, upper := 1628,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1629, upper := 1672,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1673, upper := 1714,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1715, upper := 1754,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1755, upper := 1798,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1799, upper := 1834,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1835, upper := 1876,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1877, upper := 1922,
        witness := RowWitness.topPrime 1877
      },
      {
        lower := 1923, upper := 1958,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1959, upper := 1996,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 1997, upper := 2042,
        witness := RowWitness.topPrime 1997
      },
      {
        lower := 2043, upper := 2084,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2085, upper := 2102,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2125, upper := 2151,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2166, upper := 2170,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2176, upper := 2206,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2207, upper := 2232,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2268, upper := 2295,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2342,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2343, upper := 2357,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2366, upper := 2402,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2403, upper := 2444,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2445, upper := 2475,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2511, upper := 2548,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2549, upper := 2586,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2592, upper := 2636,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2637, upper := 2646,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2662, upper := 2670,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2673, upper := 2716,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2717, upper := 2718,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2738, upper := 2776,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2777, upper := 2799,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2828,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2861,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2873, upper := 2906,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2907, upper := 2948,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 2949, upper := 2949,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3000, upper := 3044,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3045, upper := 3070,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3072, upper := 3112,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3113, upper := 3123,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3132,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3182,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3183, upper := 3204,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3211, upper := 3224,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3249, upper := 3274,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3275, upper := 3295,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3406,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3407, upper := 3447,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3468, upper := 3475,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3500, upper := 3544,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3545, upper := 3545,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3549, upper := 3554,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3594,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3652,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3653, upper := 3675,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3718, upper := 3743,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3750, upper := 3784,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3785, upper := 3802,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3878,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3879, upper := 3922,
        witness := RowWitness.topPrime 3877
      },
      {
        lower := 3923, upper := 3932,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 3993, upper := 4034,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4035, upper := 4038,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4091,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4101,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4144,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4145, upper := 4170,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4264,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4265, upper := 4280,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4372,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4373, upper := 4418,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4419, upper := 4420,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4500, upper := 4504,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4608, upper := 4608,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4617, upper := 4648,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4649, upper := 4662,
        witness := RowWitness.topPrime 4649
      },
      {
        lower := 4732, upper := 4738,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4805, upper := 4846,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4847, upper := 4847,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4905,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4913, upper := 4946,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5084,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5085, upper := 5099,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5115,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5164,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5165, upper := 5165,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5247,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5346, upper := 5369,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5415, upper := 5453,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5528,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5529, upper := 5533,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5577, upper := 5618,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5619, upper := 5622,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5625, upper := 5668,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5669, upper := 5670,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5766, upper := 5794,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5795, upper := 5821,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5832, upper := 5872,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5873, upper := 5876,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5915, upper := 5932,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6075, upper := 6118,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6119, upper := 6120,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6144, upper := 6188,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6189, upper := 6189,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6358, upper := 6363,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6536,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6537, upper := 6543,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6562,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6606,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6698,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6699, upper := 6700,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6764,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6765, upper := 6772,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6849,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6902,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6903, upper := 6905,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7203, upper := 7213,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7264,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7265, upper := 7265,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7514, upper := 7552,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7553, upper := 7594,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7595, upper := 7614,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7725,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7821,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7986, upper := 7987,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8031,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8137,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8254,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8255, upper := 8259,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8262, upper := 8277,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8303, upper := 8307,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8405, upper := 8434,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8435, upper := 8450,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8708,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8709, upper := 8715,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8748, upper := 8792,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8793, upper := 8795,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8959, upper := 8963,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9245, upper := 9286,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9287, upper := 9296,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9420,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9604, upper := 9646,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9647, upper := 9649,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 10092, upper := 10136,
        witness := RowWitness.topPrime 10091
      },
      {
        lower := 10137, upper := 10137,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10240, upper := 10251,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10633, upper := 10676,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10677, upper := 10678,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10935, upper := 10954,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10955, upper := 10994,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10995, upper := 11021,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11264, upper := 11295,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11552, upper := 11577,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11664, upper := 11702,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11703, upper := 11707,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11774, upper := 11788,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11789, upper := 11812,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11913, upper := 11920,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12005, upper := 12024,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12288, upper := 12319,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12321, upper := 12333,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12538,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13166,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13167, upper := 13167,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13312, upper := 13354,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13355, upper := 13355,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13496,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13497, upper := 13499,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13735,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13763,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 14336, upper := 14342,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14381,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14446,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14447, upper := 14451,
        witness := RowWitness.topPrime 14447
      },
      {
        lower := 15138, upper := 15174,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15376, upper := 15418,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15419, upper := 15421,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16017,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16428, upper := 16429,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16832,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16833, upper := 16855,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17343,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17541,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 18259, upper := 18270,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18526,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18527, upper := 18536,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19211,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19253,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19375, upper := 19388,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19697,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20010,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20181, upper := 20222,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20223, upper := 20226,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20580,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21142, upper := 21184,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21185, upper := 21186,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21866, upper := 21908,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21909, upper := 21920,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22627, upper := 22644,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23548, upper := 23579,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24025, upper := 24068,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24069, upper := 24082,
        witness := RowWitness.topPrime 24061
      },
      {
        lower := 24576, upper := 24610,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25031,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25230, upper := 25260,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26624, upper := 26642,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26643, upper := 26665,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26908, upper := 26948,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26949, upper := 26953,
        witness := RowWitness.topPrime 26947
      },
      {
        lower := 28577, upper := 28606,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28830, upper := 28857,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 30618, upper := 30638,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30639, upper := 30658,
        witness := RowWitness.topPrime 30637
      },
      {
        lower := 30752, upper := 30772,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30773, upper := 30797,
        witness := RowWitness.topPrime 30773
      },
      {
        lower := 31250, upper := 31258,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31952,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31953, upper := 31953,
        witness := RowWitness.largeDivisor 17115057889135301844305933153483940914333379716590980402543177863334491171589963438810421784811903438715696792928298074537370064927331842057
      },
      {
        lower := 31954, upper := 31954,
        witness := RowWitness.largeDivisor 7910645410209584793776604680568545838178158582809445248110404510732639958587463357013165992303057287018274298047716560213022869422975116167
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 349804778394989631264495571916456741911980374199884899090657205322753924647181384460358432264866145350301953509835095630091048567984514993
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 291924200835430080870370325294116046290066981038637883509376414219521686410355382894996711100388136968929521214882751382930887601548970049
      },
      {
        lower := 31957, upper := 31984,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32813,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33282, upper := 33292,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33293, upper := 33320,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33659,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34420,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35176,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36980, upper := 37024,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37025, upper := 37025,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43740, upper := 43766,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43767, upper := 43785,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43968,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48058,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48114, upper := 48119,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 48778, upper := 48794,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49175,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50430, upper := 50466,
        witness := RowWitness.topPrime 50423
      },
      {
        lower := 65625, upper := 65655,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68795,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73212,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73740,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98305,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 150903, upper := 150943,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 327701, upper := 327725,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655405,
        witness := RowWitness.topPrime 655399
      }
    ],
    layers := [
      {
        lower := 2070, upper := 4140, M := 38
      },
      {
        lower := 4140, upper := 8280, M := 36
      },
      {
        lower := 8280, upper := 16560, M := 34
      },
      {
        lower := 16560, upper := 33120, M := 32
      },
      {
        lower := 33120, upper := 66240, M := 30
      },
      {
        lower := 66240, upper := 132480, M := 29
      },
      {
        lower := 132480, upper := 264960, M := 27
      },
      {
        lower := 264960, upper := 529920, M := 26
      },
      {
        lower := 529920, upper := 1059840, M := 25
      },
      {
        lower := 1059840, upper := 2119680, M := 23
      },
      {
        lower := 2119680, upper := 4239360, M := 22
      },
      {
        lower := 4239360, upper := 8478720, M := 21
      },
      {
        lower := 8478720, upper := 16957440, M := 20
      },
      {
        lower := 16957440, upper := 33914880, M := 19
      },
      {
        lower := 33914880, upper := 67829760, M := 18
      },
      {
        lower := 67829760, upper := 135659520, M := 17
      },
      {
        lower := 135659520, upper := 271319040, M := 16
      },
      {
        lower := 271319040, upper := 542638080, M := 15
      },
      {
        lower := 542638080, upper := 1085276160, M := 15
      },
      {
        lower := 1085276160, upper := 2170552320, M := 14
      },
      {
        lower := 2170552320, upper := 4341104640, M := 13
      },
      {
        lower := 4341104640, upper := 8682209280, M := 13
      },
      {
        lower := 8682209280, upper := 17364418560, M := 12
      },
      {
        lower := 17364418560, upper := 34728837120, M := 11
      },
      {
        lower := 34728837120, upper := 69457674240, M := 11
      },
      {
        lower := 69457674240, upper := 138915348480, M := 10
      },
      {
        lower := 138915348480, upper := 277830696960, M := 10
      },
      {
        lower := 277830696960, upper := 555661393920, M := 9
      },
      {
        lower := 555661393920, upper := 1111322787840, M := 9
      },
      {
        lower := 1111322787840, upper := 2222645575680, M := 8
      },
      {
        lower := 2222645575680, upper := 4445291151360, M := 8
      },
      {
        lower := 4445291151360, upper := 8890582302720, M := 8
      },
      {
        lower := 8890582302720, upper := 17781164605440, M := 7
      },
      {
        lower := 17781164605440, upper := 35562329210880, M := 7
      },
      {
        lower := 35562329210880, upper := 71124658421760, M := 7
      },
      {
        lower := 71124658421760, upper := 142249316843520, M := 6
      },
      {
        lower := 142249316843520, upper := 284498633687040, M := 6
      },
      {
        lower := 284498633687040, upper := 568997267374080, M := 6
      },
      {
        lower := 568997267374080, upper := 1137994534748160, M := 5
      },
      {
        lower := 1137994534748160, upper := 2275989069496320, M := 5
      },
      {
        lower := 2275989069496320, upper := 4551978138992640, M := 5
      },
      {
        lower := 4551978138992640, upper := 9103956277985280, M := 5
      },
      {
        lower := 9103956277985280, upper := 18207912555970560, M := 4
      },
      {
        lower := 18207912555970560, upper := 36415825111941120, M := 4
      },
      {
        lower := 36415825111941120, upper := 72831650223882240, M := 4
      },
      {
        lower := 72831650223882240, upper := 145663300447764480, M := 4
      },
      {
        lower := 145663300447764480, upper := 291326600895528960, M := 4
      },
      {
        lower := 291326600895528960, upper := 582653201791057920, M := 4
      },
      {
        lower := 582653201791057920, upper := 1165306403582115840, M := 3
      },
      {
        lower := 1165306403582115840, upper := 2330612807164231680, M := 3
      },
      {
        lower := 2330612807164231680, upper := 4661225614328463360, M := 3
      },
      {
        lower := 4661225614328463360, upper := 9322451228656926720, M := 3
      },
      {
        lower := 9322451228656926720, upper := 18644902457313853440, M := 3
      },
      {
        lower := 18644902457313853440, upper := 37289804914627706880, M := 3
      },
      {
        lower := 37289804914627706880, upper := 74579609829255413760, M := 3
      },
      {
        lower := 74579609829255413760, upper := 149159219658510827520, M := 2
      },
      {
        lower := 149159219658510827520, upper := 298318439317021655040, M := 2
      },
      {
        lower := 298318439317021655040, upper := 596636878634043310080, M := 2
      },
      {
        lower := 596636878634043310080, upper := 1193273757268086620160, M := 2
      },
      {
        lower := 1193273757268086620160, upper := 2386547514536173240320, M := 2
      },
      {
        lower := 2386547514536173240320, upper := 4773095029072346480640, M := 2
      },
      {
        lower := 4773095029072346480640, upper := 9546190058144692961280, M := 2
      },
      {
        lower := 9546190058144692961280, upper := 19092380116289385922560, M := 2
      },
      {
        lower := 19092380116289385922560, upper := 38184760232578771845120, M := 2
      },
      {
        lower := 38184760232578771845120, upper := 76369520465157543690240, M := 2
      },
      {
        lower := 76369520465157543690240, upper := 152739040930315087380480, M := 2
      },
      {
        lower := 152739040930315087380480, upper := 305478081860630174760960, M := 2
      },
      {
        lower := 305478081860630174760960, upper := 610956163721260349521920, M := 2
      },
      {
        lower := 610956163721260349521920, upper := 1000000000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 47, r := 15, s := 32,
      n0Power10 := 19
    },
    goods := [
      {
        lower := 96, upper := 135,
        witness := RowWitness.topPrime 89
      },
      {
        lower := 136, upper := 177,
        witness := RowWitness.topPrime 131
      },
      {
        lower := 178, upper := 219,
        witness := RowWitness.topPrime 173
      },
      {
        lower := 220, upper := 257,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 258, upper := 303,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 304, upper := 339,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 340, upper := 383,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 384, upper := 429,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 430, upper := 467,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 468, upper := 513,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 514, upper := 555,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 556, upper := 593,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 594, upper := 639,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 640, upper := 677,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 678, upper := 723,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 724, upper := 765,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 766, upper := 807,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 808, upper := 843,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 844, upper := 885,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 886, upper := 929,
        witness := RowWitness.topPrime 883
      },
      {
        lower := 930, upper := 975,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 976, upper := 1017,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1018, upper := 1059,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1060, upper := 1097,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1098, upper := 1143,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1144, upper := 1175,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1176, upper := 1217,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1218, upper := 1263,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1264, upper := 1305,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1306, upper := 1349,
        witness := RowWitness.topPrime 1303
      },
      {
        lower := 1350, upper := 1373,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1374, upper := 1419,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1420, upper := 1455,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1456, upper := 1499,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1500, upper := 1545,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1546, upper := 1589,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1590, upper := 1629,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1630, upper := 1673,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1674, upper := 1715,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1716, upper := 1755,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1756, upper := 1799,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1800, upper := 1835,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1836, upper := 1877,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1878, upper := 1923,
        witness := RowWitness.topPrime 1877
      },
      {
        lower := 1924, upper := 1959,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1960, upper := 1997,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 1998, upper := 2043,
        witness := RowWitness.topPrime 1997
      },
      {
        lower := 2044, upper := 2085,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2086, upper := 2129,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2130, upper := 2162,
        witness := RowWitness.topPrime 2129
      },
      {
        lower := 2166, upper := 2171,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2176, upper := 2207,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2208, upper := 2233,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2268, upper := 2296,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2299, upper := 2343,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2344, upper := 2358,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2366, upper := 2403,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2404, upper := 2445,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2446, upper := 2476,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2511, upper := 2549,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2550, upper := 2587,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2592, upper := 2637,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2638, upper := 2679,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2680, upper := 2723,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2724, upper := 2734,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2738, upper := 2777,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2778, upper := 2800,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2829,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2907,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2908, upper := 2949,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 2950, upper := 2962,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3025, upper := 3069,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3070, upper := 3113,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3114, upper := 3118,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3133,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3183,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3184, upper := 3227,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3228, upper := 3246,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3249, upper := 3275,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3276, upper := 3296,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3407,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3408, upper := 3448,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3456, upper := 3495,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3496, upper := 3537,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3538, upper := 3546,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3549, upper := 3555,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3595,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3653,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3654, upper := 3676,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3703, upper := 3747,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3748, upper := 3785,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3786, upper := 3803,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3879,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3880, upper := 3923,
        witness := RowWitness.topPrime 3877
      },
      {
        lower := 3924, upper := 3933,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 3971, upper := 4013,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4014, upper := 4039,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4046, upper := 4046,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4092,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4102,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4145,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4146, upper := 4171,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4265,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4266, upper := 4278,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4373,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4374, upper := 4419,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4420, upper := 4421,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4608, upper := 4609,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4617, upper := 4649,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4650, upper := 4663,
        witness := RowWitness.topPrime 4649
      },
      {
        lower := 4732, upper := 4739,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4778,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4847,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4848, upper := 4848,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4864, upper := 4907,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4908, upper := 4910,
        witness := RowWitness.topPrime 4903
      },
      {
        lower := 4913, upper := 4947,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5085,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5086, upper := 5100,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5103, upper := 5116,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5165,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5166, upper := 5166,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5239, upper := 5248,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5336,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5370,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5392,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5453,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5454, upper := 5454,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5529,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5530, upper := 5534,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5589, upper := 5593,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5625, upper := 5669,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5670, upper := 5671,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5776, upper := 5795,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5796, upper := 5826,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5873,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5874, upper := 5877,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5888, upper := 5927,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5928, upper := 5933,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6115,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6189,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6190, upper := 6190,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6389,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6390, upper := 6394,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6400, upper := 6404,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6517, upper := 6537,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6538, upper := 6544,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6563,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6607,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6655, upper := 6699,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6700, upper := 6701,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6727, upper := 6765,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6766, upper := 6773,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6850,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6903,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6904, upper := 6923,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6936, upper := 6958,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7203, upper := 7214,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7265,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7266, upper := 7266,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7439,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7440, upper := 7452,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7553,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7554, upper := 7595,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7596, upper := 7615,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7688, upper := 7726,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7822,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7935, upper := 7979,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7980, upper := 7982,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 7986, upper := 7988,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8032,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8138,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8255,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8256, upper := 8260,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8405, upper := 8435,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8436, upper := 8451,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8709,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8710, upper := 8716,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8748, upper := 8793,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8794, upper := 8796,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 9025, upper := 9039,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9287,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9288, upper := 9297,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9421,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9523,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9647,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9648, upper := 9650,
        witness := RowWitness.topPrime 9643
      },
      {
        lower := 9747, upper := 9774,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10086, upper := 10125,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10126, upper := 10138,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10252,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10613,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10614, upper := 10617,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10626,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10671,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10955,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10956, upper := 10981,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 10985, upper := 10998,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11109, upper := 11139,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11140, upper := 11140,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11264, upper := 11296,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11664, upper := 11684,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11789,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11790, upper := 11820,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12025,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12334,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12539,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13167,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13168, upper := 13168,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13225, upper := 13228,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13312, upper := 13355,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13356, upper := 13356,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13497,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13498, upper := 13500,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13736,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13775,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13776, upper := 13796,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13851, upper := 13870,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14329,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14343,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14382,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14447,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14448, upper := 14452,
        witness := RowWitness.topPrime 14447
      },
      {
        lower := 14812, upper := 14838,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14848, upper := 14858,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15175,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15355,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15405,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15406, upper := 15422,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15979, upper := 16018,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16428, upper := 16430,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16833,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16834, upper := 16856,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17344,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17542,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 18259, upper := 18271,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18527,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18528, upper := 18537,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19212,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19254,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19698,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20223,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20224, upper := 20227,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20581,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21909,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21910, upper := 21921,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 23548, upper := 23585,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23586, upper := 23594,
        witness := RowWitness.topPrime 23581
      },
      {
        lower := 24025, upper := 24069,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24070, upper := 24083,
        witness := RowWitness.topPrime 24061
      },
      {
        lower := 24576, upper := 24611,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25032,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 26624, upper := 26643,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26644, upper := 26666,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26908, upper := 26942,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 28577, upper := 28607,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 30618, upper := 30639,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30640, upper := 30659,
        witness := RowWitness.topPrime 30637
      },
      {
        lower := 30758, upper := 30766,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31259,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31953,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31954, upper := 31954,
        witness := RowWitness.largeDivisor 447540556292495446098978549907058795398206886631708827972884374341235949997533299282936348373060198429395560819337836885243144889270017742299
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 13969863171221181657094855074195517118484833241982637353046033497676789714101265077278569731088377762181207802935329244631508471534190098763
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 19819789890762923150156419319436687313012845457325393325072768888819014922030723974849670321730607341869236216950869354530477922054101349497
      },
      {
        lower := 31957, upper := 31985,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32814,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33282, upper := 33293,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33294, upper := 33321,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33660,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34421,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35177,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 36982, upper := 37025,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37026, upper := 37026,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43740, upper := 43767,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43768, upper := 43786,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43969,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48059,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48114, upper := 48120,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 49152, upper := 49176,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65656,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68796,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73213,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73741,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98306,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 327701, upper := 327726,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 2162, upper := 4324, M := 34
      },
      {
        lower := 4324, upper := 8648, M := 32
      },
      {
        lower := 8648, upper := 17296, M := 30
      },
      {
        lower := 17296, upper := 34592, M := 28
      },
      {
        lower := 34592, upper := 69184, M := 26
      },
      {
        lower := 69184, upper := 138368, M := 24
      },
      {
        lower := 138368, upper := 276736, M := 22
      },
      {
        lower := 276736, upper := 553472, M := 21
      },
      {
        lower := 553472, upper := 1106944, M := 20
      },
      {
        lower := 1106944, upper := 2213888, M := 18
      },
      {
        lower := 2213888, upper := 4427776, M := 17
      },
      {
        lower := 4427776, upper := 8855552, M := 16
      },
      {
        lower := 8855552, upper := 17711104, M := 15
      },
      {
        lower := 17711104, upper := 35422208, M := 14
      },
      {
        lower := 35422208, upper := 70844416, M := 13
      },
      {
        lower := 70844416, upper := 141688832, M := 12
      },
      {
        lower := 141688832, upper := 283377664, M := 11
      },
      {
        lower := 283377664, upper := 566755328, M := 11
      },
      {
        lower := 566755328, upper := 1133510656, M := 10
      },
      {
        lower := 1133510656, upper := 2267021312, M := 9
      },
      {
        lower := 2267021312, upper := 4534042624, M := 9
      },
      {
        lower := 4534042624, upper := 9068085248, M := 8
      },
      {
        lower := 9068085248, upper := 18136170496, M := 8
      },
      {
        lower := 18136170496, upper := 36272340992, M := 7
      },
      {
        lower := 36272340992, upper := 72544681984, M := 7
      },
      {
        lower := 72544681984, upper := 145089363968, M := 6
      },
      {
        lower := 145089363968, upper := 290178727936, M := 6
      },
      {
        lower := 290178727936, upper := 580357455872, M := 5
      },
      {
        lower := 580357455872, upper := 1160714911744, M := 5
      },
      {
        lower := 1160714911744, upper := 2321429823488, M := 5
      },
      {
        lower := 2321429823488, upper := 4642859646976, M := 5
      },
      {
        lower := 4642859646976, upper := 9285719293952, M := 4
      },
      {
        lower := 9285719293952, upper := 18571438587904, M := 4
      },
      {
        lower := 18571438587904, upper := 37142877175808, M := 4
      },
      {
        lower := 37142877175808, upper := 74285754351616, M := 4
      },
      {
        lower := 74285754351616, upper := 148571508703232, M := 3
      },
      {
        lower := 148571508703232, upper := 297143017406464, M := 3
      },
      {
        lower := 297143017406464, upper := 594286034812928, M := 3
      },
      {
        lower := 594286034812928, upper := 1188572069625856, M := 3
      },
      {
        lower := 1188572069625856, upper := 2377144139251712, M := 3
      },
      {
        lower := 2377144139251712, upper := 4754288278503424, M := 2
      },
      {
        lower := 4754288278503424, upper := 9508576557006848, M := 2
      },
      {
        lower := 9508576557006848, upper := 19017153114013696, M := 2
      },
      {
        lower := 19017153114013696, upper := 38034306228027392, M := 2
      },
      {
        lower := 38034306228027392, upper := 76068612456054784, M := 2
      },
      {
        lower := 76068612456054784, upper := 152137224912109568, M := 2
      },
      {
        lower := 152137224912109568, upper := 304274449824219136, M := 2
      },
      {
        lower := 304274449824219136, upper := 608548899648438272, M := 2
      },
      {
        lower := 608548899648438272, upper := 1217097799296876544, M := 2
      },
      {
        lower := 1217097799296876544, upper := 2434195598593753088, M := 2
      },
      {
        lower := 2434195598593753088, upper := 4868391197187506176, M := 1
      },
      {
        lower := 4868391197187506176, upper := 9736782394375012352, M := 1
      },
      {
        lower := 9736782394375012352, upper := 10000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 48, r := 15, s := 32,
      n0Power10 := 37
    },
    goods := [
      {
        lower := 98, upper := 144,
        witness := RowWitness.topPrime 97
      },
      {
        lower := 145, upper := 186,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 187, upper := 228,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 229, upper := 276,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 277, upper := 324,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 325, upper := 364,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 365, upper := 406,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 407, upper := 448,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 449, upper := 496,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 497, upper := 538,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 539, upper := 570,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 571, upper := 618,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 619, upper := 666,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 667, upper := 708,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 709, upper := 756,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 757, upper := 804,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 805, upper := 844,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 845, upper := 886,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 887, upper := 934,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 935, upper := 976,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 977, upper := 1024,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1025, upper := 1068,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1069, upper := 1116,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1117, upper := 1164,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1165, upper := 1210,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1211, upper := 1248,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1249, upper := 1296,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1297, upper := 1344,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1345, upper := 1374,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1375, upper := 1420,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1421, upper := 1456,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1457, upper := 1500,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1501, upper := 1546,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1547, upper := 1590,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1591, upper := 1630,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1631, upper := 1674,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1675, upper := 1716,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1717, upper := 1756,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1757, upper := 1800,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1801, upper := 1848,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1849, upper := 1894,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1895, upper := 1936,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1937, upper := 1980,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1981, upper := 2026,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2027, upper := 2074,
        witness := RowWitness.topPrime 2027
      },
      {
        lower := 2075, upper := 2116,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2117, upper := 2160,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2161, upper := 2208,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2209, upper := 2254,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2255, upper := 2256,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2312, upper := 2346,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2375, upper := 2418,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2419, upper := 2464,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2465, upper := 2467,
        witness := RowWitness.topPrime 2459
      },
      {
        lower := 2523, upper := 2568,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2569, upper := 2582,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2625, upper := 2668,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2669, upper := 2710,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2711, upper := 2720,
        witness := RowWitness.topPrime 2711
      },
      {
        lower := 2738, upper := 2778,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2779, upper := 2797,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2875, upper := 2908,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2909, upper := 2951,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3025, upper := 3070,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3071, upper := 3072,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3089,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3134,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3184,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3185, upper := 3226,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3249, upper := 3276,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3277, upper := 3297,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3364, upper := 3408,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3409, upper := 3449,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3468, upper := 3477,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3500, upper := 3546,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3547, upper := 3547,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3549, upper := 3556,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3625, upper := 3670,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3671, upper := 3677,
        witness := RowWitness.topPrime 3671
      },
      {
        lower := 3703, upper := 3748,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3749, upper := 3786,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3787, upper := 3804,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3872, upper := 3910,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3911, upper := 3922,
        witness := RowWitness.topPrime 3911
      },
      {
        lower := 3993, upper := 4036,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4037, upper := 4040,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4046, upper := 4047,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4093,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4103,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4146,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4147, upper := 4163,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4266,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4267, upper := 4282,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4374,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4375, upper := 4420,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4421, upper := 4441,
        witness := RowWitness.topPrime 4421
      },
      {
        lower := 4459, upper := 4465,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4477, upper := 4510,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4511, upper := 4524,
        witness := RowWitness.topPrime 4507
      },
      {
        lower := 4598, upper := 4610,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4624, upper := 4668,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4669, upper := 4671,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4719, upper := 4750,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4751, upper := 4797,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4802, upper := 4848,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4849, upper := 4852,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4875, upper := 4887,
        witness := RowWitness.topPrime 4871
      },
      {
        lower := 4901, upper := 4936,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4937, upper := 4948,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5000, upper := 5008,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5043, upper := 5086,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5087, upper := 5134,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5135, upper := 5166,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5167, upper := 5172,
        witness := RowWitness.topPrime 5167
      },
      {
        lower := 5203, upper := 5244,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5245, upper := 5284,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5285, upper := 5286,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5290, upper := 5297,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5324, upper := 5337,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5408, upper := 5454,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5455, upper := 5455,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5488, upper := 5530,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5531, upper := 5535,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5594,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5766, upper := 5796,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5797, upper := 5827,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5874,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5875, upper := 5878,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5915, upper := 5934,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6084, upper := 6116,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6174, upper := 6184,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6253, upper := 6294,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6295, upper := 6297,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6358, upper := 6395,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6517, upper := 6538,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6539, upper := 6545,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6564,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6608,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6638,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6684,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6685, upper := 6694,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6766,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6767, upper := 6775,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6904,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6905, upper := 6922,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6936, upper := 6964,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 6965, upper := 6976,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7220, upper := 7266,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7267, upper := 7272,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7290, upper := 7314,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7406, upper := 7440,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7441, upper := 7443,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7554,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7555, upper := 7561,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7569, upper := 7608,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7609, upper := 7616,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7935, upper := 7936,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7942, upper := 7982,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 7986, upper := 7989,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8033,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8139,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8256,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8257, upper := 8261,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8405, upper := 8436,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8437, upper := 8452,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8710,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8711, upper := 8711,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8750, upper := 8794,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8795, upper := 8797,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8959, upper := 8965,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9006,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9040,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9248, upper := 9288,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9289, upper := 9298,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9422,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9524,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9537, upper := 9569,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9583, upper := 9584,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9648,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9649, upper := 9651,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10086, upper := 10126,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10127, upper := 10155,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10580, upper := 10614,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10615, upper := 10618,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10627,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10633, upper := 10678,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10679, upper := 10680,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10693, upper := 10695,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10935, upper := 10956,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10957, upper := 11004,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11005, upper := 11029,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11109, upper := 11140,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11141, upper := 11141,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11271, upper := 11297,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11552, upper := 11598,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11599, upper := 11599,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11662, upper := 11685,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11790,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11791, upper := 11814,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11875, upper := 11896,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11913, upper := 11922,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12005, upper := 12026,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12321,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12348, upper := 12368,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12500, upper := 12540,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12662,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12696, upper := 12736,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12737, upper := 12738,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 13034, upper := 13043,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13125, upper := 13168,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13169, upper := 13169,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13225, upper := 13229,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13272,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13357, upper := 13357,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13377, upper := 13404,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13454, upper := 13498,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13499, upper := 13501,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13758,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13759, upper := 13797,
        witness := RowWitness.topPrime 13759
      },
      {
        lower := 14079, upper := 14110,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14297, upper := 14330,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14406, upper := 14448,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14449, upper := 14462,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14801, upper := 14844,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14845, upper := 14848,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15176,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15356,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15376, upper := 15420,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15421, upper := 15423,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16019,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16384,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16399, upper := 16428,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16429, upper := 16446,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16834,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16835, upper := 16857,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17345,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17538,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17539, upper := 17543,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17672, upper := 17708,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18528,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18529, upper := 18549,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19213,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19255,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19375, upper := 19390,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19699,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20012,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20181, upper := 20224,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20225, upper := 20228,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20582,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20631, upper := 20672,
        witness := RowWitness.topPrime 20627
      },
      {
        lower := 21160, upper := 21189,
        witness := RowWitness.topPrime 21157
      },
      {
        lower := 21296, upper := 21297,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21866, upper := 21910,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21911, upper := 21922,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22137,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 23548, upper := 23581,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24025, upper := 24070,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24071, upper := 24084,
        witness := RowWitness.topPrime 24071
      },
      {
        lower := 24334, upper := 24346,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24375, upper := 24381,
        witness := RowWitness.topPrime 24373
      },
      {
        lower := 24389, upper := 24422,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 25000, upper := 25033,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25230, upper := 25262,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26411, upper := 26411,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26908, upper := 26950,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26951, upper := 26955,
        witness := RowWitness.topPrime 26951
      },
      {
        lower := 27753, upper := 27782,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 28577, upper := 28620,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28621, upper := 28624,
        witness := RowWitness.topPrime 28621
      },
      {
        lower := 28749, upper := 28764,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28830, upper := 28859,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29478, upper := 29482,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 30276, upper := 30305,
        witness := RowWitness.topPrime 30271
      },
      {
        lower := 30758, upper := 30799,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31260,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31954,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31955, upper := 31955,
        witness := RowWitness.largeDivisor 37145866172277122026215219642285880018051171590431832721749403070322583849795263840483716914963996469639831548005040461475181025809411472610817
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 37201745624962006752843599062582662086525110923399763271161587204313291008651668900792831193888349980688556379216781778453707059695548233005869
      },
      {
        lower := 31957, upper := 31991,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32799, upper := 32844,
        witness := RowWitness.topPrime 32797
      },
      {
        lower := 32845, upper := 32846,
        witness := RowWitness.topPrime 32843
      },
      {
        lower := 33282, upper := 33294,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33295, upper := 33322,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33666,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33667, upper := 33682,
        witness := RowWitness.topPrime 33647
      },
      {
        lower := 34391, upper := 34422,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 34606, upper := 34643,
        witness := RowWitness.topPrime 34603
      },
      {
        lower := 35152, upper := 35178,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35348,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 35594, upper := 35604,
        witness := RowWitness.topPrime 35593
      },
      {
        lower := 36518, upper := 36544,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36545, upper := 36548,
        witness := RowWitness.topPrime 36541
      },
      {
        lower := 36980, upper := 37026,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37027, upper := 37027,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 37500, upper := 37526,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 43750, upper := 43753,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 43970,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44227,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 46585, upper := 46593,
        witness := RowWitness.topPrime 46573
      },
      {
        lower := 47916, upper := 47958,
        witness := RowWitness.topPrime 47911
      },
      {
        lower := 47959, upper := 47962,
        witness := RowWitness.topPrime 47951
      },
      {
        lower := 48020, upper := 48060,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48778, upper := 48796,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49284, upper := 49294,
        witness := RowWitness.topPrime 49279
      },
      {
        lower := 50430, upper := 50468,
        witness := RowWitness.topPrime 50423
      },
      {
        lower := 50578, upper := 50578,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 55225, upper := 55266,
        witness := RowWitness.topPrime 55219
      },
      {
        lower := 55267, upper := 55270,
        witness := RowWitness.topPrime 55259
      },
      {
        lower := 55473, upper := 55516,
        witness := RowWitness.topPrime 55469
      },
      {
        lower := 55517, upper := 55517,
        witness := RowWitness.topPrime 55511
      },
      {
        lower := 57154, upper := 57169,
        witness := RowWitness.topPrime 57149
      },
      {
        lower := 63878, upper := 63910,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63911, upper := 63916,
        witness := RowWitness.topPrime 63907
      },
      {
        lower := 65559, upper := 65583,
        witness := RowWitness.topPrime 65557
      },
      {
        lower := 65625, upper := 65657,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68797,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 70304, upper := 70309,
        witness := RowWitness.topPrime 70297
      },
      {
        lower := 73205, upper := 73214,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 79524, upper := 79540,
        witness := RowWitness.topPrime 79493
      },
      {
        lower := 79541, upper := 79554,
        witness := RowWitness.topPrime 79537
      },
      {
        lower := 81289, upper := 81297,
        witness := RowWitness.topPrime 81283
      },
      {
        lower := 219501, upper := 219535,
        witness := RowWitness.topPrime 219491
      },
      {
        lower := 658503, upper := 658534,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658535, upper := 658536,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 2256, upper := 4512, M := 44
      },
      {
        lower := 4512, upper := 9024, M := 43
      },
      {
        lower := 9024, upper := 18048, M := 41
      },
      {
        lower := 18048, upper := 36096, M := 40
      },
      {
        lower := 36096, upper := 72192, M := 39
      },
      {
        lower := 72192, upper := 144384, M := 37
      },
      {
        lower := 144384, upper := 288768, M := 36
      },
      {
        lower := 288768, upper := 577536, M := 35
      },
      {
        lower := 577536, upper := 1155072, M := 34
      },
      {
        lower := 1155072, upper := 2310144, M := 33
      },
      {
        lower := 2310144, upper := 4620288, M := 32
      },
      {
        lower := 4620288, upper := 9240576, M := 31
      },
      {
        lower := 9240576, upper := 18481152, M := 30
      },
      {
        lower := 18481152, upper := 36962304, M := 29
      },
      {
        lower := 36962304, upper := 73924608, M := 28
      },
      {
        lower := 73924608, upper := 147849216, M := 27
      },
      {
        lower := 147849216, upper := 295698432, M := 26
      },
      {
        lower := 295698432, upper := 591396864, M := 25
      },
      {
        lower := 591396864, upper := 1182793728, M := 24
      },
      {
        lower := 1182793728, upper := 2365587456, M := 24
      },
      {
        lower := 2365587456, upper := 4731174912, M := 23
      },
      {
        lower := 4731174912, upper := 9462349824, M := 22
      },
      {
        lower := 9462349824, upper := 18924699648, M := 21
      },
      {
        lower := 18924699648, upper := 37849399296, M := 21
      },
      {
        lower := 37849399296, upper := 75698798592, M := 20
      },
      {
        lower := 75698798592, upper := 151397597184, M := 19
      },
      {
        lower := 151397597184, upper := 302795194368, M := 19
      },
      {
        lower := 302795194368, upper := 605590388736, M := 18
      },
      {
        lower := 605590388736, upper := 1211180777472, M := 18
      },
      {
        lower := 1211180777472, upper := 2422361554944, M := 17
      },
      {
        lower := 2422361554944, upper := 4844723109888, M := 17
      },
      {
        lower := 4844723109888, upper := 9689446219776, M := 16
      },
      {
        lower := 9689446219776, upper := 19378892439552, M := 15
      },
      {
        lower := 19378892439552, upper := 38757784879104, M := 15
      },
      {
        lower := 38757784879104, upper := 77515569758208, M := 15
      },
      {
        lower := 77515569758208, upper := 155031139516416, M := 14
      },
      {
        lower := 155031139516416, upper := 310062279032832, M := 14
      },
      {
        lower := 310062279032832, upper := 620124558065664, M := 13
      },
      {
        lower := 620124558065664, upper := 1240249116131328, M := 13
      },
      {
        lower := 1240249116131328, upper := 2480498232262656, M := 12
      },
      {
        lower := 2480498232262656, upper := 4960996464525312, M := 12
      },
      {
        lower := 4960996464525312, upper := 9921992929050624, M := 12
      },
      {
        lower := 9921992929050624, upper := 19843985858101248, M := 11
      },
      {
        lower := 19843985858101248, upper := 39687971716202496, M := 11
      },
      {
        lower := 39687971716202496, upper := 79375943432404992, M := 11
      },
      {
        lower := 79375943432404992, upper := 158751886864809984, M := 10
      },
      {
        lower := 158751886864809984, upper := 317503773729619968, M := 10
      },
      {
        lower := 317503773729619968, upper := 635007547459239936, M := 10
      },
      {
        lower := 635007547459239936, upper := 1270015094918479872, M := 9
      },
      {
        lower := 1270015094918479872, upper := 2540030189836959744, M := 9
      },
      {
        lower := 2540030189836959744, upper := 5080060379673919488, M := 9
      },
      {
        lower := 5080060379673919488, upper := 10160120759347838976, M := 8
      },
      {
        lower := 10160120759347838976, upper := 20320241518695677952, M := 8
      },
      {
        lower := 20320241518695677952, upper := 40640483037391355904, M := 8
      },
      {
        lower := 40640483037391355904, upper := 81280966074782711808, M := 8
      },
      {
        lower := 81280966074782711808, upper := 162561932149565423616, M := 7
      },
      {
        lower := 162561932149565423616, upper := 325123864299130847232, M := 7
      },
      {
        lower := 325123864299130847232, upper := 650247728598261694464, M := 7
      },
      {
        lower := 650247728598261694464, upper := 1300495457196523388928, M := 7
      },
      {
        lower := 1300495457196523388928, upper := 2600990914393046777856, M := 7
      },
      {
        lower := 2600990914393046777856, upper := 5201981828786093555712, M := 6
      },
      {
        lower := 5201981828786093555712, upper := 10403963657572187111424, M := 6
      },
      {
        lower := 10403963657572187111424, upper := 20807927315144374222848, M := 6
      },
      {
        lower := 20807927315144374222848, upper := 41615854630288748445696, M := 6
      },
      {
        lower := 41615854630288748445696, upper := 83231709260577496891392, M := 6
      },
      {
        lower := 83231709260577496891392, upper := 166463418521154993782784, M := 5
      },
      {
        lower := 166463418521154993782784, upper := 332926837042309987565568, M := 5
      },
      {
        lower := 332926837042309987565568, upper := 665853674084619975131136, M := 5
      },
      {
        lower := 665853674084619975131136, upper := 1331707348169239950262272, M := 5
      },
      {
        lower := 1331707348169239950262272, upper := 2663414696338479900524544, M := 5
      },
      {
        lower := 2663414696338479900524544, upper := 5326829392676959801049088, M := 5
      },
      {
        lower := 5326829392676959801049088, upper := 10653658785353919602098176, M := 5
      },
      {
        lower := 10653658785353919602098176, upper := 21307317570707839204196352, M := 4
      },
      {
        lower := 21307317570707839204196352, upper := 42614635141415678408392704, M := 4
      },
      {
        lower := 42614635141415678408392704, upper := 85229270282831356816785408, M := 4
      },
      {
        lower := 85229270282831356816785408, upper := 170458540565662713633570816, M := 4
      },
      {
        lower := 170458540565662713633570816, upper := 340917081131325427267141632, M := 4
      },
      {
        lower := 340917081131325427267141632, upper := 681834162262650854534283264, M := 4
      },
      {
        lower := 681834162262650854534283264, upper := 1363668324525301709068566528, M := 4
      },
      {
        lower := 1363668324525301709068566528, upper := 2727336649050603418137133056, M := 4
      },
      {
        lower := 2727336649050603418137133056, upper := 5454673298101206836274266112, M := 4
      },
      {
        lower := 5454673298101206836274266112, upper := 10909346596202413672548532224, M := 3
      },
      {
        lower := 10909346596202413672548532224, upper := 21818693192404827345097064448, M := 3
      },
      {
        lower := 21818693192404827345097064448, upper := 43637386384809654690194128896, M := 3
      },
      {
        lower := 43637386384809654690194128896, upper := 87274772769619309380388257792, M := 3
      },
      {
        lower := 87274772769619309380388257792, upper := 174549545539238618760776515584, M := 3
      },
      {
        lower := 174549545539238618760776515584, upper := 349099091078477237521553031168, M := 3
      },
      {
        lower := 349099091078477237521553031168, upper := 698198182156954475043106062336, M := 3
      },
      {
        lower := 698198182156954475043106062336, upper := 1396396364313908950086212124672, M := 3
      },
      {
        lower := 1396396364313908950086212124672, upper := 2792792728627817900172424249344, M := 3
      },
      {
        lower := 2792792728627817900172424249344, upper := 5585585457255635800344848498688, M := 3
      },
      {
        lower := 5585585457255635800344848498688, upper := 11171170914511271600689696997376, M := 3
      },
      {
        lower := 11171170914511271600689696997376, upper := 22342341829022543201379393994752, M := 3
      },
      {
        lower := 22342341829022543201379393994752, upper := 44684683658045086402758787989504, M := 2
      },
      {
        lower := 44684683658045086402758787989504, upper := 89369367316090172805517575979008, M := 2
      },
      {
        lower := 89369367316090172805517575979008, upper := 178738734632180345611035151958016, M := 2
      },
      {
        lower := 178738734632180345611035151958016, upper := 357477469264360691222070303916032, M := 2
      },
      {
        lower := 357477469264360691222070303916032, upper := 714954938528721382444140607832064, M := 2
      },
      {
        lower := 714954938528721382444140607832064, upper := 1429909877057442764888281215664128, M := 2
      },
      {
        lower := 1429909877057442764888281215664128, upper := 2859819754114885529776562431328256, M := 2
      },
      {
        lower := 2859819754114885529776562431328256, upper := 5719639508229771059553124862656512, M := 2
      },
      {
        lower := 5719639508229771059553124862656512, upper := 11439279016459542119106249725313024, M := 2
      },
      {
        lower := 11439279016459542119106249725313024, upper := 22878558032919084238212499450626048, M := 2
      },
      {
        lower := 22878558032919084238212499450626048, upper := 45757116065838168476424998901252096, M := 2
      },
      {
        lower := 45757116065838168476424998901252096, upper := 91514232131676336952849997802504192, M := 2
      },
      {
        lower := 91514232131676336952849997802504192, upper := 183028464263352673905699995605008384, M := 2
      },
      {
        lower := 183028464263352673905699995605008384, upper := 366056928526705347811399991210016768, M := 2
      },
      {
        lower := 366056928526705347811399991210016768, upper := 732113857053410695622799982420033536, M := 2
      },
      {
        lower := 732113857053410695622799982420033536, upper := 1464227714106821391245599964840067072, M := 2
      },
      {
        lower := 1464227714106821391245599964840067072, upper := 2928455428213642782491199929680134144, M := 2
      },
      {
        lower := 2928455428213642782491199929680134144, upper := 5856910856427285564982399859360268288, M := 2
      },
      {
        lower := 5856910856427285564982399859360268288, upper := 10000000000000000000000000000000000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 49, r := 16, s := 33,
      n0Power10 := 26
    },
    goods := [
      {
        lower := 100, upper := 145,
        witness := RowWitness.topPrime 97
      },
      {
        lower := 146, upper := 187,
        witness := RowWitness.topPrime 139
      },
      {
        lower := 188, upper := 229,
        witness := RowWitness.topPrime 181
      },
      {
        lower := 230, upper := 277,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 278, upper := 325,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 326, upper := 365,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 366, upper := 407,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 408, upper := 449,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 450, upper := 497,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 498, upper := 539,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 540, upper := 571,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 572, upper := 619,
        witness := RowWitness.topPrime 571
      },
      {
        lower := 620, upper := 667,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 668, upper := 709,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 710, upper := 757,
        witness := RowWitness.topPrime 709
      },
      {
        lower := 758, upper := 805,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 806, upper := 845,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 846, upper := 887,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 888, upper := 935,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 936, upper := 977,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 978, upper := 1025,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1026, upper := 1069,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1070, upper := 1117,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1118, upper := 1165,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1166, upper := 1211,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1212, upper := 1249,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1250, upper := 1297,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1298, upper := 1345,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1346, upper := 1375,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1376, upper := 1421,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1422, upper := 1457,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1458, upper := 1501,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1502, upper := 1547,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1548, upper := 1591,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1592, upper := 1631,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1632, upper := 1675,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1676, upper := 1717,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1718, upper := 1757,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1758, upper := 1801,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1802, upper := 1849,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1850, upper := 1895,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1896, upper := 1937,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 1938, upper := 1981,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 1982, upper := 2027,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2028, upper := 2075,
        witness := RowWitness.topPrime 2027
      },
      {
        lower := 2076, upper := 2117,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2118, upper := 2161,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2162, upper := 2209,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2210, upper := 2255,
        witness := RowWitness.topPrime 2207
      },
      {
        lower := 2256, upper := 2299,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2300, upper := 2345,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2346, upper := 2360,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2366, upper := 2405,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2406, upper := 2416,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2420, upper := 2423,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2430, upper := 2471,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2472, upper := 2478,
        witness := RowWitness.topPrime 2467
      },
      {
        lower := 2500, upper := 2525,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2526, upper := 2569,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2570, upper := 2589,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2592, upper := 2639,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2640, upper := 2681,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2682, upper := 2725,
        witness := RowWitness.topPrime 2677
      },
      {
        lower := 2726, upper := 2736,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2738, upper := 2779,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2780, upper := 2802,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2831,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2864,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2873, upper := 2909,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2910, upper := 2957,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2958, upper := 2964,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3000, upper := 3047,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3048, upper := 3089,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3090, upper := 3120,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3125, upper := 3126,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3185,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3186, upper := 3229,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3230, upper := 3277,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3278, upper := 3298,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3409,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3410, upper := 3436,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3468, upper := 3515,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3516, upper := 3557,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3584, upper := 3597,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3655,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3656, upper := 3678,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3703, upper := 3749,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3750, upper := 3787,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3788, upper := 3799,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3881,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3882, upper := 3929,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3930, upper := 3935,
        witness := RowWitness.topPrime 3929
      },
      {
        lower := 3971, upper := 4015,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4016, upper := 4041,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4046, upper := 4048,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4056, upper := 4094,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4096, upper := 4104,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4147,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4148, upper := 4173,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4267,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4268, upper := 4283,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4375,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4376, upper := 4421,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4422, upper := 4442,
        witness := RowWitness.topPrime 4421
      },
      {
        lower := 4480, upper := 4511,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4512, upper := 4528,
        witness := RowWitness.topPrime 4507
      },
      {
        lower := 4598, upper := 4645,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4646, upper := 4672,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4732, upper := 4777,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4778, upper := 4798,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4805, upper := 4809,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4864, upper := 4909,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4910, upper := 4949,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5043, upper := 5087,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5088, upper := 5118,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5120, upper := 5151,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5239, upper := 5250,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5338,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5372,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5376, upper := 5394,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5408, upper := 5455,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5456, upper := 5456,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5491, upper := 5524,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5577, upper := 5621,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5622, upper := 5639,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5640, upper := 5673,
        witness := RowWitness.topPrime 5639
      },
      {
        lower := 5766, upper := 5797,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5798, upper := 5828,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5832, upper := 5867,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5888, upper := 5929,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5930, upper := 5936,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6075, upper := 6121,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6122, upper := 6123,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6144, upper := 6185,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6253, upper := 6295,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6296, upper := 6298,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6348, upper := 6391,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6392, upper := 6396,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6400, upper := 6406,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6422, upper := 6448,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6591, upper := 6609,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6639,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6685,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6686, upper := 6703,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6767,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6768, upper := 6775,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6852,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6905,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6906, upper := 6925,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 6936, upper := 6960,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7225, upper := 7267,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7268, upper := 7268,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7441,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7442, upper := 7454,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7555,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7556, upper := 7562,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7569, upper := 7609,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7610, upper := 7617,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7688, upper := 7728,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7824,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7936, upper := 7981,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7982, upper := 7984,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 7986, upper := 7990,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8034,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8140,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8240,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8262, upper := 8262,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8303, upper := 8310,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8405, upper := 8437,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8438, upper := 8458,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8464, upper := 8496,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8505, upper := 8512,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8664, upper := 8711,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8712, upper := 8718,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8748, upper := 8795,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8796, upper := 8798,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8836,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8960, upper := 8999,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9000, upper := 9041,
        witness := RowWitness.topPrime 8999
      },
      {
        lower := 9234, upper := 9275,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9276, upper := 9296,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9423,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9525,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9537, upper := 9570,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9583, upper := 9585,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9610, upper := 9631,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9747, upper := 9776,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10086, upper := 10127,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10128, upper := 10156,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10254,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10615,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10616, upper := 10619,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10628,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10673,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10957,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10958, upper := 10983,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 10985, upper := 11000,
        witness := RowWitness.topPrime 10979
      },
      {
        lower := 11109, upper := 11141,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11142, upper := 11142,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11264, upper := 11298,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11552, upper := 11580,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11664, upper := 11686,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11791,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11792, upper := 11822,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11913, upper := 11923,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12288, upper := 12329,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12330, upper := 12336,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12500, upper := 12541,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12635, upper := 12663,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 13125, upper := 13169,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13170, upper := 13170,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13225, upper := 13230,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13273,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13312, upper := 13357,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13358, upper := 13358,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13499,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13500, upper := 13502,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13738,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13777,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13778, upper := 13798,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13851, upper := 13872,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14331,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14345,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14384,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14415, upper := 14423,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14812, upper := 14840,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14848, upper := 14860,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 15138, upper := 15177,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15357,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15407,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15408, upper := 15424,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15872, upper := 15907,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15908, upper := 15918,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 15979, upper := 16020,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16385,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16399, upper := 16429,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16430, upper := 16447,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16815,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16820, upper := 16858,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16896, upper := 16923,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 16928, upper := 16944,
        witness := RowWitness.topPrime 16927
      },
      {
        lower := 17303, upper := 17346,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17496, upper := 17539,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17540, upper := 17544,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17672, upper := 17709,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18273,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18529,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18530, upper := 18550,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19375, upper := 19391,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19683, upper := 19700,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20000, upper := 20013,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20181, upper := 20225,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20226, upper := 20229,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20583,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20625, upper := 20625,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 21142, upper := 21187,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21188, upper := 21189,
        witness := RowWitness.topPrime 21187
      },
      {
        lower := 21296, upper := 21298,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21866, upper := 21911,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21912, upper := 21923,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22138,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22627, upper := 22647,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23548, upper := 23587,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23588, upper := 23596,
        witness := RowWitness.topPrime 23581
      },
      {
        lower := 24037, upper := 24077,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24078, upper := 24085,
        witness := RowWitness.topPrime 24077
      },
      {
        lower := 24334, upper := 24347,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24613,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25034,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25230, upper := 25263,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26624, upper := 26645,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26646, upper := 26668,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26908, upper := 26951,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 26952, upper := 26956,
        witness := RowWitness.topPrime 26951
      },
      {
        lower := 27753, upper := 27783,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 28577, upper := 28621,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28622, upper := 28625,
        witness := RowWitness.topPrime 28621
      },
      {
        lower := 28717, upper := 28720,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28765,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 29478, upper := 29483,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 30618, upper := 30641,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30642, upper := 30661,
        witness := RowWitness.topPrime 30637
      },
      {
        lower := 30752, upper := 30775,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30776, upper := 30800,
        witness := RowWitness.topPrime 30773
      },
      {
        lower := 31744, upper := 31761,
        witness := RowWitness.topPrime 31741
      },
      {
        lower := 31944, upper := 31955,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31956, upper := 31956,
        witness := RowWitness.largeDivisor 98919441616773975955811129907407298488070269945319970538018660376269040792004787607208138144549122598650871412337422748908407071730462751562605671
      },
      {
        lower := 31957, upper := 31987,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32816,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33282, upper := 33295,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33296, upper := 33323,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33635, upper := 33668,
        witness := RowWitness.topPrime 33629
      },
      {
        lower := 34391, upper := 34423,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35152, upper := 35179,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35349,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36980, upper := 37027,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37028, upper := 37028,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43740, upper := 43769,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43770, upper := 43788,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 43940, upper := 43971,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44228,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 47104, upper := 47116,
        witness := RowWitness.topPrime 47093
      },
      {
        lower := 48114, upper := 48122,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 48778, upper := 48797,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49178,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 55473, upper := 55517,
        witness := RowWitness.topPrime 55469
      },
      {
        lower := 55518, upper := 55518,
        witness := RowWitness.topPrime 55511
      },
      {
        lower := 57344, upper := 57367,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 59392, upper := 59423,
        witness := RowWitness.topPrime 59387
      },
      {
        lower := 65625, upper := 65658,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68798,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73215,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73743,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98308,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 150903, upper := 150946,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 327701, upper := 327728,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655408,
        witness := RowWitness.topPrime 655399
      },
      {
        lower := 658503, upper := 658535,
        witness := RowWitness.topPrime 658487
      },
      {
        lower := 658536, upper := 658537,
        witness := RowWitness.topPrime 658507
      }
    ],
    layers := [
      {
        lower := 2352, upper := 4704, M := 40
      },
      {
        lower := 4704, upper := 9408, M := 38
      },
      {
        lower := 9408, upper := 18816, M := 36
      },
      {
        lower := 18816, upper := 37632, M := 35
      },
      {
        lower := 37632, upper := 75264, M := 33
      },
      {
        lower := 75264, upper := 150528, M := 31
      },
      {
        lower := 150528, upper := 301056, M := 30
      },
      {
        lower := 301056, upper := 602112, M := 29
      },
      {
        lower := 602112, upper := 1204224, M := 27
      },
      {
        lower := 1204224, upper := 2408448, M := 26
      },
      {
        lower := 2408448, upper := 4816896, M := 25
      },
      {
        lower := 4816896, upper := 9633792, M := 23
      },
      {
        lower := 9633792, upper := 19267584, M := 22
      },
      {
        lower := 19267584, upper := 38535168, M := 21
      },
      {
        lower := 38535168, upper := 77070336, M := 20
      },
      {
        lower := 77070336, upper := 154140672, M := 19
      },
      {
        lower := 154140672, upper := 308281344, M := 18
      },
      {
        lower := 308281344, upper := 616562688, M := 18
      },
      {
        lower := 616562688, upper := 1233125376, M := 17
      },
      {
        lower := 1233125376, upper := 2466250752, M := 16
      },
      {
        lower := 2466250752, upper := 4932501504, M := 15
      },
      {
        lower := 4932501504, upper := 9865003008, M := 15
      },
      {
        lower := 9865003008, upper := 19730006016, M := 14
      },
      {
        lower := 19730006016, upper := 39460012032, M := 13
      },
      {
        lower := 39460012032, upper := 78920024064, M := 13
      },
      {
        lower := 78920024064, upper := 157840048128, M := 12
      },
      {
        lower := 157840048128, upper := 315680096256, M := 11
      },
      {
        lower := 315680096256, upper := 631360192512, M := 11
      },
      {
        lower := 631360192512, upper := 1262720385024, M := 10
      },
      {
        lower := 1262720385024, upper := 2525440770048, M := 10
      },
      {
        lower := 2525440770048, upper := 5050881540096, M := 9
      },
      {
        lower := 5050881540096, upper := 10101763080192, M := 9
      },
      {
        lower := 10101763080192, upper := 20203526160384, M := 9
      },
      {
        lower := 20203526160384, upper := 40407052320768, M := 8
      },
      {
        lower := 40407052320768, upper := 80814104641536, M := 8
      },
      {
        lower := 80814104641536, upper := 161628209283072, M := 8
      },
      {
        lower := 161628209283072, upper := 323256418566144, M := 7
      },
      {
        lower := 323256418566144, upper := 646512837132288, M := 7
      },
      {
        lower := 646512837132288, upper := 1293025674264576, M := 7
      },
      {
        lower := 1293025674264576, upper := 2586051348529152, M := 6
      },
      {
        lower := 2586051348529152, upper := 5172102697058304, M := 6
      },
      {
        lower := 5172102697058304, upper := 10344205394116608, M := 6
      },
      {
        lower := 10344205394116608, upper := 20688410788233216, M := 5
      },
      {
        lower := 20688410788233216, upper := 41376821576466432, M := 5
      },
      {
        lower := 41376821576466432, upper := 82753643152932864, M := 5
      },
      {
        lower := 82753643152932864, upper := 165507286305865728, M := 5
      },
      {
        lower := 165507286305865728, upper := 331014572611731456, M := 5
      },
      {
        lower := 331014572611731456, upper := 662029145223462912, M := 4
      },
      {
        lower := 662029145223462912, upper := 1324058290446925824, M := 4
      },
      {
        lower := 1324058290446925824, upper := 2648116580893851648, M := 4
      },
      {
        lower := 2648116580893851648, upper := 5296233161787703296, M := 4
      },
      {
        lower := 5296233161787703296, upper := 10592466323575406592, M := 4
      },
      {
        lower := 10592466323575406592, upper := 21184932647150813184, M := 4
      },
      {
        lower := 21184932647150813184, upper := 42369865294301626368, M := 3
      },
      {
        lower := 42369865294301626368, upper := 84739730588603252736, M := 3
      },
      {
        lower := 84739730588603252736, upper := 169479461177206505472, M := 3
      },
      {
        lower := 169479461177206505472, upper := 338958922354413010944, M := 3
      },
      {
        lower := 338958922354413010944, upper := 677917844708826021888, M := 3
      },
      {
        lower := 677917844708826021888, upper := 1355835689417652043776, M := 3
      },
      {
        lower := 1355835689417652043776, upper := 2711671378835304087552, M := 3
      },
      {
        lower := 2711671378835304087552, upper := 5423342757670608175104, M := 3
      },
      {
        lower := 5423342757670608175104, upper := 10846685515341216350208, M := 2
      },
      {
        lower := 10846685515341216350208, upper := 21693371030682432700416, M := 2
      },
      {
        lower := 21693371030682432700416, upper := 43386742061364865400832, M := 2
      },
      {
        lower := 43386742061364865400832, upper := 86773484122729730801664, M := 2
      },
      {
        lower := 86773484122729730801664, upper := 173546968245459461603328, M := 2
      },
      {
        lower := 173546968245459461603328, upper := 347093936490918923206656, M := 2
      },
      {
        lower := 347093936490918923206656, upper := 694187872981837846413312, M := 2
      },
      {
        lower := 694187872981837846413312, upper := 1388375745963675692826624, M := 2
      },
      {
        lower := 1388375745963675692826624, upper := 2776751491927351385653248, M := 2
      },
      {
        lower := 2776751491927351385653248, upper := 5553502983854702771306496, M := 2
      },
      {
        lower := 5553502983854702771306496, upper := 11107005967709405542612992, M := 2
      },
      {
        lower := 11107005967709405542612992, upper := 22214011935418811085225984, M := 2
      },
      {
        lower := 22214011935418811085225984, upper := 44428023870837622170451968, M := 2
      },
      {
        lower := 44428023870837622170451968, upper := 88856047741675244340903936, M := 2
      },
      {
        lower := 88856047741675244340903936, upper := 100000000000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 50, r := 16, s := 34,
      n0Power10 := 20
    },
    goods := [
      {
        lower := 102, upper := 150,
        witness := RowWitness.topPrime 101
      },
      {
        lower := 151, upper := 200,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 201, upper := 248,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 249, upper := 290,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 291, upper := 332,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 333, upper := 380,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 381, upper := 428,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 429, upper := 470,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 471, upper := 516,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 517, upper := 558,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 559, upper := 606,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 607, upper := 656,
        witness := RowWitness.topPrime 607
      },
      {
        lower := 657, upper := 702,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 703, upper := 750,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 751, upper := 800,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 801, upper := 846,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 847, upper := 888,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 889, upper := 936,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 937, upper := 986,
        witness := RowWitness.topPrime 937
      },
      {
        lower := 987, upper := 1032,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1033, upper := 1082,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1083, upper := 1118,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1119, upper := 1166,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1167, upper := 1212,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1213, upper := 1262,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1263, upper := 1308,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1309, upper := 1356,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1357, upper := 1376,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1377, upper := 1422,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1423, upper := 1472,
        witness := RowWitness.topPrime 1423
      },
      {
        lower := 1473, upper := 1520,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1521, upper := 1560,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1561, upper := 1608,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1609, upper := 1658,
        witness := RowWitness.topPrime 1609
      },
      {
        lower := 1659, upper := 1706,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1707, upper := 1748,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1749, upper := 1796,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1797, upper := 1838,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1839, upper := 1880,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1881, upper := 1928,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1929, upper := 1962,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1963, upper := 2000,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2001, upper := 2048,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2049, upper := 2088,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2089, upper := 2138,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2139, upper := 2186,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2187, upper := 2228,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2229, upper := 2270,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2271, upper := 2318,
        witness := RowWitness.topPrime 2269
      },
      {
        lower := 2319, upper := 2360,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2361, upper := 2406,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2407, upper := 2448,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2449, upper := 2469,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2523, upper := 2570,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2571, upper := 2590,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2592, upper := 2640,
        witness := RowWitness.topPrime 2591
      },
      {
        lower := 2641, upper := 2641,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2645, upper := 2650,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2662, upper := 2708,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2709, upper := 2722,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2738, upper := 2780,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2781, upper := 2803,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2832,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2835, upper := 2865,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2873, upper := 2910,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2911, upper := 2953,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3025, upper := 3072,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3073, upper := 3116,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3117, upper := 3121,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3136,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3186,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3187, upper := 3228,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3249, upper := 3260,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3267, upper := 3298,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3362, upper := 3410,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3411, upper := 3451,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3468, upper := 3479,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3509, upper := 3517,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3549, upper := 3558,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3598,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3656,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3657, upper := 3679,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3703, upper := 3750,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3751, upper := 3788,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3789, upper := 3806,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3882,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3883, upper := 3930,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3931, upper := 3936,
        witness := RowWitness.topPrime 3931
      },
      {
        lower := 3993, upper := 4020,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4056, upper := 4100,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4101, upper := 4105,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4107, upper := 4148,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4149, upper := 4165,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4225, upper := 4268,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4269, upper := 4281,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4335, upper := 4376,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4377, upper := 4422,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4423, upper := 4443,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4467,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4477, upper := 4508,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4608, upper := 4612,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4617, upper := 4652,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4653, upper := 4666,
        witness := RowWitness.topPrime 4651
      },
      {
        lower := 4732, upper := 4742,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4781,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4850,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4851, upper := 4851,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4909,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4913, upper := 4950,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5046, upper := 5088,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5089, upper := 5136,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5137, upper := 5168,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5169, upper := 5169,
        witness := RowWitness.topPrime 5167
      },
      {
        lower := 5239, upper := 5251,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5324, upper := 5339,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5373,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5415, upper := 5457,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5532,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5533, upper := 5537,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5577, upper := 5622,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5623, upper := 5626,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5632, upper := 5638,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5766, upper := 5798,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5799, upper := 5829,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5831, upper := 5876,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5877, upper := 5880,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6075, upper := 6118,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6192,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6193, upper := 6193,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6392,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6393, upper := 6397,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6517, upper := 6540,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6541, upper := 6547,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6566,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6610,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6640,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6647, upper := 6686,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6687, upper := 6704,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6727, upper := 6768,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6769, upper := 6776,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6853,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6906,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6907, upper := 6909,
        witness := RowWitness.topPrime 6907
      },
      {
        lower := 7203, upper := 7217,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7268,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7269, upper := 7269,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7406, upper := 7442,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7443, upper := 7445,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7533, upper := 7578,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7579, upper := 7618,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7688, upper := 7729,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7803, upper := 7825,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7935, upper := 7938,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7942, upper := 7984,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 7986, upper := 7991,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8035,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8214, upper := 8258,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8259, upper := 8281,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8303, upper := 8311,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8405, upper := 8438,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8439, upper := 8454,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8712,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8713, upper := 8719,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8748, upper := 8753,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8788, upper := 8797,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8837,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8959, upper := 8967,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 8993, upper := 9008,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9025, upper := 9042,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9290,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9291, upper := 9300,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9522, upper := 9526,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9537, upper := 9571,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9583, upper := 9586,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9604, upper := 9650,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9651, upper := 9653,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10086, upper := 10128,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10129, upper := 10141,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10255,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10616,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10617, upper := 10620,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10682,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10958,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10959, upper := 11006,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11007, upper := 11025,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11094, upper := 11094,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11142,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11143, upper := 11143,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11552, upper := 11581,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11664, upper := 11687,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11792,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11793, upper := 11816,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12028,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12337,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 13225, upper := 13231,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13274,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13312, upper := 13358,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13359, upper := 13359,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13500,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13501, upper := 13503,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13739,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13754, upper := 13767,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 14297, upper := 14332,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14346,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14415, upper := 14455,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14812, upper := 14841,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 15138, upper := 15178,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15341, upper := 15358,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15360, upper := 15408,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15409, upper := 15425,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15979, upper := 16021,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16386,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16399, upper := 16430,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16431, upper := 16448,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16836,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16837, upper := 16859,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17347,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17710,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18274,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18530,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18531, upper := 18540,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19215,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19257,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19701,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20226,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20227, upper := 20230,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20584,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21142, upper := 21188,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21189, upper := 21190,
        witness := RowWitness.topPrime 21187
      },
      {
        lower := 21866, upper := 21912,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21913, upper := 21919,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22139,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 23548, upper := 23583,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 24025, upper := 24072,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24073, upper := 24086,
        witness := RowWitness.topPrime 24071
      },
      {
        lower := 24334, upper := 24348,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24614,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25230, upper := 25264,
        witness := RowWitness.topPrime 25229
      },
      {
        lower := 26411, upper := 26413,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26646,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26647, upper := 26669,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26908, upper := 26945,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 28577, upper := 28610,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28721,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28766,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28830, upper := 28861,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 30618, upper := 30642,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30643, upper := 30662,
        witness := RowWitness.topPrime 30643
      },
      {
        lower := 30758, upper := 30769,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31944, upper := 31956,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31957, upper := 31988,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32817,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33282, upper := 33296,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33297, upper := 33324,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33663,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35180,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35350,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36980, upper := 37028,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37029, upper := 37029,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43740, upper := 43755,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 43972,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44229,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48062,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48114, upper := 48123,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 49152, upper := 49179,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 55225, upper := 55268,
        witness := RowWitness.topPrime 55219
      },
      {
        lower := 55269, upper := 55272,
        witness := RowWitness.topPrime 55259
      },
      {
        lower := 73205, upper := 73216,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73744,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 98304, upper := 98309,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 150903, upper := 150947,
        witness := RowWitness.topPrime 150901
      },
      {
        lower := 327701, upper := 327729,
        witness := RowWitness.topPrime 327689
      },
      {
        lower := 655402, upper := 655409,
        witness := RowWitness.topPrime 655399
      }
    ],
    layers := [
      {
        lower := 2450, upper := 4900, M := 37
      },
      {
        lower := 4900, upper := 9800, M := 34
      },
      {
        lower := 9800, upper := 19600, M := 32
      },
      {
        lower := 19600, upper := 39200, M := 30
      },
      {
        lower := 39200, upper := 78400, M := 28
      },
      {
        lower := 78400, upper := 156800, M := 26
      },
      {
        lower := 156800, upper := 313600, M := 25
      },
      {
        lower := 313600, upper := 627200, M := 23
      },
      {
        lower := 627200, upper := 1254400, M := 22
      },
      {
        lower := 1254400, upper := 2508800, M := 20
      },
      {
        lower := 2508800, upper := 5017600, M := 19
      },
      {
        lower := 5017600, upper := 10035200, M := 18
      },
      {
        lower := 10035200, upper := 20070400, M := 17
      },
      {
        lower := 20070400, upper := 40140800, M := 16
      },
      {
        lower := 40140800, upper := 80281600, M := 15
      },
      {
        lower := 80281600, upper := 160563200, M := 14
      },
      {
        lower := 160563200, upper := 321126400, M := 13
      },
      {
        lower := 321126400, upper := 642252800, M := 12
      },
      {
        lower := 642252800, upper := 1284505600, M := 12
      },
      {
        lower := 1284505600, upper := 2569011200, M := 11
      },
      {
        lower := 2569011200, upper := 5138022400, M := 10
      },
      {
        lower := 5138022400, upper := 10276044800, M := 10
      },
      {
        lower := 10276044800, upper := 20552089600, M := 9
      },
      {
        lower := 20552089600, upper := 41104179200, M := 8
      },
      {
        lower := 41104179200, upper := 82208358400, M := 8
      },
      {
        lower := 82208358400, upper := 164416716800, M := 7
      },
      {
        lower := 164416716800, upper := 328833433600, M := 7
      },
      {
        lower := 328833433600, upper := 657666867200, M := 7
      },
      {
        lower := 657666867200, upper := 1315333734400, M := 6
      },
      {
        lower := 1315333734400, upper := 2630667468800, M := 6
      },
      {
        lower := 2630667468800, upper := 5261334937600, M := 6
      },
      {
        lower := 5261334937600, upper := 10522669875200, M := 5
      },
      {
        lower := 10522669875200, upper := 21045339750400, M := 5
      },
      {
        lower := 21045339750400, upper := 42090679500800, M := 5
      },
      {
        lower := 42090679500800, upper := 84181359001600, M := 4
      },
      {
        lower := 84181359001600, upper := 168362718003200, M := 4
      },
      {
        lower := 168362718003200, upper := 336725436006400, M := 4
      },
      {
        lower := 336725436006400, upper := 673450872012800, M := 4
      },
      {
        lower := 673450872012800, upper := 1346901744025600, M := 3
      },
      {
        lower := 1346901744025600, upper := 2693803488051200, M := 3
      },
      {
        lower := 2693803488051200, upper := 5387606976102400, M := 3
      },
      {
        lower := 5387606976102400, upper := 10775213952204800, M := 3
      },
      {
        lower := 10775213952204800, upper := 21550427904409600, M := 3
      },
      {
        lower := 21550427904409600, upper := 43100855808819200, M := 3
      },
      {
        lower := 43100855808819200, upper := 86201711617638400, M := 3
      },
      {
        lower := 86201711617638400, upper := 172403423235276800, M := 2
      },
      {
        lower := 172403423235276800, upper := 344806846470553600, M := 2
      },
      {
        lower := 344806846470553600, upper := 689613692941107200, M := 2
      },
      {
        lower := 689613692941107200, upper := 1379227385882214400, M := 2
      },
      {
        lower := 1379227385882214400, upper := 2758454771764428800, M := 2
      },
      {
        lower := 2758454771764428800, upper := 5516909543528857600, M := 2
      },
      {
        lower := 5516909543528857600, upper := 11033819087057715200, M := 2
      },
      {
        lower := 11033819087057715200, upper := 22067638174115430400, M := 2
      },
      {
        lower := 22067638174115430400, upper := 44135276348230860800, M := 2
      },
      {
        lower := 44135276348230860800, upper := 88270552696461721600, M := 2
      },
      {
        lower := 88270552696461721600, upper := 100000000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 51, r := 16, s := 35,
      n0Power10 := 17
    },
    goods := [
      {
        lower := 104, upper := 153,
        witness := RowWitness.topPrime 103
      },
      {
        lower := 154, upper := 201,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 202, upper := 249,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 250, upper := 291,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 292, upper := 333,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 334, upper := 381,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 382, upper := 429,
        witness := RowWitness.topPrime 379
      },
      {
        lower := 430, upper := 471,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 472, upper := 517,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 518, upper := 559,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 560, upper := 607,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 608, upper := 657,
        witness := RowWitness.topPrime 607
      },
      {
        lower := 658, upper := 703,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 704, upper := 751,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 752, upper := 801,
        witness := RowWitness.topPrime 751
      },
      {
        lower := 802, upper := 847,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 848, upper := 889,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 890, upper := 937,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 938, upper := 987,
        witness := RowWitness.topPrime 937
      },
      {
        lower := 988, upper := 1033,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1034, upper := 1083,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1084, upper := 1119,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1120, upper := 1167,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1168, upper := 1213,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1214, upper := 1263,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1264, upper := 1309,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1310, upper := 1357,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1358, upper := 1377,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1378, upper := 1423,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1424, upper := 1473,
        witness := RowWitness.topPrime 1423
      },
      {
        lower := 1474, upper := 1521,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1522, upper := 1561,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1562, upper := 1609,
        witness := RowWitness.topPrime 1559
      },
      {
        lower := 1610, upper := 1659,
        witness := RowWitness.topPrime 1609
      },
      {
        lower := 1660, upper := 1707,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1708, upper := 1749,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1750, upper := 1797,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1798, upper := 1839,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1840, upper := 1881,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1882, upper := 1929,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1930, upper := 1963,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1964, upper := 2001,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2002, upper := 2049,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2050, upper := 2089,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2090, upper := 2139,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2140, upper := 2187,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2188, upper := 2229,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2230, upper := 2271,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2272, upper := 2319,
        witness := RowWitness.topPrime 2269
      },
      {
        lower := 2320, upper := 2361,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2362, upper := 2407,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2408, upper := 2449,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2450, upper := 2497,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2498, upper := 2527,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2528, upper := 2571,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2572, upper := 2591,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2645, upper := 2683,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2684, upper := 2733,
        witness := RowWitness.topPrime 2683
      },
      {
        lower := 2734, upper := 2781,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2782, upper := 2800,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2816, upper := 2833,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2875, upper := 2911,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2912, upper := 2959,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 2960, upper := 2966,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3025, upper := 3073,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3074, upper := 3117,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3118, upper := 3122,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3125, upper := 3137,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3187,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3188, upper := 3196,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3200, upper := 3241,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3242, upper := 3279,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3280, upper := 3300,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3362, upper := 3411,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3412, upper := 3438,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3456, upper := 3480,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3500, upper := 3506,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3509, upper := 3549,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3550, upper := 3559,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3584, upper := 3599,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3610, upper := 3657,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3658, upper := 3680,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3703, upper := 3751,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3752, upper := 3789,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3790, upper := 3801,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3844, upper := 3883,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3884, upper := 3925,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3971, upper := 4017,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4018, upper := 4043,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4096, upper := 4143,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4144, upper := 4166,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4224, upper := 4269,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4270, upper := 4275,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4352, upper := 4399,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4400, upper := 4444,
        witness := RowWitness.topPrime 4397
      },
      {
        lower := 4459, upper := 4468,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4608, upper := 4613,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4732, upper := 4743,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4761, upper := 4782,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4802, upper := 4851,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4852, upper := 4852,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4901, upper := 4939,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4940, upper := 4951,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5043, upper := 5089,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5090, upper := 5137,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5138, upper := 5169,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5170, upper := 5170,
        witness := RowWitness.topPrime 5167
      },
      {
        lower := 5324, upper := 5340,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5415, upper := 5426,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5488, upper := 5526,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5632, upper := 5673,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5674, upper := 5675,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5776, upper := 5799,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5800, upper := 5816,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5819, upper := 5826,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5831, upper := 5877,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5878, upper := 5881,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5888, upper := 5931,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 5932, upper := 5937,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6144, upper := 6193,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6194, upper := 6194,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6517, upper := 6541,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6542, upper := 6548,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6567,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6591, upper := 6611,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6627, upper := 6641,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6655, upper := 6703,
        witness := RowWitness.topPrime 6653
      },
      {
        lower := 6704, upper := 6705,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6727, upper := 6769,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6770, upper := 6777,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6859, upper := 6907,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6908, upper := 6927,
        witness := RowWitness.topPrime 6907
      },
      {
        lower := 7203, upper := 7218,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7220, upper := 7253,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7406, upper := 7443,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7444, upper := 7456,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7546, upper := 7550,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7569, upper := 7611,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7612, upper := 7619,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7688, upper := 7730,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7935, upper := 7983,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7984, upper := 7992,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8214, upper := 8259,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8260, upper := 8264,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8410, upper := 8439,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8440, upper := 8455,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8699,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8704, upper := 8714,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8748, upper := 8797,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8798, upper := 8800,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8836, upper := 8838,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 9025, upper := 9043,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9245, upper := 9291,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9292, upper := 9301,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9386, upper := 9425,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9604, upper := 9651,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9652, upper := 9654,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9747, upper := 9778,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 10086, upper := 10129,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10130, upper := 10142,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10580, upper := 10617,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10618, upper := 10621,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10630,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10675,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10959,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10960, upper := 11002,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11095,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11143,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11144, upper := 11144,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11264, upper := 11300,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11774, upper := 11793,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11794, upper := 11824,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12029,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12338,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12543,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13171,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13172, upper := 13172,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13225, upper := 13232,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13254, upper := 13275,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13312, upper := 13359,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13360, upper := 13360,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13501,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13502, upper := 13504,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13740,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13779,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13780, upper := 13800,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 14297, upper := 14333,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14336, upper := 14347,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14375, upper := 14386,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14451,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14452, upper := 14456,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14812, upper := 14842,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 15138, upper := 15179,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15376, upper := 15423,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15424, upper := 15426,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15979, upper := 16022,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16387,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16434,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16837,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16838, upper := 16860,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17348,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17500, upper := 17546,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17672, upper := 17711,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18531,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18532, upper := 18541,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19216,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19258,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 20181, upper := 20227,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20228, upper := 20231,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20585,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21866, upper := 21913,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21914, upper := 21925,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22140,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 23552, upper := 23584,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 24025, upper := 24073,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24074, upper := 24075,
        witness := RowWitness.topPrime 24071
      },
      {
        lower := 24334, upper := 24349,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 25000, upper := 25036,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 26411, upper := 26414,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26624, upper := 26647,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26648, upper := 26670,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 28577, upper := 28611,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28717, upper := 28722,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28749, upper := 28767,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30758, upper := 30770,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31250, upper := 31263,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31957,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31958, upper := 31989,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32818,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33282, upper := 33297,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33298, upper := 33325,
        witness := RowWitness.topPrime 33289
      },
      {
        lower := 33620, upper := 33664,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 35152, upper := 35181,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35351,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36982, upper := 37029,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37030, upper := 37030,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43940, upper := 43973,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 48020, upper := 48063,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 73205, upper := 73217,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 327701, upper := 327730,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 2550, upper := 5100, M := 33
      },
      {
        lower := 5100, upper := 10200, M := 31
      },
      {
        lower := 10200, upper := 20400, M := 28
      },
      {
        lower := 20400, upper := 40800, M := 26
      },
      {
        lower := 40800, upper := 81600, M := 24
      },
      {
        lower := 81600, upper := 163200, M := 22
      },
      {
        lower := 163200, upper := 326400, M := 21
      },
      {
        lower := 326400, upper := 652800, M := 19
      },
      {
        lower := 652800, upper := 1305600, M := 18
      },
      {
        lower := 1305600, upper := 2611200, M := 16
      },
      {
        lower := 2611200, upper := 5222400, M := 15
      },
      {
        lower := 5222400, upper := 10444800, M := 14
      },
      {
        lower := 10444800, upper := 20889600, M := 13
      },
      {
        lower := 20889600, upper := 41779200, M := 12
      },
      {
        lower := 41779200, upper := 83558400, M := 11
      },
      {
        lower := 83558400, upper := 167116800, M := 10
      },
      {
        lower := 167116800, upper := 334233600, M := 9
      },
      {
        lower := 334233600, upper := 668467200, M := 9
      },
      {
        lower := 668467200, upper := 1336934400, M := 8
      },
      {
        lower := 1336934400, upper := 2673868800, M := 7
      },
      {
        lower := 2673868800, upper := 5347737600, M := 7
      },
      {
        lower := 5347737600, upper := 10695475200, M := 6
      },
      {
        lower := 10695475200, upper := 21390950400, M := 6
      },
      {
        lower := 21390950400, upper := 42781900800, M := 6
      },
      {
        lower := 42781900800, upper := 85563801600, M := 5
      },
      {
        lower := 85563801600, upper := 171127603200, M := 5
      },
      {
        lower := 171127603200, upper := 342255206400, M := 4
      },
      {
        lower := 342255206400, upper := 684510412800, M := 4
      },
      {
        lower := 684510412800, upper := 1369020825600, M := 4
      },
      {
        lower := 1369020825600, upper := 2738041651200, M := 4
      },
      {
        lower := 2738041651200, upper := 5476083302400, M := 3
      },
      {
        lower := 5476083302400, upper := 10952166604800, M := 3
      },
      {
        lower := 10952166604800, upper := 21904333209600, M := 3
      },
      {
        lower := 21904333209600, upper := 43808666419200, M := 3
      },
      {
        lower := 43808666419200, upper := 87617332838400, M := 3
      },
      {
        lower := 87617332838400, upper := 175234665676800, M := 2
      },
      {
        lower := 175234665676800, upper := 350469331353600, M := 2
      },
      {
        lower := 350469331353600, upper := 700938662707200, M := 2
      },
      {
        lower := 700938662707200, upper := 1401877325414400, M := 2
      },
      {
        lower := 1401877325414400, upper := 2803754650828800, M := 2
      },
      {
        lower := 2803754650828800, upper := 5607509301657600, M := 2
      },
      {
        lower := 5607509301657600, upper := 11215018603315200, M := 2
      },
      {
        lower := 11215018603315200, upper := 22430037206630400, M := 2
      },
      {
        lower := 22430037206630400, upper := 44860074413260800, M := 1
      },
      {
        lower := 44860074413260800, upper := 89720148826521600, M := 1
      },
      {
        lower := 89720148826521600, upper := 100000000000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 52, r := 17, s := 35,
      n0Power10 := 14
    },
    goods := [
      {
        lower := 106, upper := 154,
        witness := RowWitness.topPrime 103
      },
      {
        lower := 155, upper := 202,
        witness := RowWitness.topPrime 151
      },
      {
        lower := 203, upper := 250,
        witness := RowWitness.topPrime 199
      },
      {
        lower := 251, upper := 302,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 303, upper := 344,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 345, upper := 388,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 389, upper := 440,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 441, upper := 490,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 491, upper := 542,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 543, upper := 592,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 593, upper := 644,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 645, upper := 694,
        witness := RowWitness.topPrime 643
      },
      {
        lower := 695, upper := 742,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 743, upper := 794,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 795, upper := 838,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 839, upper := 890,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 891, upper := 938,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 939, upper := 988,
        witness := RowWitness.topPrime 937
      },
      {
        lower := 989, upper := 1034,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1035, upper := 1084,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1085, upper := 1120,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1121, upper := 1168,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1169, upper := 1214,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1215, upper := 1264,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1265, upper := 1310,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1311, upper := 1358,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1359, upper := 1378,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1379, upper := 1424,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1425, upper := 1474,
        witness := RowWitness.topPrime 1423
      },
      {
        lower := 1475, upper := 1522,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1523, upper := 1574,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1575, upper := 1622,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1623, upper := 1672,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1673, upper := 1720,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1721, upper := 1772,
        witness := RowWitness.topPrime 1721
      },
      {
        lower := 1773, upper := 1810,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1811, upper := 1862,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1863, upper := 1912,
        witness := RowWitness.topPrime 1861
      },
      {
        lower := 1913, upper := 1964,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 1965, upper := 2002,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2003, upper := 2054,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2055, upper := 2104,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2105, upper := 2150,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2151, upper := 2194,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2195, upper := 2230,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2231, upper := 2272,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2273, upper := 2324,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2325, upper := 2362,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2363, upper := 2408,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2409, upper := 2450,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2451, upper := 2498,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2499, upper := 2528,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2529, upper := 2572,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2573, upper := 2608,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2609, upper := 2660,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2661, upper := 2710,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2711, upper := 2713,
        witness := RowWitness.topPrime 2711
      },
      {
        lower := 2744, upper := 2792,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2793, upper := 2801,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2883, upper := 2930,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 2931, upper := 2955,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3025, upper := 3051,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3072, upper := 3076,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3087, upper := 3123,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3125, upper := 3138,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3146, upper := 3188,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3189, upper := 3225,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3250, upper := 3280,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3281, upper := 3301,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3364, upper := 3412,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3413, upper := 3453,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3468, upper := 3481,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3500, upper := 3550,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3551, upper := 3551,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3610, upper := 3658,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3659, upper := 3681,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3703, upper := 3752,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3753, upper := 3790,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3791, upper := 3808,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3872, upper := 3914,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3915, upper := 3926,
        witness := RowWitness.topPrime 3911
      },
      {
        lower := 3993, upper := 4040,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4041, upper := 4044,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4046, upper := 4051,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4096, upper := 4097,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4107, upper := 4150,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4151, upper := 4167,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4232, upper := 4256,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4335, upper := 4378,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4379, upper := 4424,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4425, upper := 4445,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4459, upper := 4469,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4624, upper := 4668,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4802, upper := 4852,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4853, upper := 4853,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 5043, upper := 5090,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5091, upper := 5097,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5103, upper := 5105,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5120, upper := 5170,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5171, upper := 5171,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5324, upper := 5341,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5346, upper := 5375,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5488, upper := 5534,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5535, upper := 5539,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5589, upper := 5598,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5625, upper := 5640,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5776, upper := 5800,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5801, upper := 5852,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5853, upper := 5882,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 6075, upper := 6120,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6144, upper := 6194,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6195, upper := 6195,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6348, upper := 6394,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6395, upper := 6399,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6517, upper := 6542,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6543, upper := 6549,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6561, upper := 6568,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6647, upper := 6688,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6689, upper := 6698,
        witness := RowWitness.topPrime 6689
      },
      {
        lower := 6727, upper := 6770,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6771, upper := 6778,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6845, upper := 6855,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6859, upper := 6908,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 6909, upper := 6926,
        witness := RowWitness.topPrime 6907
      },
      {
        lower := 7203, upper := 7244,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7245, upper := 7271,
        witness := RowWitness.topPrime 7243
      },
      {
        lower := 7406, upper := 7444,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7445, upper := 7447,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7514, upper := 7558,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7559, upper := 7565,
        witness := RowWitness.topPrime 7559
      },
      {
        lower := 7569, upper := 7612,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7613, upper := 7620,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7935, upper := 7940,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 7942, upper := 7988,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 7989, upper := 7993,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8019, upper := 8037,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8125, upper := 8143,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8214, upper := 8260,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8261, upper := 8265,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8405, upper := 8440,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8441, upper := 8456,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8664, upper := 8700,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8750, upper := 8798,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8799, upper := 8799,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 9025, upper := 9044,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9251, upper := 9292,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9293, upper := 9302,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9386, upper := 9426,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9522, upper := 9528,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9604, upper := 9652,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9653, upper := 9655,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 10051, upper := 10051,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10086, upper := 10130,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10131, upper := 10143,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10240, upper := 10257,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10580, upper := 10618,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10619, upper := 10622,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10625, upper := 10631,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10648, upper := 10676,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10935, upper := 10960,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 10961, upper := 10986,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11094, upper := 11096,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11109, upper := 11144,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11145, upper := 11145,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11664, upper := 11689,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11774, upper := 11794,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11795, upper := 11818,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 12005, upper := 12030,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12321, upper := 12339,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12500, upper := 12544,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 13125, upper := 13172,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13173, upper := 13173,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13254, upper := 13276,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13454, upper := 13502,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13503, upper := 13505,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13718, upper := 13741,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13750, upper := 13780,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13781, upper := 13801,
        witness := RowWitness.topPrime 13781
      },
      {
        lower := 14406, upper := 14452,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14453, upper := 14457,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 15138, upper := 15180,
        witness := RowWitness.topPrime 15137
      },
      {
        lower := 15979, upper := 16023,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16388,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16428, upper := 16435,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16807, upper := 16838,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16839, upper := 16861,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17303, upper := 17349,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17672, upper := 17712,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18276,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18532,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18533, upper := 18542,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 19208, upper := 19217,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19220, upper := 19259,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19683, upper := 19703,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 20181, upper := 20228,
        witness := RowWitness.topPrime 20177
      },
      {
        lower := 20229, upper := 20232,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20577, upper := 20586,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 21870, upper := 21914,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21915, upper := 21926,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22103, upper := 22141,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 24037, upper := 24080,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24081, upper := 24088,
        witness := RowWitness.topPrime 24077
      },
      {
        lower := 24334, upper := 24350,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24576, upper := 24616,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 28577, upper := 28612,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28768,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 30618, upper := 30644,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30645, upper := 30664,
        witness := RowWitness.topPrime 30643
      },
      {
        lower := 31250, upper := 31264,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31944, upper := 31958,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31959, upper := 31990,
        witness := RowWitness.topPrime 31957
      },
      {
        lower := 32805, upper := 32819,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32856, upper := 32856,
        witness := RowWitness.topPrime 32843
      },
      {
        lower := 33620, upper := 33665,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 34391, upper := 34426,
        witness := RowWitness.topPrime 34381
      },
      {
        lower := 35344, upper := 35352,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36982, upper := 37030,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37031, upper := 37031,
        witness := RowWitness.topPrime 37021
      },
      {
        lower := 43750, upper := 43772,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43773, upper := 43791,
        witness := RowWitness.topPrime 43759
      },
      {
        lower := 44217, upper := 44231,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 48020, upper := 48064,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 49152, upper := 49181,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 65625, upper := 65661,
        witness := RowWitness.topPrime 65617
      },
      {
        lower := 68782, upper := 68801,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 73205, upper := 73218,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 98304, upper := 98311,
        witness := RowWitness.topPrime 98299
      }
    ],
    layers := [
      {
        lower := 2652, upper := 5304, M := 32
      },
      {
        lower := 5304, upper := 10608, M := 29
      },
      {
        lower := 10608, upper := 21216, M := 26
      },
      {
        lower := 21216, upper := 42432, M := 24
      },
      {
        lower := 42432, upper := 84864, M := 22
      },
      {
        lower := 84864, upper := 169728, M := 20
      },
      {
        lower := 169728, upper := 339456, M := 18
      },
      {
        lower := 339456, upper := 678912, M := 16
      },
      {
        lower := 678912, upper := 1357824, M := 15
      },
      {
        lower := 1357824, upper := 2715648, M := 13
      },
      {
        lower := 2715648, upper := 5431296, M := 12
      },
      {
        lower := 5431296, upper := 10862592, M := 11
      },
      {
        lower := 10862592, upper := 21725184, M := 10
      },
      {
        lower := 21725184, upper := 43450368, M := 9
      },
      {
        lower := 43450368, upper := 86900736, M := 8
      },
      {
        lower := 86900736, upper := 173801472, M := 8
      },
      {
        lower := 173801472, upper := 347602944, M := 7
      },
      {
        lower := 347602944, upper := 695205888, M := 6
      },
      {
        lower := 695205888, upper := 1390411776, M := 6
      },
      {
        lower := 1390411776, upper := 2780823552, M := 5
      },
      {
        lower := 2780823552, upper := 5561647104, M := 5
      },
      {
        lower := 5561647104, upper := 11123294208, M := 4
      },
      {
        lower := 11123294208, upper := 22246588416, M := 4
      },
      {
        lower := 22246588416, upper := 44493176832, M := 4
      },
      {
        lower := 44493176832, upper := 88986353664, M := 3
      },
      {
        lower := 88986353664, upper := 177972707328, M := 3
      },
      {
        lower := 177972707328, upper := 355945414656, M := 3
      },
      {
        lower := 355945414656, upper := 711890829312, M := 3
      },
      {
        lower := 711890829312, upper := 1423781658624, M := 2
      },
      {
        lower := 1423781658624, upper := 2847563317248, M := 2
      },
      {
        lower := 2847563317248, upper := 5695126634496, M := 2
      },
      {
        lower := 5695126634496, upper := 11390253268992, M := 2
      },
      {
        lower := 11390253268992, upper := 22780506537984, M := 2
      },
      {
        lower := 22780506537984, upper := 45561013075968, M := 2
      },
      {
        lower := 45561013075968, upper := 91122026151936, M := 2
      },
      {
        lower := 91122026151936, upper := 100000000000000, M := 1
      }
    ]
  }
]

theorem coverRows00_checked :
    coverRows00.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows00_checked

end B699LowIndex
