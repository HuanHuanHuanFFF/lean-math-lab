import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows04 : List FiniteCoverRow := [
  {
    height := {
      i := 110, r := 36, s := 76,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 222, upper := 320,
        witness := RowWitness.topPrime 211
      },
      {
        lower := 321, upper := 426,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 427, upper := 530,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 531, upper := 632,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 633, upper := 740,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 741, upper := 848,
        witness := RowWitness.topPrime 739
      },
      {
        lower := 849, upper := 948,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 949, upper := 1056,
        witness := RowWitness.topPrime 947
      },
      {
        lower := 1057, upper := 1160,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1161, upper := 1262,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1263, upper := 1368,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1369, upper := 1476,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1477, upper := 1580,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1581, upper := 1688,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1689, upper := 1778,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1779, upper := 1886,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1887, upper := 1988,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 1989, upper := 2096,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2097, upper := 2198,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2199, upper := 2288,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2289, upper := 2396,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2397, upper := 2502,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2503, upper := 2612,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2613, upper := 2718,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2719, upper := 2828,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2829, upper := 2928,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2929, upper := 3036,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3037, upper := 3146,
        witness := RowWitness.topPrime 3037
      },
      {
        lower := 3147, upper := 3246,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3247, upper := 3338,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3339, upper := 3440,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3441, upper := 3542,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3543, upper := 3650,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3651, upper := 3752,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3753, upper := 3848,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3849, upper := 3956,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3957, upper := 4056,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4057, upper := 4166,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4167, upper := 4268,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4269, upper := 4370,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4371, upper := 4472,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4473, upper := 4572,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4573, upper := 4676,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4677, upper := 4782,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4783, upper := 4892,
        witness := RowWitness.topPrime 4783
      },
      {
        lower := 4893, upper := 4998,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 4999, upper := 5108,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5109, upper := 5216,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5217, upper := 5318,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5319, upper := 5418,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5419, upper := 5528,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5529, upper := 5636,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5637, upper := 5732,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5733, upper := 5826,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5827, upper := 5936,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5937, upper := 6036,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6037, upper := 6146,
        witness := RowWitness.topPrime 6037
      },
      {
        lower := 6147, upper := 6252,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6253, upper := 6356,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6357, upper := 6462,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6463, upper := 6560,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6561, upper := 6662,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6663, upper := 6770,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6771, upper := 6872,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6873, upper := 6980,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 6981, upper := 7086,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7087, upper := 7188,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7189, upper := 7296,
        witness := RowWitness.topPrime 7187
      },
      {
        lower := 7297, upper := 7406,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7407, upper := 7502,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7503, upper := 7608,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7609, upper := 7716,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7717, upper := 7826,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7827, upper := 7932,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7933, upper := 8042,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8043, upper := 8148,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8149, upper := 8256,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8257, upper := 8352,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8353, upper := 8462,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8463, upper := 8570,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8571, upper := 8672,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8673, upper := 8778,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8779, upper := 8888,
        witness := RowWitness.topPrime 8779
      },
      {
        lower := 8889, upper := 8996,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 8997, upper := 9080,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9081, upper := 9176,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9177, upper := 9282,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9283, upper := 9392,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9393, upper := 9500,
        witness := RowWitness.topPrime 9391
      },
      {
        lower := 9501, upper := 9606,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9607, upper := 9710,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9711, upper := 9806,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9807, upper := 9912,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9913, upper := 10016,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10017, upper := 10118,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10119, upper := 10220,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10221, upper := 10320,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10321, upper := 10430,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10431, upper := 10538,
        witness := RowWitness.topPrime 10429
      },
      {
        lower := 10539, upper := 10640,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10641, upper := 10748,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10749, upper := 10848,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10849, upper := 10956,
        witness := RowWitness.topPrime 10847
      },
      {
        lower := 10957, upper := 11066,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11067, upper := 11168,
        witness := RowWitness.topPrime 11059
      },
      {
        lower := 11169, upper := 11270,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11271, upper := 11370,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11371, upper := 11478,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11479, upper := 11580,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11581, upper := 11688,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11689, upper := 11798,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11799, upper := 11898,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11899, upper := 11989,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12321, upper := 12410,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12411, upper := 12430,
        witness := RowWitness.topPrime 12409
      },
      {
        lower := 12482, upper := 12588,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12589, upper := 12602,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12696, upper := 12724,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 13182, upper := 13286,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13287, upper := 13363,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13454, upper := 13560,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13561, upper := 13565,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13820,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13821, upper := 13887,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13960,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14297, upper := 14402,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14403, upper := 14510,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14511, upper := 14515,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14641, upper := 14689,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14750,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14892,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14893, upper := 14921,
        witness := RowWitness.topPrime 14891
      },
      {
        lower := 15123, upper := 15230,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15231, upper := 15238,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15341, upper := 15440,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15441, upper := 15488,
        witness := RowWitness.topPrime 15439
      },
      {
        lower := 15870, upper := 15951,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15979, upper := 15979,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 15987, upper := 16082,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16083, upper := 16096,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16490,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16491, upper := 16493,
        witness := RowWitness.topPrime 16487
      },
      {
        lower := 16807, upper := 16896,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16897, upper := 16929,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17405, upper := 17407,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17514,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17605,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17768,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17769, upper := 17770,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18259, upper := 18334,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18490, upper := 18590,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18591, upper := 18600,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18611,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18750, upper := 18858,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18859, upper := 18859,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19208, upper := 19316,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19317, upper := 19317,
        witness := RowWitness.topPrime 19309
      },
      {
        lower := 19663, upper := 19770,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19771, upper := 19792,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19882,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20172, upper := 20270,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20271, upper := 20290,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20508,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20509, upper := 20521,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20535, upper := 20642,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20643, upper := 20644,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20686,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21142, upper := 21248,
        witness := RowWitness.topPrime 21139
      },
      {
        lower := 21249, upper := 21251,
        witness := RowWitness.topPrime 21247
      },
      {
        lower := 21316, upper := 21327,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21866, upper := 21972,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21973, upper := 22013,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22202,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22203, upper := 22212,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22578,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22579, upper := 22581,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23548, upper := 23643,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23763, upper := 23870,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23871, upper := 23871,
        witness := RowWitness.topPrime 23869
      },
      {
        lower := 24025, upper := 24132,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24133, upper := 24146,
        witness := RowWitness.topPrime 24133
      },
      {
        lower := 24334, upper := 24438,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24439, upper := 24476,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24576, upper := 24680,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24681, upper := 24685,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 25215, upper := 25298,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25299, upper := 25324,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26047, upper := 26120,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26473,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26520,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27005,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27489,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28577, upper := 28670,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28672, upper := 28686,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28820,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28821, upper := 28858,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29587,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29877,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30355,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30702,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30703, upper := 30712,
        witness := RowWitness.topPrime 30703
      },
      {
        lower := 30926, upper := 31008,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31302,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31303, upper := 31322,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31359,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31506,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31507, upper := 31542,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32048,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32912,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32913, upper := 32914,
        witness := RowWitness.topPrime 32911
      },
      {
        lower := 32955, upper := 32965,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33620, upper := 33728,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33729, upper := 33729,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34295, upper := 34334,
        witness := RowWitness.topPrime 34283
      },
      {
        lower := 34347, upper := 34446,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34447, upper := 34500,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35240,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35400,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35401, upper := 35410,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36015, upper := 36021,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36606,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36607, upper := 36610,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36982, upper := 37088,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37089, upper := 37089,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37210, upper := 37288,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37319,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37412,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37458,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37553, upper := 37555,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37662,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39432,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39433, upper := 39435,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39655,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40344, upper := 40452,
        witness := RowWitness.topPrime 40343
      },
      {
        lower := 40453, upper := 40453,
        witness := RowWitness.topPrime 40433
      },
      {
        lower := 40817, upper := 40913,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41040,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41852,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 42025, upper := 42080,
        witness := RowWitness.topPrime 42023
      },
      {
        lower := 42527, upper := 42545,
        witness := RowWitness.topPrime 42509
      },
      {
        lower := 42632, upper := 42636,
        witness := RowWitness.topPrime 42611
      },
      {
        lower := 43740, upper := 43796,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44217, upper := 44289,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 44999,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 46225, upper := 46246,
        witness := RowWitness.topPrime 46219
      },
      {
        lower := 47526, upper := 47630,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47631, upper := 47633,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48090,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48091, upper := 48122,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48734, upper := 48842,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48843, upper := 48843,
        witness := RowWitness.topPrime 48823
      },
      {
        lower := 49152, upper := 49239,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50519,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50671,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 53371, upper := 53399,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55550,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55551, upper := 55556,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56180, upper := 56278,
        witness := RowWitness.topPrime 56179
      },
      {
        lower := 57344, upper := 57354,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58989, upper := 59088,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 59089, upper := 59098,
        witness := RowWitness.topPrime 59083
      },
      {
        lower := 59582, upper := 59645,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62519,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63978,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65630,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65631, upper := 65645,
        witness := RowWitness.topPrime 65629
      },
      {
        lower := 67335, upper := 67337,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68748,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68749, upper := 68760,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68803,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68891,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 68999,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71395,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73101, upper := 73111,
        witness := RowWitness.topPrime 73091
      },
      {
        lower := 73167, upper := 73210,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73728, upper := 73804,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 78141, upper := 78234,
        witness := RowWitness.topPrime 78139
      },
      {
        lower := 85264, upper := 85278,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85291, upper := 85368,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85369, upper := 85400,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85792,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 91854, upper := 91918,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95136,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95137, upper := 95157,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 96026, upper := 96031,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 102973, upper := 102994,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103082,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 106097, upper := 106196,
        witness := RowWitness.topPrime 106087
      },
      {
        lower := 106197, upper := 106199,
        witness := RowWitness.topPrime 106189
      },
      {
        lower := 116699, upper := 116712,
        witness := RowWitness.topPrime 116689
      },
      {
        lower := 118815, upper := 118910,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118911, upper := 118919,
        witness := RowWitness.topPrime 118907
      },
      {
        lower := 122412, upper := 122426,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 137842, upper := 137890,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137951,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142578, upper := 142681,
        witness := RowWitness.topPrime 142573
      },
      {
        lower := 142814, upper := 142914,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 148877, upper := 148946,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148986,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327789,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 11990, upper := 23980, M := 30
      },
      {
        lower := 23980, upper := 47960, M := 25
      },
      {
        lower := 47960, upper := 95920, M := 21
      },
      {
        lower := 95920, upper := 191840, M := 18
      },
      {
        lower := 191840, upper := 383680, M := 15
      },
      {
        lower := 383680, upper := 767360, M := 12
      },
      {
        lower := 767360, upper := 1534720, M := 10
      },
      {
        lower := 1534720, upper := 3069440, M := 9
      },
      {
        lower := 3069440, upper := 6138880, M := 7
      },
      {
        lower := 6138880, upper := 12277760, M := 6
      },
      {
        lower := 12277760, upper := 24555520, M := 5
      },
      {
        lower := 24555520, upper := 49111040, M := 5
      },
      {
        lower := 49111040, upper := 98222080, M := 4
      },
      {
        lower := 98222080, upper := 196444160, M := 3
      },
      {
        lower := 196444160, upper := 392888320, M := 3
      },
      {
        lower := 392888320, upper := 785776640, M := 2
      },
      {
        lower := 785776640, upper := 1571553280, M := 2
      },
      {
        lower := 1571553280, upper := 3143106560, M := 2
      },
      {
        lower := 3143106560, upper := 6286213120, M := 2
      },
      {
        lower := 6286213120, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 111, r := 36, s := 77,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 224, upper := 333,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 334, upper := 441,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 442, upper := 549,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 550, upper := 657,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 658, upper := 763,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 764, upper := 871,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 872, upper := 973,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 974, upper := 1081,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1082, upper := 1179,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1180, upper := 1281,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1282, upper := 1389,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1390, upper := 1491,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1492, upper := 1599,
        witness := RowWitness.topPrime 1489
      },
      {
        lower := 1600, upper := 1707,
        witness := RowWitness.topPrime 1597
      },
      {
        lower := 1708, upper := 1809,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1810, upper := 1911,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1912, upper := 2017,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2018, upper := 2127,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2128, upper := 2223,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2224, upper := 2331,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2332, upper := 2421,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2422, upper := 2527,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2528, upper := 2631,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2632, upper := 2731,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2732, upper := 2841,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2842, upper := 2947,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 2948, upper := 3049,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3050, upper := 3159,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3160, upper := 3247,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3248, upper := 3339,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3340, upper := 3441,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3442, upper := 3543,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3544, upper := 3651,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3652, upper := 3753,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3754, upper := 3849,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3850, upper := 3957,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3958, upper := 4057,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4058, upper := 4167,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4168, upper := 4269,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4270, upper := 4371,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4372, upper := 4473,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4474, upper := 4573,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4574, upper := 4677,
        witness := RowWitness.topPrime 4567
      },
      {
        lower := 4678, upper := 4783,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4784, upper := 4893,
        witness := RowWitness.topPrime 4783
      },
      {
        lower := 4894, upper := 4999,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5000, upper := 5109,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5110, upper := 5217,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5218, upper := 5319,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5320, upper := 5419,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5420, upper := 5529,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5530, upper := 5637,
        witness := RowWitness.topPrime 5527
      },
      {
        lower := 5638, upper := 5733,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5734, upper := 5827,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5828, upper := 5937,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5938, upper := 6037,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6038, upper := 6147,
        witness := RowWitness.topPrime 6037
      },
      {
        lower := 6148, upper := 6253,
        witness := RowWitness.topPrime 6143
      },
      {
        lower := 6254, upper := 6357,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6358, upper := 6463,
        witness := RowWitness.topPrime 6353
      },
      {
        lower := 6464, upper := 6561,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6562, upper := 6663,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6664, upper := 6771,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6772, upper := 6873,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6874, upper := 6981,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 6982, upper := 7087,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7088, upper := 7189,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7190, upper := 7297,
        witness := RowWitness.topPrime 7187
      },
      {
        lower := 7298, upper := 7407,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7408, upper := 7503,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7504, upper := 7609,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7610, upper := 7717,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7718, upper := 7827,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7828, upper := 7933,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7934, upper := 8043,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8044, upper := 8149,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8150, upper := 8257,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8258, upper := 8353,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8354, upper := 8463,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8464, upper := 8571,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8572, upper := 8673,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8674, upper := 8779,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8780, upper := 8889,
        witness := RowWitness.topPrime 8779
      },
      {
        lower := 8890, upper := 8997,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 8998, upper := 9081,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9082, upper := 9177,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9178, upper := 9283,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9284, upper := 9393,
        witness := RowWitness.topPrime 9283
      },
      {
        lower := 9394, upper := 9501,
        witness := RowWitness.topPrime 9391
      },
      {
        lower := 9502, upper := 9607,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9608, upper := 9711,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9712, upper := 9807,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9808, upper := 9913,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9914, upper := 10017,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10018, upper := 10119,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10120, upper := 10221,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10222, upper := 10321,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10322, upper := 10431,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10432, upper := 10539,
        witness := RowWitness.topPrime 10429
      },
      {
        lower := 10540, upper := 10641,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10642, upper := 10749,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10750, upper := 10849,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10850, upper := 10957,
        witness := RowWitness.topPrime 10847
      },
      {
        lower := 10958, upper := 11067,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11068, upper := 11169,
        witness := RowWitness.topPrime 11059
      },
      {
        lower := 11170, upper := 11271,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11272, upper := 11371,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11372, upper := 11479,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11480, upper := 11581,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11582, upper := 11689,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11690, upper := 11799,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11800, upper := 11899,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11900, upper := 12007,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12008, upper := 12117,
        witness := RowWitness.topPrime 12007
      },
      {
        lower := 12118, upper := 12209,
        witness := RowWitness.topPrime 12113
      },
      {
        lower := 12493, upper := 12601,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12602, upper := 12603,
        witness := RowWitness.topPrime 12601
      },
      {
        lower := 12696, upper := 12725,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12800, upper := 12806,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 13125, upper := 13231,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13232, upper := 13339,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13340, upper := 13420,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13561,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13562, upper := 13566,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13750, upper := 13839,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13840, upper := 13888,
        witness := RowWitness.topPrime 13831
      },
      {
        lower := 13924, upper := 13934,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14297, upper := 14403,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14404, upper := 14511,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14512, upper := 14516,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14739, upper := 14751,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14893,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14894, upper := 14922,
        witness := RowWitness.topPrime 14891
      },
      {
        lower := 15129, upper := 15231,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15232, upper := 15239,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15360, upper := 15469,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15470, upper := 15489,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15979, upper := 16083,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16084, upper := 16089,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16337, upper := 16360,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16447,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16810, upper := 16897,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16898, upper := 16964,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17409,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17410, upper := 17511,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17512, upper := 17610,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17661, upper := 17769,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17770, upper := 17771,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18591,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18592, upper := 18601,
        witness := RowWitness.topPrime 18587
      },
      {
        lower := 18605, upper := 18612,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18715,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18744,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18859,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18860, upper := 18860,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19220, upper := 19318,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19771,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19772, upper := 19793,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19883,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19991,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20271,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20272, upper := 20291,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20449,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20512,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20577, upper := 20590,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20687,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21252,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21393,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21394, upper := 21406,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21609, upper := 21614,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21866, upper := 21973,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21974, upper := 21985,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22203,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22204, upper := 22213,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22579,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22580, upper := 22582,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22638,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22707, upper := 22737,
        witness := RowWitness.topPrime 22699
      },
      {
        lower := 23548, upper := 23649,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23650, upper := 23658,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23763, upper := 23871,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23872, upper := 23872,
        witness := RowWitness.topPrime 23869
      },
      {
        lower := 24010, upper := 24117,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24118, upper := 24135,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24334, upper := 24439,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24440, upper := 24477,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24576, upper := 24675,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25074,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25299,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25300, upper := 25371,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25372, upper := 25391,
        witness := RowWitness.topPrime 25367
      },
      {
        lower := 26411, upper := 26474,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26521,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26707,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26708, upper := 26734,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26934, upper := 27006,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27951, upper := 27958,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28200,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28235,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28683,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28684, upper := 28687,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28782,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28827,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29588,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29878,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30356,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30613, upper := 30703,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30704, upper := 30713,
        witness := RowWitness.topPrime 30703
      },
      {
        lower := 30720, upper := 30723,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30830,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31009,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31303,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31304, upper := 31323,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31360,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31507,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31508, upper := 31533,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32049,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32878,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33729,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33730, upper := 33730,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34447,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34448, upper := 34501,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34917,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34918, upper := 34920,
        witness := RowWitness.topPrime 34913
      },
      {
        lower := 35152, upper := 35241,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35401,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35402, upper := 35411,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36015, upper := 36022,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36607,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36608, upper := 36611,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36982, upper := 37089,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37090, upper := 37090,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37303, upper := 37320,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37413,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37459,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37603,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37604, upper := 37610,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37663,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38912, upper := 38939,
        witness := RowWitness.topPrime 38903
      },
      {
        lower := 39326, upper := 39433,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39434, upper := 39436,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39656,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40438,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40678, upper := 40735,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40817, upper := 40914,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41041,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41853,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 42527, upper := 42546,
        witness := RowWitness.topPrime 42509
      },
      {
        lower := 42632, upper := 42637,
        witness := RowWitness.topPrime 42611
      },
      {
        lower := 43750, upper := 43797,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 44033,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44290,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45000,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 47104, upper := 47155,
        witness := RowWitness.topPrime 47093
      },
      {
        lower := 47526, upper := 47631,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47632, upper := 47634,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48091,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48092, upper := 48123,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48373, upper := 48444,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48668, upper := 48708,
        witness := RowWitness.topPrime 48661
      },
      {
        lower := 48734, upper := 48843,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48844, upper := 48844,
        witness := RowWitness.topPrime 48823
      },
      {
        lower := 49152, upper := 49240,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50038,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50520,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53125, upper := 53155,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53290, upper := 53358,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 53371, upper := 53400,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55551,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55552, upper := 55557,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56250, upper := 56279,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 57344, upper := 57355,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58674,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59066,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59405, upper := 59485,
        witness := RowWitness.topPrime 59399
      },
      {
        lower := 59582, upper := 59646,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62520,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63979,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65631,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65632, upper := 65643,
        witness := RowWitness.topPrime 65629
      },
      {
        lower := 67335, upper := 67338,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68749,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68750, upper := 68761,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68804,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68892,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69000,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71396,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73277,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73805,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85264, upper := 85279,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85291, upper := 85369,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85370, upper := 85374,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85793,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 95052, upper := 95137,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95138, upper := 95158,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 96026, upper := 96032,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 102973, upper := 102995,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103083,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 118815, upper := 118911,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118912, upper := 118920,
        witness := RowWitness.topPrime 118907
      },
      {
        lower := 122412, upper := 122427,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131836,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137917, upper := 137952,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142915,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146444,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148947,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148987,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327790,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 12210, upper := 24420, M := 28
      },
      {
        lower := 24420, upper := 48840, M := 23
      },
      {
        lower := 48840, upper := 97680, M := 19
      },
      {
        lower := 97680, upper := 195360, M := 16
      },
      {
        lower := 195360, upper := 390720, M := 13
      },
      {
        lower := 390720, upper := 781440, M := 11
      },
      {
        lower := 781440, upper := 1562880, M := 9
      },
      {
        lower := 1562880, upper := 3125760, M := 8
      },
      {
        lower := 3125760, upper := 6251520, M := 7
      },
      {
        lower := 6251520, upper := 12503040, M := 6
      },
      {
        lower := 12503040, upper := 25006080, M := 5
      },
      {
        lower := 25006080, upper := 50012160, M := 4
      },
      {
        lower := 50012160, upper := 100024320, M := 3
      },
      {
        lower := 100024320, upper := 200048640, M := 3
      },
      {
        lower := 200048640, upper := 400097280, M := 2
      },
      {
        lower := 400097280, upper := 800194560, M := 2
      },
      {
        lower := 800194560, upper := 1600389120, M := 2
      },
      {
        lower := 1600389120, upper := 3200778240, M := 2
      },
      {
        lower := 3200778240, upper := 6401556480, M := 1
      },
      {
        lower := 6401556480, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 112, r := 37, s := 78,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 226, upper := 334,
        witness := RowWitness.topPrime 223
      },
      {
        lower := 335, upper := 442,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 443, upper := 554,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 555, upper := 658,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 659, upper := 770,
        witness := RowWitness.topPrime 659
      },
      {
        lower := 771, upper := 880,
        witness := RowWitness.topPrime 769
      },
      {
        lower := 881, upper := 992,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 993, upper := 1102,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1103, upper := 1214,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1215, upper := 1324,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1325, upper := 1432,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1433, upper := 1544,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1545, upper := 1654,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1655, upper := 1748,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1749, upper := 1858,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1859, upper := 1958,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1959, upper := 2062,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2063, upper := 2174,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2175, upper := 2272,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2273, upper := 2384,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2385, upper := 2494,
        witness := RowWitness.topPrime 2383
      },
      {
        lower := 2495, upper := 2588,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2589, upper := 2690,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2691, upper := 2800,
        witness := RowWitness.topPrime 2689
      },
      {
        lower := 2801, upper := 2912,
        witness := RowWitness.topPrime 2801
      },
      {
        lower := 2913, upper := 3020,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3021, upper := 3130,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3131, upper := 3232,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3233, upper := 3340,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3341, upper := 3442,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3443, upper := 3544,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3545, upper := 3652,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3653, upper := 3754,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3755, upper := 3850,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3851, upper := 3962,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 3963, upper := 4058,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4059, upper := 4168,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4169, upper := 4270,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4271, upper := 4382,
        witness := RowWitness.topPrime 4271
      },
      {
        lower := 4383, upper := 4484,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4485, upper := 4594,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4595, upper := 4702,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4703, upper := 4814,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4815, upper := 4924,
        witness := RowWitness.topPrime 4813
      },
      {
        lower := 4925, upper := 5030,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5031, upper := 5134,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5135, upper := 5230,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5231, upper := 5342,
        witness := RowWitness.topPrime 5231
      },
      {
        lower := 5343, upper := 5444,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5445, upper := 5554,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5555, upper := 5642,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5643, upper := 5752,
        witness := RowWitness.topPrime 5641
      },
      {
        lower := 5753, upper := 5860,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5861, upper := 5972,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5973, upper := 6064,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6065, upper := 6164,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6165, upper := 6274,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6275, upper := 6382,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6383, upper := 6490,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6491, upper := 6602,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6603, upper := 6710,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6711, upper := 6820,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6821, upper := 6914,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6915, upper := 7022,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7023, upper := 7130,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7131, upper := 7240,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7241, upper := 7348,
        witness := RowWitness.topPrime 7237
      },
      {
        lower := 7349, upper := 7460,
        witness := RowWitness.topPrime 7349
      },
      {
        lower := 7461, upper := 7570,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7571, upper := 7672,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7673, upper := 7784,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7785, upper := 7870,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7871, upper := 7978,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 7979, upper := 8074,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8075, upper := 8180,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8181, upper := 8290,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8291, upper := 8402,
        witness := RowWitness.topPrime 8291
      },
      {
        lower := 8403, upper := 8500,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8501, upper := 8612,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8613, upper := 8720,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8721, upper := 8830,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8831, upper := 8942,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8943, upper := 9052,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9053, upper := 9160,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9161, upper := 9272,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9273, upper := 9368,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9369, upper := 9460,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9461, upper := 9572,
        witness := RowWitness.topPrime 9461
      },
      {
        lower := 9573, upper := 9662,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9663, upper := 9772,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 9773, upper := 9880,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9881, upper := 9982,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 9983, upper := 10084,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10085, upper := 10190,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10191, upper := 10292,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10293, upper := 10400,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10401, upper := 10510,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10511, upper := 10612,
        witness := RowWitness.topPrime 10501
      },
      {
        lower := 10613, upper := 10724,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10725, upper := 10834,
        witness := RowWitness.topPrime 10723
      },
      {
        lower := 10835, upper := 10942,
        witness := RowWitness.topPrime 10831
      },
      {
        lower := 10943, upper := 11050,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11051, upper := 11158,
        witness := RowWitness.topPrime 11047
      },
      {
        lower := 11159, upper := 11270,
        witness := RowWitness.topPrime 11159
      },
      {
        lower := 11271, upper := 11372,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11373, upper := 11480,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11481, upper := 11582,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11583, upper := 11690,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11691, upper := 11800,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11801, upper := 11912,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11913, upper := 12020,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12021, upper := 12122,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12123, upper := 12230,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12231, upper := 12338,
        witness := RowWitness.topPrime 12227
      },
      {
        lower := 12339, upper := 12432,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12482, upper := 12590,
        witness := RowWitness.topPrime 12479
      },
      {
        lower := 12591, upper := 12604,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12696, upper := 12726,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 13125, upper := 13232,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13233, upper := 13340,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13341, upper := 13365,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13562,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13563, upper := 13567,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13822,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13823, upper := 13889,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13962,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14375, upper := 14408,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14415, upper := 14486,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14641, upper := 14691,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14752,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14850,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14903,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15111,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15232,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15233, upper := 15240,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15376, upper := 15484,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15485, upper := 15490,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16084,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16085, upper := 16098,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16337, upper := 16361,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16492,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16493, upper := 16495,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16898,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16899, upper := 16931,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17410,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17411, upper := 17414,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17516,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17607,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17770,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17771, upper := 17772,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18259, upper := 18336,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18592,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18593, upper := 18602,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18605, upper := 18613,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18716,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18745,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18860,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18861, upper := 18861,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19220, upper := 19277,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19663, upper := 19772,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19773, upper := 19794,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19884,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19992,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20272,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20273, upper := 20292,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20450,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20646,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20688,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21253,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21394,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21395, upper := 21407,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21866, upper := 21974,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21975, upper := 22015,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22204,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22205, upper := 22214,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22556,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23872,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23873, upper := 23873,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24025, upper := 24134,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24135, upper := 24148,
        witness := RowWitness.topPrime 24133
      },
      {
        lower := 24167, upper := 24168,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24440,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24441, upper := 24478,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24642, upper := 24676,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25000, upper := 25075,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25300,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25301, upper := 25392,
        witness := RowWitness.topPrime 25301
      },
      {
        lower := 26047, upper := 26122,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26645, upper := 26731,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27007,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27491,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27951, upper := 27959,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28201,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28236,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28672,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28828,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 29584, upper := 29589,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29879,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30357,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30704,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30705, upper := 30714,
        witness := RowWitness.topPrime 30703
      },
      {
        lower := 30926, upper := 31010,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31316,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31329, upper := 31361,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31508,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31509, upper := 31534,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31974, upper := 32050,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32879,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33730,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33731, upper := 33731,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34448,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34449, upper := 34502,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35242,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35402,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35403, upper := 35412,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36517, upper := 36608,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36609, upper := 36612,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36982, upper := 37090,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37091, upper := 37091,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37210, upper := 37290,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37321,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37414,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37460,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37604,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37605, upper := 37611,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37664,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 39326, upper := 39434,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39435, upper := 39437,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39657,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40439,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40678, upper := 40736,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 41772, upper := 41854,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43740, upper := 43832,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43833, upper := 43851,
        witness := RowWitness.topPrime 43801
      },
      {
        lower := 43940, upper := 44034,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44291,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45001,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 47526, upper := 47632,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47633, upper := 47635,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48072,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48114, upper := 48124,
        witness := RowWitness.topPrime 48109
      },
      {
        lower := 48223, upper := 48225,
        witness := RowWitness.topPrime 48221
      },
      {
        lower := 48334, upper := 48334,
        witness := RowWitness.topPrime 48313
      },
      {
        lower := 48373, upper := 48445,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48668, upper := 48709,
        witness := RowWitness.topPrime 48661
      },
      {
        lower := 48734, upper := 48844,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48845, upper := 48845,
        witness := RowWitness.topPrime 48823
      },
      {
        lower := 50000, upper := 50039,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50653, upper := 50673,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 53125, upper := 53156,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 55451, upper := 55552,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55553, upper := 55558,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56250, upper := 56280,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 58619, upper := 58675,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59067,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59647,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62521,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63368,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63948, upper := 63980,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65632,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65633, upper := 65647,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 68651, upper := 68750,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68751, upper := 68762,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68805,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68893,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69001,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71397,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73278,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85264, upper := 85280,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85370,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85371, upper := 85375,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85794,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 91854, upper := 91920,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95138,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95139, upper := 95159,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 96026, upper := 96033,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 102973, upper := 102996,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103084,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 118815, upper := 118912,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118913, upper := 118921,
        witness := RowWitness.topPrime 118913
      },
      {
        lower := 122412, upper := 122428,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131837,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137892,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137953,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142916,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146445,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148948,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148988,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 12432, upper := 24864, M := 26
      },
      {
        lower := 24864, upper := 49728, M := 22
      },
      {
        lower := 49728, upper := 99456, M := 18
      },
      {
        lower := 99456, upper := 198912, M := 15
      },
      {
        lower := 198912, upper := 397824, M := 12
      },
      {
        lower := 397824, upper := 795648, M := 10
      },
      {
        lower := 795648, upper := 1591296, M := 9
      },
      {
        lower := 1591296, upper := 3182592, M := 7
      },
      {
        lower := 3182592, upper := 6365184, M := 6
      },
      {
        lower := 6365184, upper := 12730368, M := 5
      },
      {
        lower := 12730368, upper := 25460736, M := 4
      },
      {
        lower := 25460736, upper := 50921472, M := 4
      },
      {
        lower := 50921472, upper := 101842944, M := 3
      },
      {
        lower := 101842944, upper := 203685888, M := 3
      },
      {
        lower := 203685888, upper := 407371776, M := 2
      },
      {
        lower := 407371776, upper := 814743552, M := 2
      },
      {
        lower := 814743552, upper := 1629487104, M := 2
      },
      {
        lower := 1629487104, upper := 3258974208, M := 1
      },
      {
        lower := 3258974208, upper := 6517948416, M := 1
      },
      {
        lower := 6517948416, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 113, r := 37, s := 79,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 228, upper := 339,
        witness := RowWitness.topPrime 227
      },
      {
        lower := 340, upper := 449,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 450, upper := 561,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 562, upper := 669,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 670, upper := 773,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 774, upper := 885,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 886, upper := 995,
        witness := RowWitness.topPrime 883
      },
      {
        lower := 996, upper := 1103,
        witness := RowWitness.topPrime 991
      },
      {
        lower := 1104, upper := 1215,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1216, upper := 1325,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1326, upper := 1433,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1434, upper := 1545,
        witness := RowWitness.topPrime 1433
      },
      {
        lower := 1546, upper := 1655,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1656, upper := 1749,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1750, upper := 1859,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1860, upper := 1959,
        witness := RowWitness.topPrime 1847
      },
      {
        lower := 1960, upper := 2063,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2064, upper := 2175,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2176, upper := 2273,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2274, upper := 2385,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2386, upper := 2495,
        witness := RowWitness.topPrime 2383
      },
      {
        lower := 2496, upper := 2589,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2590, upper := 2691,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2692, upper := 2801,
        witness := RowWitness.topPrime 2689
      },
      {
        lower := 2802, upper := 2913,
        witness := RowWitness.topPrime 2801
      },
      {
        lower := 2914, upper := 3021,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3022, upper := 3131,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3132, upper := 3233,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3234, upper := 3341,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3342, upper := 3443,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3444, upper := 3545,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3546, upper := 3653,
        witness := RowWitness.topPrime 3541
      },
      {
        lower := 3654, upper := 3755,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3756, upper := 3851,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3852, upper := 3963,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 3964, upper := 4059,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4060, upper := 4169,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4170, upper := 4271,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4272, upper := 4383,
        witness := RowWitness.topPrime 4271
      },
      {
        lower := 4384, upper := 4485,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4486, upper := 4595,
        witness := RowWitness.topPrime 4483
      },
      {
        lower := 4596, upper := 4703,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4704, upper := 4815,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4816, upper := 4925,
        witness := RowWitness.topPrime 4813
      },
      {
        lower := 4926, upper := 5031,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5032, upper := 5135,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5136, upper := 5231,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5232, upper := 5343,
        witness := RowWitness.topPrime 5231
      },
      {
        lower := 5344, upper := 5445,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5446, upper := 5555,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5556, upper := 5643,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5644, upper := 5753,
        witness := RowWitness.topPrime 5641
      },
      {
        lower := 5754, upper := 5861,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5862, upper := 5973,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5974, upper := 6065,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6066, upper := 6165,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6166, upper := 6275,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6276, upper := 6383,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6384, upper := 6491,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6492, upper := 6603,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6604, upper := 6711,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6712, upper := 6821,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6822, upper := 6915,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6916, upper := 7023,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7024, upper := 7131,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7132, upper := 7241,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7242, upper := 7349,
        witness := RowWitness.topPrime 7237
      },
      {
        lower := 7350, upper := 7461,
        witness := RowWitness.topPrime 7349
      },
      {
        lower := 7462, upper := 7571,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7572, upper := 7673,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7674, upper := 7785,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7786, upper := 7871,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7872, upper := 7979,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 7980, upper := 8075,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8076, upper := 8181,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8182, upper := 8291,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8292, upper := 8403,
        witness := RowWitness.topPrime 8291
      },
      {
        lower := 8404, upper := 8501,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8502, upper := 8613,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8614, upper := 8721,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8722, upper := 8831,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8832, upper := 8943,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8944, upper := 9053,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9054, upper := 9161,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9162, upper := 9273,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9274, upper := 9369,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9370, upper := 9461,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9462, upper := 9573,
        witness := RowWitness.topPrime 9461
      },
      {
        lower := 9574, upper := 9663,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9664, upper := 9773,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 9774, upper := 9881,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9882, upper := 9983,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 9984, upper := 10085,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10086, upper := 10191,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10192, upper := 10293,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10294, upper := 10401,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10402, upper := 10511,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10512, upper := 10613,
        witness := RowWitness.topPrime 10501
      },
      {
        lower := 10614, upper := 10725,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10726, upper := 10835,
        witness := RowWitness.topPrime 10723
      },
      {
        lower := 10836, upper := 10943,
        witness := RowWitness.topPrime 10831
      },
      {
        lower := 10944, upper := 11051,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11052, upper := 11159,
        witness := RowWitness.topPrime 11047
      },
      {
        lower := 11160, upper := 11271,
        witness := RowWitness.topPrime 11159
      },
      {
        lower := 11272, upper := 11373,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11374, upper := 11481,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11482, upper := 11583,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11584, upper := 11691,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11692, upper := 11801,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11802, upper := 11913,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11914, upper := 12021,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12022, upper := 12123,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12124, upper := 12231,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12232, upper := 12339,
        witness := RowWitness.topPrime 12227
      },
      {
        lower := 12340, upper := 12441,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12442, upper := 12549,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12550, upper := 12655,
        witness := RowWitness.topPrime 12547
      },
      {
        lower := 12696, upper := 12727,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12800, upper := 12808,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 13125, upper := 13233,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13234, upper := 13341,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13342, upper := 13422,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13563,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13564, upper := 13568,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13823,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13824, upper := 13890,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13963,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14439,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14440, upper := 14518,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14641, upper := 14692,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14753,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14851,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14904,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15112,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15233,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15234, upper := 15241,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15360, upper := 15471,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15472, upper := 15491,
        witness := RowWitness.topPrime 15467
      },
      {
        lower := 15979, upper := 16085,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16086, upper := 16099,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16384, upper := 16493,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16494, upper := 16496,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16899,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16900, upper := 16932,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17303, upper := 17411,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17412, upper := 17513,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17514, upper := 17520,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17576, upper := 17608,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17771,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17772, upper := 17773,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18259, upper := 18337,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18490, upper := 18593,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18594, upper := 18603,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18605, upper := 18614,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18717,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18746,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18861,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18862, upper := 18862,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19208, upper := 19319,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19320, upper := 19320,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19773,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19774, upper := 19795,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19885,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19993,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20273,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20274, upper := 20293,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20451,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20514,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20645,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20646, upper := 20647,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20689,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21254,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21395,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21396, upper := 21408,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21609, upper := 21616,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21870, upper := 21975,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21976, upper := 22016,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22103, upper := 22205,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22206, upper := 22215,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22581,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22582, upper := 22584,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22640,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23552, upper := 23646,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 23763, upper := 23873,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23874, upper := 23874,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24010, upper := 24119,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24120, upper := 24149,
        witness := RowWitness.topPrime 24113
      },
      {
        lower := 24167, upper := 24169,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24441,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24442, upper := 24479,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24576, upper := 24683,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24684, upper := 24688,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 25000, upper := 25076,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25301,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25302, upper := 25393,
        witness := RowWitness.topPrime 25301
      },
      {
        lower := 26047, upper := 26123,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26476,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26523,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26620,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26624, upper := 26709,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26710, upper := 26736,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26934, upper := 27008,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27492,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27951, upper := 27960,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28202,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28237,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28685,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28686, upper := 28689,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28823,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28824, upper := 28861,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29590,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29880,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30358,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30705,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30706, upper := 30715,
        witness := RowWitness.topPrime 30703
      },
      {
        lower := 30720, upper := 30730,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30832,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31011,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31305,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31306, upper := 31325,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31329, upper := 31362,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31509,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31510, upper := 31535,
        witness := RowWitness.topPrime 31489
      },
      {
        lower := 31939, upper := 31939,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32051,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32880,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33731,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33732, upper := 33732,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34449,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34450, upper := 34503,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34919,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34920, upper := 34922,
        witness := RowWitness.topPrime 34919
      },
      {
        lower := 35152, upper := 35243,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35403,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35404, upper := 35413,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36015, upper := 36024,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36609,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36610, upper := 36613,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37210, upper := 37291,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37322,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37415,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37461,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37605,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37606, upper := 37612,
        witness := RowWitness.topPrime 37591
      },
      {
        lower := 37636, upper := 37665,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38912, upper := 38941,
        witness := RowWitness.topPrime 38903
      },
      {
        lower := 39326, upper := 39435,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39436, upper := 39438,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39658,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40440,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40916,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41043,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41855,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43740, upper := 43833,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43834, upper := 43852,
        witness := RowWitness.topPrime 43801
      },
      {
        lower := 43940, upper := 44035,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44292,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45002,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45056,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 47526, upper := 47633,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47634, upper := 47636,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48093,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48094, upper := 48125,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48734, upper := 48845,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48846, upper := 48846,
        witness := RowWitness.topPrime 48823
      },
      {
        lower := 49152, upper := 49242,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50040,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50522,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 53125, upper := 53157,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53290, upper := 53360,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55553,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55554, upper := 55559,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57357,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58676,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59068,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59648,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62522,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63369,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63948, upper := 63981,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65633,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65634, upper := 65648,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67340,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68751,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68752, upper := 68763,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68806,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68894,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69002,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71398,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73279,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73807,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85264, upper := 85281,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85371,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85372, upper := 85376,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85795,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 91854, upper := 91921,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95139,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95140, upper := 95160,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 98415, upper := 98416,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103085,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 122412, upper := 122429,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131838,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137893,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137954,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142917,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146446,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148949,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148989,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 327701, upper := 327792,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 12656, upper := 25312, M := 25
      },
      {
        lower := 25312, upper := 50624, M := 21
      },
      {
        lower := 50624, upper := 101248, M := 17
      },
      {
        lower := 101248, upper := 202496, M := 14
      },
      {
        lower := 202496, upper := 404992, M := 11
      },
      {
        lower := 404992, upper := 809984, M := 9
      },
      {
        lower := 809984, upper := 1619968, M := 8
      },
      {
        lower := 1619968, upper := 3239936, M := 6
      },
      {
        lower := 3239936, upper := 6479872, M := 5
      },
      {
        lower := 6479872, upper := 12959744, M := 4
      },
      {
        lower := 12959744, upper := 25919488, M := 4
      },
      {
        lower := 25919488, upper := 51838976, M := 3
      },
      {
        lower := 51838976, upper := 103677952, M := 3
      },
      {
        lower := 103677952, upper := 207355904, M := 2
      },
      {
        lower := 207355904, upper := 414711808, M := 2
      },
      {
        lower := 414711808, upper := 829423616, M := 2
      },
      {
        lower := 829423616, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 114, r := 37, s := 79,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 230, upper := 342,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 343, upper := 450,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 451, upper := 562,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 563, upper := 676,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 677, upper := 790,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 791, upper := 900,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 901, upper := 1000,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1001, upper := 1110,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1111, upper := 1222,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1223, upper := 1336,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1337, upper := 1440,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1441, upper := 1552,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1553, upper := 1666,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1667, upper := 1780,
        witness := RowWitness.topPrime 1667
      },
      {
        lower := 1781, upper := 1890,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1891, upper := 2002,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2003, upper := 2116,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2117, upper := 2226,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2227, upper := 2334,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2335, upper := 2446,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2447, upper := 2560,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2561, upper := 2670,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2671, upper := 2784,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2785, upper := 2890,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2891, upper := 3000,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3001, upper := 3114,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3115, upper := 3222,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3223, upper := 3334,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3335, upper := 3444,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3445, upper := 3546,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3547, upper := 3660,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3661, upper := 3772,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3773, upper := 3882,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3883, upper := 3994,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3995, upper := 4102,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4103, upper := 4212,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4213, upper := 4324,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4325, upper := 4410,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4411, upper := 4522,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4523, upper := 4636,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4637, upper := 4750,
        witness := RowWitness.topPrime 4637
      },
      {
        lower := 4751, upper := 4864,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4865, upper := 4974,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4975, upper := 5086,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5087, upper := 5200,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5201, upper := 5310,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5311, upper := 5422,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5423, upper := 5532,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5533, upper := 5644,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5645, upper := 5754,
        witness := RowWitness.topPrime 5641
      },
      {
        lower := 5755, upper := 5862,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5863, upper := 5974,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5975, upper := 6066,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6067, upper := 6180,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6181, upper := 6286,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6287, upper := 6400,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6401, upper := 6510,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6511, upper := 6604,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6605, upper := 6712,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6713, upper := 6822,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6823, upper := 6936,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6937, upper := 7030,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7031, upper := 7140,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7141, upper := 7242,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7243, upper := 7356,
        witness := RowWitness.topPrime 7243
      },
      {
        lower := 7357, upper := 7464,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7465, upper := 7572,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7573, upper := 7686,
        witness := RowWitness.topPrime 7573
      },
      {
        lower := 7687, upper := 7800,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7801, upper := 7906,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7907, upper := 8020,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8021, upper := 8130,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8131, upper := 8236,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8237, upper := 8350,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8351, upper := 8442,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8443, upper := 8556,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8557, upper := 8656,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8657, upper := 8760,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8761, upper := 8874,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8875, upper := 8980,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 8981, upper := 9084,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9085, upper := 9180,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9181, upper := 9294,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9295, upper := 9406,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9407, upper := 9516,
        witness := RowWitness.topPrime 9403
      },
      {
        lower := 9517, upper := 9624,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9625, upper := 9736,
        witness := RowWitness.topPrime 9623
      },
      {
        lower := 9737, upper := 9846,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9847, upper := 9952,
        witness := RowWitness.topPrime 9839
      },
      {
        lower := 9953, upper := 10062,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10063, upper := 10174,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10175, upper := 10282,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10283, upper := 10386,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10387, upper := 10482,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10483, upper := 10590,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10591, upper := 10702,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10703, upper := 10804,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10805, upper := 10912,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10913, upper := 11022,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11023, upper := 11116,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11117, upper := 11230,
        witness := RowWitness.topPrime 11117
      },
      {
        lower := 11231, upper := 11326,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11327, upper := 11434,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11435, upper := 11536,
        witness := RowWitness.topPrime 11423
      },
      {
        lower := 11537, upper := 11640,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11641, upper := 11746,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11747, upper := 11856,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11857, upper := 11952,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11953, upper := 12066,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12067, upper := 12162,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12163, upper := 12276,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12277, upper := 12390,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12391, upper := 12504,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12505, upper := 12616,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12617, upper := 12726,
        witness := RowWitness.topPrime 12613
      },
      {
        lower := 12727, upper := 12834,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12835, upper := 12881,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 13125, upper := 13234,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13235, upper := 13342,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13343, upper := 13423,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13454, upper := 13564,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13565, upper := 13569,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13750, upper := 13842,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13843, upper := 13867,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14297, upper := 14406,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14407, upper := 14519,
        witness := RowWitness.topPrime 14407
      },
      {
        lower := 14739, upper := 14754,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14896,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14897, upper := 14925,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15059, upper := 15113,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15234,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15235, upper := 15242,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15341, upper := 15444,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15445, upper := 15492,
        witness := RowWitness.topPrime 15443
      },
      {
        lower := 15870, upper := 15955,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15972, upper := 16084,
        witness := RowWitness.topPrime 15971
      },
      {
        lower := 16085, upper := 16092,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16337, upper := 16363,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16494,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16495, upper := 16497,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16900,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16901, upper := 16967,
        witness := RowWitness.topPrime 16901
      },
      {
        lower := 17303, upper := 17412,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17413, upper := 17416,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17604,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17605, upper := 17613,
        witness := RowWitness.topPrime 17599
      },
      {
        lower := 17661, upper := 17772,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17773, upper := 17774,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18594,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18595, upper := 18615,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18718,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18747,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18862,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18863, upper := 18863,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19208, upper := 19320,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19321, upper := 19321,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19774,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19775, upper := 19796,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19886,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19994,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20274,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20275, upper := 20294,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20452,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20515,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20593,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 21218, upper := 21255,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21396,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21397, upper := 21409,
        witness := RowWitness.topPrime 21397
      },
      {
        lower := 21866, upper := 21976,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21977, upper := 22017,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22206,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22207, upper := 22216,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22582,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22583, upper := 22585,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22641,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22707, upper := 22740,
        witness := RowWitness.topPrime 22699
      },
      {
        lower := 23548, upper := 23647,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23763, upper := 23874,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23875, upper := 23875,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24010, upper := 24120,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24121, upper := 24138,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24442,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24443, upper := 24480,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24684,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24685, upper := 24689,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 24986, upper := 25092,
        witness := RowWitness.topPrime 24979
      },
      {
        lower := 25093, upper := 25099,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25215, upper := 25302,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25303, upper := 25394,
        witness := RowWitness.topPrime 25303
      },
      {
        lower := 26047, upper := 26124,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26477,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26524,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26621,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26733,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27009,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27848, upper := 27848,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27961,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28203,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28238,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28686,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28687, upper := 28690,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28824,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28825, upper := 28862,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29591,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29881,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30359,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30613, upper := 30706,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30707, upper := 30716,
        witness := RowWitness.topPrime 30707
      },
      {
        lower := 30926, upper := 31012,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31306,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31307, upper := 31326,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31329, upper := 31363,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31510,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31511, upper := 31546,
        witness := RowWitness.topPrime 31511
      },
      {
        lower := 31939, upper := 31940,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31944, upper := 32020,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32021, upper := 32057,
        witness := RowWitness.topPrime 32009
      },
      {
        lower := 32805, upper := 32916,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32917, upper := 32918,
        witness := RowWitness.topPrime 32917
      },
      {
        lower := 32955, upper := 32969,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33282, upper := 33360,
        witness := RowWitness.topPrime 33247
      },
      {
        lower := 33361, upper := 33388,
        witness := RowWitness.topPrime 33359
      },
      {
        lower := 33620, upper := 33732,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33733, upper := 33733,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34375, upper := 34482,
        witness := RowWitness.topPrime 34369
      },
      {
        lower := 34483, upper := 34504,
        witness := RowWitness.topPrime 34483
      },
      {
        lower := 35152, upper := 35244,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35404,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35405, upper := 35414,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36015, upper := 36025,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36610,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36611, upper := 36614,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36982, upper := 37092,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37093, upper := 37093,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37303, upper := 37323,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37416,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37462,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37606,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37607, upper := 37613,
        witness := RowWitness.topPrime 37607
      },
      {
        lower := 37636, upper := 37666,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38404,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38420,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 39326, upper := 39436,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39437, upper := 39439,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39659,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40344, upper := 40456,
        witness := RowWitness.topPrime 40343
      },
      {
        lower := 40457, upper := 40457,
        witness := RowWitness.topPrime 40433
      },
      {
        lower := 40678, upper := 40738,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40817, upper := 40917,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40960, upper := 41044,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41856,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 42025, upper := 42084,
        witness := RowWitness.topPrime 42023
      },
      {
        lower := 42135, upper := 42138,
        witness := RowWitness.topPrime 42131
      },
      {
        lower := 42527, upper := 42549,
        witness := RowWitness.topPrime 42509
      },
      {
        lower := 42632, upper := 42640,
        witness := RowWitness.topPrime 42611
      },
      {
        lower := 43750, upper := 43800,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 44036,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44293,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45003,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45057,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 46225, upper := 46250,
        witness := RowWitness.topPrime 46219
      },
      {
        lower := 47526, upper := 47634,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47635, upper := 47637,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48020, upper := 48074,
        witness := RowWitness.topPrime 48017
      },
      {
        lower := 48334, upper := 48336,
        witness := RowWitness.topPrime 48313
      },
      {
        lower := 48373, upper := 48447,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48668, upper := 48711,
        witness := RowWitness.topPrime 48661
      },
      {
        lower := 48734, upper := 48846,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48847, upper := 48847,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 49152, upper := 49243,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50041,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50523,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50531, upper := 50534,
        witness := RowWitness.topPrime 50527
      },
      {
        lower := 50562, upper := 50644,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 50653, upper := 50675,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51118,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53125, upper := 53158,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53371, upper := 53403,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55554,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55555, upper := 55560,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56180, upper := 56292,
        witness := RowWitness.topPrime 56179
      },
      {
        lower := 56293, upper := 56293,
        witness := RowWitness.topPrime 56269
      },
      {
        lower := 57344, upper := 57358,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58677,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 58989, upper := 59092,
        witness := RowWitness.topPrime 58979
      },
      {
        lower := 59093, upper := 59102,
        witness := RowWitness.topPrime 59093
      },
      {
        lower := 59405, upper := 59488,
        witness := RowWitness.topPrime 59399
      },
      {
        lower := 59582, upper := 59649,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62523,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63370,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63869, upper := 63976,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63977, upper := 63982,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65634,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65635, upper := 65649,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67341,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68694, upper := 68764,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 68782, upper := 68807,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68895,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69003,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71399,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73101, upper := 73115,
        witness := RowWitness.topPrime 73091
      },
      {
        lower := 73167, upper := 73254,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73255, upper := 73280,
        witness := RowWitness.topPrime 73243
      },
      {
        lower := 73728, upper := 73808,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 78141, upper := 78238,
        witness := RowWitness.topPrime 78139
      },
      {
        lower := 85264, upper := 85282,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85291, upper := 85372,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85373, upper := 85377,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85796,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 89383, upper := 89486,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95140,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95141, upper := 95161,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 98304, upper := 98373,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 98415, upper := 98417,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 100842, upper := 100933,
        witness := RowWitness.topPrime 100829
      },
      {
        lower := 101306, upper := 101364,
        witness := RowWitness.topPrime 101293
      },
      {
        lower := 103041, upper := 103086,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 106097, upper := 106200,
        witness := RowWitness.topPrime 106087
      },
      {
        lower := 106201, upper := 106203,
        witness := RowWitness.topPrime 106189
      },
      {
        lower := 117128, upper := 117226,
        witness := RowWitness.topPrime 117127
      },
      {
        lower := 118815, upper := 118914,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118915, upper := 118923,
        witness := RowWitness.topPrime 118913
      },
      {
        lower := 122412, upper := 122430,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131839,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137917, upper := 137955,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142578, upper := 142685,
        witness := RowWitness.topPrime 142573
      },
      {
        lower := 142814, upper := 142918,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146447,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148950,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148990,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 178766, upper := 178859,
        witness := RowWitness.topPrime 178757
      },
      {
        lower := 194672, upper := 194746,
        witness := RowWitness.topPrime 194671
      },
      {
        lower := 327701, upper := 327793,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 12882, upper := 25764, M := 30
      },
      {
        lower := 25764, upper := 51528, M := 25
      },
      {
        lower := 51528, upper := 103056, M := 21
      },
      {
        lower := 103056, upper := 206112, M := 18
      },
      {
        lower := 206112, upper := 412224, M := 15
      },
      {
        lower := 412224, upper := 824448, M := 12
      },
      {
        lower := 824448, upper := 1648896, M := 10
      },
      {
        lower := 1648896, upper := 3297792, M := 9
      },
      {
        lower := 3297792, upper := 6595584, M := 7
      },
      {
        lower := 6595584, upper := 13191168, M := 6
      },
      {
        lower := 13191168, upper := 26382336, M := 5
      },
      {
        lower := 26382336, upper := 52764672, M := 4
      },
      {
        lower := 52764672, upper := 105529344, M := 4
      },
      {
        lower := 105529344, upper := 211058688, M := 3
      },
      {
        lower := 211058688, upper := 422117376, M := 3
      },
      {
        lower := 422117376, upper := 844234752, M := 2
      },
      {
        lower := 844234752, upper := 1688469504, M := 2
      },
      {
        lower := 1688469504, upper := 3376939008, M := 2
      },
      {
        lower := 3376939008, upper := 6753878016, M := 2
      },
      {
        lower := 6753878016, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 115, r := 38, s := 80,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 232, upper := 343,
        witness := RowWitness.topPrime 229
      },
      {
        lower := 344, upper := 451,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 452, upper := 563,
        witness := RowWitness.topPrime 449
      },
      {
        lower := 564, upper := 677,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 678, upper := 791,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 792, upper := 901,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 902, upper := 1001,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1002, upper := 1111,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1112, upper := 1223,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1224, upper := 1337,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1338, upper := 1441,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1442, upper := 1553,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1554, upper := 1667,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1668, upper := 1781,
        witness := RowWitness.topPrime 1667
      },
      {
        lower := 1782, upper := 1891,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1892, upper := 2003,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2004, upper := 2117,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2118, upper := 2227,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2228, upper := 2335,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2336, upper := 2447,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2448, upper := 2561,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2562, upper := 2671,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2672, upper := 2785,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2786, upper := 2891,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2892, upper := 3001,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3002, upper := 3115,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3116, upper := 3223,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3224, upper := 3335,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3336, upper := 3445,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3446, upper := 3547,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3548, upper := 3661,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3662, upper := 3773,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3774, upper := 3883,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3884, upper := 3995,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3996, upper := 4103,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4104, upper := 4213,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4214, upper := 4325,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4326, upper := 4411,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4412, upper := 4523,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4524, upper := 4637,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4638, upper := 4751,
        witness := RowWitness.topPrime 4637
      },
      {
        lower := 4752, upper := 4865,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4866, upper := 4975,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 4976, upper := 5087,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5088, upper := 5201,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5202, upper := 5311,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5312, upper := 5423,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5424, upper := 5533,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5534, upper := 5645,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5646, upper := 5755,
        witness := RowWitness.topPrime 5641
      },
      {
        lower := 5756, upper := 5863,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5864, upper := 5975,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5976, upper := 6067,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6068, upper := 6181,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6182, upper := 6287,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6288, upper := 6401,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6402, upper := 6511,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6512, upper := 6605,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6606, upper := 6713,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6714, upper := 6823,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6824, upper := 6937,
        witness := RowWitness.topPrime 6823
      },
      {
        lower := 6938, upper := 7031,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7032, upper := 7141,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7142, upper := 7243,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7244, upper := 7357,
        witness := RowWitness.topPrime 7243
      },
      {
        lower := 7358, upper := 7465,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7466, upper := 7573,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7574, upper := 7687,
        witness := RowWitness.topPrime 7573
      },
      {
        lower := 7688, upper := 7801,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7802, upper := 7907,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7908, upper := 8021,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8022, upper := 8131,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8132, upper := 8237,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8238, upper := 8351,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8352, upper := 8443,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8444, upper := 8557,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8558, upper := 8657,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8658, upper := 8761,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8762, upper := 8875,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8876, upper := 8981,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 8982, upper := 9085,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9086, upper := 9181,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9182, upper := 9295,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9296, upper := 9407,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9408, upper := 9517,
        witness := RowWitness.topPrime 9403
      },
      {
        lower := 9518, upper := 9625,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9626, upper := 9737,
        witness := RowWitness.topPrime 9623
      },
      {
        lower := 9738, upper := 9847,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9848, upper := 9953,
        witness := RowWitness.topPrime 9839
      },
      {
        lower := 9954, upper := 10063,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10064, upper := 10175,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10176, upper := 10283,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10284, upper := 10387,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10388, upper := 10483,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10484, upper := 10591,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10592, upper := 10703,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10704, upper := 10805,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10806, upper := 10913,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10914, upper := 11023,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11024, upper := 11117,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11118, upper := 11231,
        witness := RowWitness.topPrime 11117
      },
      {
        lower := 11232, upper := 11327,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11328, upper := 11435,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11436, upper := 11537,
        witness := RowWitness.topPrime 11423
      },
      {
        lower := 11538, upper := 11641,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11642, upper := 11747,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11748, upper := 11857,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11858, upper := 11953,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11954, upper := 12067,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12068, upper := 12163,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12164, upper := 12277,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12278, upper := 12391,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12392, upper := 12505,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12506, upper := 12617,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12618, upper := 12727,
        witness := RowWitness.topPrime 12613
      },
      {
        lower := 12728, upper := 12835,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12836, upper := 12943,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12944, upper := 13055,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13056, upper := 13109,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13182, upper := 13236,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13254, upper := 13296,
        witness := RowWitness.topPrime 13249
      },
      {
        lower := 13310, upper := 13423,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13424, upper := 13424,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13454, upper := 13565,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13566, upper := 13570,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13718, upper := 13825,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13826, upper := 13921,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13922, upper := 13965,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14336, upper := 14441,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14442, upper := 14520,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14641, upper := 14694,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14755,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14853,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14906,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15235,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15236, upper := 15243,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15360, upper := 15473,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15474, upper := 15493,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16087,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16088, upper := 16101,
        witness := RowWitness.topPrime 16087
      },
      {
        lower := 16384, upper := 16495,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16496, upper := 16498,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16901,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16902, upper := 16934,
        witness := RowWitness.topPrime 16901
      },
      {
        lower := 17303, upper := 17413,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17414, upper := 17515,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17516, upper := 17522,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17576, upper := 17610,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17773,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17774, upper := 17775,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18259, upper := 18339,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18490, upper := 18595,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18596, upper := 18616,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18719,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18748,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18818, upper := 18837,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19321,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19322, upper := 19322,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19456, upper := 19457,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19663, upper := 19775,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19776, upper := 19797,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19881, upper := 19887,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19995,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20275,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20276, upper := 20295,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20513,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20514, upper := 20526,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20535, upper := 20647,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20648, upper := 20649,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20691,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21256,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21397,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21398, upper := 21410,
        witness := RowWitness.topPrime 21397
      },
      {
        lower := 21609, upper := 21618,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21866, upper := 21977,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21978, upper := 22018,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22207,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22208, upper := 22217,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22583,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22584, upper := 22586,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22642,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22707, upper := 22741,
        witness := RowWitness.topPrime 22699
      },
      {
        lower := 23548, upper := 23653,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23654, upper := 23662,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23763, upper := 23875,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23876, upper := 23876,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24010, upper := 24121,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24122, upper := 24151,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24167, upper := 24171,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24367, upper := 24473,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24474, upper := 24481,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24685,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24686, upper := 24690,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 24986, upper := 25078,
        witness := RowWitness.topPrime 24979
      },
      {
        lower := 25215, upper := 25303,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25304, upper := 25395,
        witness := RowWitness.topPrime 25303
      },
      {
        lower := 25600, upper := 25652,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25947, upper := 26000,
        witness := RowWitness.topPrime 25943
      },
      {
        lower := 26011, upper := 26117,
        witness := RowWitness.topPrime 26003
      },
      {
        lower := 26118, upper := 26125,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26411, upper := 26478,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26525,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26622,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26624, upper := 26711,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26712, upper := 26738,
        witness := RowWitness.topPrime 26711
      },
      {
        lower := 26934, upper := 27010,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27494,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27848, upper := 27849,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27962,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28577, upper := 28687,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28688, upper := 28691,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28825,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28826, upper := 28863,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29592,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29882,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30360,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30613, upper := 30707,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30708, upper := 30732,
        witness := RowWitness.topPrime 30707
      },
      {
        lower := 30758, upper := 30834,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31013,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31307,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31308, upper := 31327,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31329, upper := 31364,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31511,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31512, upper := 31547,
        witness := RowWitness.topPrime 31511
      },
      {
        lower := 31939, upper := 31941,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32053,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32882,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33733,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33734, upper := 33734,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34451,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34452, upper := 34505,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34921,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34922, upper := 34924,
        witness := RowWitness.topPrime 34919
      },
      {
        lower := 35152, upper := 35245,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35405,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35406, upper := 35415,
        witness := RowWitness.topPrime 35401
      },
      {
        lower := 36015, upper := 36026,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36982, upper := 37093,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37094, upper := 37094,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37210, upper := 37293,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37324,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37417,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37463,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37553, upper := 37560,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37667,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38405,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38421,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 38912, upper := 38943,
        witness := RowWitness.topPrime 38903
      },
      {
        lower := 39326, upper := 39437,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39438, upper := 39440,
        witness := RowWitness.topPrime 39419
      },
      {
        lower := 39605, upper := 39660,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40442,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40918,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40931, upper := 40931,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41045,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41857,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 42527, upper := 42550,
        witness := RowWitness.topPrime 42509
      },
      {
        lower := 42632, upper := 42641,
        witness := RowWitness.topPrime 42611
      },
      {
        lower := 43740, upper := 43801,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43940, upper := 44037,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44294,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45004,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45058,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 47104, upper := 47159,
        witness := RowWitness.topPrime 47093
      },
      {
        lower := 47526, upper := 47635,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47636, upper := 47638,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48095,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48096, upper := 48134,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48223, upper := 48228,
        witness := RowWitness.topPrime 48221
      },
      {
        lower := 48334, upper := 48337,
        witness := RowWitness.topPrime 48313
      },
      {
        lower := 48373, upper := 48448,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48778, upper := 48848,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49244,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50410, upper := 50415,
        witness := RowWitness.topPrime 50387
      },
      {
        lower := 50421, upper := 50524,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50531, upper := 50535,
        witness := RowWitness.topPrime 50527
      },
      {
        lower := 50562, upper := 50645,
        witness := RowWitness.topPrime 50551
      },
      {
        lower := 50653, upper := 50676,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51119,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53362,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 53371, upper := 53404,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55555,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55556, upper := 55561,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56180, upper := 56283,
        witness := RowWitness.topPrime 56179
      },
      {
        lower := 57344, upper := 57359,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58678,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59070,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59650,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62524,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63371,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63869, upper := 63977,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63978, upper := 63983,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65635,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65636, upper := 65650,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67342,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68753,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68754, upper := 68765,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68808,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68896,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69004,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 69632, upper := 69734,
        witness := RowWitness.topPrime 69623
      },
      {
        lower := 71289, upper := 71400,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73281,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73809,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85291, upper := 85373,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85374, upper := 85405,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85797,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 89383, upper := 89487,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 91854, upper := 91923,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95141,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95142, upper := 95162,
        witness := RowWitness.topPrime 95131
      },
      {
        lower := 96026, upper := 96036,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 98304, upper := 98374,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 98415, upper := 98418,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 100842, upper := 100934,
        witness := RowWitness.topPrime 100829
      },
      {
        lower := 101306, upper := 101365,
        witness := RowWitness.topPrime 101293
      },
      {
        lower := 102973, upper := 102999,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103087,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 118815, upper := 118915,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118916, upper := 118924,
        witness := RowWitness.topPrime 118913
      },
      {
        lower := 122412, upper := 122431,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131840,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137895,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137956,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142919,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 146410, upper := 146448,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148951,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148991,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 178766, upper := 178860,
        witness := RowWitness.topPrime 178757
      },
      {
        lower := 327701, upper := 327794,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 13110, upper := 26220, M := 28
      },
      {
        lower := 26220, upper := 52440, M := 23
      },
      {
        lower := 52440, upper := 104880, M := 20
      },
      {
        lower := 104880, upper := 209760, M := 16
      },
      {
        lower := 209760, upper := 419520, M := 14
      },
      {
        lower := 419520, upper := 839040, M := 11
      },
      {
        lower := 839040, upper := 1678080, M := 9
      },
      {
        lower := 1678080, upper := 3356160, M := 8
      },
      {
        lower := 3356160, upper := 6712320, M := 7
      },
      {
        lower := 6712320, upper := 13424640, M := 6
      },
      {
        lower := 13424640, upper := 26849280, M := 5
      },
      {
        lower := 26849280, upper := 53698560, M := 4
      },
      {
        lower := 53698560, upper := 107397120, M := 3
      },
      {
        lower := 107397120, upper := 214794240, M := 3
      },
      {
        lower := 214794240, upper := 429588480, M := 2
      },
      {
        lower := 429588480, upper := 859176960, M := 2
      },
      {
        lower := 859176960, upper := 1718353920, M := 2
      },
      {
        lower := 1718353920, upper := 3436707840, M := 2
      },
      {
        lower := 3436707840, upper := 6873415680, M := 1
      },
      {
        lower := 6873415680, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 116, r := 38, s := 81,
      n0Power10 := 10
    },
    goods := [
      {
        lower := 234, upper := 348,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 349, upper := 464,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 465, upper := 578,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 579, upper := 692,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 693, upper := 806,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 807, upper := 912,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 913, upper := 1026,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 1027, upper := 1136,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1137, upper := 1244,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1245, upper := 1352,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1353, upper := 1442,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1443, upper := 1554,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1555, upper := 1668,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1669, upper := 1784,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1785, upper := 1898,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1899, upper := 2004,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2005, upper := 2118,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2119, upper := 2228,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2229, upper := 2336,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2337, upper := 2448,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2449, upper := 2562,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2563, upper := 2672,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2673, upper := 2786,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2787, upper := 2892,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2893, upper := 3002,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3003, upper := 3116,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3117, upper := 3224,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3225, upper := 3336,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3337, upper := 3446,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3447, upper := 3548,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3549, upper := 3662,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3663, upper := 3774,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3775, upper := 3884,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3885, upper := 3996,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3997, upper := 4104,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4105, upper := 4214,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4215, upper := 4326,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4327, upper := 4442,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4443, upper := 4556,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4557, upper := 4664,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4665, upper := 4778,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4779, upper := 4874,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4875, upper := 4986,
        witness := RowWitness.topPrime 4871
      },
      {
        lower := 4987, upper := 5102,
        witness := RowWitness.topPrime 4987
      },
      {
        lower := 5103, upper := 5216,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5217, upper := 5324,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5325, upper := 5438,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5439, upper := 5552,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5553, upper := 5646,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5647, upper := 5762,
        witness := RowWitness.topPrime 5647
      },
      {
        lower := 5763, upper := 5864,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5865, upper := 5976,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5977, upper := 6068,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6069, upper := 6182,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6183, upper := 6288,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6289, upper := 6402,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6403, upper := 6512,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6513, upper := 6606,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6607, upper := 6722,
        witness := RowWitness.topPrime 6607
      },
      {
        lower := 6723, upper := 6834,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6835, upper := 6948,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6949, upper := 7064,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7065, upper := 7172,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7173, upper := 7274,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7275, upper := 7368,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7369, upper := 7484,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7485, upper := 7596,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7597, upper := 7706,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7707, upper := 7818,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7819, upper := 7932,
        witness := RowWitness.topPrime 7817
      },
      {
        lower := 7933, upper := 8048,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8049, upper := 8154,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8155, upper := 8262,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8263, upper := 8378,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8379, upper := 8492,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8493, upper := 8582,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8583, upper := 8696,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8697, upper := 8808,
        witness := RowWitness.topPrime 8693
      },
      {
        lower := 8809, upper := 8922,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8923, upper := 9038,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9039, upper := 9144,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9145, upper := 9252,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9253, upper := 9356,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9357, upper := 9464,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9465, upper := 9578,
        witness := RowWitness.topPrime 9463
      },
      {
        lower := 9579, upper := 9666,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9667, upper := 9776,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 9777, upper := 9884,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9885, upper := 9998,
        witness := RowWitness.topPrime 9883
      },
      {
        lower := 9999, upper := 10088,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10089, upper := 10194,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10195, upper := 10308,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10309, upper := 10418,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10419, upper := 10514,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10515, upper := 10628,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10629, upper := 10742,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10743, upper := 10854,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10855, upper := 10968,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 10969, upper := 11072,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11073, upper := 11186,
        witness := RowWitness.topPrime 11071
      },
      {
        lower := 11187, upper := 11292,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11293, upper := 11402,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11403, upper := 11514,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11515, upper := 11618,
        witness := RowWitness.topPrime 11503
      },
      {
        lower := 11619, upper := 11732,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11733, upper := 11846,
        witness := RowWitness.topPrime 11731
      },
      {
        lower := 11847, upper := 11954,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11955, upper := 12068,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12069, upper := 12164,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12165, upper := 12278,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12279, upper := 12392,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12393, upper := 12506,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12507, upper := 12618,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12619, upper := 12734,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12735, upper := 12836,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12837, upper := 12944,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12945, upper := 13056,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13057, upper := 13164,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13165, upper := 13278,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13279, upper := 13369,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13454, upper := 13566,
        witness := RowWitness.topPrime 13451
      },
      {
        lower := 13567, upper := 13569,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13718, upper := 13826,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13827, upper := 13893,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13924, upper := 13966,
        witness := RowWitness.topPrime 13921
      },
      {
        lower := 14375, upper := 14398,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14406, upper := 14516,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14517, upper := 14521,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14641, upper := 14695,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14756,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14854,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14907,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15059, upper := 15115,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15236,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15237, upper := 15238,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15376, upper := 15488,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15489, upper := 15494,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15987, upper := 16088,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16089, upper := 16102,
        witness := RowWitness.topPrime 16087
      },
      {
        lower := 16337, upper := 16365,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16496,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16497, upper := 16499,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16902,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16903, upper := 16969,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17414,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17415, upper := 17418,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17520,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17611,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17691,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18259, upper := 18340,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18491, upper := 18596,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18597, upper := 18606,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18720,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18834,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18835, upper := 18865,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19322,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19323, upper := 19323,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19776,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19777, upper := 19798,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19888,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19996,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20276,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20277, upper := 20287,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20454,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20517,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20648,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20649, upper := 20650,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20692,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21257,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21398,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21399, upper := 21411,
        witness := RowWitness.topPrime 21397
      },
      {
        lower := 21870, upper := 21978,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21979, upper := 22019,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22208,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22209, upper := 22218,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22560,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23876,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23877, upper := 23877,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24010, upper := 24122,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24123, upper := 24152,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24167, upper := 24172,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24444,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24445, upper := 24449,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24686,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24687, upper := 24691,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 24986, upper := 25094,
        witness := RowWitness.topPrime 24979
      },
      {
        lower := 25095, upper := 25101,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25215, upper := 25304,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25305, upper := 25396,
        witness := RowWitness.topPrime 25303
      },
      {
        lower := 25947, upper := 26001,
        witness := RowWitness.topPrime 25943
      },
      {
        lower := 26011, upper := 26118,
        witness := RowWitness.topPrime 26003
      },
      {
        lower := 26119, upper := 26126,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26411, upper := 26479,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26526,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26623,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26735,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27011,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27495,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27848, upper := 27850,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27963,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28205,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28240,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28676,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28749, upper := 28844,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28845, upper := 28864,
        witness := RowWitness.topPrime 28843
      },
      {
        lower := 29584, upper := 29593,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29883,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30361,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30708,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30709, upper := 30718,
        witness := RowWitness.topPrime 30707
      },
      {
        lower := 30926, upper := 31014,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31308,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31309, upper := 31365,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31512,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31513, upper := 31538,
        witness := RowWitness.topPrime 31513
      },
      {
        lower := 31939, upper := 31942,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32054,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32883,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33734,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33735, upper := 33735,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34452,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34453, upper := 34506,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35246,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35301, upper := 35406,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35407, upper := 35416,
        witness := RowWitness.topPrime 35407
      },
      {
        lower := 36015, upper := 36027,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36612,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36613, upper := 36616,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36982, upper := 37094,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37095, upper := 37095,
        witness := RowWitness.topPrime 37087
      },
      {
        lower := 37210, upper := 37294,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37325,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37418,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37464,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37608,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37609, upper := 37615,
        witness := RowWitness.topPrime 37607
      },
      {
        lower := 37636, upper := 37668,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38406,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38422,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 39326, upper := 39438,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39439, upper := 39441,
        witness := RowWitness.topPrime 39439
      },
      {
        lower := 39605, upper := 39661,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40443,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40678, upper := 40740,
        witness := RowWitness.topPrime 40639
      },
      {
        lower := 40817, upper := 40919,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40931, upper := 40932,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41046,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41858,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43740, upper := 43836,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43837, upper := 43855,
        witness := RowWitness.topPrime 43801
      },
      {
        lower := 43940, upper := 44038,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44295,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45005,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 47526, upper := 47636,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47637, upper := 47639,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48096,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48097, upper := 48135,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48223, upper := 48229,
        witness := RowWitness.topPrime 48221
      },
      {
        lower := 48334, upper := 48338,
        witness := RowWitness.topPrime 48313
      },
      {
        lower := 48373, upper := 48449,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48668, upper := 48713,
        witness := RowWitness.topPrime 48661
      },
      {
        lower := 48734, upper := 48783,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 49152, upper := 49245,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50043,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50525,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50677,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51120,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53125, upper := 53160,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 55451, upper := 55556,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55557, upper := 55562,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 56250, upper := 56284,
        witness := RowWitness.topPrime 56249
      },
      {
        lower := 58619, upper := 58679,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59071,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59651,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62525,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63372,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63869, upper := 63978,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63979, upper := 63984,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65636,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65637, upper := 65651,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67343,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68754,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68755, upper := 68766,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68809,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68897,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69005,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71401,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 85264, upper := 85284,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85374,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85375, upper := 85379,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 85697, upper := 85798,
        witness := RowWitness.topPrime 85691
      },
      {
        lower := 89383, upper := 89488,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 91854, upper := 91924,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95142,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95143, upper := 95163,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 96026, upper := 96037,
        witness := RowWitness.topPrime 96017
      },
      {
        lower := 98415, upper := 98419,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102973, upper := 103000,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103088,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 106097, upper := 106202,
        witness := RowWitness.topPrime 106087
      },
      {
        lower := 106203, upper := 106205,
        witness := RowWitness.topPrime 106189
      },
      {
        lower := 118815, upper := 118916,
        witness := RowWitness.topPrime 118801
      },
      {
        lower := 118917, upper := 118925,
        witness := RowWitness.topPrime 118913
      },
      {
        lower := 122412, upper := 122432,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131841,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137842, upper := 137896,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137957,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 142814, upper := 142920,
        witness := RowWitness.topPrime 142811
      },
      {
        lower := 148877, upper := 148952,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148992,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 178766, upper := 178861,
        witness := RowWitness.topPrime 178757
      }
    ],
    layers := [
      {
        lower := 13340, upper := 26680, M := 27
      },
      {
        lower := 26680, upper := 53360, M := 22
      },
      {
        lower := 53360, upper := 106720, M := 18
      },
      {
        lower := 106720, upper := 213440, M := 15
      },
      {
        lower := 213440, upper := 426880, M := 12
      },
      {
        lower := 426880, upper := 853760, M := 10
      },
      {
        lower := 853760, upper := 1707520, M := 9
      },
      {
        lower := 1707520, upper := 3415040, M := 7
      },
      {
        lower := 3415040, upper := 6830080, M := 6
      },
      {
        lower := 6830080, upper := 13660160, M := 5
      },
      {
        lower := 13660160, upper := 27320320, M := 4
      },
      {
        lower := 27320320, upper := 54640640, M := 4
      },
      {
        lower := 54640640, upper := 109281280, M := 3
      },
      {
        lower := 109281280, upper := 218562560, M := 3
      },
      {
        lower := 218562560, upper := 437125120, M := 2
      },
      {
        lower := 437125120, upper := 874250240, M := 2
      },
      {
        lower := 874250240, upper := 1748500480, M := 2
      },
      {
        lower := 1748500480, upper := 3497000960, M := 1
      },
      {
        lower := 3497000960, upper := 6994001920, M := 1
      },
      {
        lower := 6994001920, upper := 10000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 117, r := 38, s := 81,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 236, upper := 349,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 350, upper := 465,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 466, upper := 579,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 580, upper := 693,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 694, upper := 807,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 808, upper := 913,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 914, upper := 1027,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 1028, upper := 1137,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1138, upper := 1245,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1246, upper := 1353,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1354, upper := 1443,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1444, upper := 1555,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1556, upper := 1669,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1670, upper := 1785,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1786, upper := 1899,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1900, upper := 2005,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2006, upper := 2119,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2120, upper := 2229,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2230, upper := 2337,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2338, upper := 2449,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2450, upper := 2563,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2564, upper := 2673,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2674, upper := 2787,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2788, upper := 2893,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2894, upper := 3003,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3004, upper := 3117,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3118, upper := 3225,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3226, upper := 3337,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3338, upper := 3447,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3448, upper := 3549,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3550, upper := 3663,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3664, upper := 3775,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3776, upper := 3885,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3886, upper := 3997,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3998, upper := 4105,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4106, upper := 4215,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4216, upper := 4327,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4328, upper := 4443,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4444, upper := 4557,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4558, upper := 4665,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4666, upper := 4779,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4780, upper := 4875,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4876, upper := 4987,
        witness := RowWitness.topPrime 4871
      },
      {
        lower := 4988, upper := 5103,
        witness := RowWitness.topPrime 4987
      },
      {
        lower := 5104, upper := 5217,
        witness := RowWitness.topPrime 5101
      },
      {
        lower := 5218, upper := 5325,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5326, upper := 5439,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5440, upper := 5553,
        witness := RowWitness.topPrime 5437
      },
      {
        lower := 5554, upper := 5647,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5648, upper := 5763,
        witness := RowWitness.topPrime 5647
      },
      {
        lower := 5764, upper := 5865,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5866, upper := 5977,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 5978, upper := 6069,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6070, upper := 6183,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6184, upper := 6289,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6290, upper := 6403,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6404, upper := 6513,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6514, upper := 6607,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6608, upper := 6723,
        witness := RowWitness.topPrime 6607
      },
      {
        lower := 6724, upper := 6835,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6836, upper := 6949,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6950, upper := 7065,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7066, upper := 7173,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7174, upper := 7275,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7276, upper := 7369,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7370, upper := 7485,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7486, upper := 7597,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7598, upper := 7707,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7708, upper := 7819,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7820, upper := 7933,
        witness := RowWitness.topPrime 7817
      },
      {
        lower := 7934, upper := 8049,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8050, upper := 8155,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8156, upper := 8263,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8264, upper := 8379,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8380, upper := 8493,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8494, upper := 8583,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8584, upper := 8697,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8698, upper := 8809,
        witness := RowWitness.topPrime 8693
      },
      {
        lower := 8810, upper := 8923,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8924, upper := 9039,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9040, upper := 9145,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9146, upper := 9253,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9254, upper := 9357,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9358, upper := 9465,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9466, upper := 9579,
        witness := RowWitness.topPrime 9463
      },
      {
        lower := 9580, upper := 9667,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9668, upper := 9777,
        witness := RowWitness.topPrime 9661
      },
      {
        lower := 9778, upper := 9885,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9886, upper := 9999,
        witness := RowWitness.topPrime 9883
      },
      {
        lower := 10000, upper := 10089,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10090, upper := 10195,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10196, upper := 10309,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10310, upper := 10419,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10420, upper := 10515,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10516, upper := 10629,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10630, upper := 10743,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10744, upper := 10855,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10856, upper := 10969,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 10970, upper := 11073,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11074, upper := 11187,
        witness := RowWitness.topPrime 11071
      },
      {
        lower := 11188, upper := 11293,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11294, upper := 11403,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11404, upper := 11515,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11516, upper := 11619,
        witness := RowWitness.topPrime 11503
      },
      {
        lower := 11620, upper := 11733,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11734, upper := 11847,
        witness := RowWitness.topPrime 11731
      },
      {
        lower := 11848, upper := 11955,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11956, upper := 12069,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12070, upper := 12165,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12166, upper := 12279,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12280, upper := 12393,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12394, upper := 12507,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12508, upper := 12619,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12620, upper := 12735,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12736, upper := 12837,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12838, upper := 12945,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12946, upper := 13057,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13058, upper := 13165,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13166, upper := 13279,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13280, upper := 13383,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13384, upper := 13497,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13498, upper := 13572,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13718, upper := 13827,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13828, upper := 13870,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 14336, upper := 14443,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14444, upper := 14522,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14739, upper := 14757,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14855,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14908,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15000, upper := 15000,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15059, upper := 15116,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15237,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15238, upper := 15245,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15376, upper := 15489,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15490, upper := 15492,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16089,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16090, upper := 16095,
        witness := RowWitness.topPrime 16087
      },
      {
        lower := 16337, upper := 16366,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16384, upper := 16497,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16498, upper := 16500,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16903,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16904, upper := 16936,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17415,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17416, upper := 17517,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17518, upper := 17521,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17672, upper := 17777,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18597,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18598, upper := 18618,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18721,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18723, upper := 18835,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18836, upper := 18866,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19323,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19324, upper := 19324,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19456, upper := 19459,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19663, upper := 19777,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19778, upper := 19779,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19965, upper := 19997,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20277,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20278, upper := 20297,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20455,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20518,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20649,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20650, upper := 20651,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20693,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21258,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21399,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21400, upper := 21412,
        witness := RowWitness.topPrime 21397
      },
      {
        lower := 21609, upper := 21620,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21866, upper := 21979,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21980, upper := 21991,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22209,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22210, upper := 22219,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22585,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22586, upper := 22588,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22644,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23552, upper := 23650,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 23763, upper := 23877,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23878, upper := 23878,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24010, upper := 24123,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24124, upper := 24141,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24445,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24446, upper := 24483,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24687,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24688, upper := 24692,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 24986, upper := 25095,
        witness := RowWitness.topPrime 24979
      },
      {
        lower := 25096, upper := 25102,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25215, upper := 25305,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25306, upper := 25397,
        witness := RowWitness.topPrime 25303
      },
      {
        lower := 25600, upper := 25654,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 26047, upper := 26127,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26508, upper := 26527,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26713,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26714, upper := 26740,
        witness := RowWitness.topPrime 26713
      },
      {
        lower := 26934, upper := 27012,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27496,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27848, upper := 27851,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27964,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28206,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28241,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28689,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28690, upper := 28693,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28827,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28828, upper := 28865,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29594,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29884,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30362,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 31015,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31309,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31310, upper := 31366,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31513,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31514, upper := 31539,
        witness := RowWitness.topPrime 31513
      },
      {
        lower := 31939, upper := 31943,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32055,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33620, upper := 33735,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33736, upper := 33736,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34453,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34454, upper := 34507,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34923,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34924, upper := 34926,
        witness := RowWitness.topPrime 34919
      },
      {
        lower := 35301, upper := 35407,
        witness := RowWitness.topPrime 35291
      },
      {
        lower := 35408, upper := 35417,
        witness := RowWitness.topPrime 35407
      },
      {
        lower := 36015, upper := 36028,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36613,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36614, upper := 36617,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36980, upper := 36980,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37303, upper := 37326,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37609,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37610, upper := 37616,
        witness := RowWitness.topPrime 37607
      },
      {
        lower := 37636, upper := 37669,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38407,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38423,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 38912, upper := 38945,
        witness := RowWitness.topPrime 38903
      },
      {
        lower := 39326, upper := 39439,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39440, upper := 39442,
        witness := RowWitness.topPrime 39439
      },
      {
        lower := 40401, upper := 40444,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40920,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40931, upper := 40933,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41047,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43803,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44217, upper := 44296,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45006,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45060,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45369,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47637,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47638, upper := 47640,
        witness := RowWitness.topPrime 47629
      },
      {
        lower := 48013, upper := 48097,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48098, upper := 48129,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48734, upper := 48849,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48850, upper := 48850,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 49152, upper := 49246,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50044,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50526,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50678,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51121,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53125, upper := 53161,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53290, upper := 53364,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 53371, upper := 53406,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55557,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55558, upper := 55563,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57361,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58680,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59072,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59652,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62526,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63368, upper := 63373,
        witness := RowWitness.topPrime 63367
      },
      {
        lower := 63869, upper := 63979,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63980, upper := 63985,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65637,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65638, upper := 65649,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67344,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68755,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68756, upper := 68767,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68810,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68898,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69006,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71402,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73283,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 73728, upper := 73811,
        witness := RowWitness.topPrime 73727
      },
      {
        lower := 85264, upper := 85285,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 89383, upper := 89489,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95143,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95144, upper := 95164,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 102973, upper := 103001,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103089,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 106097, upper := 106203,
        witness := RowWitness.topPrime 106087
      },
      {
        lower := 106204, upper := 106206,
        witness := RowWitness.topPrime 106189
      },
      {
        lower := 122412, upper := 122433,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 131769, upper := 131842,
        witness := RowWitness.topPrime 131759
      },
      {
        lower := 137917, upper := 137958,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 146410, upper := 146450,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148953,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148955, upper := 148993,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 178766, upper := 178862,
        witness := RowWitness.topPrime 178757
      },
      {
        lower := 327701, upper := 327796,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 13572, upper := 27144, M := 26
      },
      {
        lower := 27144, upper := 54288, M := 21
      },
      {
        lower := 54288, upper := 108576, M := 17
      },
      {
        lower := 108576, upper := 217152, M := 14
      },
      {
        lower := 217152, upper := 434304, M := 12
      },
      {
        lower := 434304, upper := 868608, M := 10
      },
      {
        lower := 868608, upper := 1737216, M := 8
      },
      {
        lower := 1737216, upper := 3474432, M := 7
      },
      {
        lower := 3474432, upper := 6948864, M := 5
      },
      {
        lower := 6948864, upper := 13897728, M := 4
      },
      {
        lower := 13897728, upper := 27795456, M := 4
      },
      {
        lower := 27795456, upper := 55590912, M := 3
      },
      {
        lower := 55590912, upper := 111181824, M := 3
      },
      {
        lower := 111181824, upper := 222363648, M := 2
      },
      {
        lower := 222363648, upper := 444727296, M := 2
      },
      {
        lower := 444727296, upper := 889454592, M := 2
      },
      {
        lower := 889454592, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 118, r := 39, s := 82,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 238, upper := 350,
        witness := RowWitness.topPrime 233
      },
      {
        lower := 351, upper := 466,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 467, upper := 584,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 585, upper := 694,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 695, upper := 808,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 809, upper := 926,
        witness := RowWitness.topPrime 809
      },
      {
        lower := 927, upper := 1036,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1037, upper := 1150,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1151, upper := 1268,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1269, upper := 1376,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1377, upper := 1490,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1491, upper := 1606,
        witness := RowWitness.topPrime 1489
      },
      {
        lower := 1607, upper := 1724,
        witness := RowWitness.topPrime 1607
      },
      {
        lower := 1725, upper := 1840,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1841, upper := 1948,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1949, upper := 2066,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2067, upper := 2180,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2181, upper := 2296,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2297, upper := 2414,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2415, upper := 2528,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2529, upper := 2638,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2639, upper := 2750,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2751, upper := 2866,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2867, upper := 2978,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2979, upper := 3088,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3089, upper := 3206,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3207, upper := 3320,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3321, upper := 3436,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3437, upper := 3550,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3551, upper := 3664,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3665, upper := 3776,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3777, upper := 3886,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3887, upper := 3998,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 3999, upper := 4106,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4107, upper := 4216,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4217, upper := 4334,
        witness := RowWitness.topPrime 4217
      },
      {
        lower := 4335, upper := 4444,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4445, upper := 4558,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4559, upper := 4666,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4667, upper := 4780,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4781, upper := 4876,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4877, upper := 4994,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 4995, upper := 5110,
        witness := RowWitness.topPrime 4993
      },
      {
        lower := 5111, upper := 5224,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5225, upper := 5326,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5327, upper := 5440,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5441, upper := 5558,
        witness := RowWitness.topPrime 5441
      },
      {
        lower := 5559, upper := 5674,
        witness := RowWitness.topPrime 5557
      },
      {
        lower := 5675, upper := 5786,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5787, upper := 5900,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5901, upper := 6014,
        witness := RowWitness.topPrime 5897
      },
      {
        lower := 6015, upper := 6128,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6129, upper := 6238,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6239, upper := 6346,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6347, upper := 6460,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6461, upper := 6568,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6569, upper := 6686,
        witness := RowWitness.topPrime 6569
      },
      {
        lower := 6687, upper := 6796,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6797, upper := 6910,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6911, upper := 7028,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7029, upper := 7144,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7145, upper := 7246,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7247, upper := 7364,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7365, upper := 7468,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7469, upper := 7576,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7577, upper := 7694,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7695, upper := 7808,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7809, upper := 7910,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7911, upper := 8024,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8025, upper := 8134,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8135, upper := 8240,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8241, upper := 8354,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8355, upper := 8470,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8471, upper := 8584,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8585, upper := 8698,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8699, upper := 8816,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8817, upper := 8924,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8925, upper := 9040,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9041, upper := 9158,
        witness := RowWitness.topPrime 9041
      },
      {
        lower := 9159, upper := 9274,
        witness := RowWitness.topPrime 9157
      },
      {
        lower := 9275, upper := 9374,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9375, upper := 9488,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9489, upper := 9596,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9597, upper := 9704,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9705, upper := 9814,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9815, upper := 9928,
        witness := RowWitness.topPrime 9811
      },
      {
        lower := 9929, upper := 10046,
        witness := RowWitness.topPrime 9929
      },
      {
        lower := 10047, upper := 10156,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10157, upper := 10268,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10269, upper := 10384,
        witness := RowWitness.topPrime 10267
      },
      {
        lower := 10385, upper := 10486,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10487, upper := 10604,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10605, upper := 10718,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10719, upper := 10828,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10829, upper := 10916,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10917, upper := 11026,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11027, upper := 11144,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11145, upper := 11248,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11249, upper := 11360,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11361, upper := 11470,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11471, upper := 11588,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11589, upper := 11704,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11705, upper := 11818,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11819, upper := 11930,
        witness := RowWitness.topPrime 11813
      },
      {
        lower := 11931, upper := 12044,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12045, upper := 12160,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12161, upper := 12278,
        witness := RowWitness.topPrime 12161
      },
      {
        lower := 12279, upper := 12394,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12395, upper := 12508,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12509, upper := 12620,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12621, upper := 12736,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12737, upper := 12838,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12839, upper := 12946,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12947, upper := 13058,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13059, upper := 13166,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13167, upper := 13280,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13281, upper := 13384,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13385, upper := 13498,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13499, upper := 13616,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13617, upper := 13730,
        witness := RowWitness.topPrime 13613
      },
      {
        lower := 13731, upper := 13846,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13847, upper := 13895,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14336, upper := 14444,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14445, upper := 14523,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14641, upper := 14697,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14739, upper := 14758,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14856,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14909,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15000, upper := 15001,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15059, upper := 15117,
        witness := RowWitness.topPrime 15053
      },
      {
        lower := 15123, upper := 15238,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15239, upper := 15246,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15376, upper := 15490,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15491, upper := 15496,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16090,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16091, upper := 16104,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16498,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16499, upper := 16501,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16904,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16905, upper := 16937,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17415,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17576, upper := 17613,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17776,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17777, upper := 17778,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18598,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18599, upper := 18619,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18734,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18735, upper := 18848,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18849, upper := 18867,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19324,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19325, upper := 19325,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19778,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19779, upper := 19800,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19890,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19998,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20278,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20279, upper := 20298,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20456,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20519,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20650,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20651, upper := 20652,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20694,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21259,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21400,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21401, upper := 21413,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21870, upper := 21980,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21981, upper := 22021,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22210,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22211, upper := 22220,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22586,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22587, upper := 22589,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22645,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23878,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23879, upper := 23879,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24010, upper := 24124,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24125, upper := 24154,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24167, upper := 24174,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24446,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24447, upper := 24451,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24688,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24689, upper := 24693,
        witness := RowWitness.topPrime 24683
      },
      {
        lower := 25000, upper := 25081,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25306,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25307, upper := 25398,
        witness := RowWitness.topPrime 25307
      },
      {
        lower := 26047, upper := 26128,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26481,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26528,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26625,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26737,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27013,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27497,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 28125, upper := 28207,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28242,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28690,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28691, upper := 28694,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28789,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28834,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29595,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29885,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30363,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30710,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30711, upper := 30720,
        witness := RowWitness.topPrime 30707
      },
      {
        lower := 30926, upper := 31016,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31310,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31311, upper := 31330,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31433, upper := 31514,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31515, upper := 31540,
        witness := RowWitness.topPrime 31513
      },
      {
        lower := 31939, upper := 31944,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32056,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32885,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33620, upper := 33736,
        witness := RowWitness.topPrime 33619
      },
      {
        lower := 33737, upper := 33737,
        witness := RowWitness.topPrime 33721
      },
      {
        lower := 34347, upper := 34454,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34455, upper := 34508,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35152, upper := 35248,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35404,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36029,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36614,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36615, upper := 36618,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 36980, upper := 36981,
        witness := RowWitness.topPrime 36979
      },
      {
        lower := 37210, upper := 37296,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37327,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37420,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37466,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37610,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37611, upper := 37617,
        witness := RowWitness.topPrime 37607
      },
      {
        lower := 37636, upper := 37670,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38416, upper := 38424,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 39326, upper := 39440,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39441, upper := 39443,
        witness := RowWitness.topPrime 39439
      },
      {
        lower := 39605, upper := 39663,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40445,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40921,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40931, upper := 40934,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41048,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43740, upper := 43838,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43839, upper := 43857,
        witness := RowWitness.topPrime 43801
      },
      {
        lower := 43940, upper := 44040,
        witness := RowWitness.topPrime 43933
      },
      {
        lower := 44217, upper := 44297,
        witness := RowWitness.topPrime 44207
      },
      {
        lower := 44944, upper := 45007,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 47526, upper := 47638,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47639, upper := 47641,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48098,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48099, upper := 48130,
        witness := RowWitness.topPrime 48091
      },
      {
        lower := 48778, upper := 48785,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49247,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50045,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50527,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 50653, upper := 50679,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51122,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53125, upper := 53162,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53371, upper := 53407,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55558,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55559, upper := 55564,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57362,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58681,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59073,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59653,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62527,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63980,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63981, upper := 63986,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65638,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65639, upper := 65653,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 67335, upper := 67345,
        witness := RowWitness.topPrime 67307
      },
      {
        lower := 68651, upper := 68756,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68757, upper := 68768,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68811,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68899,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69007,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71403,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 73205, upper := 73284,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85264, upper := 85286,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85293, upper := 85376,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85377, upper := 85381,
        witness := RowWitness.topPrime 85369
      },
      {
        lower := 89383, upper := 89490,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 91854, upper := 91926,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95144,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95145, upper := 95165,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 98415, upper := 98421,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102973, upper := 103002,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103090,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 122412, upper := 122434,
        witness := RowWitness.topPrime 122401
      },
      {
        lower := 137842, upper := 137898,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 137917, upper := 137959,
        witness := RowWitness.topPrime 137911
      },
      {
        lower := 146410, upper := 146451,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148877, upper := 148990,
        witness := RowWitness.topPrime 148873
      },
      {
        lower := 148991, upper := 148994,
        witness := RowWitness.topPrime 148991
      },
      {
        lower := 327701, upper := 327797,
        witness := RowWitness.topPrime 327689
      }
    ],
    layers := [
      {
        lower := 13806, upper := 27612, M := 24
      },
      {
        lower := 27612, upper := 55224, M := 20
      },
      {
        lower := 55224, upper := 110448, M := 16
      },
      {
        lower := 110448, upper := 220896, M := 13
      },
      {
        lower := 220896, upper := 441792, M := 11
      },
      {
        lower := 441792, upper := 883584, M := 9
      },
      {
        lower := 883584, upper := 1767168, M := 7
      },
      {
        lower := 1767168, upper := 3534336, M := 6
      },
      {
        lower := 3534336, upper := 7068672, M := 5
      },
      {
        lower := 7068672, upper := 14137344, M := 4
      },
      {
        lower := 14137344, upper := 28274688, M := 3
      },
      {
        lower := 28274688, upper := 56549376, M := 3
      },
      {
        lower := 56549376, upper := 113098752, M := 2
      },
      {
        lower := 113098752, upper := 226197504, M := 2
      },
      {
        lower := 226197504, upper := 452395008, M := 2
      },
      {
        lower := 452395008, upper := 904790016, M := 1
      },
      {
        lower := 904790016, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 119, r := 39, s := 83,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 240, upper := 357,
        witness := RowWitness.topPrime 239
      },
      {
        lower := 358, upper := 471,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 472, upper := 585,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 586, upper := 695,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 696, upper := 809,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 810, upper := 927,
        witness := RowWitness.topPrime 809
      },
      {
        lower := 928, upper := 1037,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1038, upper := 1151,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1152, upper := 1269,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1270, upper := 1377,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1378, upper := 1491,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1492, upper := 1607,
        witness := RowWitness.topPrime 1489
      },
      {
        lower := 1608, upper := 1725,
        witness := RowWitness.topPrime 1607
      },
      {
        lower := 1726, upper := 1841,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1842, upper := 1949,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1950, upper := 2067,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2068, upper := 2181,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2182, upper := 2297,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2298, upper := 2415,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2416, upper := 2529,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2530, upper := 2639,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2640, upper := 2751,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2752, upper := 2867,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2868, upper := 2979,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2980, upper := 3089,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3090, upper := 3207,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3208, upper := 3321,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3322, upper := 3437,
        witness := RowWitness.topPrime 3319
      },
      {
        lower := 3438, upper := 3551,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3552, upper := 3665,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3666, upper := 3777,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3778, upper := 3887,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3888, upper := 3999,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4000, upper := 4107,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4108, upper := 4217,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4218, upper := 4335,
        witness := RowWitness.topPrime 4217
      },
      {
        lower := 4336, upper := 4445,
        witness := RowWitness.topPrime 4327
      },
      {
        lower := 4446, upper := 4559,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4560, upper := 4667,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4668, upper := 4781,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4782, upper := 4877,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4878, upper := 4995,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 4996, upper := 5111,
        witness := RowWitness.topPrime 4993
      },
      {
        lower := 5112, upper := 5225,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5226, upper := 5327,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5328, upper := 5441,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5442, upper := 5559,
        witness := RowWitness.topPrime 5441
      },
      {
        lower := 5560, upper := 5675,
        witness := RowWitness.topPrime 5557
      },
      {
        lower := 5676, upper := 5787,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5788, upper := 5901,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5902, upper := 6015,
        witness := RowWitness.topPrime 5897
      },
      {
        lower := 6016, upper := 6129,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6130, upper := 6239,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6240, upper := 6347,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6348, upper := 6461,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6462, upper := 6569,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6570, upper := 6687,
        witness := RowWitness.topPrime 6569
      },
      {
        lower := 6688, upper := 6797,
        witness := RowWitness.topPrime 6679
      },
      {
        lower := 6798, upper := 6911,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6912, upper := 7029,
        witness := RowWitness.topPrime 6911
      },
      {
        lower := 7030, upper := 7145,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7146, upper := 7247,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7248, upper := 7365,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7366, upper := 7469,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7470, upper := 7577,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7578, upper := 7695,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7696, upper := 7809,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7810, upper := 7911,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7912, upper := 8025,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8026, upper := 8135,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8136, upper := 8241,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8242, upper := 8355,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8356, upper := 8471,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8472, upper := 8585,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8586, upper := 8699,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8700, upper := 8817,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8818, upper := 8925,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8926, upper := 9041,
        witness := RowWitness.topPrime 8923
      },
      {
        lower := 9042, upper := 9159,
        witness := RowWitness.topPrime 9041
      },
      {
        lower := 9160, upper := 9275,
        witness := RowWitness.topPrime 9157
      },
      {
        lower := 9276, upper := 9375,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9376, upper := 9489,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9490, upper := 9597,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9598, upper := 9705,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9706, upper := 9815,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9816, upper := 9929,
        witness := RowWitness.topPrime 9811
      },
      {
        lower := 9930, upper := 10047,
        witness := RowWitness.topPrime 9929
      },
      {
        lower := 10048, upper := 10157,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10158, upper := 10269,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10270, upper := 10385,
        witness := RowWitness.topPrime 10267
      },
      {
        lower := 10386, upper := 10487,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10488, upper := 10605,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10606, upper := 10719,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10720, upper := 10829,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10830, upper := 10917,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10918, upper := 11027,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11028, upper := 11145,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11146, upper := 11249,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11250, upper := 11361,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11362, upper := 11471,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11472, upper := 11589,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11590, upper := 11705,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11706, upper := 11819,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11820, upper := 11931,
        witness := RowWitness.topPrime 11813
      },
      {
        lower := 11932, upper := 12045,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12046, upper := 12161,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12162, upper := 12279,
        witness := RowWitness.topPrime 12161
      },
      {
        lower := 12280, upper := 12395,
        witness := RowWitness.topPrime 12277
      },
      {
        lower := 12396, upper := 12509,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12510, upper := 12621,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12622, upper := 12737,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12738, upper := 12839,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12840, upper := 12947,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12948, upper := 13059,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13060, upper := 13167,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13168, upper := 13281,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13282, upper := 13385,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13386, upper := 13499,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13500, upper := 13617,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13618, upper := 13731,
        witness := RowWitness.topPrime 13613
      },
      {
        lower := 13732, upper := 13847,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13848, upper := 13959,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13960, upper := 14041,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14336, upper := 14445,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14446, upper := 14493,
        witness := RowWitness.topPrime 14437
      },
      {
        lower := 14641, upper := 14698,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14884, upper := 14910,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15239,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15240, upper := 15247,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15360, upper := 15477,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15478, upper := 15497,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15979, upper := 16091,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16092, upper := 16105,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16499,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16500, upper := 16502,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16807, upper := 16905,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16906, upper := 16938,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17417,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17418, upper := 17526,
        witness := RowWitness.topPrime 17417
      },
      {
        lower := 17576, upper := 17614,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17777,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17778, upper := 17779,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18599,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18600, upper := 18620,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18735,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18736, upper := 18849,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18850, upper := 18868,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19220, upper := 19284,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19456, upper := 19461,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19683, upper := 19799,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 19800, upper := 19801,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19891,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 19999,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20279,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20280, upper := 20290,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20457,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20520,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20651,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20652, upper := 20653,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20695,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21260,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21401,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21402, upper := 21414,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21870, upper := 21981,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21982, upper := 22022,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22103, upper := 22211,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22212, upper := 22221,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22472, upper := 22587,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22588, upper := 22590,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22646,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23552, upper := 23652,
        witness := RowWitness.topPrime 23549
      },
      {
        lower := 23763, upper := 23879,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23880, upper := 23880,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24037, upper := 24147,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24148, upper := 24155,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24167, upper := 24175,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24447,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24448, upper := 24485,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24642, upper := 24694,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25000, upper := 25082,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25307,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25308, upper := 25399,
        witness := RowWitness.topPrime 25307
      },
      {
        lower := 26047, upper := 26129,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26620, upper := 26715,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26716, upper := 26742,
        witness := RowWitness.topPrime 26713
      },
      {
        lower := 26934, upper := 27014,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27498,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27848, upper := 27853,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27966,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28125, upper := 28208,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28243,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28691,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28692, upper := 28695,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28790,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29886,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30364,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30711,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30712, upper := 30736,
        witness := RowWitness.topPrime 30707
      },
      {
        lower := 30758, upper := 30838,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31017,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31323,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31329, upper := 31368,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31515,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31516, upper := 31541,
        witness := RowWitness.topPrime 31513
      },
      {
        lower := 31939, upper := 31945,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32057,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32886,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33732,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34455,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34456, upper := 34493,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 34816, upper := 34925,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34926, upper := 34928,
        witness := RowWitness.topPrime 34919
      },
      {
        lower := 35152, upper := 35249,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35344, upper := 35405,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36615,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36616, upper := 36619,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37210, upper := 37297,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37303, upper := 37328,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37421,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37467,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37611,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37612, upper := 37618,
        witness := RowWitness.topPrime 37607
      },
      {
        lower := 37636, upper := 37671,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38409,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39444,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 39605, upper := 39664,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40401, upper := 40446,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41049,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41772, upper := 41861,
        witness := RowWitness.topPrime 41771
      },
      {
        lower := 43750, upper := 43805,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 45008,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45062,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45371,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47639,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47640, upper := 47642,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48079,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48851,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48852, upper := 48852,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 50000, upper := 50046,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50653, upper := 50680,
        witness := RowWitness.topPrime 50651
      },
      {
        lower := 51076, upper := 51123,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53125, upper := 53163,
        witness := RowWitness.topPrime 53117
      },
      {
        lower := 53290, upper := 53366,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 53371, upper := 53408,
        witness := RowWitness.topPrime 53359
      },
      {
        lower := 55451, upper := 55559,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55560, upper := 55565,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57363,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58682,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62528,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63963,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65536, upper := 65639,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65640, upper := 65654,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 68651, upper := 68757,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68758, upper := 68769,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68921, upper := 69008,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71404,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71407, upper := 71407,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73205, upper := 73285,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89491,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 91854, upper := 91927,
        witness := RowWitness.topPrime 91841
      },
      {
        lower := 95052, upper := 95145,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95146, upper := 95166,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 98415, upper := 98422,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102973, upper := 103003,
        witness := RowWitness.topPrime 102967
      },
      {
        lower := 103041, upper := 103091,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137899,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146452,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148995,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 14042, upper := 28084, M := 23
      },
      {
        lower := 28084, upper := 56168, M := 19
      },
      {
        lower := 56168, upper := 112336, M := 15
      },
      {
        lower := 112336, upper := 224672, M := 12
      },
      {
        lower := 224672, upper := 449344, M := 10
      },
      {
        lower := 449344, upper := 898688, M := 8
      },
      {
        lower := 898688, upper := 1797376, M := 7
      },
      {
        lower := 1797376, upper := 3594752, M := 5
      },
      {
        lower := 3594752, upper := 7189504, M := 4
      },
      {
        lower := 7189504, upper := 14379008, M := 4
      },
      {
        lower := 14379008, upper := 28758016, M := 3
      },
      {
        lower := 28758016, upper := 57516032, M := 2
      },
      {
        lower := 57516032, upper := 115032064, M := 2
      },
      {
        lower := 115032064, upper := 230064128, M := 2
      },
      {
        lower := 230064128, upper := 460128256, M := 2
      },
      {
        lower := 460128256, upper := 920256512, M := 1
      },
      {
        lower := 920256512, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 120, r := 39, s := 84,
      n0Power10 := 9
    },
    goods := [
      {
        lower := 242, upper := 360,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 361, upper := 478,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 479, upper := 598,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 599, upper := 718,
        witness := RowWitness.topPrime 599
      },
      {
        lower := 719, upper := 838,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 839, upper := 958,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 959, upper := 1072,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1073, upper := 1188,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1189, upper := 1306,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1307, upper := 1426,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1427, upper := 1546,
        witness := RowWitness.topPrime 1427
      },
      {
        lower := 1547, upper := 1662,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1663, upper := 1782,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1783, upper := 1902,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1903, upper := 2020,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 2021, upper := 2136,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2137, upper := 2256,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2257, upper := 2370,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2371, upper := 2490,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2491, upper := 2596,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2597, upper := 2712,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2713, upper := 2832,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2833, upper := 2952,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2953, upper := 3072,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3073, upper := 3186,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3187, upper := 3306,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3307, upper := 3426,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3427, upper := 3532,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3533, upper := 3652,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3653, upper := 3762,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3763, upper := 3880,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3881, upper := 4000,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4001, upper := 4120,
        witness := RowWitness.topPrime 4001
      },
      {
        lower := 4121, upper := 4230,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4231, upper := 4350,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4351, upper := 4468,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4469, upper := 4582,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4583, upper := 4702,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4703, upper := 4822,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4823, upper := 4936,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4937, upper := 5056,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5057, upper := 5170,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5171, upper := 5290,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5291, upper := 5400,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5401, upper := 5518,
        witness := RowWitness.topPrime 5399
      },
      {
        lower := 5519, upper := 5638,
        witness := RowWitness.topPrime 5519
      },
      {
        lower := 5639, upper := 5758,
        witness := RowWitness.topPrime 5639
      },
      {
        lower := 5759, upper := 5868,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5869, upper := 5988,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5989, upper := 6106,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6107, upper := 6220,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6221, upper := 6340,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6341, upper := 6456,
        witness := RowWitness.topPrime 6337
      },
      {
        lower := 6457, upper := 6570,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6571, upper := 6690,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6691, upper := 6810,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6811, upper := 6922,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6923, upper := 7036,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7037, upper := 7146,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7147, upper := 7248,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7249, upper := 7366,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7367, upper := 7470,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7471, upper := 7578,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7579, upper := 7696,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7697, upper := 7810,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7811, upper := 7912,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7913, upper := 8026,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8027, upper := 8136,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8137, upper := 8242,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8243, upper := 8362,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8363, upper := 8482,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8483, upper := 8586,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8587, upper := 8700,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8701, upper := 8818,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8819, upper := 8938,
        witness := RowWitness.topPrime 8819
      },
      {
        lower := 8939, upper := 9052,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9053, upper := 9168,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9169, upper := 9280,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9281, upper := 9400,
        witness := RowWitness.topPrime 9281
      },
      {
        lower := 9401, upper := 9516,
        witness := RowWitness.topPrime 9397
      },
      {
        lower := 9517, upper := 9630,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9631, upper := 9750,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9751, upper := 9868,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9869, upper := 9978,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 9979, upper := 10092,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10093, upper := 10212,
        witness := RowWitness.topPrime 10093
      },
      {
        lower := 10213, upper := 10330,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10331, upper := 10450,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10451, upper := 10552,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10553, upper := 10650,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10651, upper := 10770,
        witness := RowWitness.topPrime 10651
      },
      {
        lower := 10771, upper := 10890,
        witness := RowWitness.topPrime 10771
      },
      {
        lower := 10891, upper := 11010,
        witness := RowWitness.topPrime 10891
      },
      {
        lower := 11011, upper := 11122,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11123, upper := 11238,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11239, upper := 11358,
        witness := RowWitness.topPrime 11239
      },
      {
        lower := 11359, upper := 11472,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11473, upper := 11590,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11591, upper := 11706,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11707, upper := 11820,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11821, upper := 11940,
        witness := RowWitness.topPrime 11821
      },
      {
        lower := 11941, upper := 12060,
        witness := RowWitness.topPrime 11941
      },
      {
        lower := 12061, upper := 12168,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12169, upper := 12282,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12283, upper := 12400,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12401, upper := 12520,
        witness := RowWitness.topPrime 12401
      },
      {
        lower := 12521, upper := 12636,
        witness := RowWitness.topPrime 12517
      },
      {
        lower := 12637, upper := 12756,
        witness := RowWitness.topPrime 12637
      },
      {
        lower := 12757, upper := 12876,
        witness := RowWitness.topPrime 12757
      },
      {
        lower := 12877, upper := 12972,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12973, upper := 13092,
        witness := RowWitness.topPrime 12973
      },
      {
        lower := 13093, upper := 13212,
        witness := RowWitness.topPrime 13093
      },
      {
        lower := 13213, upper := 13306,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13307, upper := 13416,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13417, upper := 13536,
        witness := RowWitness.topPrime 13417
      },
      {
        lower := 13537, upper := 13656,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13657, upper := 13768,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13769, upper := 13882,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13883, upper := 14002,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14003, upper := 14118,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14119, upper := 14226,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14227, upper := 14279,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14406, upper := 14520,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14521, upper := 14525,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14739, upper := 14760,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14792, upper := 14858,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14911,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15240,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15241, upper := 15248,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15376, upper := 15492,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15493, upper := 15498,
        witness := RowWitness.topPrime 15493
      },
      {
        lower := 15979, upper := 16092,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16093, upper := 16098,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16500,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16501, upper := 16503,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16906,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16907, upper := 16939,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17418,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17419, upper := 17422,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17661, upper := 17778,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17779, upper := 17780,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18491, upper := 18600,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18601, upper := 18621,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18736,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18737, upper := 18753,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18818, upper := 18842,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19326,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19327, upper := 19327,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19780,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19781, upper := 19802,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19892,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20000,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20280,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20281, upper := 20291,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20458,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20654,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20696,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21218, upper := 21261,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21296, upper := 21402,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21403, upper := 21415,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21904, upper := 22012,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22013, upper := 22023,
        witness := RowWitness.topPrime 22013
      },
      {
        lower := 22188, upper := 22209,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22445,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22564,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23880,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23881, upper := 23881,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24010, upper := 24126,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24127, upper := 24129,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24448,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24449, upper := 24486,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24642, upper := 24684,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25215, upper := 25308,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25309, upper := 25400,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26047, upper := 26130,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26411, upper := 26483,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26530,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26627,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26739,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27015,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27499,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27848, upper := 27854,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 27951, upper := 27967,
        witness := RowWitness.topPrime 27947
      },
      {
        lower := 28577, upper := 28680,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28812, upper := 28836,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29597,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29887,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 31018,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31312,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31313, upper := 31369,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31516,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31517, upper := 31542,
        witness := RowWitness.topPrime 31517
      },
      {
        lower := 32805, upper := 32887,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33733,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34456,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34457, upper := 34510,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35344, upper := 35406,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36031,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36616,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36617, upper := 36620,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37329,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37422,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37468,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37553, upper := 37565,
        witness := RowWitness.topPrime 37549
      },
      {
        lower := 37636, upper := 37672,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38410,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38426,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 39326, upper := 39442,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39443, upper := 39445,
        witness := RowWitness.topPrime 39443
      },
      {
        lower := 40401, upper := 40447,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40923,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40931, upper := 40936,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 44944, upper := 45009,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45369, upper := 45372,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47640,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47641, upper := 47643,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48080,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48852,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48853, upper := 48853,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 50421, upper := 50529,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51124,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55560,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55561, upper := 55566,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 55815, upper := 55815,
        witness := RowWitness.topPrime 55813
      },
      {
        lower := 58619, upper := 58683,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59075,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63869, upper := 63982,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63983, upper := 63988,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65640,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65641, upper := 65652,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 68651, upper := 68758,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68759, upper := 68770,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68782, upper := 68813,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 68901,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69009,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71405,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71407, upper := 71408,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73205, upper := 73286,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89492,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95146,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95147, upper := 95167,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 103041, upper := 103092,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 146410, upper := 146453,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148996,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 14280, upper := 28560, M := 22
      },
      {
        lower := 28560, upper := 57120, M := 17
      },
      {
        lower := 57120, upper := 114240, M := 14
      },
      {
        lower := 114240, upper := 228480, M := 11
      },
      {
        lower := 228480, upper := 456960, M := 9
      },
      {
        lower := 456960, upper := 913920, M := 7
      },
      {
        lower := 913920, upper := 1827840, M := 6
      },
      {
        lower := 1827840, upper := 3655680, M := 5
      },
      {
        lower := 3655680, upper := 7311360, M := 4
      },
      {
        lower := 7311360, upper := 14622720, M := 3
      },
      {
        lower := 14622720, upper := 29245440, M := 3
      },
      {
        lower := 29245440, upper := 58490880, M := 2
      },
      {
        lower := 58490880, upper := 116981760, M := 2
      },
      {
        lower := 116981760, upper := 233963520, M := 2
      },
      {
        lower := 233963520, upper := 467927040, M := 1
      },
      {
        lower := 467927040, upper := 935854080, M := 1
      },
      {
        lower := 935854080, upper := 1000000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 121, r := 40, s := 85,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 244, upper := 361,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 362, upper := 479,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 480, upper := 599,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 600, upper := 719,
        witness := RowWitness.topPrime 599
      },
      {
        lower := 720, upper := 839,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 840, upper := 959,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 960, upper := 1073,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1074, upper := 1189,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1190, upper := 1307,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1308, upper := 1427,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1428, upper := 1547,
        witness := RowWitness.topPrime 1427
      },
      {
        lower := 1548, upper := 1663,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1664, upper := 1783,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1784, upper := 1903,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1904, upper := 2021,
        witness := RowWitness.topPrime 1901
      },
      {
        lower := 2022, upper := 2137,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2138, upper := 2257,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2258, upper := 2371,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2372, upper := 2491,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2492, upper := 2597,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2598, upper := 2713,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2714, upper := 2833,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2834, upper := 2953,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2954, upper := 3073,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3074, upper := 3187,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3188, upper := 3307,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3308, upper := 3427,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3428, upper := 3533,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3534, upper := 3653,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3654, upper := 3763,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3764, upper := 3881,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3882, upper := 4001,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4002, upper := 4121,
        witness := RowWitness.topPrime 4001
      },
      {
        lower := 4122, upper := 4231,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4232, upper := 4351,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4352, upper := 4469,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4470, upper := 4583,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4584, upper := 4703,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4704, upper := 4823,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4824, upper := 4937,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4938, upper := 5057,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5058, upper := 5171,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5172, upper := 5291,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5292, upper := 5401,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5402, upper := 5519,
        witness := RowWitness.topPrime 5399
      },
      {
        lower := 5520, upper := 5639,
        witness := RowWitness.topPrime 5519
      },
      {
        lower := 5640, upper := 5759,
        witness := RowWitness.topPrime 5639
      },
      {
        lower := 5760, upper := 5869,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5870, upper := 5989,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5990, upper := 6107,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6108, upper := 6221,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6222, upper := 6341,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6342, upper := 6457,
        witness := RowWitness.topPrime 6337
      },
      {
        lower := 6458, upper := 6571,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6572, upper := 6691,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6692, upper := 6811,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6812, upper := 6923,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6924, upper := 7037,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7038, upper := 7147,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7148, upper := 7249,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7250, upper := 7367,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7368, upper := 7471,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7472, upper := 7579,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7580, upper := 7697,
        witness := RowWitness.topPrime 7577
      },
      {
        lower := 7698, upper := 7811,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7812, upper := 7913,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7914, upper := 8027,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8028, upper := 8137,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8138, upper := 8243,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8244, upper := 8363,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8364, upper := 8483,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8484, upper := 8587,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8588, upper := 8701,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8702, upper := 8819,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8820, upper := 8939,
        witness := RowWitness.topPrime 8819
      },
      {
        lower := 8940, upper := 9053,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9054, upper := 9169,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9170, upper := 9281,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9282, upper := 9401,
        witness := RowWitness.topPrime 9281
      },
      {
        lower := 9402, upper := 9517,
        witness := RowWitness.topPrime 9397
      },
      {
        lower := 9518, upper := 9631,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9632, upper := 9751,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9752, upper := 9869,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9870, upper := 9979,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 9980, upper := 10093,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10094, upper := 10213,
        witness := RowWitness.topPrime 10093
      },
      {
        lower := 10214, upper := 10331,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10332, upper := 10451,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10452, upper := 10553,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10554, upper := 10651,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10652, upper := 10771,
        witness := RowWitness.topPrime 10651
      },
      {
        lower := 10772, upper := 10891,
        witness := RowWitness.topPrime 10771
      },
      {
        lower := 10892, upper := 11011,
        witness := RowWitness.topPrime 10891
      },
      {
        lower := 11012, upper := 11123,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11124, upper := 11239,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11240, upper := 11359,
        witness := RowWitness.topPrime 11239
      },
      {
        lower := 11360, upper := 11473,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11474, upper := 11591,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11592, upper := 11707,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11708, upper := 11821,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11822, upper := 11941,
        witness := RowWitness.topPrime 11821
      },
      {
        lower := 11942, upper := 12061,
        witness := RowWitness.topPrime 11941
      },
      {
        lower := 12062, upper := 12169,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12170, upper := 12283,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12284, upper := 12401,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12402, upper := 12521,
        witness := RowWitness.topPrime 12401
      },
      {
        lower := 12522, upper := 12637,
        witness := RowWitness.topPrime 12517
      },
      {
        lower := 12638, upper := 12757,
        witness := RowWitness.topPrime 12637
      },
      {
        lower := 12758, upper := 12877,
        witness := RowWitness.topPrime 12757
      },
      {
        lower := 12878, upper := 12973,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12974, upper := 13093,
        witness := RowWitness.topPrime 12973
      },
      {
        lower := 13094, upper := 13213,
        witness := RowWitness.topPrime 13093
      },
      {
        lower := 13214, upper := 13307,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13308, upper := 13417,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13418, upper := 13537,
        witness := RowWitness.topPrime 13417
      },
      {
        lower := 13538, upper := 13657,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13658, upper := 13769,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13770, upper := 13883,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13884, upper := 14003,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14004, upper := 14119,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14120, upper := 14227,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14228, upper := 14341,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14342, upper := 14461,
        witness := RowWitness.topPrime 14341
      },
      {
        lower := 14462, upper := 14526,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14792, upper := 14859,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14884, upper := 14912,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15123, upper := 15241,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15242, upper := 15249,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15360, upper := 15479,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15480, upper := 15499,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15987, upper := 16093,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16094, upper := 16099,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16501,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16502, upper := 16504,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16907,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16908, upper := 16940,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17521,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17522, upper := 17528,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17576, upper := 17616,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17661, upper := 17779,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17780, upper := 17781,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18490, upper := 18601,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18602, upper := 18611,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18723, upper := 18725,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18869,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18870, upper := 18870,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19327,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19328, upper := 19328,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19781,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19782, upper := 19803,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19893,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20172, upper := 20281,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20282, upper := 20292,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20459,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20522,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20653,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20654, upper := 20655,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20697,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21338,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21609, upper := 21624,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21870, upper := 21983,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21984, upper := 22024,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22090, upper := 22090,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22210,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22446,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22589,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22590, upper := 22592,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23881,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23882, upper := 23882,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24037, upper := 24149,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24150, upper := 24157,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24167, upper := 24177,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24449,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24450, upper := 24487,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24691,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24692, upper := 24696,
        witness := RowWitness.topPrime 24691
      },
      {
        lower := 25000, upper := 25084,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25309,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25310, upper := 25335,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26047, upper := 26131,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26364, upper := 26364,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26484,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26531,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26628,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26744,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27016,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27500,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27556, upper := 27556,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27855,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28210,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28245,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28693,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28694, upper := 28697,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28831,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28832, upper := 28869,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29598,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29888,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30713,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30714, upper := 30738,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30840,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31019,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31313,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31314, upper := 31370,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31449,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32888,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33734,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34457,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34458, upper := 34511,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35344, upper := 35407,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36032,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36617,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36618, upper := 36621,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37330,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37566,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38411,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38416, upper := 38427,
        witness := RowWitness.topPrime 38393
      },
      {
        lower := 39326, upper := 39443,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39444, upper := 39446,
        witness := RowWitness.topPrime 39443
      },
      {
        lower := 40401, upper := 40448,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41051,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43807,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 45010,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45064,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45373,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47641,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47642, upper := 47644,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48081,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48853,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48854, upper := 48854,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 49152, upper := 49250,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50000, upper := 50048,
        witness := RowWitness.topPrime 49999
      },
      {
        lower := 50421, upper := 50530,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51125,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53368,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55561,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55562, upper := 55567,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 55815, upper := 55816,
        witness := RowWitness.topPrime 55813
      },
      {
        lower := 57344, upper := 57365,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 59049, upper := 59076,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62530,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63983,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63984, upper := 63989,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65641,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65642, upper := 65656,
        witness := RowWitness.topPrime 65633
      },
      {
        lower := 68651, upper := 68759,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68760, upper := 68771,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68921, upper := 69010,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71407,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71408, upper := 71409,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 89383, upper := 89493,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95147,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95148, upper := 95168,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 98415, upper := 98424,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103093,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137901,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 148997,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 14520, upper := 29040, M := 21
      },
      {
        lower := 29040, upper := 58080, M := 16
      },
      {
        lower := 58080, upper := 116160, M := 13
      },
      {
        lower := 116160, upper := 232320, M := 10
      },
      {
        lower := 232320, upper := 464640, M := 8
      },
      {
        lower := 464640, upper := 929280, M := 7
      },
      {
        lower := 929280, upper := 1858560, M := 5
      },
      {
        lower := 1858560, upper := 3717120, M := 4
      },
      {
        lower := 3717120, upper := 7434240, M := 4
      },
      {
        lower := 7434240, upper := 14868480, M := 3
      },
      {
        lower := 14868480, upper := 29736960, M := 2
      },
      {
        lower := 29736960, upper := 59473920, M := 2
      },
      {
        lower := 59473920, upper := 100000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 122, r := 40, s := 86,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 246, upper := 362,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 363, upper := 480,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 481, upper := 600,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 601, upper := 722,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 723, upper := 840,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 841, upper := 960,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 961, upper := 1074,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1075, upper := 1190,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1191, upper := 1308,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1309, upper := 1428,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1429, upper := 1550,
        witness := RowWitness.topPrime 1429
      },
      {
        lower := 1551, upper := 1670,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1671, upper := 1790,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1791, upper := 1910,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1911, upper := 2028,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2029, upper := 2150,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2151, upper := 2264,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2265, upper := 2372,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2373, upper := 2492,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2493, upper := 2598,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2599, upper := 2714,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2715, upper := 2834,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2835, upper := 2954,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2955, upper := 3074,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3075, upper := 3188,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3189, upper := 3308,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3309, upper := 3428,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3429, upper := 3534,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3535, upper := 3654,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3655, upper := 3764,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3765, upper := 3882,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3883, upper := 4002,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4003, upper := 4124,
        witness := RowWitness.topPrime 4003
      },
      {
        lower := 4125, upper := 4232,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4233, upper := 4352,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4353, upper := 4470,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4471, upper := 4584,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4585, upper := 4704,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4705, upper := 4824,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4825, upper := 4938,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4939, upper := 5058,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5059, upper := 5180,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5181, upper := 5300,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5301, upper := 5418,
        witness := RowWitness.topPrime 5297
      },
      {
        lower := 5419, upper := 5540,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5541, upper := 5652,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5653, upper := 5774,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5775, upper := 5870,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5871, upper := 5990,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5991, upper := 6108,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6109, upper := 6222,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6223, upper := 6342,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6343, upper := 6464,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6465, upper := 6572,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6573, upper := 6692,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6693, upper := 6812,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6813, upper := 6924,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6925, upper := 7038,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7039, upper := 7160,
        witness := RowWitness.topPrime 7039
      },
      {
        lower := 7161, upper := 7280,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7281, upper := 7374,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7375, upper := 7490,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7491, upper := 7610,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7611, upper := 7728,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7729, upper := 7848,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7849, upper := 7962,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7963, upper := 8084,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8085, upper := 8202,
        witness := RowWitness.topPrime 8081
      },
      {
        lower := 8203, upper := 8312,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8313, upper := 8432,
        witness := RowWitness.topPrime 8311
      },
      {
        lower := 8433, upper := 8552,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8553, upper := 8664,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8665, upper := 8784,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8785, upper := 8904,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8905, upper := 9014,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9015, upper := 9134,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9135, upper := 9254,
        witness := RowWitness.topPrime 9133
      },
      {
        lower := 9255, upper := 9362,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9363, upper := 9470,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9471, upper := 9588,
        witness := RowWitness.topPrime 9467
      },
      {
        lower := 9589, upper := 9708,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9709, upper := 9818,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9819, upper := 9938,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9939, upper := 10052,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10053, upper := 10160,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10161, upper := 10280,
        witness := RowWitness.topPrime 10159
      },
      {
        lower := 10281, upper := 10394,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10395, upper := 10512,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10513, upper := 10634,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10635, upper := 10752,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10753, upper := 10874,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10875, upper := 10988,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 10989, upper := 11108,
        witness := RowWitness.topPrime 10987
      },
      {
        lower := 11109, upper := 11214,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11215, upper := 11334,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11335, upper := 11450,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11451, upper := 11568,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11569, upper := 11672,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11673, upper := 11778,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11779, upper := 11900,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 11901, upper := 12018,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12019, upper := 12132,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12133, upper := 12240,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12241, upper := 12362,
        witness := RowWitness.topPrime 12241
      },
      {
        lower := 12363, upper := 12468,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12469, upper := 12578,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12579, upper := 12698,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12699, upper := 12818,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12819, upper := 12930,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12931, upper := 13044,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13045, upper := 13164,
        witness := RowWitness.topPrime 13043
      },
      {
        lower := 13165, upper := 13284,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13285, upper := 13388,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13389, upper := 13502,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13503, upper := 13620,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13621, upper := 13740,
        witness := RowWitness.topPrime 13619
      },
      {
        lower := 13741, upper := 13850,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13851, upper := 13962,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13963, upper := 14084,
        witness := RowWitness.topPrime 13963
      },
      {
        lower := 14085, upper := 14204,
        witness := RowWitness.topPrime 14083
      },
      {
        lower := 14205, upper := 14318,
        witness := RowWitness.topPrime 14197
      },
      {
        lower := 14319, upper := 14424,
        witness := RowWitness.topPrime 14303
      },
      {
        lower := 14425, upper := 14544,
        witness := RowWitness.topPrime 14423
      },
      {
        lower := 14545, upper := 14664,
        witness := RowWitness.topPrime 14543
      },
      {
        lower := 14665, upper := 14762,
        witness := RowWitness.topPrime 14657
      },
      {
        lower := 14792, upper := 14860,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 15123, upper := 15242,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15243, upper := 15250,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15376, upper := 15494,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15495, upper := 15500,
        witness := RowWitness.topPrime 15493
      },
      {
        lower := 15979, upper := 16094,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16095, upper := 16100,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16502,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16503, upper := 16505,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16908,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16909, upper := 16941,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17420,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17421, upper := 17424,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17496, upper := 17526,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17617,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17697,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18602,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18603, upper := 18611,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18723, upper := 18840,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18841, upper := 18871,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19328,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19329, upper := 19329,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19663, upper := 19782,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19783, upper := 19804,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19894,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20002,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20282,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20283, upper := 20285,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20460,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20523,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20654,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20655, upper := 20656,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20698,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21404,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21405, upper := 21417,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21870, upper := 21984,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21985, upper := 22025,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22090, upper := 22091,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22211,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22472, upper := 22566,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23882,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23883, upper := 23883,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24010, upper := 24128,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24129, upper := 24158,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24167, upper := 24178,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24450,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24451, upper := 24488,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24692,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24693, upper := 24697,
        witness := RowWitness.topPrime 24691
      },
      {
        lower := 25000, upper := 25085,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25310,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25311, upper := 25402,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26365,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26485,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26532,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26620, upper := 26629,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26741,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27017,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27436, upper := 27501,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27556, upper := 27557,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27856,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28211,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28246,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28694,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28695, upper := 28698,
        witness := RowWitness.topPrime 28687
      },
      {
        lower := 28717, upper := 28793,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28838,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 30618, upper := 30714,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30715, upper := 30724,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30926, upper := 31020,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31314,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31315, upper := 31371,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31450,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32889,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33735,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34458,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34459, upper := 34512,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36015, upper := 36033,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36618,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36619, upper := 36622,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37500, upper := 37567,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38412,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39444,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39445, upper := 39447,
        witness := RowWitness.topPrime 39443
      },
      {
        lower := 40401, upper := 40449,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 43750, upper := 43808,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45374,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47642,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47643, upper := 47645,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48082,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48854,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48855, upper := 48855,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 49152, upper := 49251,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50531,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51126,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55562,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55563, upper := 55568,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57366,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58685,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59077,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62531,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63966,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65657,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68760,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68761, upper := 68772,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68921, upper := 69011,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71408,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71409, upper := 71410,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73205, upper := 73288,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89494,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95148,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95149, upper := 95169,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 98415, upper := 98425,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137902,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146455,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 148998,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 14762, upper := 29524, M := 20
      },
      {
        lower := 29524, upper := 59048, M := 15
      },
      {
        lower := 59048, upper := 118096, M := 12
      },
      {
        lower := 118096, upper := 236192, M := 10
      },
      {
        lower := 236192, upper := 472384, M := 8
      },
      {
        lower := 472384, upper := 944768, M := 6
      },
      {
        lower := 944768, upper := 1889536, M := 5
      },
      {
        lower := 1889536, upper := 3779072, M := 4
      },
      {
        lower := 3779072, upper := 7558144, M := 3
      },
      {
        lower := 7558144, upper := 15116288, M := 3
      },
      {
        lower := 15116288, upper := 30232576, M := 2
      },
      {
        lower := 30232576, upper := 60465152, M := 2
      },
      {
        lower := 60465152, upper := 100000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 123, r := 40, s := 86,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 248, upper := 363,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 364, upper := 481,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 482, upper := 601,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 602, upper := 723,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 724, upper := 841,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 842, upper := 961,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 962, upper := 1075,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1076, upper := 1191,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1192, upper := 1309,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1310, upper := 1429,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1430, upper := 1551,
        witness := RowWitness.topPrime 1429
      },
      {
        lower := 1552, upper := 1671,
        witness := RowWitness.topPrime 1549
      },
      {
        lower := 1672, upper := 1791,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1792, upper := 1911,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1912, upper := 2029,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2030, upper := 2151,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2152, upper := 2265,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2266, upper := 2373,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2374, upper := 2493,
        witness := RowWitness.topPrime 2371
      },
      {
        lower := 2494, upper := 2599,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2600, upper := 2715,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2716, upper := 2835,
        witness := RowWitness.topPrime 2713
      },
      {
        lower := 2836, upper := 2955,
        witness := RowWitness.topPrime 2833
      },
      {
        lower := 2956, upper := 3075,
        witness := RowWitness.topPrime 2953
      },
      {
        lower := 3076, upper := 3189,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3190, upper := 3309,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3310, upper := 3429,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3430, upper := 3535,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3536, upper := 3655,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3656, upper := 3765,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3766, upper := 3883,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3884, upper := 4003,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4004, upper := 4125,
        witness := RowWitness.topPrime 4003
      },
      {
        lower := 4126, upper := 4233,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4234, upper := 4353,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4354, upper := 4471,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4472, upper := 4585,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4586, upper := 4705,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4706, upper := 4825,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4826, upper := 4939,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4940, upper := 5059,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5060, upper := 5181,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5182, upper := 5301,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5302, upper := 5419,
        witness := RowWitness.topPrime 5297
      },
      {
        lower := 5420, upper := 5541,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5542, upper := 5653,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5654, upper := 5775,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5776, upper := 5871,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5872, upper := 5991,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5992, upper := 6109,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6110, upper := 6223,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6224, upper := 6343,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6344, upper := 6465,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6466, upper := 6573,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6574, upper := 6693,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6694, upper := 6813,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6814, upper := 6925,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6926, upper := 7039,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7040, upper := 7161,
        witness := RowWitness.topPrime 7039
      },
      {
        lower := 7162, upper := 7281,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7282, upper := 7375,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7376, upper := 7491,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7492, upper := 7611,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7612, upper := 7729,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7730, upper := 7849,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7850, upper := 7963,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7964, upper := 8085,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8086, upper := 8203,
        witness := RowWitness.topPrime 8081
      },
      {
        lower := 8204, upper := 8313,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8314, upper := 8433,
        witness := RowWitness.topPrime 8311
      },
      {
        lower := 8434, upper := 8553,
        witness := RowWitness.topPrime 8431
      },
      {
        lower := 8554, upper := 8665,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8666, upper := 8785,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8786, upper := 8905,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8906, upper := 9015,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9016, upper := 9135,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9136, upper := 9255,
        witness := RowWitness.topPrime 9133
      },
      {
        lower := 9256, upper := 9363,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9364, upper := 9471,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9472, upper := 9589,
        witness := RowWitness.topPrime 9467
      },
      {
        lower := 9590, upper := 9709,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9710, upper := 9819,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9820, upper := 9939,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9940, upper := 10053,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10054, upper := 10161,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10162, upper := 10281,
        witness := RowWitness.topPrime 10159
      },
      {
        lower := 10282, upper := 10395,
        witness := RowWitness.topPrime 10273
      },
      {
        lower := 10396, upper := 10513,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10514, upper := 10635,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10636, upper := 10753,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10754, upper := 10875,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10876, upper := 10989,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 10990, upper := 11109,
        witness := RowWitness.topPrime 10987
      },
      {
        lower := 11110, upper := 11215,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11216, upper := 11335,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11336, upper := 11451,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11452, upper := 11569,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11570, upper := 11673,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11674, upper := 11779,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11780, upper := 11901,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 11902, upper := 12019,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12020, upper := 12133,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12134, upper := 12241,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12242, upper := 12363,
        witness := RowWitness.topPrime 12241
      },
      {
        lower := 12364, upper := 12469,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12470, upper := 12579,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12580, upper := 12699,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12700, upper := 12819,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12820, upper := 12931,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12932, upper := 13045,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13046, upper := 13165,
        witness := RowWitness.topPrime 13043
      },
      {
        lower := 13166, upper := 13285,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13286, upper := 13389,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13390, upper := 13503,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13504, upper := 13621,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13622, upper := 13741,
        witness := RowWitness.topPrime 13619
      },
      {
        lower := 13742, upper := 13851,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13852, upper := 13963,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13964, upper := 14085,
        witness := RowWitness.topPrime 13963
      },
      {
        lower := 14086, upper := 14205,
        witness := RowWitness.topPrime 14083
      },
      {
        lower := 14206, upper := 14319,
        witness := RowWitness.topPrime 14197
      },
      {
        lower := 14320, upper := 14425,
        witness := RowWitness.topPrime 14303
      },
      {
        lower := 14426, upper := 14545,
        witness := RowWitness.topPrime 14423
      },
      {
        lower := 14546, upper := 14665,
        witness := RowWitness.topPrime 14543
      },
      {
        lower := 14666, upper := 14779,
        witness := RowWitness.topPrime 14657
      },
      {
        lower := 14780, upper := 14901,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14902, upper := 15005,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15123, upper := 15243,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15244, upper := 15245,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15376, upper := 15495,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15496, upper := 15501,
        witness := RowWitness.topPrime 15493
      },
      {
        lower := 15979, upper := 16095,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16096, upper := 16101,
        witness := RowWitness.topPrime 16091
      },
      {
        lower := 16384, upper := 16503,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16504, upper := 16506,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16854, upper := 16929,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17303, upper := 17421,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17422, upper := 17527,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17672, upper := 17698,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18554,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18605, upper := 18612,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18739,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18740, upper := 18853,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18854, upper := 18872,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19288,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19783,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19784, upper := 19805,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19895,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20003,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20402, upper := 20461,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20524,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20655,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20656, upper := 20657,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20699,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21405,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21406, upper := 21418,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21904, upper := 22015,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22016, upper := 22026,
        witness := RowWitness.topPrime 22013
      },
      {
        lower := 22090, upper := 22092,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22212,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22448,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22591,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22592, upper := 22594,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22650,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23883,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23884, upper := 23884,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24010, upper := 24129,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24130, upper := 24132,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24334, upper := 24451,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24452, upper := 24489,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24693,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24694, upper := 24698,
        witness := RowWitness.topPrime 24691
      },
      {
        lower := 25000, upper := 25086,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25383,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25384, upper := 25403,
        witness := RowWitness.topPrime 25373
      },
      {
        lower := 26047, upper := 26133,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26364, upper := 26366,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26486,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26533,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26630,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26746,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27558,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27857,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28212,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28247,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28683,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28794,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28839,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29600,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29890,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30720, upper := 30725,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30842,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31021,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31315,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31316, upper := 31372,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31451,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32890,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33736,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34459,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34460, upper := 34513,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36015, upper := 36034,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36619,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36620, upper := 36623,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37332,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37568,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38413,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39445,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39446, upper := 39448,
        witness := RowWitness.topPrime 39443
      },
      {
        lower := 40401, upper := 40450,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41053,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43809,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45375,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47643,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47644, upper := 47646,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48083,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48855,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48856, upper := 48856,
        witness := RowWitness.topPrime 48847
      },
      {
        lower := 49152, upper := 49252,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50532,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51127,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 52215, upper := 52216,
        witness := RowWitness.topPrime 52201
      },
      {
        lower := 53290, upper := 53370,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55563,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55564, upper := 55569,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57344, upper := 57367,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58686,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59078,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62532,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63967,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 68651, upper := 68761,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68762, upper := 68773,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 71289, upper := 71409,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71410, upper := 71411,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73205, upper := 73289,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89495,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95149,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95150, upper := 95170,
        witness := RowWitness.topPrime 95143
      },
      {
        lower := 148955, upper := 148999,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 15006, upper := 30012, M := 19
      },
      {
        lower := 30012, upper := 60024, M := 15
      },
      {
        lower := 60024, upper := 120048, M := 12
      },
      {
        lower := 120048, upper := 240096, M := 9
      },
      {
        lower := 240096, upper := 480192, M := 7
      },
      {
        lower := 480192, upper := 960384, M := 6
      },
      {
        lower := 960384, upper := 1920768, M := 5
      },
      {
        lower := 1920768, upper := 3841536, M := 4
      },
      {
        lower := 3841536, upper := 7683072, M := 3
      },
      {
        lower := 7683072, upper := 15366144, M := 2
      },
      {
        lower := 15366144, upper := 30732288, M := 2
      },
      {
        lower := 30732288, upper := 61464576, M := 2
      },
      {
        lower := 61464576, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 124, r := 41, s := 87,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 250, upper := 364,
        witness := RowWitness.topPrime 241
      },
      {
        lower := 365, upper := 482,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 483, upper := 602,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 603, upper := 724,
        witness := RowWitness.topPrime 601
      },
      {
        lower := 725, upper := 842,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 843, upper := 962,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 963, upper := 1076,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1077, upper := 1192,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1193, upper := 1316,
        witness := RowWitness.topPrime 1193
      },
      {
        lower := 1317, upper := 1430,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1431, upper := 1552,
        witness := RowWitness.topPrime 1429
      },
      {
        lower := 1553, upper := 1676,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1677, upper := 1792,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1793, upper := 1912,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1913, upper := 2036,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2037, upper := 2152,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2153, upper := 2276,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2277, upper := 2396,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2397, upper := 2516,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2517, upper := 2626,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2627, upper := 2744,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2745, upper := 2864,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2865, upper := 2984,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2985, upper := 3094,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3095, upper := 3212,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3213, upper := 3332,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3333, upper := 3454,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3455, upper := 3572,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3573, upper := 3694,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3695, upper := 3814,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3815, upper := 3926,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3927, upper := 4046,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 4047, upper := 4150,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4151, upper := 4262,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4263, upper := 4384,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4385, upper := 4496,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4497, upper := 4616,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4617, upper := 4726,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4727, upper := 4846,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4847, upper := 4954,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4955, upper := 5074,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5075, upper := 5182,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5183, upper := 5302,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5303, upper := 5426,
        witness := RowWitness.topPrime 5303
      },
      {
        lower := 5427, upper := 5542,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5543, upper := 5654,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5655, upper := 5776,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5777, upper := 5872,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5873, upper := 5992,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5993, upper := 6110,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6111, upper := 6224,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6225, upper := 6344,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6345, upper := 6466,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6467, upper := 6574,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6575, upper := 6694,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6695, upper := 6814,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6815, upper := 6926,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6927, upper := 7040,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7041, upper := 7162,
        witness := RowWitness.topPrime 7039
      },
      {
        lower := 7163, upper := 7282,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7283, upper := 7406,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7407, upper := 7516,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7517, upper := 7640,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7641, upper := 7762,
        witness := RowWitness.topPrime 7639
      },
      {
        lower := 7763, upper := 7882,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7883, upper := 8006,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8007, upper := 8116,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8117, upper := 8240,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8241, upper := 8360,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8361, upper := 8476,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8477, upper := 8590,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8591, upper := 8704,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8705, upper := 8822,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8823, upper := 8944,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8945, upper := 9064,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9065, upper := 9182,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9183, upper := 9304,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9305, upper := 9416,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9417, upper := 9536,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9537, upper := 9656,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9657, upper := 9772,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9773, upper := 9892,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9893, upper := 10010,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 10011, upper := 10132,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10133, upper := 10256,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10257, upper := 10376,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10377, upper := 10492,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10493, upper := 10610,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10611, upper := 10730,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10731, upper := 10852,
        witness := RowWitness.topPrime 10729
      },
      {
        lower := 10853, upper := 10976,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 10977, upper := 11096,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11097, upper := 11216,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11217, upper := 11336,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11337, upper := 11452,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11453, upper := 11570,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11571, upper := 11674,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11675, upper := 11780,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11781, upper := 11902,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 11903, upper := 12026,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12027, upper := 12134,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12135, upper := 12242,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12243, upper := 12364,
        witness := RowWitness.topPrime 12241
      },
      {
        lower := 12365, upper := 12470,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12471, upper := 12580,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12581, upper := 12700,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12701, upper := 12820,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12821, upper := 12944,
        witness := RowWitness.topPrime 12821
      },
      {
        lower := 12945, upper := 13064,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13065, upper := 13186,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13187, upper := 13310,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13311, upper := 13432,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13433, upper := 13544,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13545, upper := 13660,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13661, upper := 13772,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13773, upper := 13886,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13887, upper := 14006,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14007, upper := 14122,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14123, upper := 14230,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14231, upper := 14344,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14345, upper := 14464,
        witness := RowWitness.topPrime 14341
      },
      {
        lower := 14465, upper := 14584,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14585, upper := 14686,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14687, upper := 14806,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14807, upper := 14920,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14921, upper := 15020,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15021, upper := 15140,
        witness := RowWitness.topPrime 15017
      },
      {
        lower := 15141, upper := 15252,
        witness := RowWitness.topPrime 15139
      },
      {
        lower := 15379, upper := 15432,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15463, upper := 15502,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15987, upper := 16095,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16428, upper := 16507,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16910,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16911, upper := 16933,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17426,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17528,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17619,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17699,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18491, upper := 18604,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18605, upper := 18614,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18740,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18741, upper := 18854,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18855, upper := 18873,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19208, upper := 19289,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19784,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19785, upper := 19806,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19896,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20004,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20284,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20285, upper := 20287,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20462,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20658,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20700,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21406,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21407, upper := 21419,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21986,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21987, upper := 22027,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22090, upper := 22093,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22213,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22449,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22568,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23884,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23885, upper := 23885,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24010, upper := 24130,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24131, upper := 24160,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24167, upper := 24180,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24452,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24453, upper := 24490,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24694,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24695, upper := 24699,
        witness := RowWitness.topPrime 24691
      },
      {
        lower := 25000, upper := 25087,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25312,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25313, upper := 25338,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26367,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26487,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26534,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27019,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27559,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27858,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28213,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28248,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28684,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28812, upper := 28840,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29601,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 30258, upper := 30369,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30716,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30717, upper := 30726,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30926, upper := 31022,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31316,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31317, upper := 31373,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31452,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32891,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33737,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34460,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34461, upper := 34514,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36620,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36621, upper := 36624,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37333,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37569,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38414,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39446,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39447, upper := 39449,
        witness := RowWitness.topPrime 39443
      },
      {
        lower := 40401, upper := 40451,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 43750, upper := 43810,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45376,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47644,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47645, upper := 47647,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48084,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48734, upper := 48856,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48857, upper := 48857,
        witness := RowWitness.topPrime 48857
      },
      {
        lower := 49152, upper := 49253,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50533,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51128,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55564,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55565, upper := 55570,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57245,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58687,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59079,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62533,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65659,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68651, upper := 68762,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68763, upper := 68774,
        witness := RowWitness.topPrime 68749
      },
      {
        lower := 68921, upper := 69013,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71410,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71411, upper := 71412,
        witness := RowWitness.topPrime 71411
      },
      {
        lower := 73205, upper := 73290,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 137842, upper := 137904,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 15252, upper := 30504, M := 18
      },
      {
        lower := 30504, upper := 61008, M := 14
      },
      {
        lower := 61008, upper := 122016, M := 11
      },
      {
        lower := 122016, upper := 244032, M := 8
      },
      {
        lower := 244032, upper := 488064, M := 7
      },
      {
        lower := 488064, upper := 976128, M := 5
      },
      {
        lower := 976128, upper := 1952256, M := 4
      },
      {
        lower := 1952256, upper := 3904512, M := 3
      },
      {
        lower := 3904512, upper := 7809024, M := 3
      },
      {
        lower := 7809024, upper := 15618048, M := 2
      },
      {
        lower := 15618048, upper := 31236096, M := 2
      },
      {
        lower := 31236096, upper := 62472192, M := 1
      },
      {
        lower := 62472192, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 125, r := 41, s := 88,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 252, upper := 375,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 376, upper := 497,
        witness := RowWitness.topPrime 373
      },
      {
        lower := 498, upper := 615,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 616, upper := 737,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 738, upper := 857,
        witness := RowWitness.topPrime 733
      },
      {
        lower := 858, upper := 981,
        witness := RowWitness.topPrime 857
      },
      {
        lower := 982, upper := 1101,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1102, upper := 1221,
        witness := RowWitness.topPrime 1097
      },
      {
        lower := 1222, upper := 1341,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1342, upper := 1451,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1452, upper := 1575,
        witness := RowWitness.topPrime 1451
      },
      {
        lower := 1576, upper := 1695,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1696, upper := 1817,
        witness := RowWitness.topPrime 1693
      },
      {
        lower := 1818, upper := 1935,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1936, upper := 2057,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2058, upper := 2177,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2178, upper := 2285,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2286, upper := 2405,
        witness := RowWitness.topPrime 2281
      },
      {
        lower := 2406, upper := 2523,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2524, upper := 2645,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2646, upper := 2757,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2758, upper := 2877,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2878, upper := 2985,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2986, upper := 3095,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3096, upper := 3213,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3214, upper := 3333,
        witness := RowWitness.topPrime 3209
      },
      {
        lower := 3334, upper := 3455,
        witness := RowWitness.topPrime 3331
      },
      {
        lower := 3456, upper := 3573,
        witness := RowWitness.topPrime 3449
      },
      {
        lower := 3574, upper := 3695,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3696, upper := 3815,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3816, upper := 3927,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3928, upper := 4047,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 4048, upper := 4151,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4152, upper := 4263,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4264, upper := 4385,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4386, upper := 4497,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4498, upper := 4617,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4618, upper := 4727,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4728, upper := 4847,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4848, upper := 4955,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4956, upper := 5075,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5076, upper := 5183,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5184, upper := 5303,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5304, upper := 5427,
        witness := RowWitness.topPrime 5303
      },
      {
        lower := 5428, upper := 5543,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5544, upper := 5655,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5656, upper := 5777,
        witness := RowWitness.topPrime 5653
      },
      {
        lower := 5778, upper := 5873,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5874, upper := 5993,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 5994, upper := 6111,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6112, upper := 6225,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6226, upper := 6345,
        witness := RowWitness.topPrime 6221
      },
      {
        lower := 6346, upper := 6467,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6468, upper := 6575,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6576, upper := 6695,
        witness := RowWitness.topPrime 6571
      },
      {
        lower := 6696, upper := 6815,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6816, upper := 6927,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6928, upper := 7041,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7042, upper := 7163,
        witness := RowWitness.topPrime 7039
      },
      {
        lower := 7164, upper := 7283,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7284, upper := 7407,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7408, upper := 7517,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7518, upper := 7641,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7642, upper := 7763,
        witness := RowWitness.topPrime 7639
      },
      {
        lower := 7764, upper := 7883,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7884, upper := 8007,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8008, upper := 8117,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8118, upper := 8241,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8242, upper := 8361,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8362, upper := 8477,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8478, upper := 8591,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8592, upper := 8705,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8706, upper := 8823,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8824, upper := 8945,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8946, upper := 9065,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9066, upper := 9183,
        witness := RowWitness.topPrime 9059
      },
      {
        lower := 9184, upper := 9305,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9306, upper := 9417,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9418, upper := 9537,
        witness := RowWitness.topPrime 9413
      },
      {
        lower := 9538, upper := 9657,
        witness := RowWitness.topPrime 9533
      },
      {
        lower := 9658, upper := 9773,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9774, upper := 9893,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9894, upper := 10011,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 10012, upper := 10133,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10134, upper := 10257,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10258, upper := 10377,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10378, upper := 10493,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10494, upper := 10611,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10612, upper := 10731,
        witness := RowWitness.topPrime 10607
      },
      {
        lower := 10732, upper := 10853,
        witness := RowWitness.topPrime 10729
      },
      {
        lower := 10854, upper := 10977,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 10978, upper := 11097,
        witness := RowWitness.topPrime 10973
      },
      {
        lower := 11098, upper := 11217,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11218, upper := 11337,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11338, upper := 11453,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11454, upper := 11571,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11572, upper := 11675,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11676, upper := 11781,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11782, upper := 11903,
        witness := RowWitness.topPrime 11779
      },
      {
        lower := 11904, upper := 12027,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12028, upper := 12135,
        witness := RowWitness.topPrime 12011
      },
      {
        lower := 12136, upper := 12243,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12244, upper := 12365,
        witness := RowWitness.topPrime 12241
      },
      {
        lower := 12366, upper := 12471,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12472, upper := 12581,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12582, upper := 12701,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12702, upper := 12821,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12822, upper := 12945,
        witness := RowWitness.topPrime 12821
      },
      {
        lower := 12946, upper := 13065,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13066, upper := 13187,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13188, upper := 13311,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13312, upper := 13433,
        witness := RowWitness.topPrime 13309
      },
      {
        lower := 13434, upper := 13545,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13546, upper := 13661,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13662, upper := 13773,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13774, upper := 13887,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13888, upper := 14007,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14008, upper := 14123,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14124, upper := 14231,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14232, upper := 14345,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14346, upper := 14465,
        witness := RowWitness.topPrime 14341
      },
      {
        lower := 14466, upper := 14585,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14586, upper := 14687,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14688, upper := 14807,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14808, upper := 14921,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14922, upper := 15021,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15022, upper := 15141,
        witness := RowWitness.topPrime 15017
      },
      {
        lower := 15142, upper := 15263,
        witness := RowWitness.topPrime 15139
      },
      {
        lower := 15264, upper := 15387,
        witness := RowWitness.topPrime 15263
      },
      {
        lower := 15388, upper := 15503,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15987, upper := 16096,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16384, upper := 16505,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16506, upper := 16508,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16911,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16912, upper := 16934,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17525,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17526, upper := 17532,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17576, upper := 17620,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17700,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 18490, upper := 18605,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18606, upper := 18615,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18741,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18742, upper := 18758,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18818, upper := 18847,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19290,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19785,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19786, upper := 19807,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19897,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20005,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20285,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20286, upper := 20288,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20463,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20526,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20657,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20658, upper := 20659,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20701,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21407,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21408, upper := 21420,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21987,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21988, upper := 22028,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22090, upper := 22094,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22214,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22450,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22593,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22594, upper := 22596,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22652,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23885,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23886, upper := 23886,
        witness := RowWitness.topPrime 23879
      },
      {
        lower := 24037, upper := 24153,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24154, upper := 24161,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24167, upper := 24181,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24453,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24454, upper := 24491,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24689,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25313,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25314, upper := 25339,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26368,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26488,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26535,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26632,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26748,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27020,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27560,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27859,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28577, upper := 28697,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28698, upper := 28701,
        witness := RowWitness.topPrime 28697
      },
      {
        lower := 28717, upper := 28796,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28841,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29602,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29892,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30717,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30718, upper := 30742,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30844,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 30999,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31317,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31318, upper := 31337,
        witness := RowWitness.topPrime 31307
      },
      {
        lower := 31423, upper := 31453,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32892,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33708, upper := 33738,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34461,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34462, upper := 34515,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36621,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36622, upper := 36625,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37334,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 38307, upper := 38415,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39428,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40452,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41055,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45377,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47645,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47646, upper := 47648,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48085,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48792,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49254,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50534,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51129,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53372,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55565,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55566, upper := 55571,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57246,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57369,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58688,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59080,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 65610, upper := 65660,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68694, upper := 68714,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 68921, upper := 69014,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71411,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71412, upper := 71413,
        witness := RowWitness.topPrime 71411
      },
      {
        lower := 73205, upper := 73291,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89497,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98428,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137905,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149001,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 15500, upper := 31000, M := 17
      },
      {
        lower := 31000, upper := 62000, M := 13
      },
      {
        lower := 62000, upper := 124000, M := 10
      },
      {
        lower := 124000, upper := 248000, M := 8
      },
      {
        lower := 248000, upper := 496000, M := 6
      },
      {
        lower := 496000, upper := 992000, M := 5
      },
      {
        lower := 992000, upper := 1984000, M := 4
      },
      {
        lower := 1984000, upper := 3968000, M := 3
      },
      {
        lower := 3968000, upper := 7936000, M := 2
      },
      {
        lower := 7936000, upper := 15872000, M := 2
      },
      {
        lower := 15872000, upper := 31744000, M := 2
      },
      {
        lower := 31744000, upper := 63488000, M := 1
      },
      {
        lower := 63488000, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 126, r := 41, s := 89,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 254, upper := 376,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 377, upper := 498,
        witness := RowWitness.topPrime 373
      },
      {
        lower := 499, upper := 624,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 625, upper := 744,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 745, upper := 868,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 869, upper := 988,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 989, upper := 1108,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1109, upper := 1234,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1235, upper := 1356,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1357, upper := 1452,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1453, upper := 1578,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1579, upper := 1704,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1705, upper := 1824,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1825, upper := 1948,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1949, upper := 2074,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2075, upper := 2194,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2195, upper := 2304,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2305, upper := 2422,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2423, upper := 2548,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2549, upper := 2674,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2675, upper := 2796,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2797, upper := 2922,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2923, upper := 3042,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3043, upper := 3166,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3167, upper := 3292,
        witness := RowWitness.topPrime 3167
      },
      {
        lower := 3293, upper := 3396,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3397, upper := 3516,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3517, upper := 3642,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3643, upper := 3768,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3769, upper := 3894,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3895, upper := 4014,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4015, upper := 4138,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4139, upper := 4264,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4265, upper := 4386,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4387, upper := 4498,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4499, upper := 4618,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4619, upper := 4728,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4729, upper := 4854,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4855, upper := 4956,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4957, upper := 5082,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5083, upper := 5206,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5207, upper := 5322,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5323, upper := 5448,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5449, upper := 5574,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5575, upper := 5698,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5699, upper := 5818,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5819, upper := 5938,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5939, upper := 6064,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6065, upper := 6178,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6179, upper := 6298,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6299, upper := 6424,
        witness := RowWitness.topPrime 6299
      },
      {
        lower := 6425, upper := 6546,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6547, upper := 6672,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6673, upper := 6798,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6799, upper := 6918,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6919, upper := 7042,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7043, upper := 7168,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7169, upper := 7284,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7285, upper := 7408,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7409, upper := 7518,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7519, upper := 7642,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7643, upper := 7768,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7769, upper := 7884,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7885, upper := 8008,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8009, upper := 8134,
        witness := RowWitness.topPrime 8009
      },
      {
        lower := 8135, upper := 8248,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8249, upper := 8368,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8369, upper := 8494,
        witness := RowWitness.topPrime 8369
      },
      {
        lower := 8495, upper := 8592,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8593, upper := 8706,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8707, upper := 8832,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8833, upper := 8956,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8957, upper := 9076,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9077, upper := 9192,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9193, upper := 9312,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9313, upper := 9436,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9437, upper := 9562,
        witness := RowWitness.topPrime 9437
      },
      {
        lower := 9563, upper := 9676,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9677, upper := 9802,
        witness := RowWitness.topPrime 9677
      },
      {
        lower := 9803, upper := 9928,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9929, upper := 10054,
        witness := RowWitness.topPrime 9929
      },
      {
        lower := 10055, upper := 10164,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10165, upper := 10288,
        witness := RowWitness.topPrime 10163
      },
      {
        lower := 10289, upper := 10414,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10415, upper := 10524,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10525, upper := 10638,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10639, upper := 10764,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10765, upper := 10878,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10879, upper := 10992,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 10993, upper := 11118,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11119, upper := 11244,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11245, upper := 11368,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11369, upper := 11494,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11495, upper := 11616,
        witness := RowWitness.topPrime 11491
      },
      {
        lower := 11617, upper := 11742,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11743, upper := 11868,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11869, upper := 11992,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11993, upper := 12112,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12113, upper := 12238,
        witness := RowWitness.topPrime 12113
      },
      {
        lower := 12239, upper := 12364,
        witness := RowWitness.topPrime 12239
      },
      {
        lower := 12365, upper := 12472,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12473, upper := 12598,
        witness := RowWitness.topPrime 12473
      },
      {
        lower := 12599, upper := 12714,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12715, upper := 12838,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12839, upper := 12954,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12955, upper := 13078,
        witness := RowWitness.topPrime 12953
      },
      {
        lower := 13079, upper := 13188,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13189, upper := 13312,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13313, upper := 13438,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13439, upper := 13546,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13547, upper := 13662,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13663, upper := 13774,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13775, upper := 13888,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13889, upper := 14008,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14009, upper := 14134,
        witness := RowWitness.topPrime 14009
      },
      {
        lower := 14135, upper := 14232,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14233, upper := 14346,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14347, upper := 14472,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14473, upper := 14586,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14587, upper := 14688,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14689, upper := 14808,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14809, upper := 14922,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14923, upper := 15048,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15049, upper := 15156,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15157, upper := 15274,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15275, upper := 15396,
        witness := RowWitness.topPrime 15271
      },
      {
        lower := 15397, upper := 15516,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15517, upper := 15636,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15637, upper := 15749,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15987, upper := 16097,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16428, upper := 16509,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16912,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16913, upper := 16935,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17428,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17672, upper := 17701,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17797,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18491, upper := 18606,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18607, upper := 18616,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18742,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18743, upper := 18868,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18869, upper := 18875,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19663, upper := 19786,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19787, upper := 19808,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19898,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20006,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20286,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20287, upper := 20289,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20464,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20527,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20658,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20659, upper := 20660,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20702,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21408,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21409, upper := 21421,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21875, upper := 21996,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 21997, upper := 22029,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22095,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22215,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22451,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22570,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23886,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23887, upper := 23887,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24334, upper := 24454,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24455, upper := 24492,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24690,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25089,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25314,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25315, upper := 25340,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26934, upper := 27021,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27561,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27860,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28215,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28250,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28686,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28797,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29584, upper := 29603,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29893,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 31024,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31374,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31375, upper := 31375,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31454,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 34347, upper := 34462,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34463, upper := 34516,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 37303, upper := 37335,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37571,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38416,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40453,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41056,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47646,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47647, upper := 47649,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48086,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48793,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49255,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51130,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55566,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55567, upper := 55572,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57247,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58689,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59081,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62535,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 71289, upper := 71412,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71413, upper := 71414,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73292,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89498,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 148955, upper := 149002,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 15750, upper := 31500, M := 16
      },
      {
        lower := 31500, upper := 63000, M := 12
      },
      {
        lower := 63000, upper := 126000, M := 9
      },
      {
        lower := 126000, upper := 252000, M := 7
      },
      {
        lower := 252000, upper := 504000, M := 6
      },
      {
        lower := 504000, upper := 1008000, M := 4
      },
      {
        lower := 1008000, upper := 2016000, M := 3
      },
      {
        lower := 2016000, upper := 4032000, M := 3
      },
      {
        lower := 4032000, upper := 8064000, M := 2
      },
      {
        lower := 8064000, upper := 16128000, M := 2
      },
      {
        lower := 16128000, upper := 32256000, M := 1
      },
      {
        lower := 32256000, upper := 64512000, M := 1
      },
      {
        lower := 64512000, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 127, r := 42, s := 90,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 256, upper := 377,
        witness := RowWitness.topPrime 251
      },
      {
        lower := 378, upper := 499,
        witness := RowWitness.topPrime 373
      },
      {
        lower := 500, upper := 625,
        witness := RowWitness.topPrime 499
      },
      {
        lower := 626, upper := 745,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 746, upper := 869,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 870, upper := 989,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 990, upper := 1109,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1110, upper := 1235,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1236, upper := 1357,
        witness := RowWitness.topPrime 1231
      },
      {
        lower := 1358, upper := 1453,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1454, upper := 1579,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1580, upper := 1705,
        witness := RowWitness.topPrime 1579
      },
      {
        lower := 1706, upper := 1825,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1826, upper := 1949,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1950, upper := 2075,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2076, upper := 2195,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2196, upper := 2305,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2306, upper := 2423,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2424, upper := 2549,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2550, upper := 2675,
        witness := RowWitness.topPrime 2549
      },
      {
        lower := 2676, upper := 2797,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2798, upper := 2923,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2924, upper := 3043,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3044, upper := 3167,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3168, upper := 3293,
        witness := RowWitness.topPrime 3167
      },
      {
        lower := 3294, upper := 3397,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3398, upper := 3517,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3518, upper := 3643,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3644, upper := 3769,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3770, upper := 3895,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3896, upper := 4015,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4016, upper := 4139,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4140, upper := 4265,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4266, upper := 4387,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4388, upper := 4499,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4500, upper := 4619,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4620, upper := 4729,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4730, upper := 4855,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4856, upper := 4957,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4958, upper := 5083,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5084, upper := 5207,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5208, upper := 5323,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5324, upper := 5449,
        witness := RowWitness.topPrime 5323
      },
      {
        lower := 5450, upper := 5575,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5576, upper := 5699,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5700, upper := 5819,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5820, upper := 5939,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5940, upper := 6065,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6066, upper := 6179,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6180, upper := 6299,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6300, upper := 6425,
        witness := RowWitness.topPrime 6299
      },
      {
        lower := 6426, upper := 6547,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6548, upper := 6673,
        witness := RowWitness.topPrime 6547
      },
      {
        lower := 6674, upper := 6799,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6800, upper := 6919,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6920, upper := 7043,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7044, upper := 7169,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7170, upper := 7285,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7286, upper := 7409,
        witness := RowWitness.topPrime 7283
      },
      {
        lower := 7410, upper := 7519,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7520, upper := 7643,
        witness := RowWitness.topPrime 7517
      },
      {
        lower := 7644, upper := 7769,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7770, upper := 7885,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7886, upper := 8009,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8010, upper := 8135,
        witness := RowWitness.topPrime 8009
      },
      {
        lower := 8136, upper := 8249,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8250, upper := 8369,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8370, upper := 8495,
        witness := RowWitness.topPrime 8369
      },
      {
        lower := 8496, upper := 8593,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8594, upper := 8707,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8708, upper := 8833,
        witness := RowWitness.topPrime 8707
      },
      {
        lower := 8834, upper := 8957,
        witness := RowWitness.topPrime 8831
      },
      {
        lower := 8958, upper := 9077,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9078, upper := 9193,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9194, upper := 9313,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9314, upper := 9437,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9438, upper := 9563,
        witness := RowWitness.topPrime 9437
      },
      {
        lower := 9564, upper := 9677,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9678, upper := 9803,
        witness := RowWitness.topPrime 9677
      },
      {
        lower := 9804, upper := 9929,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9930, upper := 10055,
        witness := RowWitness.topPrime 9929
      },
      {
        lower := 10056, upper := 10165,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10166, upper := 10289,
        witness := RowWitness.topPrime 10163
      },
      {
        lower := 10290, upper := 10415,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10416, upper := 10525,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10526, upper := 10639,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10640, upper := 10765,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10766, upper := 10879,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10880, upper := 10993,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 10994, upper := 11119,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11120, upper := 11245,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11246, upper := 11369,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11370, upper := 11495,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11496, upper := 11617,
        witness := RowWitness.topPrime 11491
      },
      {
        lower := 11618, upper := 11743,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11744, upper := 11869,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11870, upper := 11993,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 11994, upper := 12113,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12114, upper := 12239,
        witness := RowWitness.topPrime 12113
      },
      {
        lower := 12240, upper := 12365,
        witness := RowWitness.topPrime 12239
      },
      {
        lower := 12366, upper := 12473,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12474, upper := 12599,
        witness := RowWitness.topPrime 12473
      },
      {
        lower := 12600, upper := 12715,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12716, upper := 12839,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12840, upper := 12955,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12956, upper := 13079,
        witness := RowWitness.topPrime 12953
      },
      {
        lower := 13080, upper := 13189,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13190, upper := 13313,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13314, upper := 13439,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13440, upper := 13547,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13548, upper := 13663,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13664, upper := 13775,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13776, upper := 13889,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13890, upper := 14009,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14010, upper := 14135,
        witness := RowWitness.topPrime 14009
      },
      {
        lower := 14136, upper := 14233,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14234, upper := 14347,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14348, upper := 14473,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14474, upper := 14587,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14588, upper := 14689,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14690, upper := 14809,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14810, upper := 14923,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14924, upper := 15049,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15050, upper := 15157,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15158, upper := 15275,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15276, upper := 15397,
        witness := RowWitness.topPrime 15271
      },
      {
        lower := 15398, upper := 15517,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15518, upper := 15637,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15638, upper := 15755,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15756, upper := 15875,
        witness := RowWitness.topPrime 15749
      },
      {
        lower := 15876, upper := 15985,
        witness := RowWitness.topPrime 15859
      },
      {
        lower := 15986, upper := 16098,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16428, upper := 16510,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16913,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16914, upper := 16936,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17429,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17531,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17622,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17702,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17798,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18490, upper := 18607,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18608, upper := 18617,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18743,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18744, upper := 18869,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18870, upper := 18876,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19292,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19787,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19788, upper := 19809,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19899,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20007,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20287,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20288, upper := 20290,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20465,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20528,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20659,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20660, upper := 20661,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20703,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21344,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21989,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21990, upper := 22001,
        witness := RowWitness.topPrime 21977
      },
      {
        lower := 22090, upper := 22096,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22216,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22452,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22595,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22596, upper := 22598,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23887,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23888, upper := 23888,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24037, upper := 24155,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24156, upper := 24163,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24167, upper := 24183,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24455,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24456, upper := 24493,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24691,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25090,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25315,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25316, upper := 25341,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26370,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26490,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26537,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26634,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26750,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27562,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27861,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28216,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28251,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28687,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28798,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28843,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29894,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30719,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30720, upper := 30744,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30846,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31025,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31319,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31320, upper := 31376,
        witness := RowWitness.topPrime 31319
      },
      {
        lower := 31423, upper := 31455,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32894,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33615,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 34347, upper := 34463,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34464, upper := 34517,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 37303, upper := 37336,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 38307, upper := 38417,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39430,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40454,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40960, upper := 41057,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47647,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47648, upper := 47650,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48087,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48794,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49256,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50536,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51131,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55567,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55568, upper := 55573,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57248,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57371,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58690,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62536,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 71289, upper := 71413,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71414, upper := 71415,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73293,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89499,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98430,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137907,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149003,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 16002, upper := 32004, M := 15
      },
      {
        lower := 32004, upper := 64008, M := 11
      },
      {
        lower := 64008, upper := 128016, M := 9
      },
      {
        lower := 128016, upper := 256032, M := 7
      },
      {
        lower := 256032, upper := 512064, M := 5
      },
      {
        lower := 512064, upper := 1024128, M := 4
      },
      {
        lower := 1024128, upper := 2048256, M := 3
      },
      {
        lower := 2048256, upper := 4096512, M := 3
      },
      {
        lower := 4096512, upper := 8193024, M := 2
      },
      {
        lower := 8193024, upper := 16386048, M := 2
      },
      {
        lower := 16386048, upper := 32772096, M := 1
      },
      {
        lower := 32772096, upper := 65544192, M := 1
      },
      {
        lower := 65544192, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 128, r := 42, s := 90,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 258, upper := 384,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 385, upper := 510,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 511, upper := 636,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 637, upper := 758,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 759, upper := 884,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 885, upper := 1010,
        witness := RowWitness.topPrime 883
      },
      {
        lower := 1011, upper := 1136,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1137, upper := 1256,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1257, upper := 1376,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1377, upper := 1500,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1501, upper := 1626,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1627, upper := 1754,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1755, upper := 1880,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1881, upper := 2006,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 2007, upper := 2130,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2131, upper := 2258,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2259, upper := 2378,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2379, upper := 2504,
        witness := RowWitness.topPrime 2377
      },
      {
        lower := 2505, upper := 2630,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2631, upper := 2748,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2749, upper := 2876,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2877, upper := 2988,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2989, upper := 3098,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3099, upper := 3216,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3217, upper := 3344,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3345, upper := 3470,
        witness := RowWitness.topPrime 3343
      },
      {
        lower := 3471, upper := 3596,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3597, upper := 3720,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3721, upper := 3846,
        witness := RowWitness.topPrime 3719
      },
      {
        lower := 3847, upper := 3974,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3975, upper := 4094,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4095, upper := 4220,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4221, upper := 4346,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4347, upper := 4466,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4467, upper := 4590,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4591, upper := 4718,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4719, upper := 4830,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4831, upper := 4958,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4959, upper := 5084,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5085, upper := 5208,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5209, upper := 5336,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5337, upper := 5460,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5461, upper := 5576,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5577, upper := 5700,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5701, upper := 5828,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5829, upper := 5954,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5955, upper := 6080,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6081, upper := 6206,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6207, upper := 6330,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6331, upper := 6456,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6457, upper := 6578,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6579, upper := 6704,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6705, upper := 6830,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6831, upper := 6956,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6957, upper := 7076,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7077, upper := 7196,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7197, upper := 7320,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7321, upper := 7448,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7449, upper := 7560,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7561, upper := 7688,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7689, upper := 7814,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7815, upper := 7920,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7921, upper := 8046,
        witness := RowWitness.topPrime 7919
      },
      {
        lower := 8047, upper := 8166,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8167, upper := 8294,
        witness := RowWitness.topPrime 8167
      },
      {
        lower := 8295, upper := 8420,
        witness := RowWitness.topPrime 8293
      },
      {
        lower := 8421, upper := 8546,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8547, upper := 8670,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8671, upper := 8796,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8797, upper := 8910,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8911, upper := 9020,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9021, upper := 9140,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9141, upper := 9264,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9265, upper := 9384,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9385, upper := 9504,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9505, upper := 9624,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9625, upper := 9750,
        witness := RowWitness.topPrime 9623
      },
      {
        lower := 9751, upper := 9876,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9877, upper := 9998,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 9999, upper := 10100,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10101, upper := 10226,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10227, upper := 10350,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10351, upper := 10470,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10471, upper := 10590,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10591, upper := 10716,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10717, upper := 10838,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10839, upper := 10964,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10965, upper := 11084,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11085, upper := 11210,
        witness := RowWitness.topPrime 11083
      },
      {
        lower := 11211, upper := 11324,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11325, upper := 11448,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11449, upper := 11574,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11575, upper := 11678,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11679, upper := 11804,
        witness := RowWitness.topPrime 11677
      },
      {
        lower := 11805, upper := 11928,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11929, upper := 12054,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12055, upper := 12176,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12177, upper := 12290,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12291, upper := 12416,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12417, upper := 12540,
        witness := RowWitness.topPrime 12413
      },
      {
        lower := 12541, upper := 12668,
        witness := RowWitness.topPrime 12541
      },
      {
        lower := 12669, upper := 12786,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12787, upper := 12908,
        witness := RowWitness.topPrime 12781
      },
      {
        lower := 12909, upper := 13034,
        witness := RowWitness.topPrime 12907
      },
      {
        lower := 13035, upper := 13160,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13161, upper := 13286,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13287, upper := 13394,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13395, upper := 13508,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13509, upper := 13626,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13627, upper := 13754,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13755, upper := 13878,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 13879, upper := 14006,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14007, upper := 14126,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14127, upper := 14234,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14235, upper := 14348,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14349, upper := 14474,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14475, upper := 14588,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14589, upper := 14690,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14691, upper := 14810,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14811, upper := 14924,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14925, upper := 15050,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15051, upper := 15158,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15159, upper := 15276,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15277, upper := 15404,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15405, upper := 15528,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15529, upper := 15654,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15655, upper := 15776,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15777, upper := 15900,
        witness := RowWitness.topPrime 15773
      },
      {
        lower := 15901, upper := 16028,
        witness := RowWitness.topPrime 15901
      },
      {
        lower := 16029, upper := 16134,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16135, upper := 16254,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16255, upper := 16255,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16428, upper := 16464,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16810, upper := 16914,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16915, upper := 16937,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17303, upper := 17426,
        witness := RowWitness.topPrime 17299
      },
      {
        lower := 17427, upper := 17430,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17496, upper := 17532,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17623,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17703,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17799,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18491, upper := 18608,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18609, upper := 18618,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18744,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18745, upper := 18870,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18871, upper := 18877,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19293,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19788,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19789, upper := 19810,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19900,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20008,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20288,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20289, upper := 20291,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20466,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20662,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20704,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21410,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21411, upper := 21423,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21990,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21991, upper := 22031,
        witness := RowWitness.topPrime 21991
      },
      {
        lower := 22090, upper := 22097,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22217,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22453,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22572,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23888,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23889, upper := 23889,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24010, upper := 24134,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24135, upper := 24164,
        witness := RowWitness.topPrime 24133
      },
      {
        lower := 24167, upper := 24184,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24456,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24457, upper := 24494,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24642, upper := 24692,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 25000, upper := 25091,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25316,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25317, upper := 25342,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26371,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26491,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26538,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27023,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27563,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27862,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28217,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28252,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28688,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28812, upper := 28844,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29605,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29895,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30373,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30720,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30721, upper := 30730,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30926, upper := 31026,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31320,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31321, upper := 31377,
        witness := RowWitness.topPrime 31321
      },
      {
        lower := 31423, upper := 31524,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31525, upper := 31550,
        witness := RowWitness.topPrime 31517
      },
      {
        lower := 33614, upper := 33616,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33741,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34464,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34465, upper := 34518,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36624,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36625, upper := 36628,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37337,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37573,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38418,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39450,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39451, upper := 39453,
        witness := RowWitness.topPrime 39451
      },
      {
        lower := 40401, upper := 40455,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40931,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 43750, upper := 43814,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45380,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47648,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47649, upper := 47651,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48088,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48500,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48860,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48861, upper := 48861,
        witness := RowWitness.topPrime 48859
      },
      {
        lower := 50421, upper := 50537,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51132,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55568,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55569, upper := 55574,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57249,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58691,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59083,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62537,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63990,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63991, upper := 63996,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 68651, upper := 68766,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68767, upper := 68778,
        witness := RowWitness.topPrime 68767
      },
      {
        lower := 68921, upper := 69017,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71414,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71415, upper := 71416,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73294,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89500,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 137842, upper := 137908,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149004,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 16256, upper := 32512, M := 18
      },
      {
        lower := 32512, upper := 65024, M := 14
      },
      {
        lower := 65024, upper := 130048, M := 11
      },
      {
        lower := 130048, upper := 260096, M := 9
      },
      {
        lower := 260096, upper := 520192, M := 7
      },
      {
        lower := 520192, upper := 1040384, M := 5
      },
      {
        lower := 1040384, upper := 2080768, M := 4
      },
      {
        lower := 2080768, upper := 4161536, M := 3
      },
      {
        lower := 4161536, upper := 8323072, M := 3
      },
      {
        lower := 8323072, upper := 16646144, M := 2
      },
      {
        lower := 16646144, upper := 33292288, M := 2
      },
      {
        lower := 33292288, upper := 66584576, M := 2
      },
      {
        lower := 66584576, upper := 100000000, M := 1
      }
    ]
  }
]

theorem coverRows04_checked :
    coverRows04.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows04_checked

end B699LowIndex
