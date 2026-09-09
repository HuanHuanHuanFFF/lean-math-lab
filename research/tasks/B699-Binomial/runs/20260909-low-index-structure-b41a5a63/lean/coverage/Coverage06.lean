import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows06 : List FiniteCoverRow := [
  {
    height := {
      i := 148, r := 49, s := 105,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 298, upper := 440,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 441, upper := 586,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 587, upper := 734,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 735, upper := 880,
        witness := RowWitness.topPrime 733
      },
      {
        lower := 881, upper := 1028,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 1029, upper := 1168,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1169, upper := 1310,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1311, upper := 1454,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1455, upper := 1600,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1601, upper := 1748,
        witness := RowWitness.topPrime 1601
      },
      {
        lower := 1749, upper := 1894,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1895, upper := 2036,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2037, upper := 2176,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2177, upper := 2308,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2309, upper := 2456,
        witness := RowWitness.topPrime 2309
      },
      {
        lower := 2457, upper := 2594,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2595, upper := 2740,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2741, upper := 2888,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2889, upper := 3034,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3035, upper := 3170,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3171, upper := 3316,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3317, upper := 3460,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3461, upper := 3608,
        witness := RowWitness.topPrime 3461
      },
      {
        lower := 3609, upper := 3754,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3755, upper := 3886,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3887, upper := 4028,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4029, upper := 4174,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4175, upper := 4306,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4307, upper := 4444,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4445, upper := 4588,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4589, upper := 4730,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4731, upper := 4876,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4877, upper := 5024,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 5025, upper := 5170,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5171, upper := 5318,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5319, upper := 5456,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5457, upper := 5596,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5597, upper := 5738,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5739, upper := 5884,
        witness := RowWitness.topPrime 5737
      },
      {
        lower := 5885, upper := 6028,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6029, upper := 6176,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6177, upper := 6320,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6321, upper := 6464,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6465, upper := 6598,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6599, upper := 6746,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6747, upper := 6884,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6885, upper := 7030,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7031, upper := 7174,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7175, upper := 7306,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7307, upper := 7454,
        witness := RowWitness.topPrime 7307
      },
      {
        lower := 7455, upper := 7598,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7599, upper := 7738,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7739, upper := 7874,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7875, upper := 8020,
        witness := RowWitness.topPrime 7873
      },
      {
        lower := 8021, upper := 8164,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8165, upper := 8308,
        witness := RowWitness.topPrime 8161
      },
      {
        lower := 8309, upper := 8444,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8445, upper := 8590,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8591, upper := 8728,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8729, upper := 8866,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8867, upper := 9014,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9015, upper := 9160,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9161, upper := 9308,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9309, upper := 9440,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9441, upper := 9586,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9587, upper := 9734,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9735, upper := 9880,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9881, upper := 10018,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 10019, upper := 10156,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10157, upper := 10298,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10299, upper := 10436,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10437, upper := 10580,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10581, upper := 10714,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10715, upper := 10858,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10859, upper := 11006,
        witness := RowWitness.topPrime 10859
      },
      {
        lower := 11007, upper := 11150,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11151, upper := 11296,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11297, upper := 11434,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11435, upper := 11570,
        witness := RowWitness.topPrime 11423
      },
      {
        lower := 11571, upper := 11698,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11699, upper := 11846,
        witness := RowWitness.topPrime 11699
      },
      {
        lower := 11847, upper := 11986,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11987, upper := 12134,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12135, upper := 12266,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12267, upper := 12410,
        witness := RowWitness.topPrime 12263
      },
      {
        lower := 12411, upper := 12556,
        witness := RowWitness.topPrime 12409
      },
      {
        lower := 12557, upper := 12700,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12701, upper := 12844,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12845, upper := 12988,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 12989, upper := 13130,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13131, upper := 13274,
        witness := RowWitness.topPrime 13127
      },
      {
        lower := 13275, upper := 13414,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13415, upper := 13558,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13559, upper := 13700,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13701, upper := 13844,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13845, upper := 13988,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13989, upper := 14114,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14115, upper := 14254,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14255, upper := 14398,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14399, upper := 14536,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14537, upper := 14684,
        witness := RowWitness.topPrime 14537
      },
      {
        lower := 14685, upper := 14830,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14831, upper := 14978,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14979, upper := 15116,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15117, upper := 15254,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15255, upper := 15388,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15389, upper := 15530,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15531, upper := 15674,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15675, upper := 15818,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15819, upper := 15964,
        witness := RowWitness.topPrime 15817
      },
      {
        lower := 15965, upper := 16106,
        witness := RowWitness.topPrime 15959
      },
      {
        lower := 16107, upper := 16250,
        witness := RowWitness.topPrime 16103
      },
      {
        lower := 16251, upper := 16396,
        witness := RowWitness.topPrime 16249
      },
      {
        lower := 16397, upper := 16528,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16529, upper := 16676,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16677, upper := 16820,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16821, upper := 16958,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16959, upper := 17090,
        witness := RowWitness.topPrime 16943
      },
      {
        lower := 17091, upper := 17224,
        witness := RowWitness.topPrime 17077
      },
      {
        lower := 17225, upper := 17356,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17357, upper := 17498,
        witness := RowWitness.topPrime 17351
      },
      {
        lower := 17499, upper := 17644,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17645, upper := 17774,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17775, upper := 17908,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17909, upper := 18056,
        witness := RowWitness.topPrime 17909
      },
      {
        lower := 18057, upper := 18196,
        witness := RowWitness.topPrime 18049
      },
      {
        lower := 18197, upper := 18338,
        witness := RowWitness.topPrime 18191
      },
      {
        lower := 18339, upper := 18476,
        witness := RowWitness.topPrime 18329
      },
      {
        lower := 18477, upper := 18608,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18609, upper := 18740,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18741, upper := 18878,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18879, upper := 19016,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19017, upper := 19160,
        witness := RowWitness.topPrime 19013
      },
      {
        lower := 19161, upper := 19304,
        witness := RowWitness.topPrime 19157
      },
      {
        lower := 19305, upper := 19448,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19449, upper := 19594,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19595, upper := 19730,
        witness := RowWitness.topPrime 19583
      },
      {
        lower := 19731, upper := 19874,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19875, upper := 20014,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20015, upper := 20158,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20159, upper := 20296,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20297, upper := 20444,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20445, upper := 20590,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20591, upper := 20710,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20711, upper := 20854,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 20855, upper := 20996,
        witness := RowWitness.topPrime 20849
      },
      {
        lower := 20997, upper := 21130,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21131, upper := 21268,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21269, upper := 21416,
        witness := RowWitness.topPrime 21269
      },
      {
        lower := 21417, upper := 21554,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21555, upper := 21676,
        witness := RowWitness.topPrime 21529
      },
      {
        lower := 21677, upper := 21755,
        witness := RowWitness.topPrime 21673
      },
      {
        lower := 21870, upper := 22010,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22011, upper := 22022,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22117,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22237,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22335,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22588,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22589, upper := 22592,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23908,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23909, upper := 23909,
        witness := RowWitness.topPrime 23909
      },
      {
        lower := 24037, upper := 24176,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24177, upper := 24204,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24299, upper := 24314,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24476,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24477, upper := 24514,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24712,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25111,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25352,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26391,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26554,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26555, upper := 26558,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26645, upper := 26655,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27583,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28270,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28271, upper := 28272,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28578,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28812, upper := 28864,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29915,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31340,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31341, upper := 31397,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31476,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31831,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31974,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32915,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33636,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33761,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34466,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34467, upper := 34538,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36644,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36645, upper := 36648,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37357,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37450,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37640,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37641, upper := 37685,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38438,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39451,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40475,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40951,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45927, upper := 45943,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47668,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47669, upper := 47671,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48108,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48815,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50557,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51152,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56316,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56454,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57269,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 62500, upper := 62557,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65683,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68786,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68787, upper := 68791,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69037,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71434,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71435, upper := 71436,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73314,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85830,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89520,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93897,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 137842, upper := 137928,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149024,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 21756, upper := 43512, M := 13
      },
      {
        lower := 43512, upper := 87024, M := 10
      },
      {
        lower := 87024, upper := 174048, M := 7
      },
      {
        lower := 174048, upper := 348096, M := 6
      },
      {
        lower := 348096, upper := 696192, M := 4
      },
      {
        lower := 696192, upper := 1392384, M := 3
      },
      {
        lower := 1392384, upper := 2784768, M := 2
      },
      {
        lower := 2784768, upper := 5569536, M := 2
      },
      {
        lower := 5569536, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 149, r := 49, s := 106,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 300, upper := 441,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 442, upper := 587,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 588, upper := 735,
        witness := RowWitness.topPrime 587
      },
      {
        lower := 736, upper := 881,
        witness := RowWitness.topPrime 733
      },
      {
        lower := 882, upper := 1029,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 1030, upper := 1169,
        witness := RowWitness.topPrime 1021
      },
      {
        lower := 1170, upper := 1311,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1312, upper := 1455,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1456, upper := 1601,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1602, upper := 1749,
        witness := RowWitness.topPrime 1601
      },
      {
        lower := 1750, upper := 1895,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1896, upper := 2037,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2038, upper := 2177,
        witness := RowWitness.topPrime 2029
      },
      {
        lower := 2178, upper := 2309,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2310, upper := 2457,
        witness := RowWitness.topPrime 2309
      },
      {
        lower := 2458, upper := 2595,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2596, upper := 2741,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2742, upper := 2889,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2890, upper := 3035,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3036, upper := 3171,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3172, upper := 3317,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3318, upper := 3461,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3462, upper := 3609,
        witness := RowWitness.topPrime 3461
      },
      {
        lower := 3610, upper := 3755,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3756, upper := 3887,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3888, upper := 4029,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4030, upper := 4175,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4176, upper := 4307,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4308, upper := 4445,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4446, upper := 4589,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4590, upper := 4731,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4732, upper := 4877,
        witness := RowWitness.topPrime 4729
      },
      {
        lower := 4878, upper := 5025,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 5026, upper := 5171,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5172, upper := 5319,
        witness := RowWitness.topPrime 5171
      },
      {
        lower := 5320, upper := 5457,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5458, upper := 5597,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5598, upper := 5739,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5740, upper := 5885,
        witness := RowWitness.topPrime 5737
      },
      {
        lower := 5886, upper := 6029,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6030, upper := 6177,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6178, upper := 6321,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6322, upper := 6465,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6466, upper := 6599,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6600, upper := 6747,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6748, upper := 6885,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6886, upper := 7031,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7032, upper := 7175,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7176, upper := 7307,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7308, upper := 7455,
        witness := RowWitness.topPrime 7307
      },
      {
        lower := 7456, upper := 7599,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7600, upper := 7739,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7740, upper := 7875,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7876, upper := 8021,
        witness := RowWitness.topPrime 7873
      },
      {
        lower := 8022, upper := 8165,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8166, upper := 8309,
        witness := RowWitness.topPrime 8161
      },
      {
        lower := 8310, upper := 8445,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8446, upper := 8591,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8592, upper := 8729,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8730, upper := 8867,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8868, upper := 9015,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9016, upper := 9161,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9162, upper := 9309,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9310, upper := 9441,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9442, upper := 9587,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9588, upper := 9735,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9736, upper := 9881,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9882, upper := 10019,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 10020, upper := 10157,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10158, upper := 10299,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10300, upper := 10437,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10438, upper := 10581,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10582, upper := 10715,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10716, upper := 10859,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10860, upper := 11007,
        witness := RowWitness.topPrime 10859
      },
      {
        lower := 11008, upper := 11151,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11152, upper := 11297,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11298, upper := 11435,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11436, upper := 11571,
        witness := RowWitness.topPrime 11423
      },
      {
        lower := 11572, upper := 11699,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11700, upper := 11847,
        witness := RowWitness.topPrime 11699
      },
      {
        lower := 11848, upper := 11987,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11988, upper := 12135,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12136, upper := 12267,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12268, upper := 12411,
        witness := RowWitness.topPrime 12263
      },
      {
        lower := 12412, upper := 12557,
        witness := RowWitness.topPrime 12409
      },
      {
        lower := 12558, upper := 12701,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12702, upper := 12845,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12846, upper := 12989,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 12990, upper := 13131,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13132, upper := 13275,
        witness := RowWitness.topPrime 13127
      },
      {
        lower := 13276, upper := 13415,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13416, upper := 13559,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13560, upper := 13701,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13702, upper := 13845,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13846, upper := 13989,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13990, upper := 14115,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14116, upper := 14255,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14256, upper := 14399,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14400, upper := 14537,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14538, upper := 14685,
        witness := RowWitness.topPrime 14537
      },
      {
        lower := 14686, upper := 14831,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14832, upper := 14979,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14980, upper := 15117,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15118, upper := 15255,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15256, upper := 15389,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15390, upper := 15531,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15532, upper := 15675,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15676, upper := 15819,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15820, upper := 15965,
        witness := RowWitness.topPrime 15817
      },
      {
        lower := 15966, upper := 16107,
        witness := RowWitness.topPrime 15959
      },
      {
        lower := 16108, upper := 16251,
        witness := RowWitness.topPrime 16103
      },
      {
        lower := 16252, upper := 16397,
        witness := RowWitness.topPrime 16249
      },
      {
        lower := 16398, upper := 16529,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16530, upper := 16677,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16678, upper := 16821,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16822, upper := 16959,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16960, upper := 17091,
        witness := RowWitness.topPrime 16943
      },
      {
        lower := 17092, upper := 17225,
        witness := RowWitness.topPrime 17077
      },
      {
        lower := 17226, upper := 17357,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17358, upper := 17499,
        witness := RowWitness.topPrime 17351
      },
      {
        lower := 17500, upper := 17645,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17646, upper := 17775,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17776, upper := 17909,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17910, upper := 18057,
        witness := RowWitness.topPrime 17909
      },
      {
        lower := 18058, upper := 18197,
        witness := RowWitness.topPrime 18049
      },
      {
        lower := 18198, upper := 18339,
        witness := RowWitness.topPrime 18191
      },
      {
        lower := 18340, upper := 18477,
        witness := RowWitness.topPrime 18329
      },
      {
        lower := 18478, upper := 18609,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18610, upper := 18741,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18742, upper := 18879,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18880, upper := 19017,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19018, upper := 19161,
        witness := RowWitness.topPrime 19013
      },
      {
        lower := 19162, upper := 19305,
        witness := RowWitness.topPrime 19157
      },
      {
        lower := 19306, upper := 19449,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19450, upper := 19595,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19596, upper := 19731,
        witness := RowWitness.topPrime 19583
      },
      {
        lower := 19732, upper := 19875,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19876, upper := 20015,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20016, upper := 20159,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20160, upper := 20297,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20298, upper := 20445,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20446, upper := 20591,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20592, upper := 20711,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20712, upper := 20855,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 20856, upper := 20997,
        witness := RowWitness.topPrime 20849
      },
      {
        lower := 20998, upper := 21131,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21132, upper := 21269,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21270, upper := 21417,
        witness := RowWitness.topPrime 21269
      },
      {
        lower := 21418, upper := 21555,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21556, upper := 21677,
        witness := RowWitness.topPrime 21529
      },
      {
        lower := 21678, upper := 21821,
        witness := RowWitness.topPrime 21673
      },
      {
        lower := 21822, upper := 21969,
        witness := RowWitness.topPrime 21821
      },
      {
        lower := 21970, upper := 22051,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22090, upper := 22118,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22238,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22336,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22589,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22590, upper := 22620,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23909,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23910, upper := 23910,
        witness := RowWitness.topPrime 23909
      },
      {
        lower := 24037, upper := 24177,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24178, upper := 24205,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24299, upper := 24315,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24477,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24478, upper := 24515,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24713,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25112,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25353,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26392,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26555,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26556, upper := 26559,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26624, upper := 26745,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26746, upper := 26772,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27584,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28271,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28272, upper := 28273,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28579,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28709,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28859,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28860, upper := 28865,
        witness := RowWitness.topPrime 28859
      },
      {
        lower := 29791, upper := 29916,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31341,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31342, upper := 31398,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31477,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31832,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31975,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32916,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33637,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33762,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34467,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34468, upper := 34539,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36645,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36646, upper := 36649,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37358,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37451,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37641,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37642, upper := 37686,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38439,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39452,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40476,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40952,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41079,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45927, upper := 45944,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47669,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47670, upper := 47672,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48109,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48816,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 51076, upper := 51153,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56317,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56455,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57270,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57393,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 68694, upper := 68792,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71435,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71436, upper := 71437,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73315,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85831,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89521,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93898,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98452,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137929,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149025,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 22052, upper := 44104, M := 13
      },
      {
        lower := 44104, upper := 88208, M := 9
      },
      {
        lower := 88208, upper := 176416, M := 7
      },
      {
        lower := 176416, upper := 352832, M := 5
      },
      {
        lower := 352832, upper := 705664, M := 4
      },
      {
        lower := 705664, upper := 1411328, M := 3
      },
      {
        lower := 1411328, upper := 2822656, M := 2
      },
      {
        lower := 2822656, upper := 5645312, M := 2
      },
      {
        lower := 5645312, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 150, r := 49, s := 106,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 302, upper := 442,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 443, upper := 592,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 593, upper := 742,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 743, upper := 892,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 893, upper := 1036,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1037, upper := 1182,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1183, upper := 1330,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1331, upper := 1476,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1477, upper := 1620,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1621, upper := 1770,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1771, upper := 1908,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1909, upper := 2056,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2057, upper := 2202,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2203, upper := 2352,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2353, upper := 2500,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2501, upper := 2626,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2627, upper := 2770,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2771, upper := 2916,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2917, upper := 3066,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3067, upper := 3216,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3217, upper := 3366,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3367, upper := 3510,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3511, upper := 3660,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3661, upper := 3808,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3809, upper := 3952,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3953, upper := 4096,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4097, upper := 4242,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4243, upper := 4392,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4393, upper := 4540,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4541, upper := 4672,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4673, upper := 4822,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4823, upper := 4966,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4967, upper := 5116,
        witness := RowWitness.topPrime 4967
      },
      {
        lower := 5117, upper := 5262,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5263, upper := 5410,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5411, upper := 5556,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5557, upper := 5706,
        witness := RowWitness.topPrime 5557
      },
      {
        lower := 5707, upper := 5850,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5851, upper := 6000,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 6001, upper := 6136,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6137, upper := 6282,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6283, upper := 6426,
        witness := RowWitness.topPrime 6277
      },
      {
        lower := 6427, upper := 6576,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6577, upper := 6726,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6727, upper := 6868,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6869, upper := 7018,
        witness := RowWitness.topPrime 6869
      },
      {
        lower := 7019, upper := 7168,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7169, upper := 7308,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7309, upper := 7458,
        witness := RowWitness.topPrime 7309
      },
      {
        lower := 7459, upper := 7608,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7609, upper := 7756,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7757, upper := 7906,
        witness := RowWitness.topPrime 7757
      },
      {
        lower := 7907, upper := 8056,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8057, upper := 8202,
        witness := RowWitness.topPrime 8053
      },
      {
        lower := 8203, upper := 8340,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8341, upper := 8478,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8479, upper := 8616,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8617, upper := 8758,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8759, upper := 8902,
        witness := RowWitness.topPrime 8753
      },
      {
        lower := 8903, upper := 9042,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9043, upper := 9192,
        witness := RowWitness.topPrime 9043
      },
      {
        lower := 9193, upper := 9336,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9337, upper := 9486,
        witness := RowWitness.topPrime 9337
      },
      {
        lower := 9487, upper := 9628,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9629, upper := 9778,
        witness := RowWitness.topPrime 9629
      },
      {
        lower := 9779, upper := 9918,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9919, upper := 10056,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10057, upper := 10188,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10189, upper := 10330,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10331, upper := 10480,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10481, upper := 10626,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10627, upper := 10776,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10777, upper := 10920,
        witness := RowWitness.topPrime 10771
      },
      {
        lower := 10921, upper := 11058,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11059, upper := 11208,
        witness := RowWitness.topPrime 11059
      },
      {
        lower := 11209, upper := 11346,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11347, upper := 11478,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11479, upper := 11620,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11621, upper := 11770,
        witness := RowWitness.topPrime 11621
      },
      {
        lower := 11771, upper := 11892,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11893, upper := 12036,
        witness := RowWitness.topPrime 11887
      },
      {
        lower := 12037, upper := 12186,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12187, upper := 12312,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12313, upper := 12450,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12451, upper := 12600,
        witness := RowWitness.topPrime 12451
      },
      {
        lower := 12601, upper := 12750,
        witness := RowWitness.topPrime 12601
      },
      {
        lower := 12751, upper := 12892,
        witness := RowWitness.topPrime 12743
      },
      {
        lower := 12893, upper := 13042,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13043, upper := 13192,
        witness := RowWitness.topPrime 13043
      },
      {
        lower := 13193, upper := 13336,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13337, upper := 13486,
        witness := RowWitness.topPrime 13337
      },
      {
        lower := 13487, upper := 13636,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13637, upper := 13782,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13783, upper := 13930,
        witness := RowWitness.topPrime 13781
      },
      {
        lower := 13931, upper := 14080,
        witness := RowWitness.topPrime 13931
      },
      {
        lower := 14081, upper := 14230,
        witness := RowWitness.topPrime 14081
      },
      {
        lower := 14231, upper := 14370,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14371, upper := 14518,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14519, upper := 14668,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14669, upper := 14818,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14819, upper := 14962,
        witness := RowWitness.topPrime 14813
      },
      {
        lower := 14963, upper := 15106,
        witness := RowWitness.topPrime 14957
      },
      {
        lower := 15107, upper := 15256,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15257, upper := 15390,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15391, upper := 15540,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15541, upper := 15690,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15691, upper := 15832,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15833, upper := 15972,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15973, upper := 16122,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16123, upper := 16260,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16261, upper := 16402,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16403, upper := 16530,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16531, upper := 16678,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16679, upper := 16822,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16823, upper := 16972,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 16973, upper := 17112,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17113, upper := 17256,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17257, upper := 17406,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17407, upper := 17550,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17551, upper := 17700,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17701, upper := 17832,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17833, upper := 17976,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17977, upper := 18126,
        witness := RowWitness.topPrime 17977
      },
      {
        lower := 18127, upper := 18276,
        witness := RowWitness.topPrime 18127
      },
      {
        lower := 18277, upper := 18418,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18419, upper := 18562,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18563, upper := 18702,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18703, upper := 18850,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18851, upper := 18988,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 18989, upper := 19128,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19129, upper := 19270,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19271, upper := 19416,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19417, upper := 19566,
        witness := RowWitness.topPrime 19417
      },
      {
        lower := 19567, upper := 19708,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19709, upper := 19858,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 19859, upper := 20002,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20003, upper := 20146,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20147, upper := 20296,
        witness := RowWitness.topPrime 20147
      },
      {
        lower := 20297, upper := 20446,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20447, upper := 20592,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20593, upper := 20742,
        witness := RowWitness.topPrime 20593
      },
      {
        lower := 20743, upper := 20892,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20893, upper := 21036,
        witness := RowWitness.topPrime 20887
      },
      {
        lower := 21037, upper := 21180,
        witness := RowWitness.topPrime 21031
      },
      {
        lower := 21181, upper := 21328,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21329, upper := 21472,
        witness := RowWitness.topPrime 21323
      },
      {
        lower := 21473, upper := 21616,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21617, upper := 21766,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21767, upper := 21916,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21917, upper := 22060,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22061, upper := 22200,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22201, upper := 22342,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22343, upper := 22350,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22445, upper := 22590,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22591, upper := 22594,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23910,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23911, upper := 23911,
        witness := RowWitness.topPrime 23911
      },
      {
        lower := 24037, upper := 24159,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24186,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24316,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24478,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24479, upper := 24516,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24714,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25338,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25339, upper := 25364,
        witness := RowWitness.topPrime 25339
      },
      {
        lower := 26364, upper := 26393,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26556,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26557, upper := 26560,
        witness := RowWitness.topPrime 26557
      },
      {
        lower := 26645, upper := 26657,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27585,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27884,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28227, upper := 28239,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28710,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28860,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28861, upper := 28866,
        witness := RowWitness.topPrime 28859
      },
      {
        lower := 29791, upper := 29917,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30899, upper := 30907,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31048,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31342,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31343, upper := 31362,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31478,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31833,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31976,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32917,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33638,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33763,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34468,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34469, upper := 34540,
        witness := RowWitness.topPrime 34469
      },
      {
        lower := 36015, upper := 36061,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36646,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36647, upper := 36650,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37359,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37452,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37595,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37687,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38440,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39472,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39473, upper := 39475,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40477,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40953,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41080,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47670,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47671, upper := 47673,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48110,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48817,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49279,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50559,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51154,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55590,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55591, upper := 55596,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56318,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56456,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57271,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58713,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 68644, upper := 68788,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68789, upper := 68800,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69039,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71436,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71437, upper := 71438,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 73205, upper := 73316,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85832,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89522,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 103041, upper := 103115,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149026,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154598,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 22350, upper := 44700, M := 15
      },
      {
        lower := 44700, upper := 89400, M := 11
      },
      {
        lower := 89400, upper := 178800, M := 9
      },
      {
        lower := 178800, upper := 357600, M := 6
      },
      {
        lower := 357600, upper := 715200, M := 5
      },
      {
        lower := 715200, upper := 1430400, M := 4
      },
      {
        lower := 1430400, upper := 2860800, M := 3
      },
      {
        lower := 2860800, upper := 5721600, M := 2
      },
      {
        lower := 5721600, upper := 11443200, M := 2
      },
      {
        lower := 11443200, upper := 22886400, M := 2
      },
      {
        lower := 22886400, upper := 45772800, M := 1
      },
      {
        lower := 45772800, upper := 91545600, M := 1
      },
      {
        lower := 91545600, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 151, r := 50, s := 107,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 304, upper := 443,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 444, upper := 593,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 594, upper := 743,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 744, upper := 893,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 894, upper := 1037,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1038, upper := 1183,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1184, upper := 1331,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1332, upper := 1477,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1478, upper := 1621,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1622, upper := 1771,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1772, upper := 1909,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1910, upper := 2057,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2058, upper := 2203,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2204, upper := 2353,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2354, upper := 2501,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2502, upper := 2627,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2628, upper := 2771,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2772, upper := 2917,
        witness := RowWitness.topPrime 2767
      },
      {
        lower := 2918, upper := 3067,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3068, upper := 3217,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3218, upper := 3367,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3368, upper := 3511,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3512, upper := 3661,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3662, upper := 3809,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3810, upper := 3953,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3954, upper := 4097,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4098, upper := 4243,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4244, upper := 4393,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4394, upper := 4541,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4542, upper := 4673,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4674, upper := 4823,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4824, upper := 4967,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4968, upper := 5117,
        witness := RowWitness.topPrime 4967
      },
      {
        lower := 5118, upper := 5263,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5264, upper := 5411,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5412, upper := 5557,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5558, upper := 5707,
        witness := RowWitness.topPrime 5557
      },
      {
        lower := 5708, upper := 5851,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5852, upper := 6001,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 6002, upper := 6137,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6138, upper := 6283,
        witness := RowWitness.topPrime 6133
      },
      {
        lower := 6284, upper := 6427,
        witness := RowWitness.topPrime 6277
      },
      {
        lower := 6428, upper := 6577,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6578, upper := 6727,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6728, upper := 6869,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6870, upper := 7019,
        witness := RowWitness.topPrime 6869
      },
      {
        lower := 7020, upper := 7169,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7170, upper := 7309,
        witness := RowWitness.topPrime 7159
      },
      {
        lower := 7310, upper := 7459,
        witness := RowWitness.topPrime 7309
      },
      {
        lower := 7460, upper := 7609,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7610, upper := 7757,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7758, upper := 7907,
        witness := RowWitness.topPrime 7757
      },
      {
        lower := 7908, upper := 8057,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8058, upper := 8203,
        witness := RowWitness.topPrime 8053
      },
      {
        lower := 8204, upper := 8341,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8342, upper := 8479,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8480, upper := 8617,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8618, upper := 8759,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8760, upper := 8903,
        witness := RowWitness.topPrime 8753
      },
      {
        lower := 8904, upper := 9043,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9044, upper := 9193,
        witness := RowWitness.topPrime 9043
      },
      {
        lower := 9194, upper := 9337,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9338, upper := 9487,
        witness := RowWitness.topPrime 9337
      },
      {
        lower := 9488, upper := 9629,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9630, upper := 9779,
        witness := RowWitness.topPrime 9629
      },
      {
        lower := 9780, upper := 9919,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9920, upper := 10057,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10058, upper := 10189,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10190, upper := 10331,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10332, upper := 10481,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10482, upper := 10627,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10628, upper := 10777,
        witness := RowWitness.topPrime 10627
      },
      {
        lower := 10778, upper := 10921,
        witness := RowWitness.topPrime 10771
      },
      {
        lower := 10922, upper := 11059,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11060, upper := 11209,
        witness := RowWitness.topPrime 11059
      },
      {
        lower := 11210, upper := 11347,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11348, upper := 11479,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11480, upper := 11621,
        witness := RowWitness.topPrime 11471
      },
      {
        lower := 11622, upper := 11771,
        witness := RowWitness.topPrime 11621
      },
      {
        lower := 11772, upper := 11893,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11894, upper := 12037,
        witness := RowWitness.topPrime 11887
      },
      {
        lower := 12038, upper := 12187,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12188, upper := 12313,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12314, upper := 12451,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12452, upper := 12601,
        witness := RowWitness.topPrime 12451
      },
      {
        lower := 12602, upper := 12751,
        witness := RowWitness.topPrime 12601
      },
      {
        lower := 12752, upper := 12893,
        witness := RowWitness.topPrime 12743
      },
      {
        lower := 12894, upper := 13043,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13044, upper := 13193,
        witness := RowWitness.topPrime 13043
      },
      {
        lower := 13194, upper := 13337,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13338, upper := 13487,
        witness := RowWitness.topPrime 13337
      },
      {
        lower := 13488, upper := 13637,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13638, upper := 13783,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13784, upper := 13931,
        witness := RowWitness.topPrime 13781
      },
      {
        lower := 13932, upper := 14081,
        witness := RowWitness.topPrime 13931
      },
      {
        lower := 14082, upper := 14231,
        witness := RowWitness.topPrime 14081
      },
      {
        lower := 14232, upper := 14371,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14372, upper := 14519,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14520, upper := 14669,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14670, upper := 14819,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14820, upper := 14963,
        witness := RowWitness.topPrime 14813
      },
      {
        lower := 14964, upper := 15107,
        witness := RowWitness.topPrime 14957
      },
      {
        lower := 15108, upper := 15257,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15258, upper := 15391,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15392, upper := 15541,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15542, upper := 15691,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15692, upper := 15833,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15834, upper := 15973,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15974, upper := 16123,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16124, upper := 16261,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16262, upper := 16403,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16404, upper := 16531,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16532, upper := 16679,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16680, upper := 16823,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16824, upper := 16973,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 16974, upper := 17113,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17114, upper := 17257,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17258, upper := 17407,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17408, upper := 17551,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17552, upper := 17701,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17702, upper := 17833,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17834, upper := 17977,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17978, upper := 18127,
        witness := RowWitness.topPrime 17977
      },
      {
        lower := 18128, upper := 18277,
        witness := RowWitness.topPrime 18127
      },
      {
        lower := 18278, upper := 18419,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18420, upper := 18563,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18564, upper := 18703,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18704, upper := 18851,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18852, upper := 18989,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 18990, upper := 19129,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19130, upper := 19271,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19272, upper := 19417,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19418, upper := 19567,
        witness := RowWitness.topPrime 19417
      },
      {
        lower := 19568, upper := 19709,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19710, upper := 19859,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 19860, upper := 20003,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20004, upper := 20147,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20148, upper := 20297,
        witness := RowWitness.topPrime 20147
      },
      {
        lower := 20298, upper := 20447,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20448, upper := 20593,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20594, upper := 20743,
        witness := RowWitness.topPrime 20593
      },
      {
        lower := 20744, upper := 20893,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20894, upper := 21037,
        witness := RowWitness.topPrime 20887
      },
      {
        lower := 21038, upper := 21181,
        witness := RowWitness.topPrime 21031
      },
      {
        lower := 21182, upper := 21329,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21330, upper := 21473,
        witness := RowWitness.topPrime 21323
      },
      {
        lower := 21474, upper := 21617,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21618, upper := 21767,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21768, upper := 21917,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21918, upper := 22061,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22062, upper := 22201,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22202, upper := 22343,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22344, upper := 22493,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22494, upper := 22633,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22634, upper := 22649,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23911,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23912, upper := 23912,
        witness := RowWitness.topPrime 23911
      },
      {
        lower := 24037, upper := 24179,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24180, upper := 24207,
        witness := RowWitness.topPrime 24179
      },
      {
        lower := 24299, upper := 24317,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24479,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24480, upper := 24517,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24715,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25114,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25355,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26394,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26557,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26558, upper := 26561,
        witness := RowWitness.topPrime 26557
      },
      {
        lower := 26624, upper := 26747,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26748, upper := 26774,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27586,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28273,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28274, upper := 28275,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28581,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28711,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28861,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28862, upper := 28867,
        witness := RowWitness.topPrime 28859
      },
      {
        lower := 29791, upper := 29918,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30743,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30744, upper := 30753,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30768,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30908,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31049,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31343,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31344, upper := 31400,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31479,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31834,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31977,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32918,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33639,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33764,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34469,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34470, upper := 34541,
        witness := RowWitness.topPrime 34469
      },
      {
        lower := 36517, upper := 36647,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36648, upper := 36651,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37360,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37453,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37643,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37644, upper := 37688,
        witness := RowWitness.topPrime 37643
      },
      {
        lower := 38307, upper := 38441,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39473,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39474, upper := 39476,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40478,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40954,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41081,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43837,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45927, upper := 45946,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47671,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47672, upper := 47674,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48111,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48818,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49280,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50560,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51155,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55591,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55592, upper := 55597,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56319,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56457,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57272,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57395,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58714,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62560,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65686,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68789,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68790, upper := 68801,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69040,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71437,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71438, upper := 71439,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 73205, upper := 73317,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85833,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89523,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93900,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98454,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137931,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149027,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 22650, upper := 45300, M := 14
      },
      {
        lower := 45300, upper := 90600, M := 11
      },
      {
        lower := 90600, upper := 181200, M := 8
      },
      {
        lower := 181200, upper := 362400, M := 6
      },
      {
        lower := 362400, upper := 724800, M := 5
      },
      {
        lower := 724800, upper := 1449600, M := 4
      },
      {
        lower := 1449600, upper := 2899200, M := 3
      },
      {
        lower := 2899200, upper := 5798400, M := 2
      },
      {
        lower := 5798400, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 152, r := 50, s := 107,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 306, upper := 444,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 445, upper := 594,
        witness := RowWitness.topPrime 443
      },
      {
        lower := 595, upper := 744,
        witness := RowWitness.topPrime 593
      },
      {
        lower := 745, upper := 894,
        witness := RowWitness.topPrime 743
      },
      {
        lower := 895, upper := 1038,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1039, upper := 1190,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1191, upper := 1338,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1339, upper := 1478,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1479, upper := 1622,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1623, upper := 1772,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1773, upper := 1910,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1911, upper := 2058,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2059, upper := 2204,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2205, upper := 2354,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2355, upper := 2502,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2503, upper := 2654,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2655, upper := 2798,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2799, upper := 2948,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2949, upper := 3090,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3091, upper := 3240,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3241, upper := 3380,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3381, upper := 3524,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3525, upper := 3668,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3669, upper := 3810,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3811, upper := 3954,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3955, upper := 4098,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4099, upper := 4250,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4251, upper := 4394,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4395, upper := 4542,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4543, upper := 4674,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4675, upper := 4824,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4825, upper := 4968,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4969, upper := 5120,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5121, upper := 5270,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5271, upper := 5412,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5413, upper := 5564,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5565, upper := 5714,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5715, upper := 5862,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5863, upper := 6012,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 6013, upper := 6162,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6163, upper := 6314,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6315, upper := 6462,
        witness := RowWitness.topPrime 6311
      },
      {
        lower := 6463, upper := 6602,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6603, upper := 6750,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6751, upper := 6888,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6889, upper := 7034,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7035, upper := 7178,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7179, upper := 7328,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7329, upper := 7472,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7473, upper := 7610,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7611, upper := 7758,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7759, upper := 7910,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7911, upper := 8058,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8059, upper := 8210,
        witness := RowWitness.topPrime 8059
      },
      {
        lower := 8211, upper := 8360,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8361, upper := 8504,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8505, upper := 8652,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8653, upper := 8798,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8799, upper := 8934,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8935, upper := 9084,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9085, upper := 9218,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9219, upper := 9360,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9361, upper := 9500,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9501, upper := 9648,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9649, upper := 9800,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9801, upper := 9942,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9943, upper := 10092,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10093, upper := 10244,
        witness := RowWitness.topPrime 10093
      },
      {
        lower := 10245, upper := 10394,
        witness := RowWitness.topPrime 10243
      },
      {
        lower := 10395, upper := 10542,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10543, upper := 10682,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10683, upper := 10818,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10819, upper := 10950,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10951, upper := 11100,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11101, upper := 11244,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11245, upper := 11394,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11395, upper := 11544,
        witness := RowWitness.topPrime 11393
      },
      {
        lower := 11545, upper := 11678,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11679, upper := 11828,
        witness := RowWitness.topPrime 11677
      },
      {
        lower := 11829, upper := 11978,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 11979, upper := 12122,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12123, upper := 12270,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12271, upper := 12420,
        witness := RowWitness.topPrime 12269
      },
      {
        lower := 12421, upper := 12572,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12573, upper := 12720,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12721, upper := 12872,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12873, upper := 13004,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13005, upper := 13154,
        witness := RowWitness.topPrime 13003
      },
      {
        lower := 13155, upper := 13302,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13303, upper := 13448,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13449, upper := 13592,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13593, upper := 13742,
        witness := RowWitness.topPrime 13591
      },
      {
        lower := 13743, upper := 13880,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13881, upper := 14030,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14031, upper := 14180,
        witness := RowWitness.topPrime 14029
      },
      {
        lower := 14181, upper := 14328,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14329, upper := 14478,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14479, upper := 14630,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14631, upper := 14780,
        witness := RowWitness.topPrime 14629
      },
      {
        lower := 14781, upper := 14930,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14931, upper := 15080,
        witness := RowWitness.topPrime 14929
      },
      {
        lower := 15081, upper := 15228,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15229, upper := 15378,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15379, upper := 15528,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15529, upper := 15678,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15679, upper := 15830,
        witness := RowWitness.topPrime 15679
      },
      {
        lower := 15831, upper := 15974,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15975, upper := 16124,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16125, upper := 16262,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16263, upper := 16404,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16405, upper := 16532,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16533, upper := 16680,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16681, upper := 16824,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16825, upper := 16974,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 16975, upper := 17114,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17115, upper := 17258,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17259, upper := 17408,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17409, upper := 17552,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17553, upper := 17702,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17703, upper := 17834,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17835, upper := 17978,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17979, upper := 18128,
        witness := RowWitness.topPrime 17977
      },
      {
        lower := 18129, upper := 18278,
        witness := RowWitness.topPrime 18127
      },
      {
        lower := 18279, upper := 18420,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18421, upper := 18564,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18565, upper := 18704,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18705, upper := 18852,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18853, upper := 18990,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 18991, upper := 19130,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19131, upper := 19272,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19273, upper := 19424,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19425, upper := 19574,
        witness := RowWitness.topPrime 19423
      },
      {
        lower := 19575, upper := 19722,
        witness := RowWitness.topPrime 19571
      },
      {
        lower := 19723, upper := 19868,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19869, upper := 20018,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20019, upper := 20162,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20163, upper := 20312,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20313, upper := 20448,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20449, upper := 20594,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20595, upper := 20744,
        witness := RowWitness.topPrime 20593
      },
      {
        lower := 20745, upper := 20894,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20895, upper := 21038,
        witness := RowWitness.topPrime 20887
      },
      {
        lower := 21039, upper := 21182,
        witness := RowWitness.topPrime 21031
      },
      {
        lower := 21183, upper := 21330,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21331, upper := 21474,
        witness := RowWitness.topPrime 21323
      },
      {
        lower := 21475, upper := 21618,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21619, upper := 21768,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21769, upper := 21918,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21919, upper := 22062,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22063, upper := 22214,
        witness := RowWitness.topPrime 22063
      },
      {
        lower := 22215, upper := 22344,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22345, upper := 22494,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22495, upper := 22634,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22635, upper := 22772,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22773, upper := 22920,
        witness := RowWitness.topPrime 22769
      },
      {
        lower := 22921, upper := 22952,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23763, upper := 23912,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23913, upper := 23913,
        witness := RowWitness.topPrime 23911
      },
      {
        lower := 24037, upper := 24180,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24181, upper := 24208,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24299, upper := 24318,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24480,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24481, upper := 24518,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 25000, upper := 25115,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25340,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25341, upper := 25366,
        witness := RowWitness.topPrime 25339
      },
      {
        lower := 26364, upper := 26395,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26558,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26559, upper := 26562,
        witness := RowWitness.topPrime 26557
      },
      {
        lower := 26645, upper := 26659,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27047,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27848, upper := 27886,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28274,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28275, upper := 28276,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28710,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28711, upper := 28712,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28717, upper := 28728,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28868,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29629,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29919,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30744,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30745, upper := 30754,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30769,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30909,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31050,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31344,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31345, upper := 31401,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31548,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31549, upper := 31574,
        witness := RowWitness.topPrime 31547
      },
      {
        lower := 31827, upper := 31835,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31978,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32919,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32956,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33640,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33765,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34488,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34489, upper := 34542,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 35287, upper := 35303,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35438,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36063,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36648,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36649, upper := 36652,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37210, upper := 37352,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37353, upper := 37490,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37491, upper := 37640,
        witness := RowWitness.topPrime 37489
      },
      {
        lower := 37641, upper := 37704,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38454,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38455, upper := 38458,
        witness := RowWitness.topPrime 38453
      },
      {
        lower := 39326, upper := 39474,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39475, upper := 39477,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40479,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40817, upper := 40964,
        witness := RowWitness.topPrime 40813
      },
      {
        lower := 40965, upper := 40968,
        witness := RowWitness.topPrime 40961
      },
      {
        lower := 43750, upper := 43838,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 45041,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45369, upper := 45404,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45947,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47672,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47673, upper := 47675,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48373, upper := 48374,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48524,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48819,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50561,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51156,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55592,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55593, upper := 55598,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56320,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56458,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57273,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58715,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59107,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62561,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64014,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64015, upper := 64020,
        witness := RowWitness.topPrime 64013
      },
      {
        lower := 65536, upper := 65672,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65673, upper := 65687,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68651, upper := 68790,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68791, upper := 68802,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69041,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71438,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71439, upper := 71440,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 73205, upper := 73318,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85293, upper := 85320,
        witness := RowWitness.topPrime 85259
      },
      {
        lower := 85805, upper := 85834,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89524,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93901,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 102152, upper := 102161,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103117,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109526,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137932,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146485,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149028,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154600,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 22952, upper := 45904, M := 17
      },
      {
        lower := 45904, upper := 91808, M := 13
      },
      {
        lower := 91808, upper := 183616, M := 10
      },
      {
        lower := 183616, upper := 367232, M := 8
      },
      {
        lower := 367232, upper := 734464, M := 6
      },
      {
        lower := 734464, upper := 1468928, M := 5
      },
      {
        lower := 1468928, upper := 2937856, M := 4
      },
      {
        lower := 2937856, upper := 5875712, M := 3
      },
      {
        lower := 5875712, upper := 11751424, M := 2
      },
      {
        lower := 11751424, upper := 23502848, M := 2
      },
      {
        lower := 23502848, upper := 47005696, M := 1
      },
      {
        lower := 47005696, upper := 94011392, M := 1
      },
      {
        lower := 94011392, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 153, r := 50, s := 108,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 308, upper := 459,
        witness := RowWitness.topPrime 307
      },
      {
        lower := 460, upper := 609,
        witness := RowWitness.topPrime 457
      },
      {
        lower := 610, upper := 759,
        witness := RowWitness.topPrime 607
      },
      {
        lower := 760, upper := 909,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 910, upper := 1059,
        witness := RowWitness.topPrime 907
      },
      {
        lower := 1060, upper := 1203,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1204, upper := 1353,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1354, upper := 1479,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1480, upper := 1623,
        witness := RowWitness.topPrime 1471
      },
      {
        lower := 1624, upper := 1773,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1774, upper := 1911,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1912, upper := 2059,
        witness := RowWitness.topPrime 1907
      },
      {
        lower := 2060, upper := 2205,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2206, upper := 2355,
        witness := RowWitness.topPrime 2203
      },
      {
        lower := 2356, upper := 2503,
        witness := RowWitness.topPrime 2351
      },
      {
        lower := 2504, upper := 2655,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2656, upper := 2799,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2800, upper := 2949,
        witness := RowWitness.topPrime 2797
      },
      {
        lower := 2950, upper := 3091,
        witness := RowWitness.topPrime 2939
      },
      {
        lower := 3092, upper := 3241,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3242, upper := 3381,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3382, upper := 3525,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3526, upper := 3669,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3670, upper := 3811,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3812, upper := 3955,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3956, upper := 4099,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4100, upper := 4251,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4252, upper := 4395,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4396, upper := 4543,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4544, upper := 4675,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4676, upper := 4825,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4826, upper := 4969,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4970, upper := 5121,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5122, upper := 5271,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5272, upper := 5413,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5414, upper := 5565,
        witness := RowWitness.topPrime 5413
      },
      {
        lower := 5566, upper := 5715,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5716, upper := 5863,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5864, upper := 6013,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 6014, upper := 6163,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6164, upper := 6315,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6316, upper := 6463,
        witness := RowWitness.topPrime 6311
      },
      {
        lower := 6464, upper := 6603,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6604, upper := 6751,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6752, upper := 6889,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6890, upper := 7035,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7036, upper := 7179,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7180, upper := 7329,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7330, upper := 7473,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7474, upper := 7611,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7612, upper := 7759,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7760, upper := 7911,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7912, upper := 8059,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8060, upper := 8211,
        witness := RowWitness.topPrime 8059
      },
      {
        lower := 8212, upper := 8361,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8362, upper := 8505,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8506, upper := 8653,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8654, upper := 8799,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8800, upper := 8935,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8936, upper := 9085,
        witness := RowWitness.topPrime 8933
      },
      {
        lower := 9086, upper := 9219,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9220, upper := 9361,
        witness := RowWitness.topPrime 9209
      },
      {
        lower := 9362, upper := 9501,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9502, upper := 9649,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9650, upper := 9801,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9802, upper := 9943,
        witness := RowWitness.topPrime 9791
      },
      {
        lower := 9944, upper := 10093,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10094, upper := 10245,
        witness := RowWitness.topPrime 10093
      },
      {
        lower := 10246, upper := 10395,
        witness := RowWitness.topPrime 10243
      },
      {
        lower := 10396, upper := 10543,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10544, upper := 10683,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10684, upper := 10819,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10820, upper := 10951,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10952, upper := 11101,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11102, upper := 11245,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11246, upper := 11395,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11396, upper := 11545,
        witness := RowWitness.topPrime 11393
      },
      {
        lower := 11546, upper := 11679,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11680, upper := 11829,
        witness := RowWitness.topPrime 11677
      },
      {
        lower := 11830, upper := 11979,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 11980, upper := 12123,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12124, upper := 12271,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12272, upper := 12421,
        witness := RowWitness.topPrime 12269
      },
      {
        lower := 12422, upper := 12573,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12574, upper := 12721,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12722, upper := 12873,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12874, upper := 13005,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13006, upper := 13155,
        witness := RowWitness.topPrime 13003
      },
      {
        lower := 13156, upper := 13303,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13304, upper := 13449,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13450, upper := 13593,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13594, upper := 13743,
        witness := RowWitness.topPrime 13591
      },
      {
        lower := 13744, upper := 13881,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13882, upper := 14031,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14032, upper := 14181,
        witness := RowWitness.topPrime 14029
      },
      {
        lower := 14182, upper := 14329,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14330, upper := 14479,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14480, upper := 14631,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14632, upper := 14781,
        witness := RowWitness.topPrime 14629
      },
      {
        lower := 14782, upper := 14931,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14932, upper := 15081,
        witness := RowWitness.topPrime 14929
      },
      {
        lower := 15082, upper := 15229,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15230, upper := 15379,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15380, upper := 15529,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15530, upper := 15679,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15680, upper := 15831,
        witness := RowWitness.topPrime 15679
      },
      {
        lower := 15832, upper := 15975,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15976, upper := 16125,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16126, upper := 16263,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16264, upper := 16405,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16406, upper := 16533,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16534, upper := 16681,
        witness := RowWitness.topPrime 16529
      },
      {
        lower := 16682, upper := 16825,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16826, upper := 16975,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 16976, upper := 17115,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17116, upper := 17259,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17260, upper := 17409,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17410, upper := 17553,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17554, upper := 17703,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17704, upper := 17835,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17836, upper := 17979,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17980, upper := 18129,
        witness := RowWitness.topPrime 17977
      },
      {
        lower := 18130, upper := 18279,
        witness := RowWitness.topPrime 18127
      },
      {
        lower := 18280, upper := 18421,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18422, upper := 18565,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18566, upper := 18705,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18706, upper := 18853,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18854, upper := 18991,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 18992, upper := 19131,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19132, upper := 19273,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19274, upper := 19425,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19426, upper := 19575,
        witness := RowWitness.topPrime 19423
      },
      {
        lower := 19576, upper := 19723,
        witness := RowWitness.topPrime 19571
      },
      {
        lower := 19724, upper := 19869,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19870, upper := 20019,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20020, upper := 20163,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20164, upper := 20313,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20314, upper := 20449,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20450, upper := 20595,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20596, upper := 20745,
        witness := RowWitness.topPrime 20593
      },
      {
        lower := 20746, upper := 20895,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20896, upper := 21039,
        witness := RowWitness.topPrime 20887
      },
      {
        lower := 21040, upper := 21183,
        witness := RowWitness.topPrime 21031
      },
      {
        lower := 21184, upper := 21331,
        witness := RowWitness.topPrime 21179
      },
      {
        lower := 21332, upper := 21475,
        witness := RowWitness.topPrime 21323
      },
      {
        lower := 21476, upper := 21619,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21620, upper := 21769,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21770, upper := 21919,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21920, upper := 22063,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22064, upper := 22215,
        witness := RowWitness.topPrime 22063
      },
      {
        lower := 22216, upper := 22345,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22346, upper := 22495,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22496, upper := 22635,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22636, upper := 22773,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22774, upper := 22921,
        witness := RowWitness.topPrime 22769
      },
      {
        lower := 22922, upper := 23073,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23074, upper := 23223,
        witness := RowWitness.topPrime 23071
      },
      {
        lower := 23224, upper := 23255,
        witness := RowWitness.topPrime 23209
      },
      {
        lower := 23763, upper := 23913,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23914, upper := 23914,
        witness := RowWitness.topPrime 23911
      },
      {
        lower := 24037, upper := 24162,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24189,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24319,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24481,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24482, upper := 24519,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 25000, upper := 25116,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25341,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25342, upper := 25367,
        witness := RowWitness.topPrime 25339
      },
      {
        lower := 26411, upper := 26559,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26560, upper := 26563,
        witness := RowWitness.topPrime 26557
      },
      {
        lower := 26624, upper := 26749,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26750, upper := 26776,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 26934, upper := 27048,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27588,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27887,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28275,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28276, upper := 28277,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28672, upper := 28713,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28863,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28864, upper := 28869,
        witness := RowWitness.topPrime 28859
      },
      {
        lower := 29791, upper := 29920,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30720, upper := 30755,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30872,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30910,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31051,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31345,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31346, upper := 31402,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31481,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31836,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31979,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33641,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33766,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34471,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34472, upper := 34527,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35287, upper := 35304,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35439,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36064,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36649,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36650, upper := 36653,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37362,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37455,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37645,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37646, upper := 37690,
        witness := RowWitness.topPrime 37643
      },
      {
        lower := 38307, upper := 38455,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38456, upper := 38459,
        witness := RowWitness.topPrime 38453
      },
      {
        lower := 40401, upper := 40480,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40956,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41083,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43839,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 44944, upper := 45042,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45056, upper := 45096,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45405,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47673,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47674, upper := 47676,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48113,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48820,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50562,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51157,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55593,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55594, upper := 55599,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56321,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56459,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57274,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57397,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58716,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62562,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63997,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 68644, upper := 68791,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68792, upper := 68803,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69042,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71439,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71440, upper := 71441,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 73205, upper := 73319,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85835,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89525,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93902,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 103041, upper := 103118,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109527,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149029,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154601,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 23256, upper := 46512, M := 16
      },
      {
        lower := 46512, upper := 93024, M := 12
      },
      {
        lower := 93024, upper := 186048, M := 9
      },
      {
        lower := 186048, upper := 372096, M := 7
      },
      {
        lower := 372096, upper := 744192, M := 5
      },
      {
        lower := 744192, upper := 1488384, M := 4
      },
      {
        lower := 1488384, upper := 2976768, M := 3
      },
      {
        lower := 2976768, upper := 5953536, M := 3
      },
      {
        lower := 5953536, upper := 11907072, M := 2
      },
      {
        lower := 11907072, upper := 23814144, M := 2
      },
      {
        lower := 23814144, upper := 47628288, M := 1
      },
      {
        lower := 47628288, upper := 95256576, M := 1
      },
      {
        lower := 95256576, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 154, r := 51, s := 109,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 310, upper := 460,
        witness := RowWitness.topPrime 307
      },
      {
        lower := 461, upper := 614,
        witness := RowWitness.topPrime 461
      },
      {
        lower := 615, upper := 766,
        witness := RowWitness.topPrime 613
      },
      {
        lower := 767, upper := 914,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 915, upper := 1064,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 1065, upper := 1216,
        witness := RowWitness.topPrime 1063
      },
      {
        lower := 1217, upper := 1370,
        witness := RowWitness.topPrime 1217
      },
      {
        lower := 1371, upper := 1520,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1521, upper := 1664,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1665, upper := 1816,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1817, upper := 1964,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1965, upper := 2104,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2105, upper := 2252,
        witness := RowWitness.topPrime 2099
      },
      {
        lower := 2253, upper := 2404,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2405, upper := 2552,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2553, upper := 2704,
        witness := RowWitness.topPrime 2551
      },
      {
        lower := 2705, upper := 2852,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2853, upper := 3004,
        witness := RowWitness.topPrime 2851
      },
      {
        lower := 3005, upper := 3154,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3155, upper := 3290,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3291, upper := 3424,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3425, upper := 3566,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3567, upper := 3712,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3713, upper := 3862,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3863, upper := 4016,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 4017, upper := 4166,
        witness := RowWitness.topPrime 4013
      },
      {
        lower := 4167, upper := 4312,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4313, upper := 4450,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4451, upper := 4604,
        witness := RowWitness.topPrime 4451
      },
      {
        lower := 4605, upper := 4756,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4757, upper := 4904,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4905, upper := 5056,
        witness := RowWitness.topPrime 4903
      },
      {
        lower := 5057, upper := 5204,
        witness := RowWitness.topPrime 5051
      },
      {
        lower := 5205, upper := 5350,
        witness := RowWitness.topPrime 5197
      },
      {
        lower := 5351, upper := 5504,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5505, upper := 5656,
        witness := RowWitness.topPrime 5503
      },
      {
        lower := 5657, upper := 5810,
        witness := RowWitness.topPrime 5657
      },
      {
        lower := 5811, upper := 5960,
        witness := RowWitness.topPrime 5807
      },
      {
        lower := 5961, upper := 6106,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6107, upper := 6254,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6255, upper := 6400,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6401, upper := 6550,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6551, upper := 6704,
        witness := RowWitness.topPrime 6551
      },
      {
        lower := 6705, upper := 6856,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6857, upper := 7010,
        witness := RowWitness.topPrime 6857
      },
      {
        lower := 7011, upper := 7154,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7155, upper := 7304,
        witness := RowWitness.topPrime 7151
      },
      {
        lower := 7305, upper := 7450,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7451, upper := 7604,
        witness := RowWitness.topPrime 7451
      },
      {
        lower := 7605, upper := 7756,
        witness := RowWitness.topPrime 7603
      },
      {
        lower := 7757, upper := 7910,
        witness := RowWitness.topPrime 7757
      },
      {
        lower := 7911, upper := 8060,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8061, upper := 8212,
        witness := RowWitness.topPrime 8059
      },
      {
        lower := 8213, upper := 8362,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8363, upper := 8516,
        witness := RowWitness.topPrime 8363
      },
      {
        lower := 8517, upper := 8666,
        witness := RowWitness.topPrime 8513
      },
      {
        lower := 8667, upper := 8816,
        witness := RowWitness.topPrime 8663
      },
      {
        lower := 8817, upper := 8960,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8961, upper := 9104,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9105, upper := 9256,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9257, upper := 9410,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9411, upper := 9556,
        witness := RowWitness.topPrime 9403
      },
      {
        lower := 9557, upper := 9704,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9705, upper := 9850,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9851, upper := 10004,
        witness := RowWitness.topPrime 9851
      },
      {
        lower := 10005, upper := 10126,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10127, upper := 10264,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10265, upper := 10412,
        witness := RowWitness.topPrime 10259
      },
      {
        lower := 10413, upper := 10552,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10553, upper := 10684,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10685, upper := 10820,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10821, upper := 10952,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10953, upper := 11102,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11103, upper := 11246,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11247, upper := 11396,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11397, upper := 11546,
        witness := RowWitness.topPrime 11393
      },
      {
        lower := 11547, upper := 11680,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11681, upper := 11834,
        witness := RowWitness.topPrime 11681
      },
      {
        lower := 11835, upper := 11986,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11987, upper := 12140,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12141, upper := 12272,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12273, upper := 12422,
        witness := RowWitness.topPrime 12269
      },
      {
        lower := 12423, upper := 12574,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12575, upper := 12722,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12723, upper := 12874,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12875, upper := 13006,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13007, upper := 13160,
        witness := RowWitness.topPrime 13007
      },
      {
        lower := 13161, upper := 13312,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13313, upper := 13466,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13467, upper := 13616,
        witness := RowWitness.topPrime 13463
      },
      {
        lower := 13617, upper := 13766,
        witness := RowWitness.topPrime 13613
      },
      {
        lower := 13767, upper := 13916,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13917, upper := 14066,
        witness := RowWitness.topPrime 13913
      },
      {
        lower := 14067, upper := 14210,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14211, upper := 14360,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14361, upper := 14500,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14501, upper := 14642,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14643, upper := 14792,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14793, upper := 14936,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14937, upper := 15082,
        witness := RowWitness.topPrime 14929
      },
      {
        lower := 15083, upper := 15236,
        witness := RowWitness.topPrime 15083
      },
      {
        lower := 15237, upper := 15386,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15387, upper := 15536,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15537, upper := 15680,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15681, upper := 15832,
        witness := RowWitness.topPrime 15679
      },
      {
        lower := 15833, upper := 15976,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15977, upper := 16126,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16127, upper := 16280,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16281, upper := 16426,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16427, upper := 16580,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16581, upper := 16726,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16727, upper := 16856,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16857, upper := 16996,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16997, upper := 17146,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17147, upper := 17290,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17291, upper := 17444,
        witness := RowWitness.topPrime 17291
      },
      {
        lower := 17445, upper := 17596,
        witness := RowWitness.topPrime 17443
      },
      {
        lower := 17597, upper := 17750,
        witness := RowWitness.topPrime 17597
      },
      {
        lower := 17751, upper := 17902,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17903, upper := 18056,
        witness := RowWitness.topPrime 17903
      },
      {
        lower := 18057, upper := 18202,
        witness := RowWitness.topPrime 18049
      },
      {
        lower := 18203, upper := 18352,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18353, upper := 18506,
        witness := RowWitness.topPrime 18353
      },
      {
        lower := 18507, upper := 18656,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18657, upper := 18790,
        witness := RowWitness.topPrime 18637
      },
      {
        lower := 18791, upper := 18940,
        witness := RowWitness.topPrime 18787
      },
      {
        lower := 18941, upper := 19072,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19073, upper := 19226,
        witness := RowWitness.topPrime 19073
      },
      {
        lower := 19227, upper := 19372,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19373, upper := 19526,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19527, upper := 19660,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19661, upper := 19814,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19815, upper := 19966,
        witness := RowWitness.topPrime 19813
      },
      {
        lower := 19967, upper := 20116,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20117, upper := 20270,
        witness := RowWitness.topPrime 20117
      },
      {
        lower := 20271, upper := 20422,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20423, upper := 20564,
        witness := RowWitness.topPrime 20411
      },
      {
        lower := 20565, upper := 20716,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20717, upper := 20870,
        witness := RowWitness.topPrime 20717
      },
      {
        lower := 20871, upper := 21010,
        witness := RowWitness.topPrime 20857
      },
      {
        lower := 21011, upper := 21164,
        witness := RowWitness.topPrime 21011
      },
      {
        lower := 21165, upper := 21316,
        witness := RowWitness.topPrime 21163
      },
      {
        lower := 21317, upper := 21470,
        witness := RowWitness.topPrime 21317
      },
      {
        lower := 21471, upper := 21620,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21621, upper := 21770,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21771, upper := 21920,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21921, upper := 22064,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22065, upper := 22216,
        witness := RowWitness.topPrime 22063
      },
      {
        lower := 22217, upper := 22346,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22347, upper := 22496,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22497, upper := 22636,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22637, upper := 22790,
        witness := RowWitness.topPrime 22637
      },
      {
        lower := 22791, upper := 22940,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22941, upper := 23090,
        witness := RowWitness.topPrime 22937
      },
      {
        lower := 23091, upper := 23240,
        witness := RowWitness.topPrime 23087
      },
      {
        lower := 23241, upper := 23380,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23381, upper := 23524,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23525, upper := 23561,
        witness := RowWitness.topPrime 23509
      },
      {
        lower := 23763, upper := 23914,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23915, upper := 23915,
        witness := RowWitness.topPrime 23911
      },
      {
        lower := 24057, upper := 24202,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24203, upper := 24210,
        witness := RowWitness.topPrime 24203
      },
      {
        lower := 24299, upper := 24320,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24482,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24483, upper := 24520,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24576, upper := 24718,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25117,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25342,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25343, upper := 25368,
        witness := RowWitness.topPrime 25343
      },
      {
        lower := 26364, upper := 26397,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26508, upper := 26517,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26661,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27589,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27888,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28276,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28277, upper := 28278,
        witness := RowWitness.topPrime 28277
      },
      {
        lower := 28561, upper := 28584,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28714,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28825,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29921,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30746,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30747, upper := 30756,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30771,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30911,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31052,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31402,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31403, upper := 31403,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31423, upper := 31482,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31837,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31980,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32921,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32958,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33642,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33767,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34472,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34473, upper := 34544,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36650,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36651, upper := 36654,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37363,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37456,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37646,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37647, upper := 37691,
        witness := RowWitness.topPrime 37643
      },
      {
        lower := 38307, upper := 38444,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39476,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39477, upper := 39479,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40481,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40957,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41084,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43840,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45406,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45949,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47674,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47675, upper := 47677,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48114,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48821,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49283,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51158,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55594,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55595, upper := 55600,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56322,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56460,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57275,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 59049, upper := 59109,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62563,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63998,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65689,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68792,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68793, upper := 68804,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69043,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71440,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71441, upper := 71442,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 85805, upper := 85836,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89526,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93903,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98457,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103119,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109528,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137934,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149030,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154602,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 23562, upper := 47124, M := 15
      },
      {
        lower := 47124, upper := 94248, M := 12
      },
      {
        lower := 94248, upper := 188496, M := 9
      },
      {
        lower := 188496, upper := 376992, M := 7
      },
      {
        lower := 376992, upper := 753984, M := 5
      },
      {
        lower := 753984, upper := 1507968, M := 4
      },
      {
        lower := 1507968, upper := 3015936, M := 3
      },
      {
        lower := 3015936, upper := 6031872, M := 2
      },
      {
        lower := 6031872, upper := 12063744, M := 2
      },
      {
        lower := 12063744, upper := 24127488, M := 2
      },
      {
        lower := 24127488, upper := 48254976, M := 1
      },
      {
        lower := 48254976, upper := 96509952, M := 1
      },
      {
        lower := 96509952, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 155, r := 51, s := 110,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 312, upper := 465,
        witness := RowWitness.topPrime 311
      },
      {
        lower := 466, upper := 617,
        witness := RowWitness.topPrime 463
      },
      {
        lower := 618, upper := 771,
        witness := RowWitness.topPrime 617
      },
      {
        lower := 772, upper := 923,
        witness := RowWitness.topPrime 769
      },
      {
        lower := 924, upper := 1073,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1074, upper := 1223,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1224, upper := 1377,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1378, upper := 1527,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1528, upper := 1677,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1678, upper := 1823,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1824, upper := 1977,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1978, upper := 2127,
        witness := RowWitness.topPrime 1973
      },
      {
        lower := 2128, upper := 2267,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2268, upper := 2421,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2422, upper := 2571,
        witness := RowWitness.topPrime 2417
      },
      {
        lower := 2572, upper := 2711,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2712, upper := 2865,
        witness := RowWitness.topPrime 2711
      },
      {
        lower := 2866, upper := 3015,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 3016, upper := 3165,
        witness := RowWitness.topPrime 3011
      },
      {
        lower := 3166, upper := 3317,
        witness := RowWitness.topPrime 3163
      },
      {
        lower := 3318, upper := 3467,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3468, upper := 3621,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3622, upper := 3771,
        witness := RowWitness.topPrime 3617
      },
      {
        lower := 3772, upper := 3923,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3924, upper := 4077,
        witness := RowWitness.topPrime 3923
      },
      {
        lower := 4078, upper := 4227,
        witness := RowWitness.topPrime 4073
      },
      {
        lower := 4228, upper := 4373,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4374, upper := 4527,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4528, upper := 4677,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4678, upper := 4827,
        witness := RowWitness.topPrime 4673
      },
      {
        lower := 4828, upper := 4971,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4972, upper := 5123,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5124, upper := 5273,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5274, upper := 5427,
        witness := RowWitness.topPrime 5273
      },
      {
        lower := 5428, upper := 5573,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5574, upper := 5727,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5728, upper := 5871,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5872, upper := 6023,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6024, upper := 6165,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6166, upper := 6317,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6318, upper := 6471,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6472, upper := 6623,
        witness := RowWitness.topPrime 6469
      },
      {
        lower := 6624, upper := 6773,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6774, upper := 6917,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6918, upper := 7071,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7072, upper := 7223,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7224, upper := 7373,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7374, upper := 7523,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7524, upper := 7677,
        witness := RowWitness.topPrime 7523
      },
      {
        lower := 7678, upper := 7827,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7828, upper := 7977,
        witness := RowWitness.topPrime 7823
      },
      {
        lower := 7978, upper := 8117,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8118, upper := 8271,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8272, upper := 8423,
        witness := RowWitness.topPrime 8269
      },
      {
        lower := 8424, upper := 8577,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8578, upper := 8727,
        witness := RowWitness.topPrime 8573
      },
      {
        lower := 8728, upper := 8873,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8874, upper := 9021,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9022, upper := 9167,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9168, upper := 9315,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9316, upper := 9465,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9466, upper := 9617,
        witness := RowWitness.topPrime 9463
      },
      {
        lower := 9618, upper := 9767,
        witness := RowWitness.topPrime 9613
      },
      {
        lower := 9768, upper := 9921,
        witness := RowWitness.topPrime 9767
      },
      {
        lower := 9922, upper := 10061,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10062, upper := 10215,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10216, upper := 10365,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10366, upper := 10511,
        witness := RowWitness.topPrime 10357
      },
      {
        lower := 10512, upper := 10655,
        witness := RowWitness.topPrime 10501
      },
      {
        lower := 10656, upper := 10805,
        witness := RowWitness.topPrime 10651
      },
      {
        lower := 10806, upper := 10953,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10954, upper := 11103,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11104, upper := 11247,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11248, upper := 11397,
        witness := RowWitness.topPrime 11243
      },
      {
        lower := 11398, upper := 11547,
        witness := RowWitness.topPrime 11393
      },
      {
        lower := 11548, upper := 11681,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11682, upper := 11835,
        witness := RowWitness.topPrime 11681
      },
      {
        lower := 11836, upper := 11987,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11988, upper := 12141,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12142, upper := 12273,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12274, upper := 12423,
        witness := RowWitness.topPrime 12269
      },
      {
        lower := 12424, upper := 12575,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12576, upper := 12723,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12724, upper := 12875,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12876, upper := 13007,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13008, upper := 13161,
        witness := RowWitness.topPrime 13007
      },
      {
        lower := 13162, upper := 13313,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13314, upper := 13467,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13468, upper := 13617,
        witness := RowWitness.topPrime 13463
      },
      {
        lower := 13618, upper := 13767,
        witness := RowWitness.topPrime 13613
      },
      {
        lower := 13768, upper := 13917,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13918, upper := 14067,
        witness := RowWitness.topPrime 13913
      },
      {
        lower := 14068, upper := 14211,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14212, upper := 14361,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14362, upper := 14501,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14502, upper := 14643,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14644, upper := 14793,
        witness := RowWitness.topPrime 14639
      },
      {
        lower := 14794, upper := 14937,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14938, upper := 15083,
        witness := RowWitness.topPrime 14929
      },
      {
        lower := 15084, upper := 15237,
        witness := RowWitness.topPrime 15083
      },
      {
        lower := 15238, upper := 15387,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15388, upper := 15537,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15538, upper := 15681,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15682, upper := 15833,
        witness := RowWitness.topPrime 15679
      },
      {
        lower := 15834, upper := 15977,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15978, upper := 16127,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16128, upper := 16281,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16282, upper := 16427,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16428, upper := 16581,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16582, upper := 16727,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16728, upper := 16857,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16858, upper := 16997,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16998, upper := 17147,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17148, upper := 17291,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17292, upper := 17445,
        witness := RowWitness.topPrime 17291
      },
      {
        lower := 17446, upper := 17597,
        witness := RowWitness.topPrime 17443
      },
      {
        lower := 17598, upper := 17751,
        witness := RowWitness.topPrime 17597
      },
      {
        lower := 17752, upper := 17903,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17904, upper := 18057,
        witness := RowWitness.topPrime 17903
      },
      {
        lower := 18058, upper := 18203,
        witness := RowWitness.topPrime 18049
      },
      {
        lower := 18204, upper := 18353,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18354, upper := 18507,
        witness := RowWitness.topPrime 18353
      },
      {
        lower := 18508, upper := 18657,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18658, upper := 18791,
        witness := RowWitness.topPrime 18637
      },
      {
        lower := 18792, upper := 18941,
        witness := RowWitness.topPrime 18787
      },
      {
        lower := 18942, upper := 19073,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19074, upper := 19227,
        witness := RowWitness.topPrime 19073
      },
      {
        lower := 19228, upper := 19373,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19374, upper := 19527,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19528, upper := 19661,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19662, upper := 19815,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19816, upper := 19967,
        witness := RowWitness.topPrime 19813
      },
      {
        lower := 19968, upper := 20117,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20118, upper := 20271,
        witness := RowWitness.topPrime 20117
      },
      {
        lower := 20272, upper := 20423,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20424, upper := 20565,
        witness := RowWitness.topPrime 20411
      },
      {
        lower := 20566, upper := 20717,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20718, upper := 20871,
        witness := RowWitness.topPrime 20717
      },
      {
        lower := 20872, upper := 21011,
        witness := RowWitness.topPrime 20857
      },
      {
        lower := 21012, upper := 21165,
        witness := RowWitness.topPrime 21011
      },
      {
        lower := 21166, upper := 21317,
        witness := RowWitness.topPrime 21163
      },
      {
        lower := 21318, upper := 21471,
        witness := RowWitness.topPrime 21317
      },
      {
        lower := 21472, upper := 21621,
        witness := RowWitness.topPrime 21467
      },
      {
        lower := 21622, upper := 21771,
        witness := RowWitness.topPrime 21617
      },
      {
        lower := 21772, upper := 21921,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21922, upper := 22065,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22066, upper := 22217,
        witness := RowWitness.topPrime 22063
      },
      {
        lower := 22218, upper := 22347,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22348, upper := 22497,
        witness := RowWitness.topPrime 22343
      },
      {
        lower := 22498, upper := 22637,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22638, upper := 22791,
        witness := RowWitness.topPrime 22637
      },
      {
        lower := 22792, upper := 22941,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22942, upper := 23091,
        witness := RowWitness.topPrime 22937
      },
      {
        lower := 23092, upper := 23241,
        witness := RowWitness.topPrime 23087
      },
      {
        lower := 23242, upper := 23381,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23382, upper := 23525,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23526, upper := 23663,
        witness := RowWitness.topPrime 23509
      },
      {
        lower := 23664, upper := 23817,
        witness := RowWitness.topPrime 23663
      },
      {
        lower := 23818, upper := 23916,
        witness := RowWitness.topPrime 23813
      },
      {
        lower := 24037, upper := 24183,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24184, upper := 24211,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24299, upper := 24321,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24483,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24484, upper := 24521,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24576, upper := 24719,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25343,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25344, upper := 25369,
        witness := RowWitness.topPrime 25343
      },
      {
        lower := 26364, upper := 26398,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26561,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26562, upper := 26565,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26624, upper := 26751,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26752, upper := 26778,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27590,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27889,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28227, upper := 28244,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28585,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28715,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28865,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28866, upper := 28871,
        witness := RowWitness.topPrime 28859
      },
      {
        lower := 30618, upper := 30747,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30748, upper := 30874,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30899, upper := 30912,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31053,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31347,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31348, upper := 31404,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31483,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31838,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31981,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32922,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32959,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33643,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33768,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34473,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34474, upper := 34545,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36015, upper := 36066,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36651,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36652, upper := 36655,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37364,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37457,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37600,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37692,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38445,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39477,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39478, upper := 39480,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40482,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40958,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41085,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45407,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45950,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47675,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47676, upper := 47678,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48115,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48822,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49284,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50564,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51159,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55595,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55596, upper := 55601,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56323,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56461,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57276,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57399,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58718,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 65610, upper := 65690,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68793,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68794, upper := 68805,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69044,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71441,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71442, upper := 71443,
        witness := RowWitness.topPrime 71437
      },
      {
        lower := 73205, upper := 73321,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85837,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 98415, upper := 98458,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137935,
        witness := RowWitness.topPrime 137831
      }
    ],
    layers := [
      {
        lower := 23870, upper := 47740, M := 15
      },
      {
        lower := 47740, upper := 95480, M := 11
      },
      {
        lower := 95480, upper := 190960, M := 8
      },
      {
        lower := 190960, upper := 381920, M := 6
      },
      {
        lower := 381920, upper := 763840, M := 5
      },
      {
        lower := 763840, upper := 1527680, M := 4
      },
      {
        lower := 1527680, upper := 3055360, M := 3
      },
      {
        lower := 3055360, upper := 6110720, M := 2
      },
      {
        lower := 6110720, upper := 12221440, M := 2
      },
      {
        lower := 12221440, upper := 24442880, M := 1
      },
      {
        lower := 24442880, upper := 48885760, M := 1
      },
      {
        lower := 48885760, upper := 97771520, M := 1
      },
      {
        lower := 97771520, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 156, r := 51, s := 111,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 314, upper := 468,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 469, upper := 622,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 623, upper := 774,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 775, upper := 928,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 929, upper := 1084,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1085, upper := 1224,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1225, upper := 1378,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1379, upper := 1528,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1529, upper := 1678,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1679, upper := 1824,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1825, upper := 1978,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1979, upper := 2134,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2135, upper := 2286,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2287, upper := 2442,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2443, upper := 2596,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2597, upper := 2748,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2749, upper := 2904,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2905, upper := 3058,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3059, upper := 3204,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3205, upper := 3358,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3359, upper := 3514,
        witness := RowWitness.topPrime 3359
      },
      {
        lower := 3515, upper := 3666,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3667, upper := 3814,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3815, upper := 3958,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3959, upper := 4102,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4103, upper := 4254,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4255, upper := 4408,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4409, upper := 4564,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4565, upper := 4716,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4717, upper := 4858,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4859, upper := 4986,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4987, upper := 5142,
        witness := RowWitness.topPrime 4987
      },
      {
        lower := 5143, upper := 5274,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5275, upper := 5428,
        witness := RowWitness.topPrime 5273
      },
      {
        lower := 5429, upper := 5574,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5575, upper := 5728,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5729, upper := 5872,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5873, upper := 6024,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6025, upper := 6166,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6167, upper := 6318,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6319, upper := 6472,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6473, upper := 6628,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6629, upper := 6774,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6775, upper := 6918,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6919, upper := 7072,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7073, upper := 7224,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7225, upper := 7374,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7375, upper := 7524,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7525, upper := 7678,
        witness := RowWitness.topPrime 7523
      },
      {
        lower := 7679, upper := 7828,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7829, upper := 7984,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7985, upper := 8118,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8119, upper := 8272,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8273, upper := 8428,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8429, upper := 8584,
        witness := RowWitness.topPrime 8429
      },
      {
        lower := 8585, upper := 8736,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8737, upper := 8892,
        witness := RowWitness.topPrime 8737
      },
      {
        lower := 8893, upper := 9048,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9049, upper := 9204,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9205, upper := 9358,
        witness := RowWitness.topPrime 9203
      },
      {
        lower := 9359, upper := 9504,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9505, upper := 9652,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9653, upper := 9804,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9805, upper := 9958,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9959, upper := 10104,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10105, upper := 10258,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10259, upper := 10414,
        witness := RowWitness.topPrime 10259
      },
      {
        lower := 10415, upper := 10554,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10555, upper := 10686,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10687, upper := 10842,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10843, upper := 10992,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10993, upper := 11148,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11149, upper := 11304,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11305, upper := 11454,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11455, upper := 11602,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11603, upper := 11752,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11753, upper := 11898,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11899, upper := 12052,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12053, upper := 12204,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12205, upper := 12358,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12359, upper := 12502,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12503, upper := 12658,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12659, upper := 12814,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12815, upper := 12964,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12965, upper := 13114,
        witness := RowWitness.topPrime 12959
      },
      {
        lower := 13115, upper := 13264,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13265, upper := 13414,
        witness := RowWitness.topPrime 13259
      },
      {
        lower := 13415, upper := 13566,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13567, upper := 13722,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13723, upper := 13878,
        witness := RowWitness.topPrime 13723
      },
      {
        lower := 13879, upper := 14034,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14035, upper := 14188,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14189, upper := 14332,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14333, upper := 14482,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14483, upper := 14634,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14635, upper := 14788,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14789, upper := 14938,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14939, upper := 15094,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15095, upper := 15246,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15247, upper := 15396,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15397, upper := 15546,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15547, upper := 15696,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15697, upper := 15838,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15839, upper := 15978,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15979, upper := 16128,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16129, upper := 16282,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16283, upper := 16428,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16429, upper := 16582,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16583, upper := 16728,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16729, upper := 16884,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16885, upper := 17038,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17039, upper := 17188,
        witness := RowWitness.topPrime 17033
      },
      {
        lower := 17189, upper := 17344,
        witness := RowWitness.topPrime 17189
      },
      {
        lower := 17345, upper := 17496,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17497, upper := 17652,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17653, upper := 17782,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17783, upper := 17938,
        witness := RowWitness.topPrime 17783
      },
      {
        lower := 17939, upper := 18094,
        witness := RowWitness.topPrime 17939
      },
      {
        lower := 18095, upper := 18244,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18245, upper := 18388,
        witness := RowWitness.topPrime 18233
      },
      {
        lower := 18389, upper := 18534,
        witness := RowWitness.topPrime 18379
      },
      {
        lower := 18535, upper := 18678,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18679, upper := 18834,
        witness := RowWitness.topPrime 18679
      },
      {
        lower := 18835, upper := 18958,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18959, upper := 19114,
        witness := RowWitness.topPrime 18959
      },
      {
        lower := 19115, upper := 19242,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19243, upper := 19392,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19393, upper := 19546,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19547, upper := 19698,
        witness := RowWitness.topPrime 19543
      },
      {
        lower := 19699, upper := 19854,
        witness := RowWitness.topPrime 19699
      },
      {
        lower := 19855, upper := 20008,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20009, upper := 20152,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20153, upper := 20304,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20305, upper := 20452,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20453, upper := 20598,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20599, upper := 20754,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20755, upper := 20908,
        witness := RowWitness.topPrime 20753
      },
      {
        lower := 20909, upper := 21058,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21059, upper := 21214,
        witness := RowWitness.topPrime 21059
      },
      {
        lower := 21215, upper := 21366,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21367, upper := 21502,
        witness := RowWitness.topPrime 21347
      },
      {
        lower := 21503, upper := 21658,
        witness := RowWitness.topPrime 21503
      },
      {
        lower := 21659, upper := 21804,
        witness := RowWitness.topPrime 21649
      },
      {
        lower := 21805, upper := 21958,
        witness := RowWitness.topPrime 21803
      },
      {
        lower := 21959, upper := 22098,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22099, upper := 22248,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22249, upper := 22402,
        witness := RowWitness.topPrime 22247
      },
      {
        lower := 22403, upper := 22552,
        witness := RowWitness.topPrime 22397
      },
      {
        lower := 22553, upper := 22704,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22705, upper := 22854,
        witness := RowWitness.topPrime 22699
      },
      {
        lower := 22855, upper := 23008,
        witness := RowWitness.topPrime 22853
      },
      {
        lower := 23009, upper := 23158,
        witness := RowWitness.topPrime 23003
      },
      {
        lower := 23159, upper := 23314,
        witness := RowWitness.topPrime 23159
      },
      {
        lower := 23315, upper := 23466,
        witness := RowWitness.topPrime 23311
      },
      {
        lower := 23467, upper := 23614,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23615, upper := 23764,
        witness := RowWitness.topPrime 23609
      },
      {
        lower := 23765, upper := 23916,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23917, upper := 24072,
        witness := RowWitness.topPrime 23917
      },
      {
        lower := 24073, upper := 24179,
        witness := RowWitness.topPrime 24071
      },
      {
        lower := 24334, upper := 24484,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24485, upper := 24522,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24576, upper := 24720,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25119,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25360,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26508, upper := 26566,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26663,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27591,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28278,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28279, upper := 28280,
        witness := RowWitness.topPrime 28279
      },
      {
        lower := 28812, upper := 28872,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29923,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 31054,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31348,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31349, upper := 31405,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31484,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31839,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31982,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33644,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33769,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34474,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34475, upper := 34546,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36652,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36653, upper := 36656,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37365,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37458,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37648,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37649, upper := 37693,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38446,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39478,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39479, upper := 39481,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40483,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40959,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 43750, upper := 43842,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45408,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47676,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47677, upper := 47679,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48116,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48823,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50565,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51160,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56324,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56462,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 62500, upper := 62565,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68794,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68795, upper := 68799,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69045,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71442,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71443, upper := 71444,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73322,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89528,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93905,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 148955, upper := 149032,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 24180, upper := 48360, M := 14
      },
      {
        lower := 48360, upper := 96720, M := 10
      },
      {
        lower := 96720, upper := 193440, M := 8
      },
      {
        lower := 193440, upper := 386880, M := 6
      },
      {
        lower := 386880, upper := 773760, M := 4
      },
      {
        lower := 773760, upper := 1547520, M := 3
      },
      {
        lower := 1547520, upper := 3095040, M := 3
      },
      {
        lower := 3095040, upper := 6190080, M := 2
      },
      {
        lower := 6190080, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 157, r := 52, s := 111,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 316, upper := 469,
        witness := RowWitness.topPrime 313
      },
      {
        lower := 470, upper := 623,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 624, upper := 775,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 776, upper := 929,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 930, upper := 1085,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1086, upper := 1225,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1226, upper := 1379,
        witness := RowWitness.topPrime 1223
      },
      {
        lower := 1380, upper := 1529,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1530, upper := 1679,
        witness := RowWitness.topPrime 1523
      },
      {
        lower := 1680, upper := 1825,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1826, upper := 1979,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1980, upper := 2135,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2136, upper := 2287,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2288, upper := 2443,
        witness := RowWitness.topPrime 2287
      },
      {
        lower := 2444, upper := 2597,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2598, upper := 2749,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2750, upper := 2905,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2906, upper := 3059,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3060, upper := 3205,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3206, upper := 3359,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3360, upper := 3515,
        witness := RowWitness.topPrime 3359
      },
      {
        lower := 3516, upper := 3667,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3668, upper := 3815,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3816, upper := 3959,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3960, upper := 4103,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4104, upper := 4255,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4256, upper := 4409,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4410, upper := 4565,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4566, upper := 4717,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4718, upper := 4859,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4860, upper := 4987,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4988, upper := 5143,
        witness := RowWitness.topPrime 4987
      },
      {
        lower := 5144, upper := 5275,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5276, upper := 5429,
        witness := RowWitness.topPrime 5273
      },
      {
        lower := 5430, upper := 5575,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5576, upper := 5729,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5730, upper := 5873,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5874, upper := 6025,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6026, upper := 6167,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6168, upper := 6319,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6320, upper := 6473,
        witness := RowWitness.topPrime 6317
      },
      {
        lower := 6474, upper := 6629,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6630, upper := 6775,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6776, upper := 6919,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6920, upper := 7073,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7074, upper := 7225,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7226, upper := 7375,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7376, upper := 7525,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7526, upper := 7679,
        witness := RowWitness.topPrime 7523
      },
      {
        lower := 7680, upper := 7829,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7830, upper := 7985,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7986, upper := 8119,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8120, upper := 8273,
        witness := RowWitness.topPrime 8117
      },
      {
        lower := 8274, upper := 8429,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8430, upper := 8585,
        witness := RowWitness.topPrime 8429
      },
      {
        lower := 8586, upper := 8737,
        witness := RowWitness.topPrime 8581
      },
      {
        lower := 8738, upper := 8893,
        witness := RowWitness.topPrime 8737
      },
      {
        lower := 8894, upper := 9049,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9050, upper := 9205,
        witness := RowWitness.topPrime 9049
      },
      {
        lower := 9206, upper := 9359,
        witness := RowWitness.topPrime 9203
      },
      {
        lower := 9360, upper := 9505,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9506, upper := 9653,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9654, upper := 9805,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9806, upper := 9959,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9960, upper := 10105,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10106, upper := 10259,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10260, upper := 10415,
        witness := RowWitness.topPrime 10259
      },
      {
        lower := 10416, upper := 10555,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10556, upper := 10687,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10688, upper := 10843,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10844, upper := 10993,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10994, upper := 11149,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11150, upper := 11305,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11306, upper := 11455,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11456, upper := 11603,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11604, upper := 11753,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11754, upper := 11899,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11900, upper := 12053,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12054, upper := 12205,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12206, upper := 12359,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12360, upper := 12503,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12504, upper := 12659,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12660, upper := 12815,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12816, upper := 12965,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12966, upper := 13115,
        witness := RowWitness.topPrime 12959
      },
      {
        lower := 13116, upper := 13265,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13266, upper := 13415,
        witness := RowWitness.topPrime 13259
      },
      {
        lower := 13416, upper := 13567,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13568, upper := 13723,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13724, upper := 13879,
        witness := RowWitness.topPrime 13723
      },
      {
        lower := 13880, upper := 14035,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14036, upper := 14189,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14190, upper := 14333,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14334, upper := 14483,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14484, upper := 14635,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14636, upper := 14789,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14790, upper := 14939,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14940, upper := 15095,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15096, upper := 15247,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15248, upper := 15397,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15398, upper := 15547,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15548, upper := 15697,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15698, upper := 15839,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15840, upper := 15979,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15980, upper := 16129,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16130, upper := 16283,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16284, upper := 16429,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16430, upper := 16583,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16584, upper := 16729,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16730, upper := 16885,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16886, upper := 17039,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17040, upper := 17189,
        witness := RowWitness.topPrime 17033
      },
      {
        lower := 17190, upper := 17345,
        witness := RowWitness.topPrime 17189
      },
      {
        lower := 17346, upper := 17497,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17498, upper := 17653,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17654, upper := 17783,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17784, upper := 17939,
        witness := RowWitness.topPrime 17783
      },
      {
        lower := 17940, upper := 18095,
        witness := RowWitness.topPrime 17939
      },
      {
        lower := 18096, upper := 18245,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18246, upper := 18389,
        witness := RowWitness.topPrime 18233
      },
      {
        lower := 18390, upper := 18535,
        witness := RowWitness.topPrime 18379
      },
      {
        lower := 18536, upper := 18679,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18680, upper := 18835,
        witness := RowWitness.topPrime 18679
      },
      {
        lower := 18836, upper := 18959,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18960, upper := 19115,
        witness := RowWitness.topPrime 18959
      },
      {
        lower := 19116, upper := 19243,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19244, upper := 19393,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19394, upper := 19547,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19548, upper := 19699,
        witness := RowWitness.topPrime 19543
      },
      {
        lower := 19700, upper := 19855,
        witness := RowWitness.topPrime 19699
      },
      {
        lower := 19856, upper := 20009,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20010, upper := 20153,
        witness := RowWitness.topPrime 19997
      },
      {
        lower := 20154, upper := 20305,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20306, upper := 20453,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20454, upper := 20599,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20600, upper := 20755,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20756, upper := 20909,
        witness := RowWitness.topPrime 20753
      },
      {
        lower := 20910, upper := 21059,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21060, upper := 21215,
        witness := RowWitness.topPrime 21059
      },
      {
        lower := 21216, upper := 21367,
        witness := RowWitness.topPrime 21211
      },
      {
        lower := 21368, upper := 21503,
        witness := RowWitness.topPrime 21347
      },
      {
        lower := 21504, upper := 21659,
        witness := RowWitness.topPrime 21503
      },
      {
        lower := 21660, upper := 21805,
        witness := RowWitness.topPrime 21649
      },
      {
        lower := 21806, upper := 21959,
        witness := RowWitness.topPrime 21803
      },
      {
        lower := 21960, upper := 22099,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22100, upper := 22249,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22250, upper := 22403,
        witness := RowWitness.topPrime 22247
      },
      {
        lower := 22404, upper := 22553,
        witness := RowWitness.topPrime 22397
      },
      {
        lower := 22554, upper := 22705,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22706, upper := 22855,
        witness := RowWitness.topPrime 22699
      },
      {
        lower := 22856, upper := 23009,
        witness := RowWitness.topPrime 22853
      },
      {
        lower := 23010, upper := 23159,
        witness := RowWitness.topPrime 23003
      },
      {
        lower := 23160, upper := 23315,
        witness := RowWitness.topPrime 23159
      },
      {
        lower := 23316, upper := 23467,
        witness := RowWitness.topPrime 23311
      },
      {
        lower := 23468, upper := 23615,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23616, upper := 23765,
        witness := RowWitness.topPrime 23609
      },
      {
        lower := 23766, upper := 23917,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23918, upper := 24073,
        witness := RowWitness.topPrime 23917
      },
      {
        lower := 24074, upper := 24227,
        witness := RowWitness.topPrime 24071
      },
      {
        lower := 24228, upper := 24379,
        witness := RowWitness.topPrime 24223
      },
      {
        lower := 24380, upper := 24523,
        witness := RowWitness.topPrime 24379
      },
      {
        lower := 24576, upper := 24721,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25120,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25361,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26400,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26563,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26564, upper := 26567,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26624, upper := 26753,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26754, upper := 26780,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27592,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28279,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28280, upper := 28281,
        witness := RowWitness.topPrime 28279
      },
      {
        lower := 28561, upper := 28587,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28825,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28826, upper := 28873,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29924,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31349,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31350, upper := 31406,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31485,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31840,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31983,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32924,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33645,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33770,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34475,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34476, upper := 34547,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36653,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36654, upper := 36657,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37366,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37459,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37649,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37650, upper := 37694,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38447,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39460,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40484,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41083,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41084, upper := 41087,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45409,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45952,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47677,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47678, upper := 47680,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48117,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48379,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48529,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48824,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49286,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50566,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51161,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56325,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56463,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57278,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57401,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 62500, upper := 62566,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65692,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68795,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68796, upper := 68800,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69046,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71443,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71444, upper := 71445,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73323,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85839,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89529,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93906,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98460,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137937,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149033,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 24492, upper := 48984, M := 13
      },
      {
        lower := 48984, upper := 97968, M := 10
      },
      {
        lower := 97968, upper := 195936, M := 7
      },
      {
        lower := 195936, upper := 391872, M := 6
      },
      {
        lower := 391872, upper := 783744, M := 4
      },
      {
        lower := 783744, upper := 1567488, M := 3
      },
      {
        lower := 1567488, upper := 3134976, M := 2
      },
      {
        lower := 3134976, upper := 6269952, M := 2
      },
      {
        lower := 6269952, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 158, r := 52, s := 112,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 318, upper := 474,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 475, upper := 624,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 625, upper := 776,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 777, upper := 930,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 931, upper := 1086,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1087, upper := 1244,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1245, upper := 1394,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1395, upper := 1538,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1539, upper := 1688,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1689, upper := 1826,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1827, upper := 1980,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1981, upper := 2136,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2137, upper := 2294,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2295, upper := 2450,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2451, upper := 2604,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2605, upper := 2750,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2751, upper := 2906,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2907, upper := 3060,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3061, upper := 3218,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3219, upper := 3374,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3375, upper := 3530,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3531, upper := 3686,
        witness := RowWitness.topPrime 3529
      },
      {
        lower := 3687, upper := 3834,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3835, upper := 3990,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3991, upper := 4146,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4147, upper := 4296,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4297, upper := 4454,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4455, upper := 4608,
        witness := RowWitness.topPrime 4451
      },
      {
        lower := 4609, upper := 4760,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4761, upper := 4916,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4917, upper := 5066,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5067, upper := 5216,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5217, upper := 5366,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5367, upper := 5508,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5509, upper := 5664,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5665, upper := 5816,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5817, upper := 5970,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5971, upper := 6110,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6111, upper := 6258,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6259, upper := 6414,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6415, upper := 6554,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6555, upper := 6710,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6711, upper := 6866,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6867, upper := 7020,
        witness := RowWitness.topPrime 6863
      },
      {
        lower := 7021, upper := 7176,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7177, upper := 7334,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7335, upper := 7490,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7491, upper := 7646,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7647, upper := 7800,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7801, upper := 7950,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7951, upper := 8108,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8109, upper := 8258,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8259, upper := 8400,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8401, upper := 8546,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8547, upper := 8700,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8701, upper := 8856,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8857, upper := 9006,
        witness := RowWitness.topPrime 8849
      },
      {
        lower := 9007, upper := 9164,
        witness := RowWitness.topPrime 9007
      },
      {
        lower := 9165, upper := 9318,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9319, upper := 9476,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9477, upper := 9630,
        witness := RowWitness.topPrime 9473
      },
      {
        lower := 9631, upper := 9788,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9789, upper := 9944,
        witness := RowWitness.topPrime 9787
      },
      {
        lower := 9945, upper := 10098,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10099, upper := 10256,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10257, upper := 10410,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10411, upper := 10556,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10557, upper := 10688,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10689, upper := 10844,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10845, upper := 10994,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10995, upper := 11150,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11151, upper := 11306,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11307, upper := 11456,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11457, upper := 11604,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11605, upper := 11754,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11755, upper := 11900,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11901, upper := 12054,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12055, upper := 12206,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12207, upper := 12360,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12361, upper := 12504,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12505, upper := 12660,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12661, upper := 12816,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12817, upper := 12966,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12967, upper := 13124,
        witness := RowWitness.topPrime 12967
      },
      {
        lower := 13125, upper := 13278,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13279, upper := 13424,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13425, upper := 13578,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13579, upper := 13734,
        witness := RowWitness.topPrime 13577
      },
      {
        lower := 13735, upper := 13886,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13887, upper := 14040,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14041, upper := 14190,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14191, upper := 14334,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14335, upper := 14484,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14485, upper := 14636,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14637, upper := 14790,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14791, upper := 14940,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14941, upper := 15096,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15097, upper := 15248,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15249, upper := 15398,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15399, upper := 15548,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15549, upper := 15698,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15699, upper := 15840,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15841, upper := 15980,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15981, upper := 16130,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16131, upper := 16284,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16285, upper := 16430,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16431, upper := 16584,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16585, upper := 16730,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16731, upper := 16886,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16887, upper := 17040,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17041, upper := 17198,
        witness := RowWitness.topPrime 17041
      },
      {
        lower := 17199, upper := 17348,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17349, upper := 17498,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17499, upper := 17654,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17655, upper := 17784,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17785, upper := 17940,
        witness := RowWitness.topPrime 17783
      },
      {
        lower := 17941, upper := 18096,
        witness := RowWitness.topPrime 17939
      },
      {
        lower := 18097, upper := 18254,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18255, upper := 18410,
        witness := RowWitness.topPrime 18253
      },
      {
        lower := 18411, upper := 18558,
        witness := RowWitness.topPrime 18401
      },
      {
        lower := 18559, upper := 18710,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18711, upper := 18858,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18859, upper := 19016,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19017, upper := 19170,
        witness := RowWitness.topPrime 19013
      },
      {
        lower := 19171, upper := 19320,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19321, upper := 19476,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19477, upper := 19634,
        witness := RowWitness.topPrime 19477
      },
      {
        lower := 19635, upper := 19766,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19767, upper := 19920,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19921, upper := 20076,
        witness := RowWitness.topPrime 19919
      },
      {
        lower := 20077, upper := 20228,
        witness := RowWitness.topPrime 20071
      },
      {
        lower := 20229, upper := 20376,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20377, upper := 20526,
        witness := RowWitness.topPrime 20369
      },
      {
        lower := 20527, upper := 20678,
        witness := RowWitness.topPrime 20521
      },
      {
        lower := 20679, upper := 20820,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20821, upper := 20966,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20967, upper := 21120,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21121, upper := 21278,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21279, upper := 21434,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21435, upper := 21590,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21591, upper := 21746,
        witness := RowWitness.topPrime 21589
      },
      {
        lower := 21747, upper := 21896,
        witness := RowWitness.topPrime 21739
      },
      {
        lower := 21897, upper := 22050,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22051, upper := 22208,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22209, upper := 22350,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22351, upper := 22506,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22507, upper := 22658,
        witness := RowWitness.topPrime 22501
      },
      {
        lower := 22659, upper := 22808,
        witness := RowWitness.topPrime 22651
      },
      {
        lower := 22809, upper := 22964,
        witness := RowWitness.topPrime 22807
      },
      {
        lower := 22965, upper := 23120,
        witness := RowWitness.topPrime 22963
      },
      {
        lower := 23121, upper := 23274,
        witness := RowWitness.topPrime 23117
      },
      {
        lower := 23275, upper := 23426,
        witness := RowWitness.topPrime 23269
      },
      {
        lower := 23427, upper := 23574,
        witness := RowWitness.topPrime 23417
      },
      {
        lower := 23575, upper := 23724,
        witness := RowWitness.topPrime 23567
      },
      {
        lower := 23725, upper := 23876,
        witness := RowWitness.topPrime 23719
      },
      {
        lower := 23877, upper := 24030,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24031, upper := 24186,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24187, upper := 24338,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24339, upper := 24494,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24495, upper := 24638,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24639, upper := 24788,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 24789, upper := 24805,
        witness := RowWitness.topPrime 24781
      },
      {
        lower := 25215, upper := 25346,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25347, upper := 25372,
        witness := RowWitness.topPrime 25343
      },
      {
        lower := 26364, upper := 26401,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26564,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26565, upper := 26568,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26645, upper := 26665,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27053,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27593,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27892,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28280,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28281, upper := 28282,
        witness := RowWitness.topPrime 28279
      },
      {
        lower := 28561, upper := 28588,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28826,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28827, upper := 28874,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29584, upper := 29635,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29925,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30750,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30751, upper := 30775,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30899, upper := 30915,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31056,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31406,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31407, upper := 31407,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31423, upper := 31486,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31841,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31984,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32925,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32962,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33646,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33771,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34476,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34477, upper := 34548,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 35287, upper := 35309,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35444,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36069,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36654,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36655, upper := 36658,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37367,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37538, upper := 37694,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37695, upper := 37695,
        witness := RowWitness.topPrime 37693
      },
      {
        lower := 38307, upper := 38460,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38461, upper := 38464,
        witness := RowWitness.topPrime 38461
      },
      {
        lower := 39326, upper := 39480,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39481, upper := 39483,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40485,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41084,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41085, upper := 41088,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 44944, upper := 45047,
        witness := RowWitness.topPrime 44939
      },
      {
        lower := 45369, upper := 45410,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45953,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47678,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47679, upper := 47681,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48118,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48380,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48530,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48890,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48891, upper := 48891,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49152, upper := 49287,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49309,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49455,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50567,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51162,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55598,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55599, upper := 55604,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56454, upper := 56464,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57279,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58721,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59113,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63948, upper := 64002,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65693,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68796,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68797, upper := 68801,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69047,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71444,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71445, upper := 71446,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73324,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85840,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89530,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93907,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 95052, upper := 95184,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95185, upper := 95205,
        witness := RowWitness.topPrime 95177
      },
      {
        lower := 98415, upper := 98461,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103123,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109532,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137938,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149034,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154606,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 24806, upper := 49612, M := 16
      },
      {
        lower := 49612, upper := 99224, M := 12
      },
      {
        lower := 99224, upper := 198448, M := 9
      },
      {
        lower := 198448, upper := 396896, M := 7
      },
      {
        lower := 396896, upper := 793792, M := 5
      },
      {
        lower := 793792, upper := 1587584, M := 4
      },
      {
        lower := 1587584, upper := 3175168, M := 3
      },
      {
        lower := 3175168, upper := 6350336, M := 2
      },
      {
        lower := 6350336, upper := 12700672, M := 2
      },
      {
        lower := 12700672, upper := 25401344, M := 2
      },
      {
        lower := 25401344, upper := 50802688, M := 1
      },
      {
        lower := 50802688, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 159, r := 52, s := 112,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 320, upper := 475,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 476, upper := 625,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 626, upper := 777,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 778, upper := 931,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 932, upper := 1087,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1088, upper := 1245,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1246, upper := 1395,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1396, upper := 1539,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1540, upper := 1689,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1690, upper := 1827,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1828, upper := 1981,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1982, upper := 2137,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2138, upper := 2295,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2296, upper := 2451,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2452, upper := 2605,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2606, upper := 2751,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2752, upper := 2907,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2908, upper := 3061,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3062, upper := 3219,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3220, upper := 3375,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3376, upper := 3531,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3532, upper := 3687,
        witness := RowWitness.topPrime 3529
      },
      {
        lower := 3688, upper := 3835,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3836, upper := 3991,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3992, upper := 4147,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4148, upper := 4297,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4298, upper := 4455,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4456, upper := 4609,
        witness := RowWitness.topPrime 4451
      },
      {
        lower := 4610, upper := 4761,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4762, upper := 4917,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4918, upper := 5067,
        witness := RowWitness.topPrime 4909
      },
      {
        lower := 5068, upper := 5217,
        witness := RowWitness.topPrime 5059
      },
      {
        lower := 5218, upper := 5367,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5368, upper := 5509,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5510, upper := 5665,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5666, upper := 5817,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5818, upper := 5971,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5972, upper := 6111,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6112, upper := 6259,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6260, upper := 6415,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6416, upper := 6555,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6556, upper := 6711,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6712, upper := 6867,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6868, upper := 7021,
        witness := RowWitness.topPrime 6863
      },
      {
        lower := 7022, upper := 7177,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7178, upper := 7335,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7336, upper := 7491,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7492, upper := 7647,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7648, upper := 7801,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7802, upper := 7951,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7952, upper := 8109,
        witness := RowWitness.topPrime 7951
      },
      {
        lower := 8110, upper := 8259,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8260, upper := 8401,
        witness := RowWitness.topPrime 8243
      },
      {
        lower := 8402, upper := 8547,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8548, upper := 8701,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8702, upper := 8857,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8858, upper := 9007,
        witness := RowWitness.topPrime 8849
      },
      {
        lower := 9008, upper := 9165,
        witness := RowWitness.topPrime 9007
      },
      {
        lower := 9166, upper := 9319,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9320, upper := 9477,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9478, upper := 9631,
        witness := RowWitness.topPrime 9473
      },
      {
        lower := 9632, upper := 9789,
        witness := RowWitness.topPrime 9631
      },
      {
        lower := 9790, upper := 9945,
        witness := RowWitness.topPrime 9787
      },
      {
        lower := 9946, upper := 10099,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10100, upper := 10257,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10258, upper := 10411,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10412, upper := 10557,
        witness := RowWitness.topPrime 10399
      },
      {
        lower := 10558, upper := 10689,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10690, upper := 10845,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10846, upper := 10995,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10996, upper := 11151,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11152, upper := 11307,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11308, upper := 11457,
        witness := RowWitness.topPrime 11299
      },
      {
        lower := 11458, upper := 11605,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11606, upper := 11755,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11756, upper := 11901,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11902, upper := 12055,
        witness := RowWitness.topPrime 11897
      },
      {
        lower := 12056, upper := 12207,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12208, upper := 12361,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12362, upper := 12505,
        witness := RowWitness.topPrime 12347
      },
      {
        lower := 12506, upper := 12661,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12662, upper := 12817,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12818, upper := 12967,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12968, upper := 13125,
        witness := RowWitness.topPrime 12967
      },
      {
        lower := 13126, upper := 13279,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13280, upper := 13425,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13426, upper := 13579,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13580, upper := 13735,
        witness := RowWitness.topPrime 13577
      },
      {
        lower := 13736, upper := 13887,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13888, upper := 14041,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14042, upper := 14191,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14192, upper := 14335,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14336, upper := 14485,
        witness := RowWitness.topPrime 14327
      },
      {
        lower := 14486, upper := 14637,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14638, upper := 14791,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14792, upper := 14941,
        witness := RowWitness.topPrime 14783
      },
      {
        lower := 14942, upper := 15097,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15098, upper := 15249,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15250, upper := 15399,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15400, upper := 15549,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15550, upper := 15699,
        witness := RowWitness.topPrime 15541
      },
      {
        lower := 15700, upper := 15841,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15842, upper := 15981,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15982, upper := 16131,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16132, upper := 16285,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16286, upper := 16431,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16432, upper := 16585,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16586, upper := 16731,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16732, upper := 16887,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16888, upper := 17041,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17042, upper := 17199,
        witness := RowWitness.topPrime 17041
      },
      {
        lower := 17200, upper := 17349,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17350, upper := 17499,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17500, upper := 17655,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17656, upper := 17785,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17786, upper := 17941,
        witness := RowWitness.topPrime 17783
      },
      {
        lower := 17942, upper := 18097,
        witness := RowWitness.topPrime 17939
      },
      {
        lower := 18098, upper := 18255,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18256, upper := 18411,
        witness := RowWitness.topPrime 18253
      },
      {
        lower := 18412, upper := 18559,
        witness := RowWitness.topPrime 18401
      },
      {
        lower := 18560, upper := 18711,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18712, upper := 18859,
        witness := RowWitness.topPrime 18701
      },
      {
        lower := 18860, upper := 19017,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19018, upper := 19171,
        witness := RowWitness.topPrime 19013
      },
      {
        lower := 19172, upper := 19321,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19322, upper := 19477,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19478, upper := 19635,
        witness := RowWitness.topPrime 19477
      },
      {
        lower := 19636, upper := 19767,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19768, upper := 19921,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19922, upper := 20077,
        witness := RowWitness.topPrime 19919
      },
      {
        lower := 20078, upper := 20229,
        witness := RowWitness.topPrime 20071
      },
      {
        lower := 20230, upper := 20377,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20378, upper := 20527,
        witness := RowWitness.topPrime 20369
      },
      {
        lower := 20528, upper := 20679,
        witness := RowWitness.topPrime 20521
      },
      {
        lower := 20680, upper := 20821,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20822, upper := 20967,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20968, upper := 21121,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21122, upper := 21279,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21280, upper := 21435,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21436, upper := 21591,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21592, upper := 21747,
        witness := RowWitness.topPrime 21589
      },
      {
        lower := 21748, upper := 21897,
        witness := RowWitness.topPrime 21739
      },
      {
        lower := 21898, upper := 22051,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22052, upper := 22209,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22210, upper := 22351,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22352, upper := 22507,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22508, upper := 22659,
        witness := RowWitness.topPrime 22501
      },
      {
        lower := 22660, upper := 22809,
        witness := RowWitness.topPrime 22651
      },
      {
        lower := 22810, upper := 22965,
        witness := RowWitness.topPrime 22807
      },
      {
        lower := 22966, upper := 23121,
        witness := RowWitness.topPrime 22963
      },
      {
        lower := 23122, upper := 23275,
        witness := RowWitness.topPrime 23117
      },
      {
        lower := 23276, upper := 23427,
        witness := RowWitness.topPrime 23269
      },
      {
        lower := 23428, upper := 23575,
        witness := RowWitness.topPrime 23417
      },
      {
        lower := 23576, upper := 23725,
        witness := RowWitness.topPrime 23567
      },
      {
        lower := 23726, upper := 23877,
        witness := RowWitness.topPrime 23719
      },
      {
        lower := 23878, upper := 24031,
        witness := RowWitness.topPrime 23873
      },
      {
        lower := 24032, upper := 24187,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24188, upper := 24339,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24340, upper := 24495,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24496, upper := 24639,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24640, upper := 24789,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 24790, upper := 24939,
        witness := RowWitness.topPrime 24781
      },
      {
        lower := 24940, upper := 25081,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25082, upper := 25122,
        witness := RowWitness.topPrime 25073
      },
      {
        lower := 25215, upper := 25347,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25348, upper := 25363,
        witness := RowWitness.topPrime 25343
      },
      {
        lower := 26364, upper := 26402,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26565,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26566, upper := 26569,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26624, upper := 26755,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26756, upper := 26782,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27594,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27893,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28227, upper := 28283,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28827,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28828, upper := 28875,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29926,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30720, upper := 30871,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30872, upper := 30878,
        witness := RowWitness.topPrime 30871
      },
      {
        lower := 31213, upper := 31351,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31352, upper := 31408,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31487,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31842,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31985,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32926,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32963,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33647,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 34322, upper := 34477,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34478, upper := 34549,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36015, upper := 36070,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 37303, upper := 37368,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37461,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37651,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37652, upper := 37696,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38449,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39462,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40486,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41085,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41086, upper := 41089,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 43750, upper := 43845,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45411,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47679,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47680, upper := 47682,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48119,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48381,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48531,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48891,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48892, upper := 48892,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49152, upper := 49288,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49310,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49456,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50568,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51163,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55599,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55600, upper := 55605,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56327,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56465,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57280,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57403,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58722,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62568,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68797,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68798, upper := 68809,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69048,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71445,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71446, upper := 71447,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73325,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85841,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89531,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93908,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 103041, upper := 103124,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109533,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 154568, upper := 154607,
        witness := RowWitness.topPrime 154543
      },
      {
        lower := 199927, upper := 199967,
        witness := RowWitness.topPrime 199921
      }
    ],
    layers := [
      {
        lower := 25122, upper := 50244, M := 15
      },
      {
        lower := 50244, upper := 100488, M := 11
      },
      {
        lower := 100488, upper := 200976, M := 9
      },
      {
        lower := 200976, upper := 401952, M := 7
      },
      {
        lower := 401952, upper := 803904, M := 5
      },
      {
        lower := 803904, upper := 1607808, M := 4
      },
      {
        lower := 1607808, upper := 3215616, M := 3
      },
      {
        lower := 3215616, upper := 6431232, M := 2
      },
      {
        lower := 6431232, upper := 12862464, M := 2
      },
      {
        lower := 12862464, upper := 25724928, M := 2
      },
      {
        lower := 25724928, upper := 51449856, M := 1
      },
      {
        lower := 51449856, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 160, r := 53, s := 113,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 322, upper := 476,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 477, upper := 626,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 627, upper := 778,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 779, upper := 932,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 933, upper := 1088,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1089, upper := 1246,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1247, upper := 1396,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1397, upper := 1540,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1541, upper := 1690,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1691, upper := 1828,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1829, upper := 1982,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1983, upper := 2138,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2139, upper := 2296,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2297, upper := 2456,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2457, upper := 2606,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2607, upper := 2752,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2753, upper := 2912,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2913, upper := 3068,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3069, upper := 3226,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3227, upper := 3380,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3381, upper := 3532,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3533, upper := 3692,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3693, upper := 3850,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3851, upper := 4010,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 4011, upper := 4166,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4167, upper := 4318,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4319, upper := 4456,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4457, upper := 4616,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4617, upper := 4762,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4763, upper := 4918,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4919, upper := 5078,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5079, upper := 5236,
        witness := RowWitness.topPrime 5077
      },
      {
        lower := 5237, upper := 5396,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5397, upper := 5552,
        witness := RowWitness.topPrime 5393
      },
      {
        lower := 5553, upper := 5690,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5691, upper := 5848,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5849, upper := 6008,
        witness := RowWitness.topPrime 5849
      },
      {
        lower := 6009, upper := 6166,
        witness := RowWitness.topPrime 6007
      },
      {
        lower := 6167, upper := 6322,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6323, upper := 6482,
        witness := RowWitness.topPrime 6323
      },
      {
        lower := 6483, upper := 6640,
        witness := RowWitness.topPrime 6481
      },
      {
        lower := 6641, upper := 6796,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6797, upper := 6952,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6953, upper := 7108,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7109, upper := 7268,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7269, upper := 7412,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7413, upper := 7570,
        witness := RowWitness.topPrime 7411
      },
      {
        lower := 7571, upper := 7720,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7721, upper := 7876,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7877, upper := 8036,
        witness := RowWitness.topPrime 7877
      },
      {
        lower := 8037, upper := 8176,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8177, upper := 8330,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8331, upper := 8488,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8489, upper := 8626,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8627, upper := 8786,
        witness := RowWitness.topPrime 8627
      },
      {
        lower := 8787, upper := 8942,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8943, upper := 9100,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9101, upper := 9250,
        witness := RowWitness.topPrime 9091
      },
      {
        lower := 9251, upper := 9400,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9401, upper := 9556,
        witness := RowWitness.topPrime 9397
      },
      {
        lower := 9557, upper := 9710,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9711, upper := 9856,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9857, upper := 10016,
        witness := RowWitness.topPrime 9857
      },
      {
        lower := 10017, upper := 10168,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10169, upper := 10328,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10329, upper := 10480,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10481, upper := 10636,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10637, upper := 10790,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10791, upper := 10948,
        witness := RowWitness.topPrime 10789
      },
      {
        lower := 10949, upper := 11108,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11109, upper := 11252,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11253, upper := 11410,
        witness := RowWitness.topPrime 11251
      },
      {
        lower := 11411, upper := 11570,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11571, upper := 11710,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11711, upper := 11860,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11861, upper := 11998,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11999, upper := 12146,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12147, upper := 12302,
        witness := RowWitness.topPrime 12143
      },
      {
        lower := 12303, upper := 12460,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12461, upper := 12616,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12617, upper := 12772,
        witness := RowWitness.topPrime 12613
      },
      {
        lower := 12773, upper := 12922,
        witness := RowWitness.topPrime 12763
      },
      {
        lower := 12923, upper := 13082,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13083, upper := 13222,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13223, upper := 13378,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13379, upper := 13526,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13527, upper := 13682,
        witness := RowWitness.topPrime 13523
      },
      {
        lower := 13683, upper := 13840,
        witness := RowWitness.topPrime 13681
      },
      {
        lower := 13841, upper := 14000,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14001, upper := 14158,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14159, upper := 14318,
        witness := RowWitness.topPrime 14159
      },
      {
        lower := 14319, upper := 14462,
        witness := RowWitness.topPrime 14303
      },
      {
        lower := 14463, upper := 14620,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14621, upper := 14780,
        witness := RowWitness.topPrime 14621
      },
      {
        lower := 14781, upper := 14938,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14939, upper := 15098,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15099, upper := 15250,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15251, upper := 15400,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15401, upper := 15560,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15561, upper := 15718,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15719, upper := 15842,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15843, upper := 15982,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15983, upper := 16132,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16133, upper := 16286,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16287, upper := 16432,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16433, upper := 16592,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16593, upper := 16732,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16733, upper := 16888,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16889, upper := 17048,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17049, upper := 17206,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17207, upper := 17366,
        witness := RowWitness.topPrime 17207
      },
      {
        lower := 17367, upper := 17518,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17519, upper := 17678,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17679, upper := 17828,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17829, upper := 17986,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17987, upper := 18146,
        witness := RowWitness.topPrime 17987
      },
      {
        lower := 18147, upper := 18302,
        witness := RowWitness.topPrime 18143
      },
      {
        lower := 18303, upper := 18460,
        witness := RowWitness.topPrime 18301
      },
      {
        lower := 18461, upper := 18620,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18621, upper := 18776,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18777, upper := 18932,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18933, upper := 19078,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19079, upper := 19238,
        witness := RowWitness.topPrime 19079
      },
      {
        lower := 19239, upper := 19396,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19397, upper := 19550,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19551, upper := 19702,
        witness := RowWitness.topPrime 19543
      },
      {
        lower := 19703, upper := 19858,
        witness := RowWitness.topPrime 19699
      },
      {
        lower := 19859, upper := 20012,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20013, upper := 20170,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20171, upper := 20320,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20321, upper := 20456,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20457, upper := 20602,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20603, upper := 20758,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20759, upper := 20918,
        witness := RowWitness.topPrime 20759
      },
      {
        lower := 20919, upper := 21062,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21063, upper := 21220,
        witness := RowWitness.topPrime 21061
      },
      {
        lower := 21221, upper := 21380,
        witness := RowWitness.topPrime 21221
      },
      {
        lower := 21381, upper := 21538,
        witness := RowWitness.topPrime 21379
      },
      {
        lower := 21539, upper := 21688,
        witness := RowWitness.topPrime 21529
      },
      {
        lower := 21689, upper := 21842,
        witness := RowWitness.topPrime 21683
      },
      {
        lower := 21843, upper := 22000,
        witness := RowWitness.topPrime 21841
      },
      {
        lower := 22001, upper := 22156,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22157, upper := 22316,
        witness := RowWitness.topPrime 22157
      },
      {
        lower := 22317, upper := 22466,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22467, upper := 22612,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22613, upper := 22772,
        witness := RowWitness.topPrime 22613
      },
      {
        lower := 22773, upper := 22928,
        witness := RowWitness.topPrime 22769
      },
      {
        lower := 22929, upper := 23080,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23081, upper := 23240,
        witness := RowWitness.topPrime 23081
      },
      {
        lower := 23241, upper := 23386,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23387, upper := 23530,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23531, upper := 23690,
        witness := RowWitness.topPrime 23531
      },
      {
        lower := 23691, upper := 23848,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23849, upper := 23992,
        witness := RowWitness.topPrime 23833
      },
      {
        lower := 23993, upper := 24152,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24153, upper := 24310,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24311, upper := 24440,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24441, upper := 24598,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24599, upper := 24752,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24753, upper := 24908,
        witness := RowWitness.topPrime 24749
      },
      {
        lower := 24909, upper := 25066,
        witness := RowWitness.topPrime 24907
      },
      {
        lower := 25067, upper := 25216,
        witness := RowWitness.topPrime 25057
      },
      {
        lower := 25217, upper := 25348,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25349, upper := 25439,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 26364, upper := 26403,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26566,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26567, upper := 26570,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26645, upper := 26667,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27595,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28227, upper := 28249,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28590,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28717, upper := 28720,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28876,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29927,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30752,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30753, upper := 30777,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30899, upper := 30917,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31058,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31352,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31353, upper := 31409,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31488,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31843,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31986,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33648,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33773,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34478,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34479, upper := 34550,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36656,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36657, upper := 36660,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37369,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37462,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37605,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37697,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38450,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39482,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39483, upper := 39485,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40487,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40963,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45369, upper := 45412,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45955,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47680,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47681, upper := 47683,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48120,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48382,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48532,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48892,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48893, upper := 48893,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49379, upper := 49457,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50569,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51164,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55600,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55601, upper := 55606,
        witness := RowWitness.topPrime 55589
      },
      {
        lower := 56307, upper := 56328,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56466,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57281,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58723,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 68644, upper := 68798,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68799, upper := 68810,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69049,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71446,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71447, upper := 71448,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73326,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85842,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89532,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 137842, upper := 137940,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149036,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 25440, upper := 50880, M := 14
      },
      {
        lower := 50880, upper := 101760, M := 11
      },
      {
        lower := 101760, upper := 203520, M := 8
      },
      {
        lower := 203520, upper := 407040, M := 6
      },
      {
        lower := 407040, upper := 814080, M := 5
      },
      {
        lower := 814080, upper := 1628160, M := 4
      },
      {
        lower := 1628160, upper := 3256320, M := 3
      },
      {
        lower := 3256320, upper := 6512640, M := 2
      },
      {
        lower := 6512640, upper := 13025280, M := 2
      },
      {
        lower := 13025280, upper := 26050560, M := 1
      },
      {
        lower := 26050560, upper := 52101120, M := 1
      },
      {
        lower := 52101120, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 161, r := 53, s := 114,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 324, upper := 477,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 478, upper := 627,
        witness := RowWitness.topPrime 467
      },
      {
        lower := 628, upper := 779,
        witness := RowWitness.topPrime 619
      },
      {
        lower := 780, upper := 933,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 934, upper := 1089,
        witness := RowWitness.topPrime 929
      },
      {
        lower := 1090, upper := 1247,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1248, upper := 1397,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1398, upper := 1541,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1542, upper := 1691,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1692, upper := 1829,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1830, upper := 1983,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1984, upper := 2139,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2140, upper := 2297,
        witness := RowWitness.topPrime 2137
      },
      {
        lower := 2298, upper := 2457,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2458, upper := 2607,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2608, upper := 2753,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2754, upper := 2913,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2914, upper := 3069,
        witness := RowWitness.topPrime 2909
      },
      {
        lower := 3070, upper := 3227,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3228, upper := 3381,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3382, upper := 3533,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3534, upper := 3693,
        witness := RowWitness.topPrime 3533
      },
      {
        lower := 3694, upper := 3851,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3852, upper := 4011,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 4012, upper := 4167,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4168, upper := 4319,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4320, upper := 4457,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4458, upper := 4617,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4618, upper := 4763,
        witness := RowWitness.topPrime 4603
      },
      {
        lower := 4764, upper := 4919,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4920, upper := 5079,
        witness := RowWitness.topPrime 4919
      },
      {
        lower := 5080, upper := 5237,
        witness := RowWitness.topPrime 5077
      },
      {
        lower := 5238, upper := 5397,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5398, upper := 5553,
        witness := RowWitness.topPrime 5393
      },
      {
        lower := 5554, upper := 5691,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5692, upper := 5849,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5850, upper := 6009,
        witness := RowWitness.topPrime 5849
      },
      {
        lower := 6010, upper := 6167,
        witness := RowWitness.topPrime 6007
      },
      {
        lower := 6168, upper := 6323,
        witness := RowWitness.topPrime 6163
      },
      {
        lower := 6324, upper := 6483,
        witness := RowWitness.topPrime 6323
      },
      {
        lower := 6484, upper := 6641,
        witness := RowWitness.topPrime 6481
      },
      {
        lower := 6642, upper := 6797,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6798, upper := 6953,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6954, upper := 7109,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7110, upper := 7269,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7270, upper := 7413,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7414, upper := 7571,
        witness := RowWitness.topPrime 7411
      },
      {
        lower := 7572, upper := 7721,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7722, upper := 7877,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7878, upper := 8037,
        witness := RowWitness.topPrime 7877
      },
      {
        lower := 8038, upper := 8177,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8178, upper := 8331,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8332, upper := 8489,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8490, upper := 8627,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8628, upper := 8787,
        witness := RowWitness.topPrime 8627
      },
      {
        lower := 8788, upper := 8943,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8944, upper := 9101,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9102, upper := 9251,
        witness := RowWitness.topPrime 9091
      },
      {
        lower := 9252, upper := 9401,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9402, upper := 9557,
        witness := RowWitness.topPrime 9397
      },
      {
        lower := 9558, upper := 9711,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9712, upper := 9857,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9858, upper := 10017,
        witness := RowWitness.topPrime 9857
      },
      {
        lower := 10018, upper := 10169,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10170, upper := 10329,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10330, upper := 10481,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10482, upper := 10637,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10638, upper := 10791,
        witness := RowWitness.topPrime 10631
      },
      {
        lower := 10792, upper := 10949,
        witness := RowWitness.topPrime 10789
      },
      {
        lower := 10950, upper := 11109,
        witness := RowWitness.topPrime 10949
      },
      {
        lower := 11110, upper := 11253,
        witness := RowWitness.topPrime 11093
      },
      {
        lower := 11254, upper := 11411,
        witness := RowWitness.topPrime 11251
      },
      {
        lower := 11412, upper := 11571,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11572, upper := 11711,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11712, upper := 11861,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11862, upper := 11999,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 12000, upper := 12147,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12148, upper := 12303,
        witness := RowWitness.topPrime 12143
      },
      {
        lower := 12304, upper := 12461,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12462, upper := 12617,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12618, upper := 12773,
        witness := RowWitness.topPrime 12613
      },
      {
        lower := 12774, upper := 12923,
        witness := RowWitness.topPrime 12763
      },
      {
        lower := 12924, upper := 13083,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13084, upper := 13223,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13224, upper := 13379,
        witness := RowWitness.topPrime 13219
      },
      {
        lower := 13380, upper := 13527,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13528, upper := 13683,
        witness := RowWitness.topPrime 13523
      },
      {
        lower := 13684, upper := 13841,
        witness := RowWitness.topPrime 13681
      },
      {
        lower := 13842, upper := 14001,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14002, upper := 14159,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14160, upper := 14319,
        witness := RowWitness.topPrime 14159
      },
      {
        lower := 14320, upper := 14463,
        witness := RowWitness.topPrime 14303
      },
      {
        lower := 14464, upper := 14621,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14622, upper := 14781,
        witness := RowWitness.topPrime 14621
      },
      {
        lower := 14782, upper := 14939,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14940, upper := 15099,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15100, upper := 15251,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15252, upper := 15401,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15402, upper := 15561,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15562, upper := 15719,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15720, upper := 15843,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15844, upper := 15983,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15984, upper := 16133,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16134, upper := 16287,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16288, upper := 16433,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16434, upper := 16593,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16594, upper := 16733,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16734, upper := 16889,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16890, upper := 17049,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17050, upper := 17207,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17208, upper := 17367,
        witness := RowWitness.topPrime 17207
      },
      {
        lower := 17368, upper := 17519,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17520, upper := 17679,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17680, upper := 17829,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17830, upper := 17987,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17988, upper := 18147,
        witness := RowWitness.topPrime 17987
      },
      {
        lower := 18148, upper := 18303,
        witness := RowWitness.topPrime 18143
      },
      {
        lower := 18304, upper := 18461,
        witness := RowWitness.topPrime 18301
      },
      {
        lower := 18462, upper := 18621,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18622, upper := 18777,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18778, upper := 18933,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18934, upper := 19079,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19080, upper := 19239,
        witness := RowWitness.topPrime 19079
      },
      {
        lower := 19240, upper := 19397,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19398, upper := 19551,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19552, upper := 19703,
        witness := RowWitness.topPrime 19543
      },
      {
        lower := 19704, upper := 19859,
        witness := RowWitness.topPrime 19699
      },
      {
        lower := 19860, upper := 20013,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 20014, upper := 20171,
        witness := RowWitness.topPrime 20011
      },
      {
        lower := 20172, upper := 20321,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20322, upper := 20457,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20458, upper := 20603,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20604, upper := 20759,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20760, upper := 20919,
        witness := RowWitness.topPrime 20759
      },
      {
        lower := 20920, upper := 21063,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21064, upper := 21221,
        witness := RowWitness.topPrime 21061
      },
      {
        lower := 21222, upper := 21381,
        witness := RowWitness.topPrime 21221
      },
      {
        lower := 21382, upper := 21539,
        witness := RowWitness.topPrime 21379
      },
      {
        lower := 21540, upper := 21689,
        witness := RowWitness.topPrime 21529
      },
      {
        lower := 21690, upper := 21843,
        witness := RowWitness.topPrime 21683
      },
      {
        lower := 21844, upper := 22001,
        witness := RowWitness.topPrime 21841
      },
      {
        lower := 22002, upper := 22157,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22158, upper := 22317,
        witness := RowWitness.topPrime 22157
      },
      {
        lower := 22318, upper := 22467,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22468, upper := 22613,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22614, upper := 22773,
        witness := RowWitness.topPrime 22613
      },
      {
        lower := 22774, upper := 22929,
        witness := RowWitness.topPrime 22769
      },
      {
        lower := 22930, upper := 23081,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23082, upper := 23241,
        witness := RowWitness.topPrime 23081
      },
      {
        lower := 23242, upper := 23387,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23388, upper := 23531,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23532, upper := 23691,
        witness := RowWitness.topPrime 23531
      },
      {
        lower := 23692, upper := 23849,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23850, upper := 23993,
        witness := RowWitness.topPrime 23833
      },
      {
        lower := 23994, upper := 24153,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24154, upper := 24311,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24312, upper := 24441,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24442, upper := 24599,
        witness := RowWitness.topPrime 24439
      },
      {
        lower := 24600, upper := 24753,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24754, upper := 24909,
        witness := RowWitness.topPrime 24749
      },
      {
        lower := 24910, upper := 25067,
        witness := RowWitness.topPrime 24907
      },
      {
        lower := 25068, upper := 25217,
        witness := RowWitness.topPrime 25057
      },
      {
        lower := 25218, upper := 25349,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25350, upper := 25509,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 25510, upper := 25631,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25632, upper := 25759,
        witness := RowWitness.topPrime 25621
      },
      {
        lower := 26364, upper := 26404,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26508, upper := 26524,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26757,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26758, upper := 26784,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27596,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28283,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28284, upper := 28285,
        witness := RowWitness.topPrime 28283
      },
      {
        lower := 28561, upper := 28591,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28829,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28830, upper := 28832,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29928,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30753,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30754, upper := 30778,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30899, upper := 30918,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31059,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31409,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31410, upper := 31410,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31423, upper := 31489,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31844,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31987,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32928,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33649,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33774,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34479,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34480, upper := 34551,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 37303, upper := 37370,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37463,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37653,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37654, upper := 37698,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38451,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39483,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39484, upper := 39486,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40488,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41087,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41088, upper := 41091,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 43750, upper := 43847,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45413,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45956,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47681,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47682, upper := 47684,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48121,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48383,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48533,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48894,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49290,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49312,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49458,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 51076, upper := 51165,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56329,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56467,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57282,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57405,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 62500, upper := 62570,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65696,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68799,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68800, upper := 68804,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69050,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71447,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71448, upper := 71449,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73327,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85843,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89533,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93910,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98464,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102170,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 137842, upper := 137941,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149037,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 25760, upper := 51520, M := 14
      },
      {
        lower := 51520, upper := 103040, M := 10
      },
      {
        lower := 103040, upper := 206080, M := 8
      },
      {
        lower := 206080, upper := 412160, M := 6
      },
      {
        lower := 412160, upper := 824320, M := 4
      },
      {
        lower := 824320, upper := 1648640, M := 3
      },
      {
        lower := 1648640, upper := 3297280, M := 3
      },
      {
        lower := 3297280, upper := 6594560, M := 2
      },
      {
        lower := 6594560, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 162, r := 53, s := 115,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 326, upper := 478,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 479, upper := 640,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 641, upper := 802,
        witness := RowWitness.topPrime 641
      },
      {
        lower := 803, upper := 958,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 959, upper := 1114,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1115, upper := 1270,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1271, upper := 1420,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1421, upper := 1570,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1571, upper := 1732,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1733, upper := 1894,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1895, upper := 2050,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2051, upper := 2200,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2201, upper := 2340,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2341, upper := 2502,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2503, upper := 2664,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2665, upper := 2824,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2825, upper := 2980,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2981, upper := 3132,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3133, upper := 3282,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3283, upper := 3432,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3433, upper := 3594,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3595, upper := 3754,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3755, upper := 3900,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3901, upper := 4050,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4051, upper := 4212,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4213, upper := 4372,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4373, upper := 4534,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4535, upper := 4684,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4685, upper := 4840,
        witness := RowWitness.topPrime 4679
      },
      {
        lower := 4841, upper := 4992,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4993, upper := 5154,
        witness := RowWitness.topPrime 4993
      },
      {
        lower := 5155, upper := 5314,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5315, upper := 5470,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5471, upper := 5632,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5633, upper := 5784,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5785, upper := 5944,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5945, upper := 6100,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6101, upper := 6262,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6263, upper := 6424,
        witness := RowWitness.topPrime 6263
      },
      {
        lower := 6425, upper := 6582,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6583, upper := 6742,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6743, upper := 6898,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6899, upper := 7060,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7061, upper := 7218,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7219, upper := 7380,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7381, upper := 7530,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7531, upper := 7690,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7691, upper := 7852,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7853, upper := 8014,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 8015, upper := 8172,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8173, upper := 8332,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8333, upper := 8490,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8491, upper := 8628,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8629, upper := 8790,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8791, upper := 8944,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8945, upper := 9102,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9103, upper := 9264,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9265, upper := 9418,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9419, upper := 9580,
        witness := RowWitness.topPrime 9419
      },
      {
        lower := 9581, upper := 9712,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9713, upper := 9858,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9859, upper := 10020,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10021, upper := 10170,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10171, upper := 10330,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10331, upper := 10492,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10493, upper := 10648,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10649, upper := 10800,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10801, upper := 10960,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10961, upper := 11118,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11119, upper := 11280,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11281, upper := 11440,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11441, upper := 11598,
        witness := RowWitness.topPrime 11437
      },
      {
        lower := 11599, upper := 11758,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11759, upper := 11904,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11905, upper := 12064,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12065, upper := 12210,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12211, upper := 12372,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12373, upper := 12534,
        witness := RowWitness.topPrime 12373
      },
      {
        lower := 12535, upper := 12688,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12689, upper := 12850,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12851, upper := 13002,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 13003, upper := 13164,
        witness := RowWitness.topPrime 13003
      },
      {
        lower := 13165, upper := 13324,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13325, upper := 13474,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13475, upper := 13630,
        witness := RowWitness.topPrime 13469
      },
      {
        lower := 13631, upper := 13788,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13789, upper := 13950,
        witness := RowWitness.topPrime 13789
      },
      {
        lower := 13951, upper := 14094,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14095, upper := 14248,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14249, upper := 14410,
        witness := RowWitness.topPrime 14249
      },
      {
        lower := 14411, upper := 14572,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14573, upper := 14724,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14725, upper := 14884,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14885, upper := 15040,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15041, upper := 15192,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15193, upper := 15354,
        witness := RowWitness.topPrime 15193
      },
      {
        lower := 15355, upper := 15510,
        witness := RowWitness.topPrime 15349
      },
      {
        lower := 15511, upper := 15672,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15673, upper := 15832,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15833, upper := 15984,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15985, upper := 16134,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16135, upper := 16288,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16289, upper := 16434,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16435, upper := 16594,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16595, upper := 16734,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16735, upper := 16890,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16891, upper := 17050,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17051, upper := 17208,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17209, upper := 17370,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17371, upper := 17520,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17521, upper := 17680,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17681, upper := 17842,
        witness := RowWitness.topPrime 17681
      },
      {
        lower := 17843, upper := 18000,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18001, upper := 18150,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18151, upper := 18310,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18311, upper := 18472,
        witness := RowWitness.topPrime 18311
      },
      {
        lower := 18473, upper := 18622,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18623, upper := 18778,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18779, upper := 18934,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18935, upper := 19080,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19081, upper := 19242,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19243, upper := 19398,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19399, upper := 19552,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19553, upper := 19714,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19715, upper := 19870,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 19871, upper := 20028,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20029, upper := 20190,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20191, upper := 20344,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20345, upper := 20502,
        witness := RowWitness.topPrime 20341
      },
      {
        lower := 20503, upper := 20644,
        witness := RowWitness.topPrime 20483
      },
      {
        lower := 20645, upper := 20802,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20803, upper := 20950,
        witness := RowWitness.topPrime 20789
      },
      {
        lower := 20951, upper := 21108,
        witness := RowWitness.topPrime 20947
      },
      {
        lower := 21109, upper := 21268,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21269, upper := 21430,
        witness := RowWitness.topPrime 21269
      },
      {
        lower := 21431, upper := 21580,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21581, upper := 21738,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21739, upper := 21900,
        witness := RowWitness.topPrime 21739
      },
      {
        lower := 21901, upper := 22054,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22055, upper := 22212,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22213, upper := 22354,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22355, upper := 22510,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22511, upper := 22672,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 22673, upper := 22830,
        witness := RowWitness.topPrime 22669
      },
      {
        lower := 22831, upper := 22978,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 22979, upper := 23134,
        witness := RowWitness.topPrime 22973
      },
      {
        lower := 23135, upper := 23292,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23293, upper := 23454,
        witness := RowWitness.topPrime 23293
      },
      {
        lower := 23455, upper := 23608,
        witness := RowWitness.topPrime 23447
      },
      {
        lower := 23609, upper := 23770,
        witness := RowWitness.topPrime 23609
      },
      {
        lower := 23771, upper := 23928,
        witness := RowWitness.topPrime 23767
      },
      {
        lower := 23929, upper := 24090,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24091, upper := 24252,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24253, upper := 24412,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24413, upper := 24574,
        witness := RowWitness.topPrime 24413
      },
      {
        lower := 24575, upper := 24732,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24733, upper := 24894,
        witness := RowWitness.topPrime 24733
      },
      {
        lower := 24895, upper := 25050,
        witness := RowWitness.topPrime 24889
      },
      {
        lower := 25051, upper := 25198,
        witness := RowWitness.topPrime 25037
      },
      {
        lower := 25199, upper := 25350,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25351, upper := 25510,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 25511, upper := 25632,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25633, upper := 25794,
        witness := RowWitness.topPrime 25633
      },
      {
        lower := 25795, upper := 25954,
        witness := RowWitness.topPrime 25793
      },
      {
        lower := 25955, upper := 26081,
        witness := RowWitness.topPrime 25951
      },
      {
        lower := 26411, upper := 26568,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26569, upper := 26572,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26645, upper := 26669,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 27556, upper := 27597,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28284,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28285, upper := 28286,
        witness := RowWitness.topPrime 28283
      },
      {
        lower := 28717, upper := 28722,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28878,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29929,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31354,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31355, upper := 31411,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31490,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31845,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31988,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33650,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33775,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34480,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34481, upper := 34552,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36658,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36659, upper := 36662,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37371,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37464,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37654,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37655, upper := 37699,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38452,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40489,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41088,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41089, upper := 41092,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45414,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47682,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47683, upper := 47685,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48122,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48384,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48534,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48829,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49291,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49313,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49459,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50571,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51166,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56330,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56468,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57283,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 62500, upper := 62571,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68800,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68801, upper := 68805,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69051,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71448,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71449, upper := 71450,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73328,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85844,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89534,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93911,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 102152, upper := 102171,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103127,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149038,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 26082, upper := 52164, M := 13
      },
      {
        lower := 52164, upper := 104328, M := 10
      },
      {
        lower := 104328, upper := 208656, M := 7
      },
      {
        lower := 208656, upper := 417312, M := 5
      },
      {
        lower := 417312, upper := 834624, M := 4
      },
      {
        lower := 834624, upper := 1669248, M := 3
      },
      {
        lower := 1669248, upper := 3338496, M := 2
      },
      {
        lower := 3338496, upper := 6676992, M := 2
      },
      {
        lower := 6676992, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 163, r := 54, s := 116,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 328, upper := 479,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 480, upper := 641,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 642, upper := 803,
        witness := RowWitness.topPrime 641
      },
      {
        lower := 804, upper := 959,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 960, upper := 1115,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1116, upper := 1271,
        witness := RowWitness.topPrime 1109
      },
      {
        lower := 1272, upper := 1421,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1422, upper := 1571,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1572, upper := 1733,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1734, upper := 1895,
        witness := RowWitness.topPrime 1733
      },
      {
        lower := 1896, upper := 2051,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2052, upper := 2201,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2202, upper := 2341,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2342, upper := 2503,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2504, upper := 2665,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2666, upper := 2825,
        witness := RowWitness.topPrime 2663
      },
      {
        lower := 2826, upper := 2981,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2982, upper := 3133,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3134, upper := 3283,
        witness := RowWitness.topPrime 3121
      },
      {
        lower := 3284, upper := 3433,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3434, upper := 3595,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3596, upper := 3755,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3756, upper := 3901,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3902, upper := 4051,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4052, upper := 4213,
        witness := RowWitness.topPrime 4051
      },
      {
        lower := 4214, upper := 4373,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4374, upper := 4535,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4536, upper := 4685,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4686, upper := 4841,
        witness := RowWitness.topPrime 4679
      },
      {
        lower := 4842, upper := 4993,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4994, upper := 5155,
        witness := RowWitness.topPrime 4993
      },
      {
        lower := 5156, upper := 5315,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5316, upper := 5471,
        witness := RowWitness.topPrime 5309
      },
      {
        lower := 5472, upper := 5633,
        witness := RowWitness.topPrime 5471
      },
      {
        lower := 5634, upper := 5785,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5786, upper := 5945,
        witness := RowWitness.topPrime 5783
      },
      {
        lower := 5946, upper := 6101,
        witness := RowWitness.topPrime 5939
      },
      {
        lower := 6102, upper := 6263,
        witness := RowWitness.topPrime 6101
      },
      {
        lower := 6264, upper := 6425,
        witness := RowWitness.topPrime 6263
      },
      {
        lower := 6426, upper := 6583,
        witness := RowWitness.topPrime 6421
      },
      {
        lower := 6584, upper := 6743,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6744, upper := 6899,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6900, upper := 7061,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7062, upper := 7219,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7220, upper := 7381,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7382, upper := 7531,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7532, upper := 7691,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7692, upper := 7853,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7854, upper := 8015,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 8016, upper := 8173,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8174, upper := 8333,
        witness := RowWitness.topPrime 8171
      },
      {
        lower := 8334, upper := 8491,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8492, upper := 8629,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8630, upper := 8791,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8792, upper := 8945,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8946, upper := 9103,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9104, upper := 9265,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9266, upper := 9419,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9420, upper := 9581,
        witness := RowWitness.topPrime 9419
      },
      {
        lower := 9582, upper := 9713,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9714, upper := 9859,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9860, upper := 10021,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10022, upper := 10171,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10172, upper := 10331,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10332, upper := 10493,
        witness := RowWitness.topPrime 10331
      },
      {
        lower := 10494, upper := 10649,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10650, upper := 10801,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10802, upper := 10961,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10962, upper := 11119,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11120, upper := 11281,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11282, upper := 11441,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11442, upper := 11599,
        witness := RowWitness.topPrime 11437
      },
      {
        lower := 11600, upper := 11759,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11760, upper := 11905,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11906, upper := 12065,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12066, upper := 12211,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12212, upper := 12373,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12374, upper := 12535,
        witness := RowWitness.topPrime 12373
      },
      {
        lower := 12536, upper := 12689,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12690, upper := 12851,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12852, upper := 13003,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 13004, upper := 13165,
        witness := RowWitness.topPrime 13003
      },
      {
        lower := 13166, upper := 13325,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13326, upper := 13475,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13476, upper := 13631,
        witness := RowWitness.topPrime 13469
      },
      {
        lower := 13632, upper := 13789,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13790, upper := 13951,
        witness := RowWitness.topPrime 13789
      },
      {
        lower := 13952, upper := 14095,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14096, upper := 14249,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14250, upper := 14411,
        witness := RowWitness.topPrime 14249
      },
      {
        lower := 14412, upper := 14573,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14574, upper := 14725,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14726, upper := 14885,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14886, upper := 15041,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15042, upper := 15193,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15194, upper := 15355,
        witness := RowWitness.topPrime 15193
      },
      {
        lower := 15356, upper := 15511,
        witness := RowWitness.topPrime 15349
      },
      {
        lower := 15512, upper := 15673,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15674, upper := 15833,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15834, upper := 15985,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15986, upper := 16135,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16136, upper := 16289,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16290, upper := 16435,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16436, upper := 16595,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16596, upper := 16735,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16736, upper := 16891,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16892, upper := 17051,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17052, upper := 17209,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17210, upper := 17371,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17372, upper := 17521,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17522, upper := 17681,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17682, upper := 17843,
        witness := RowWitness.topPrime 17681
      },
      {
        lower := 17844, upper := 18001,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18002, upper := 18151,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18152, upper := 18311,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18312, upper := 18473,
        witness := RowWitness.topPrime 18311
      },
      {
        lower := 18474, upper := 18623,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18624, upper := 18779,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18780, upper := 18935,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18936, upper := 19081,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19082, upper := 19243,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19244, upper := 19399,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19400, upper := 19553,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19554, upper := 19715,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19716, upper := 19871,
        witness := RowWitness.topPrime 19709
      },
      {
        lower := 19872, upper := 20029,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20030, upper := 20191,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20192, upper := 20345,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20346, upper := 20503,
        witness := RowWitness.topPrime 20341
      },
      {
        lower := 20504, upper := 20645,
        witness := RowWitness.topPrime 20483
      },
      {
        lower := 20646, upper := 20803,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20804, upper := 20951,
        witness := RowWitness.topPrime 20789
      },
      {
        lower := 20952, upper := 21109,
        witness := RowWitness.topPrime 20947
      },
      {
        lower := 21110, upper := 21269,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21270, upper := 21431,
        witness := RowWitness.topPrime 21269
      },
      {
        lower := 21432, upper := 21581,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21582, upper := 21739,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21740, upper := 21901,
        witness := RowWitness.topPrime 21739
      },
      {
        lower := 21902, upper := 22055,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22056, upper := 22213,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22214, upper := 22355,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22356, upper := 22511,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22512, upper := 22673,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 22674, upper := 22831,
        witness := RowWitness.topPrime 22669
      },
      {
        lower := 22832, upper := 22979,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 22980, upper := 23135,
        witness := RowWitness.topPrime 22973
      },
      {
        lower := 23136, upper := 23293,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23294, upper := 23455,
        witness := RowWitness.topPrime 23293
      },
      {
        lower := 23456, upper := 23609,
        witness := RowWitness.topPrime 23447
      },
      {
        lower := 23610, upper := 23771,
        witness := RowWitness.topPrime 23609
      },
      {
        lower := 23772, upper := 23929,
        witness := RowWitness.topPrime 23767
      },
      {
        lower := 23930, upper := 24091,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24092, upper := 24253,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24254, upper := 24413,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24414, upper := 24575,
        witness := RowWitness.topPrime 24413
      },
      {
        lower := 24576, upper := 24733,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24734, upper := 24895,
        witness := RowWitness.topPrime 24733
      },
      {
        lower := 24896, upper := 25051,
        witness := RowWitness.topPrime 24889
      },
      {
        lower := 25052, upper := 25199,
        witness := RowWitness.topPrime 25037
      },
      {
        lower := 25200, upper := 25351,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25352, upper := 25511,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 25512, upper := 25633,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25634, upper := 25795,
        witness := RowWitness.topPrime 25633
      },
      {
        lower := 25796, upper := 25955,
        witness := RowWitness.topPrime 25793
      },
      {
        lower := 25956, upper := 26113,
        witness := RowWitness.topPrime 25951
      },
      {
        lower := 26114, upper := 26275,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26276, upper := 26406,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26411, upper := 26569,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26570, upper := 26573,
        witness := RowWitness.topPrime 26561
      },
      {
        lower := 26624, upper := 26759,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26760, upper := 26786,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 27556, upper := 27598,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28285,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28286, upper := 28287,
        witness := RowWitness.topPrime 28283
      },
      {
        lower := 28561, upper := 28593,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28831,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28832, upper := 28879,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29930,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31355,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31356, upper := 31412,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31491,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31846,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31989,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32930,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33651,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33776,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34481,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34482, upper := 34553,
        witness := RowWitness.topPrime 34471
      },
      {
        lower := 36517, upper := 36659,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36660, upper := 36663,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37372,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37465,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37655,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37656, upper := 37700,
        witness := RowWitness.topPrime 37649
      },
      {
        lower := 38307, upper := 38453,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39466,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40490,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41089,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41090, upper := 41093,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45415,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45958,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47683,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47684, upper := 47686,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48123,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48385,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48387, upper := 48535,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48830,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49292,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49314,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49460,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50572,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51167,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56331,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56469,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57284,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57407,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 68694, upper := 68806,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71449,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71450, upper := 71451,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73329,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85845,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89535,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93912,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98466,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103128,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137943,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149039,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 26406, upper := 52812, M := 13
      },
      {
        lower := 52812, upper := 105624, M := 9
      },
      {
        lower := 105624, upper := 211248, M := 7
      },
      {
        lower := 211248, upper := 422496, M := 5
      },
      {
        lower := 422496, upper := 844992, M := 4
      },
      {
        lower := 844992, upper := 1689984, M := 3
      },
      {
        lower := 1689984, upper := 3379968, M := 2
      },
      {
        lower := 3379968, upper := 6759936, M := 2
      },
      {
        lower := 6759936, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 164, r := 54, s := 116,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 330, upper := 480,
        witness := RowWitness.topPrime 317
      },
      {
        lower := 481, upper := 642,
        witness := RowWitness.topPrime 479
      },
      {
        lower := 643, upper := 806,
        witness := RowWitness.topPrime 643
      },
      {
        lower := 807, upper := 960,
        witness := RowWitness.topPrime 797
      },
      {
        lower := 961, upper := 1116,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1117, upper := 1280,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1281, upper := 1442,
        witness := RowWitness.topPrime 1279
      },
      {
        lower := 1443, upper := 1602,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1603, upper := 1764,
        witness := RowWitness.topPrime 1601
      },
      {
        lower := 1765, upper := 1922,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1923, upper := 2076,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2077, upper := 2232,
        witness := RowWitness.topPrime 2069
      },
      {
        lower := 2233, upper := 2384,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2385, upper := 2546,
        witness := RowWitness.topPrime 2383
      },
      {
        lower := 2547, upper := 2706,
        witness := RowWitness.topPrime 2543
      },
      {
        lower := 2707, upper := 2870,
        witness := RowWitness.topPrime 2707
      },
      {
        lower := 2871, upper := 3024,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 3025, upper := 3186,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3187, upper := 3350,
        witness := RowWitness.topPrime 3187
      },
      {
        lower := 3351, upper := 3510,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3511, upper := 3674,
        witness := RowWitness.topPrime 3511
      },
      {
        lower := 3675, upper := 3836,
        witness := RowWitness.topPrime 3673
      },
      {
        lower := 3837, upper := 3996,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3997, upper := 4152,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4153, upper := 4316,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4317, upper := 4460,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4461, upper := 4620,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4621, upper := 4784,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4785, upper := 4946,
        witness := RowWitness.topPrime 4783
      },
      {
        lower := 4947, upper := 5106,
        witness := RowWitness.topPrime 4943
      },
      {
        lower := 5107, upper := 5270,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5271, upper := 5424,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5425, upper := 5582,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5583, upper := 5744,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5745, upper := 5906,
        witness := RowWitness.topPrime 5743
      },
      {
        lower := 5907, upper := 6066,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6067, upper := 6230,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6231, upper := 6392,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6393, upper := 6552,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6553, upper := 6716,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6717, upper := 6872,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6873, upper := 7034,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7035, upper := 7190,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7191, upper := 7350,
        witness := RowWitness.topPrime 7187
      },
      {
        lower := 7351, upper := 7514,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7515, upper := 7670,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7671, upper := 7832,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7833, upper := 7992,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7993, upper := 8156,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8157, upper := 8310,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8311, upper := 8474,
        witness := RowWitness.topPrime 8311
      },
      {
        lower := 8475, upper := 8630,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8631, upper := 8792,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8793, upper := 8946,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8947, upper := 9104,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9105, upper := 9266,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9267, upper := 9420,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9421, upper := 9584,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9585, upper := 9714,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9715, upper := 9860,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9861, upper := 10022,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10023, upper := 10172,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10173, upper := 10332,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10333, upper := 10496,
        witness := RowWitness.topPrime 10333
      },
      {
        lower := 10497, upper := 10650,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10651, upper := 10814,
        witness := RowWitness.topPrime 10651
      },
      {
        lower := 10815, upper := 10962,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10963, upper := 11120,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11121, upper := 11282,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11283, upper := 11442,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11443, upper := 11606,
        witness := RowWitness.topPrime 11443
      },
      {
        lower := 11607, upper := 11760,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11761, upper := 11906,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11907, upper := 12066,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12067, upper := 12212,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12213, upper := 12374,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12375, upper := 12536,
        witness := RowWitness.topPrime 12373
      },
      {
        lower := 12537, upper := 12690,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12691, upper := 12852,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12853, upper := 13016,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13017, upper := 13172,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13173, upper := 13334,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13335, upper := 13494,
        witness := RowWitness.topPrime 13331
      },
      {
        lower := 13495, upper := 13650,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13651, upper := 13812,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13813, upper := 13970,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13971, upper := 14130,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14131, upper := 14270,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14271, upper := 14414,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14415, upper := 14574,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14575, upper := 14726,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14727, upper := 14886,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14887, upper := 15050,
        witness := RowWitness.topPrime 14887
      },
      {
        lower := 15051, upper := 15194,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15195, upper := 15356,
        witness := RowWitness.topPrime 15193
      },
      {
        lower := 15357, upper := 15512,
        witness := RowWitness.topPrime 15349
      },
      {
        lower := 15513, upper := 15674,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15675, upper := 15834,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15835, upper := 15986,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15987, upper := 16136,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16137, upper := 16290,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16291, upper := 16436,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16437, upper := 16596,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16597, upper := 16736,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16737, upper := 16892,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16893, upper := 17052,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17053, upper := 17216,
        witness := RowWitness.topPrime 17053
      },
      {
        lower := 17217, upper := 17372,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17373, upper := 17522,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17523, upper := 17682,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17683, upper := 17846,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17847, upper := 18002,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18003, upper := 18152,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18153, upper := 18312,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18313, upper := 18476,
        witness := RowWitness.topPrime 18313
      },
      {
        lower := 18477, upper := 18624,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18625, upper := 18780,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18781, upper := 18936,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18937, upper := 19082,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19083, upper := 19244,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19245, upper := 19400,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19401, upper := 19554,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19555, upper := 19716,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19717, upper := 19880,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19881, upper := 20030,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20031, upper := 20192,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20193, upper := 20346,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20347, upper := 20510,
        witness := RowWitness.topPrime 20347
      },
      {
        lower := 20511, upper := 20672,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20673, upper := 20826,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20827, upper := 20972,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20973, upper := 21126,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21127, upper := 21284,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21285, upper := 21446,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21447, upper := 21596,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21597, upper := 21752,
        witness := RowWitness.topPrime 21589
      },
      {
        lower := 21753, upper := 21914,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21915, upper := 22074,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22075, upper := 22236,
        witness := RowWitness.topPrime 22073
      },
      {
        lower := 22237, upper := 22392,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22393, upper := 22554,
        witness := RowWitness.topPrime 22391
      },
      {
        lower := 22555, upper := 22712,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22713, upper := 22872,
        witness := RowWitness.topPrime 22709
      },
      {
        lower := 22873, upper := 23034,
        witness := RowWitness.topPrime 22871
      },
      {
        lower := 23035, upper := 23192,
        witness := RowWitness.topPrime 23029
      },
      {
        lower := 23193, upper := 23352,
        witness := RowWitness.topPrime 23189
      },
      {
        lower := 23353, upper := 23502,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23503, upper := 23660,
        witness := RowWitness.topPrime 23497
      },
      {
        lower := 23661, upper := 23796,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23797, upper := 23952,
        witness := RowWitness.topPrime 23789
      },
      {
        lower := 23953, upper := 24092,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24093, upper := 24254,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24255, upper := 24414,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24415, upper := 24576,
        witness := RowWitness.topPrime 24413
      },
      {
        lower := 24577, upper := 24734,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24735, upper := 24896,
        witness := RowWitness.topPrime 24733
      },
      {
        lower := 24897, upper := 25052,
        witness := RowWitness.topPrime 24889
      },
      {
        lower := 25053, upper := 25200,
        witness := RowWitness.topPrime 25037
      },
      {
        lower := 25201, upper := 25352,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25353, upper := 25512,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 25513, upper := 25634,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25635, upper := 25796,
        witness := RowWitness.topPrime 25633
      },
      {
        lower := 25797, upper := 25956,
        witness := RowWitness.topPrime 25793
      },
      {
        lower := 25957, upper := 26114,
        witness := RowWitness.topPrime 25951
      },
      {
        lower := 26115, upper := 26276,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26277, upper := 26430,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26431, upper := 26594,
        witness := RowWitness.topPrime 26431
      },
      {
        lower := 26595, upper := 26732,
        witness := RowWitness.topPrime 26591
      },
      {
        lower := 27556, upper := 27599,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27898,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28286,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28287, upper := 28288,
        witness := RowWitness.topPrime 28283
      },
      {
        lower := 28561, upper := 28594,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28717, upper := 28724,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28880,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29931,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30756,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30757, upper := 30781,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30921,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31062,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31356,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31357, upper := 31413,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31492,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31847,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31990,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32931,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32968,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33652,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33777,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34482,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34483, upper := 34554,
        witness := RowWitness.topPrime 34483
      },
      {
        lower := 36015, upper := 36075,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36660,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36661, upper := 36664,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37373,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37466,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37656,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37657, upper := 37701,
        witness := RowWitness.topPrime 37657
      },
      {
        lower := 38307, upper := 38454,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39486,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39487, upper := 39489,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40491,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40967,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 43750, upper := 43850,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45416,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45959,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47684,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47685, upper := 47687,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48124,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48534,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48535, upper := 48536,
        witness := RowWitness.topPrime 48533
      },
      {
        lower := 48734, upper := 48896,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48897, upper := 48897,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49152, upper := 49293,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49315,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49461,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50573,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51168,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 52215, upper := 52257,
        witness := RowWitness.topPrime 52201
      },
      {
        lower := 53138, upper := 53208,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53301,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55604,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55605, upper := 55610,
        witness := RowWitness.topPrime 55603
      },
      {
        lower := 56307, upper := 56332,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56470,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57285,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58727,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62573,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65699,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68802,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68803, upper := 68814,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 71289, upper := 71450,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71451, upper := 71452,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 73205, upper := 73330,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85846,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89536,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93913,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 102152, upper := 102173,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103129,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149040,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 26732, upper := 53464, M := 15
      },
      {
        lower := 53464, upper := 106928, M := 11
      },
      {
        lower := 106928, upper := 213856, M := 8
      },
      {
        lower := 213856, upper := 427712, M := 6
      },
      {
        lower := 427712, upper := 855424, M := 5
      },
      {
        lower := 855424, upper := 1710848, M := 4
      },
      {
        lower := 1710848, upper := 3421696, M := 3
      },
      {
        lower := 3421696, upper := 6843392, M := 2
      },
      {
        lower := 6843392, upper := 13686784, M := 2
      },
      {
        lower := 13686784, upper := 27373568, M := 1
      },
      {
        lower := 27373568, upper := 54747136, M := 1
      },
      {
        lower := 54747136, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 165, r := 54, s := 117,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 332, upper := 495,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 496, upper := 655,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 656, upper := 817,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 818, upper := 975,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 976, upper := 1135,
        witness := RowWitness.topPrime 971
      },
      {
        lower := 1136, upper := 1293,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1294, upper := 1455,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1456, upper := 1617,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1618, upper := 1777,
        witness := RowWitness.topPrime 1613
      },
      {
        lower := 1778, upper := 1941,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1942, upper := 2097,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2098, upper := 2253,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2254, upper := 2415,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2416, upper := 2575,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2576, upper := 2721,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2722, upper := 2883,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2884, upper := 3043,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 3044, upper := 3205,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3206, upper := 3367,
        witness := RowWitness.topPrime 3203
      },
      {
        lower := 3368, upper := 3525,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3526, upper := 3681,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3682, upper := 3841,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3842, upper := 3997,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 3998, upper := 4153,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4154, upper := 4317,
        witness := RowWitness.topPrime 4153
      },
      {
        lower := 4318, upper := 4461,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4462, upper := 4621,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4622, upper := 4785,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4786, upper := 4947,
        witness := RowWitness.topPrime 4783
      },
      {
        lower := 4948, upper := 5107,
        witness := RowWitness.topPrime 4943
      },
      {
        lower := 5108, upper := 5271,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5272, upper := 5425,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5426, upper := 5583,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5584, upper := 5745,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5746, upper := 5907,
        witness := RowWitness.topPrime 5743
      },
      {
        lower := 5908, upper := 6067,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6068, upper := 6231,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6232, upper := 6393,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6394, upper := 6553,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6554, upper := 6717,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6718, upper := 6873,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6874, upper := 7035,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7036, upper := 7191,
        witness := RowWitness.topPrime 7027
      },
      {
        lower := 7192, upper := 7351,
        witness := RowWitness.topPrime 7187
      },
      {
        lower := 7352, upper := 7515,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7516, upper := 7671,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7672, upper := 7833,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7834, upper := 7993,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7994, upper := 8157,
        witness := RowWitness.topPrime 7993
      },
      {
        lower := 8158, upper := 8311,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8312, upper := 8475,
        witness := RowWitness.topPrime 8311
      },
      {
        lower := 8476, upper := 8631,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8632, upper := 8793,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8794, upper := 8947,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8948, upper := 9105,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9106, upper := 9267,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9268, upper := 9421,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9422, upper := 9585,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9586, upper := 9715,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9716, upper := 9861,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9862, upper := 10023,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10024, upper := 10173,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10174, upper := 10333,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10334, upper := 10497,
        witness := RowWitness.topPrime 10333
      },
      {
        lower := 10498, upper := 10651,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10652, upper := 10815,
        witness := RowWitness.topPrime 10651
      },
      {
        lower := 10816, upper := 10963,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10964, upper := 11121,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11122, upper := 11283,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11284, upper := 11443,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11444, upper := 11607,
        witness := RowWitness.topPrime 11443
      },
      {
        lower := 11608, upper := 11761,
        witness := RowWitness.topPrime 11597
      },
      {
        lower := 11762, upper := 11907,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11908, upper := 12067,
        witness := RowWitness.topPrime 11903
      },
      {
        lower := 12068, upper := 12213,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12214, upper := 12375,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12376, upper := 12537,
        witness := RowWitness.topPrime 12373
      },
      {
        lower := 12538, upper := 12691,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12692, upper := 12853,
        witness := RowWitness.topPrime 12689
      },
      {
        lower := 12854, upper := 13017,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13018, upper := 13173,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13174, upper := 13335,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13336, upper := 13495,
        witness := RowWitness.topPrime 13331
      },
      {
        lower := 13496, upper := 13651,
        witness := RowWitness.topPrime 13487
      },
      {
        lower := 13652, upper := 13813,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13814, upper := 13971,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13972, upper := 14131,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14132, upper := 14271,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14272, upper := 14415,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14416, upper := 14575,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14576, upper := 14727,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14728, upper := 14887,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14888, upper := 15051,
        witness := RowWitness.topPrime 14887
      },
      {
        lower := 15052, upper := 15195,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15196, upper := 15357,
        witness := RowWitness.topPrime 15193
      },
      {
        lower := 15358, upper := 15513,
        witness := RowWitness.topPrime 15349
      },
      {
        lower := 15514, upper := 15675,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15676, upper := 15835,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15836, upper := 15987,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15988, upper := 16137,
        witness := RowWitness.topPrime 15973
      },
      {
        lower := 16138, upper := 16291,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16292, upper := 16437,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16438, upper := 16597,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16598, upper := 16737,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16738, upper := 16893,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16894, upper := 17053,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17054, upper := 17217,
        witness := RowWitness.topPrime 17053
      },
      {
        lower := 17218, upper := 17373,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17374, upper := 17523,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17524, upper := 17683,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17684, upper := 17847,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17848, upper := 18003,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18004, upper := 18153,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18154, upper := 18313,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18314, upper := 18477,
        witness := RowWitness.topPrime 18313
      },
      {
        lower := 18478, upper := 18625,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18626, upper := 18781,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18782, upper := 18937,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18938, upper := 19083,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19084, upper := 19245,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19246, upper := 19401,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19402, upper := 19555,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19556, upper := 19717,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19718, upper := 19881,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19882, upper := 20031,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20032, upper := 20193,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20194, upper := 20347,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20348, upper := 20511,
        witness := RowWitness.topPrime 20347
      },
      {
        lower := 20512, upper := 20673,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20674, upper := 20827,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20828, upper := 20973,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20974, upper := 21127,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21128, upper := 21285,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21286, upper := 21447,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21448, upper := 21597,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21598, upper := 21753,
        witness := RowWitness.topPrime 21589
      },
      {
        lower := 21754, upper := 21915,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21916, upper := 22075,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22076, upper := 22237,
        witness := RowWitness.topPrime 22073
      },
      {
        lower := 22238, upper := 22393,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22394, upper := 22555,
        witness := RowWitness.topPrime 22391
      },
      {
        lower := 22556, upper := 22713,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22714, upper := 22873,
        witness := RowWitness.topPrime 22709
      },
      {
        lower := 22874, upper := 23035,
        witness := RowWitness.topPrime 22871
      },
      {
        lower := 23036, upper := 23193,
        witness := RowWitness.topPrime 23029
      },
      {
        lower := 23194, upper := 23353,
        witness := RowWitness.topPrime 23189
      },
      {
        lower := 23354, upper := 23503,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23504, upper := 23661,
        witness := RowWitness.topPrime 23497
      },
      {
        lower := 23662, upper := 23797,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23798, upper := 23953,
        witness := RowWitness.topPrime 23789
      },
      {
        lower := 23954, upper := 24093,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24094, upper := 24255,
        witness := RowWitness.topPrime 24091
      },
      {
        lower := 24256, upper := 24415,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24416, upper := 24577,
        witness := RowWitness.topPrime 24413
      },
      {
        lower := 24578, upper := 24735,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24736, upper := 24897,
        witness := RowWitness.topPrime 24733
      },
      {
        lower := 24898, upper := 25053,
        witness := RowWitness.topPrime 24889
      },
      {
        lower := 25054, upper := 25201,
        witness := RowWitness.topPrime 25037
      },
      {
        lower := 25202, upper := 25353,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25354, upper := 25513,
        witness := RowWitness.topPrime 25349
      },
      {
        lower := 25514, upper := 25635,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25636, upper := 25797,
        witness := RowWitness.topPrime 25633
      },
      {
        lower := 25798, upper := 25957,
        witness := RowWitness.topPrime 25793
      },
      {
        lower := 25958, upper := 26115,
        witness := RowWitness.topPrime 25951
      },
      {
        lower := 26116, upper := 26277,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26278, upper := 26431,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26432, upper := 26595,
        witness := RowWitness.topPrime 26431
      },
      {
        lower := 26596, upper := 26755,
        witness := RowWitness.topPrime 26591
      },
      {
        lower := 26756, upper := 26901,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 26902, upper := 27057,
        witness := RowWitness.topPrime 26893
      },
      {
        lower := 27058, upper := 27059,
        witness := RowWitness.topPrime 27043
      },
      {
        lower := 27556, upper := 27600,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28227, upper := 28254,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28672, upper := 28833,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28834, upper := 28881,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29932,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30767,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30922,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31063,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31357,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31358, upper := 31414,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31493,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31848,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31991,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33653,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33778,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34483,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34484, upper := 34555,
        witness := RowWitness.topPrime 34483
      },
      {
        lower := 36517, upper := 36661,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36662, upper := 36665,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37374,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37467,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37610,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37702,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38455,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39487,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39488, upper := 39490,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40492,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41091,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41092, upper := 41095,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45417,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47685,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47686, upper := 47688,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48125,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48535,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48536, upper := 48537,
        witness := RowWitness.topPrime 48533
      },
      {
        lower := 48734, upper := 48897,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48898, upper := 48898,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49152, upper := 49294,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49316,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49462,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50574,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51169,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53209,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53403,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53404, upper := 53412,
        witness := RowWitness.topPrime 53401
      },
      {
        lower := 55451, upper := 55605,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55606, upper := 55611,
        witness := RowWitness.topPrime 55603
      },
      {
        lower := 56307, upper := 56333,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56471,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57286,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57409,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 68644, upper := 68803,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68804, upper := 68815,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69054,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71451,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71452, upper := 71453,
        witness := RowWitness.topPrime 71443
      },
      {
        lower := 85805, upper := 85847,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89537,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 102152, upper := 102174,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103130,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149041,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 27060, upper := 54120, M := 14
      },
      {
        lower := 54120, upper := 108240, M := 11
      },
      {
        lower := 108240, upper := 216480, M := 8
      },
      {
        lower := 216480, upper := 432960, M := 6
      },
      {
        lower := 432960, upper := 865920, M := 4
      },
      {
        lower := 865920, upper := 1731840, M := 3
      },
      {
        lower := 1731840, upper := 3463680, M := 3
      },
      {
        lower := 3463680, upper := 6927360, M := 2
      },
      {
        lower := 6927360, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 166, r := 55, s := 118,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 334, upper := 496,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 497, upper := 656,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 657, upper := 818,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 819, upper := 976,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 977, upper := 1142,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1143, upper := 1294,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1295, upper := 1456,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1457, upper := 1618,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1619, upper := 1784,
        witness := RowWitness.topPrime 1619
      },
      {
        lower := 1785, upper := 1948,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1949, upper := 2114,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2115, upper := 2278,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2279, upper := 2438,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2439, upper := 2602,
        witness := RowWitness.topPrime 2437
      },
      {
        lower := 2603, upper := 2758,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2759, upper := 2918,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2919, upper := 3082,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3083, upper := 3248,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3249, upper := 3394,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3395, upper := 3556,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3557, upper := 3722,
        witness := RowWitness.topPrime 3557
      },
      {
        lower := 3723, upper := 3884,
        witness := RowWitness.topPrime 3719
      },
      {
        lower := 3885, upper := 4046,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4047, upper := 4192,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4193, upper := 4342,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4343, upper := 4504,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4505, upper := 4658,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4659, upper := 4822,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4823, upper := 4982,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4983, upper := 5138,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5139, upper := 5284,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5285, upper := 5446,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5447, upper := 5608,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5609, upper := 5756,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5757, upper := 5914,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5915, upper := 6068,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6069, upper := 6232,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6233, upper := 6394,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6395, upper := 6554,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6555, upper := 6718,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6719, upper := 6884,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6885, upper := 7048,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7049, upper := 7208,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7209, upper := 7372,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7373, upper := 7534,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7535, upper := 7694,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7695, upper := 7856,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7857, upper := 8018,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 8019, upper := 8182,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8183, upper := 8344,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8345, upper := 8494,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8495, upper := 8632,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8633, upper := 8794,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8795, upper := 8948,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8949, upper := 9106,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9107, upper := 9268,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9269, upper := 9422,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9423, upper := 9586,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9587, upper := 9752,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9753, upper := 9914,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9915, upper := 10072,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10073, upper := 10234,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10235, upper := 10388,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10389, upper := 10534,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10535, upper := 10696,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10697, upper := 10856,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10857, upper := 11018,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 11019, upper := 11168,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11169, upper := 11326,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11327, upper := 11486,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11487, upper := 11648,
        witness := RowWitness.topPrime 11483
      },
      {
        lower := 11649, upper := 11798,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11799, upper := 11954,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11955, upper := 12118,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12119, upper := 12284,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12285, upper := 12446,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12447, upper := 12602,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12603, upper := 12766,
        witness := RowWitness.topPrime 12601
      },
      {
        lower := 12767, upper := 12928,
        witness := RowWitness.topPrime 12763
      },
      {
        lower := 12929, upper := 13088,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13089, upper := 13228,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13229, upper := 13394,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13395, upper := 13546,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13547, upper := 13702,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13703, upper := 13862,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13863, upper := 14024,
        witness := RowWitness.topPrime 13859
      },
      {
        lower := 14025, upper := 14176,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14177, upper := 14342,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14343, upper := 14506,
        witness := RowWitness.topPrime 14341
      },
      {
        lower := 14507, upper := 14668,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14669, upper := 14834,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14835, upper := 14996,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14997, upper := 15148,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15149, upper := 15314,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15315, upper := 15478,
        witness := RowWitness.topPrime 15313
      },
      {
        lower := 15479, upper := 15638,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15639, upper := 15794,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15795, upper := 15956,
        witness := RowWitness.topPrime 15791
      },
      {
        lower := 15957, upper := 16102,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16103, upper := 16268,
        witness := RowWitness.topPrime 16103
      },
      {
        lower := 16269, upper := 16432,
        witness := RowWitness.topPrime 16267
      },
      {
        lower := 16433, upper := 16598,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16599, upper := 16738,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16739, upper := 16894,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16895, upper := 17054,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17055, upper := 17218,
        witness := RowWitness.topPrime 17053
      },
      {
        lower := 17219, upper := 17374,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17375, upper := 17524,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17525, upper := 17684,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17685, upper := 17848,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17849, upper := 18004,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18005, upper := 18154,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18155, upper := 18314,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18315, upper := 18478,
        witness := RowWitness.topPrime 18313
      },
      {
        lower := 18479, upper := 18626,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18627, upper := 18782,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18783, upper := 18938,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18939, upper := 19084,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19085, upper := 19246,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19247, upper := 19402,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19403, upper := 19568,
        witness := RowWitness.topPrime 19403
      },
      {
        lower := 19569, upper := 19724,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19725, upper := 19882,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19883, upper := 20032,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20033, upper := 20194,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20195, upper := 20348,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20349, upper := 20512,
        witness := RowWitness.topPrime 20347
      },
      {
        lower := 20513, upper := 20674,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20675, upper := 20828,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20829, upper := 20974,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20975, upper := 21128,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21129, upper := 21286,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21287, upper := 21448,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21449, upper := 21598,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21599, upper := 21764,
        witness := RowWitness.topPrime 21599
      },
      {
        lower := 21765, upper := 21922,
        witness := RowWitness.topPrime 21757
      },
      {
        lower := 21923, upper := 22076,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22077, upper := 22238,
        witness := RowWitness.topPrime 22073
      },
      {
        lower := 22239, upper := 22394,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22395, upper := 22556,
        witness := RowWitness.topPrime 22391
      },
      {
        lower := 22557, upper := 22714,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22715, upper := 22874,
        witness := RowWitness.topPrime 22709
      },
      {
        lower := 22875, upper := 23036,
        witness := RowWitness.topPrime 22871
      },
      {
        lower := 23037, upper := 23194,
        witness := RowWitness.topPrime 23029
      },
      {
        lower := 23195, upper := 23354,
        witness := RowWitness.topPrime 23189
      },
      {
        lower := 23355, upper := 23504,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23505, upper := 23662,
        witness := RowWitness.topPrime 23497
      },
      {
        lower := 23663, upper := 23828,
        witness := RowWitness.topPrime 23663
      },
      {
        lower := 23829, upper := 23992,
        witness := RowWitness.topPrime 23827
      },
      {
        lower := 23993, upper := 24158,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24159, upper := 24316,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24317, upper := 24482,
        witness := RowWitness.topPrime 24317
      },
      {
        lower := 24483, upper := 24646,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24647, upper := 24796,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 24797, upper := 24958,
        witness := RowWitness.topPrime 24793
      },
      {
        lower := 24959, upper := 25118,
        witness := RowWitness.topPrime 24953
      },
      {
        lower := 25119, upper := 25282,
        witness := RowWitness.topPrime 25117
      },
      {
        lower := 25283, upper := 25426,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25427, upper := 25588,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25589, upper := 25754,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25755, upper := 25912,
        witness := RowWitness.topPrime 25747
      },
      {
        lower := 25913, upper := 26078,
        witness := RowWitness.topPrime 25913
      },
      {
        lower := 26079, upper := 26218,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26219, upper := 26374,
        witness := RowWitness.topPrime 26209
      },
      {
        lower := 26375, upper := 26536,
        witness := RowWitness.topPrime 26371
      },
      {
        lower := 26537, upper := 26678,
        witness := RowWitness.topPrime 26513
      },
      {
        lower := 26679, upper := 26834,
        witness := RowWitness.topPrime 26669
      },
      {
        lower := 26835, upper := 26998,
        witness := RowWitness.topPrime 26833
      },
      {
        lower := 26999, upper := 27158,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27159, upper := 27308,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27309, upper := 27389,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 28125, upper := 28288,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28289, upper := 28290,
        witness := RowWitness.topPrime 28289
      },
      {
        lower := 28561, upper := 28596,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28717, upper := 28726,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28882,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29933,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31358,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31359, upper := 31415,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31494,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31849,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31992,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32933,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33654,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33779,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34484,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34485, upper := 34540,
        witness := RowWitness.topPrime 34483
      },
      {
        lower := 36517, upper := 36662,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36663, upper := 36666,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37375,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37468,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37658,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37659, upper := 37703,
        witness := RowWitness.topPrime 37657
      },
      {
        lower := 38307, upper := 38456,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39469,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40493,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41092,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41093, upper := 41096,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45418,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45961,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47686,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47687, upper := 47689,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48126,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48538,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48833,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49295,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49317,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49463,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50575,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51170,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53210,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53303,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 56307, upper := 56334,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56472,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57287,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 62500, upper := 62575,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65701,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68804,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68805, upper := 68809,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 71289, upper := 71452,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71453, upper := 71454,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73167,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73332,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85848,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89538,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93915,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98469,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102175,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103131,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109540,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137946,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149042,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 27390, upper := 54780, M := 13
      },
      {
        lower := 54780, upper := 109560, M := 10
      },
      {
        lower := 109560, upper := 219120, M := 7
      },
      {
        lower := 219120, upper := 438240, M := 6
      },
      {
        lower := 438240, upper := 876480, M := 4
      },
      {
        lower := 876480, upper := 1752960, M := 3
      },
      {
        lower := 1752960, upper := 3505920, M := 2
      },
      {
        lower := 3505920, upper := 7011840, M := 2
      },
      {
        lower := 7011840, upper := 10000000, M := 2
      }
    ]
  }
]

theorem coverRows06_checked :
    coverRows06.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows06_checked

end B699LowIndex
