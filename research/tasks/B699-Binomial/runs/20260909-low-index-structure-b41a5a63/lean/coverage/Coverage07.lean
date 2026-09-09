import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows07 : List FiniteCoverRow := [
  {
    height := {
      i := 167, r := 55, s := 119,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 336, upper := 497,
        witness := RowWitness.topPrime 331
      },
      {
        lower := 498, upper := 657,
        witness := RowWitness.topPrime 491
      },
      {
        lower := 658, upper := 819,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 820, upper := 977,
        witness := RowWitness.topPrime 811
      },
      {
        lower := 978, upper := 1143,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1144, upper := 1295,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1296, upper := 1457,
        witness := RowWitness.topPrime 1291
      },
      {
        lower := 1458, upper := 1619,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1620, upper := 1785,
        witness := RowWitness.topPrime 1619
      },
      {
        lower := 1786, upper := 1949,
        witness := RowWitness.topPrime 1783
      },
      {
        lower := 1950, upper := 2115,
        witness := RowWitness.topPrime 1949
      },
      {
        lower := 2116, upper := 2279,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2280, upper := 2439,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2440, upper := 2603,
        witness := RowWitness.topPrime 2437
      },
      {
        lower := 2604, upper := 2759,
        witness := RowWitness.topPrime 2593
      },
      {
        lower := 2760, upper := 2919,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2920, upper := 3083,
        witness := RowWitness.topPrime 2917
      },
      {
        lower := 3084, upper := 3249,
        witness := RowWitness.topPrime 3083
      },
      {
        lower := 3250, upper := 3395,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3396, upper := 3557,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3558, upper := 3723,
        witness := RowWitness.topPrime 3557
      },
      {
        lower := 3724, upper := 3885,
        witness := RowWitness.topPrime 3719
      },
      {
        lower := 3886, upper := 4047,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4048, upper := 4193,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4194, upper := 4343,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4344, upper := 4505,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4506, upper := 4659,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4660, upper := 4823,
        witness := RowWitness.topPrime 4657
      },
      {
        lower := 4824, upper := 4983,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4984, upper := 5139,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5140, upper := 5285,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5286, upper := 5447,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5448, upper := 5609,
        witness := RowWitness.topPrime 5443
      },
      {
        lower := 5610, upper := 5757,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5758, upper := 5915,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5916, upper := 6069,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6070, upper := 6233,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6234, upper := 6395,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6396, upper := 6555,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6556, upper := 6719,
        witness := RowWitness.topPrime 6553
      },
      {
        lower := 6720, upper := 6885,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6886, upper := 7049,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7050, upper := 7209,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7210, upper := 7373,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7374, upper := 7535,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7536, upper := 7695,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7696, upper := 7857,
        witness := RowWitness.topPrime 7691
      },
      {
        lower := 7858, upper := 8019,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 8020, upper := 8183,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8184, upper := 8345,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8346, upper := 8495,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8496, upper := 8633,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8634, upper := 8795,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8796, upper := 8949,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8950, upper := 9107,
        witness := RowWitness.topPrime 8941
      },
      {
        lower := 9108, upper := 9269,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9270, upper := 9423,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9424, upper := 9587,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9588, upper := 9753,
        witness := RowWitness.topPrime 9587
      },
      {
        lower := 9754, upper := 9915,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9916, upper := 10073,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10074, upper := 10235,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10236, upper := 10389,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10390, upper := 10535,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10536, upper := 10697,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10698, upper := 10857,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10858, upper := 11019,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 11020, upper := 11169,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11170, upper := 11327,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11328, upper := 11487,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11488, upper := 11649,
        witness := RowWitness.topPrime 11483
      },
      {
        lower := 11650, upper := 11799,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11800, upper := 11955,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11956, upper := 12119,
        witness := RowWitness.topPrime 11953
      },
      {
        lower := 12120, upper := 12285,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12286, upper := 12447,
        witness := RowWitness.topPrime 12281
      },
      {
        lower := 12448, upper := 12603,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12604, upper := 12767,
        witness := RowWitness.topPrime 12601
      },
      {
        lower := 12768, upper := 12929,
        witness := RowWitness.topPrime 12763
      },
      {
        lower := 12930, upper := 13089,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13090, upper := 13229,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13230, upper := 13395,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13396, upper := 13547,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13548, upper := 13703,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13704, upper := 13863,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13864, upper := 14025,
        witness := RowWitness.topPrime 13859
      },
      {
        lower := 14026, upper := 14177,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14178, upper := 14343,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14344, upper := 14507,
        witness := RowWitness.topPrime 14341
      },
      {
        lower := 14508, upper := 14669,
        witness := RowWitness.topPrime 14503
      },
      {
        lower := 14670, upper := 14835,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14836, upper := 14997,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14998, upper := 15149,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15150, upper := 15315,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15316, upper := 15479,
        witness := RowWitness.topPrime 15313
      },
      {
        lower := 15480, upper := 15639,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15640, upper := 15795,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15796, upper := 15957,
        witness := RowWitness.topPrime 15791
      },
      {
        lower := 15958, upper := 16103,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16104, upper := 16269,
        witness := RowWitness.topPrime 16103
      },
      {
        lower := 16270, upper := 16433,
        witness := RowWitness.topPrime 16267
      },
      {
        lower := 16434, upper := 16599,
        witness := RowWitness.topPrime 16433
      },
      {
        lower := 16600, upper := 16739,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16740, upper := 16895,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16896, upper := 17055,
        witness := RowWitness.topPrime 16889
      },
      {
        lower := 17056, upper := 17219,
        witness := RowWitness.topPrime 17053
      },
      {
        lower := 17220, upper := 17375,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17376, upper := 17525,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17526, upper := 17685,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17686, upper := 17849,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17850, upper := 18005,
        witness := RowWitness.topPrime 17839
      },
      {
        lower := 18006, upper := 18155,
        witness := RowWitness.topPrime 17989
      },
      {
        lower := 18156, upper := 18315,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18316, upper := 18479,
        witness := RowWitness.topPrime 18313
      },
      {
        lower := 18480, upper := 18627,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18628, upper := 18783,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18784, upper := 18939,
        witness := RowWitness.topPrime 18773
      },
      {
        lower := 18940, upper := 19085,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19086, upper := 19247,
        witness := RowWitness.topPrime 19081
      },
      {
        lower := 19248, upper := 19403,
        witness := RowWitness.topPrime 19237
      },
      {
        lower := 19404, upper := 19569,
        witness := RowWitness.topPrime 19403
      },
      {
        lower := 19570, upper := 19725,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19726, upper := 19883,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19884, upper := 20033,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20034, upper := 20195,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20196, upper := 20349,
        witness := RowWitness.topPrime 20183
      },
      {
        lower := 20350, upper := 20513,
        witness := RowWitness.topPrime 20347
      },
      {
        lower := 20514, upper := 20675,
        witness := RowWitness.topPrime 20509
      },
      {
        lower := 20676, upper := 20829,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20830, upper := 20975,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20976, upper := 21129,
        witness := RowWitness.topPrime 20963
      },
      {
        lower := 21130, upper := 21287,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21288, upper := 21449,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21450, upper := 21599,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21600, upper := 21765,
        witness := RowWitness.topPrime 21599
      },
      {
        lower := 21766, upper := 21923,
        witness := RowWitness.topPrime 21757
      },
      {
        lower := 21924, upper := 22077,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22078, upper := 22239,
        witness := RowWitness.topPrime 22073
      },
      {
        lower := 22240, upper := 22395,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22396, upper := 22557,
        witness := RowWitness.topPrime 22391
      },
      {
        lower := 22558, upper := 22715,
        witness := RowWitness.topPrime 22549
      },
      {
        lower := 22716, upper := 22875,
        witness := RowWitness.topPrime 22709
      },
      {
        lower := 22876, upper := 23037,
        witness := RowWitness.topPrime 22871
      },
      {
        lower := 23038, upper := 23195,
        witness := RowWitness.topPrime 23029
      },
      {
        lower := 23196, upper := 23355,
        witness := RowWitness.topPrime 23189
      },
      {
        lower := 23356, upper := 23505,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23506, upper := 23663,
        witness := RowWitness.topPrime 23497
      },
      {
        lower := 23664, upper := 23829,
        witness := RowWitness.topPrime 23663
      },
      {
        lower := 23830, upper := 23993,
        witness := RowWitness.topPrime 23827
      },
      {
        lower := 23994, upper := 24159,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24160, upper := 24317,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24318, upper := 24483,
        witness := RowWitness.topPrime 24317
      },
      {
        lower := 24484, upper := 24647,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24648, upper := 24797,
        witness := RowWitness.topPrime 24631
      },
      {
        lower := 24798, upper := 24959,
        witness := RowWitness.topPrime 24793
      },
      {
        lower := 24960, upper := 25119,
        witness := RowWitness.topPrime 24953
      },
      {
        lower := 25120, upper := 25283,
        witness := RowWitness.topPrime 25117
      },
      {
        lower := 25284, upper := 25427,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25428, upper := 25589,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25590, upper := 25755,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25756, upper := 25913,
        witness := RowWitness.topPrime 25747
      },
      {
        lower := 25914, upper := 26079,
        witness := RowWitness.topPrime 25913
      },
      {
        lower := 26080, upper := 26219,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26220, upper := 26375,
        witness := RowWitness.topPrime 26209
      },
      {
        lower := 26376, upper := 26537,
        witness := RowWitness.topPrime 26371
      },
      {
        lower := 26538, upper := 26679,
        witness := RowWitness.topPrime 26513
      },
      {
        lower := 26680, upper := 26835,
        witness := RowWitness.topPrime 26669
      },
      {
        lower := 26836, upper := 26999,
        witness := RowWitness.topPrime 26833
      },
      {
        lower := 27000, upper := 27159,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27160, upper := 27309,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27310, upper := 27465,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27466, upper := 27623,
        witness := RowWitness.topPrime 27457
      },
      {
        lower := 27624, upper := 27721,
        witness := RowWitness.topPrime 27617
      },
      {
        lower := 28125, upper := 28289,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28290, upper := 28291,
        witness := RowWitness.topPrime 28289
      },
      {
        lower := 28561, upper := 28597,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28835,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28836, upper := 28883,
        witness := RowWitness.topPrime 28817
      },
      {
        lower := 29791, upper := 29934,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31359,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31360, upper := 31416,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31495,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31850,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31993,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32934,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33655,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33780,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34485,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34486, upper := 34557,
        witness := RowWitness.topPrime 34483
      },
      {
        lower := 36517, upper := 36663,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36664, upper := 36667,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37376,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37469,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37659,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37660, upper := 37704,
        witness := RowWitness.topPrime 37657
      },
      {
        lower := 38307, upper := 38457,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39470,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40494,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41093,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41094, upper := 41097,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45056,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45419,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45962,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47687,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47688, upper := 47690,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48127,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48537,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48538, upper := 48539,
        witness := RowWitness.topPrime 48533
      },
      {
        lower := 48778, upper := 48834,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49296,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49298, upper := 49318,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49464,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50576,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51171,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53211,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53405,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53406, upper := 53414,
        witness := RowWitness.topPrime 53401
      },
      {
        lower := 56307, upper := 56335,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56473,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57288,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57411,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 62500, upper := 62576,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65702,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68805,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68806, upper := 68810,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69056,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71453,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71454, upper := 71455,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73168,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73333,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85849,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89539,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93916,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98470,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102176,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103132,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109541,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137947,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149043,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 27722, upper := 55444, M := 13
      },
      {
        lower := 55444, upper := 110888, M := 10
      },
      {
        lower := 110888, upper := 221776, M := 7
      },
      {
        lower := 221776, upper := 443552, M := 5
      },
      {
        lower := 443552, upper := 887104, M := 4
      },
      {
        lower := 887104, upper := 1774208, M := 3
      },
      {
        lower := 1774208, upper := 3548416, M := 2
      },
      {
        lower := 3548416, upper := 7096832, M := 2
      },
      {
        lower := 7096832, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 168, r := 55, s := 119,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 338, upper := 504,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 505, upper := 670,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 671, upper := 828,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 829, upper := 996,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 997, upper := 1164,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1165, upper := 1330,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1331, upper := 1494,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1495, upper := 1660,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1661, upper := 1824,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1825, upper := 1990,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1991, upper := 2154,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2155, upper := 2320,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2321, upper := 2478,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2479, upper := 2644,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2645, upper := 2800,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2801, upper := 2968,
        witness := RowWitness.topPrime 2801
      },
      {
        lower := 2969, upper := 3136,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3137, upper := 3304,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3305, upper := 3468,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3469, upper := 3636,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3637, upper := 3804,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3805, upper := 3970,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3971, upper := 4134,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4135, upper := 4300,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4301, upper := 4464,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4465, upper := 4630,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4631, upper := 4788,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4789, upper := 4956,
        witness := RowWitness.topPrime 4789
      },
      {
        lower := 4957, upper := 5124,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5125, upper := 5286,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5287, upper := 5448,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5449, upper := 5616,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5617, upper := 5758,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5759, upper := 5916,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5917, upper := 6070,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6071, upper := 6234,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6235, upper := 6396,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6397, upper := 6564,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6565, upper := 6730,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6731, upper := 6886,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6887, upper := 7050,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7051, upper := 7210,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7211, upper := 7378,
        witness := RowWitness.topPrime 7211
      },
      {
        lower := 7379, upper := 7536,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7537, upper := 7704,
        witness := RowWitness.topPrime 7537
      },
      {
        lower := 7705, upper := 7870,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7871, upper := 8034,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 8035, upper := 8184,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8185, upper := 8346,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8347, upper := 8496,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8497, upper := 8634,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8635, upper := 8796,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8797, upper := 8950,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8951, upper := 9118,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9119, upper := 9276,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9277, upper := 9444,
        witness := RowWitness.topPrime 9277
      },
      {
        lower := 9445, upper := 9606,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9607, upper := 9768,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9769, upper := 9936,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9937, upper := 10098,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10099, upper := 10266,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10267, upper := 10434,
        witness := RowWitness.topPrime 10267
      },
      {
        lower := 10435, upper := 10600,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10601, upper := 10768,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10769, upper := 10920,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10921, upper := 11076,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11077, upper := 11238,
        witness := RowWitness.topPrime 11071
      },
      {
        lower := 11239, upper := 11406,
        witness := RowWitness.topPrime 11239
      },
      {
        lower := 11407, upper := 11566,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11567, upper := 11718,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11719, upper := 11886,
        witness := RowWitness.topPrime 11719
      },
      {
        lower := 11887, upper := 12054,
        witness := RowWitness.topPrime 11887
      },
      {
        lower := 12055, upper := 12216,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12217, upper := 12378,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12379, upper := 12546,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12547, upper := 12714,
        witness := RowWitness.topPrime 12547
      },
      {
        lower := 12715, upper := 12880,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12881, upper := 13020,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13021, upper := 13176,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13177, upper := 13344,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13345, upper := 13506,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13507, upper := 13666,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13667, upper := 13816,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13817, upper := 13974,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13975, upper := 14134,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14135, upper := 14274,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14275, upper := 14418,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14419, upper := 14586,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14587, upper := 14730,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14731, upper := 14898,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14899, upper := 15064,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15065, upper := 15228,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15229, upper := 15394,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15395, upper := 15558,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15559, upper := 15726,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15727, upper := 15894,
        witness := RowWitness.topPrime 15727
      },
      {
        lower := 15895, upper := 16056,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16057, upper := 16224,
        witness := RowWitness.topPrime 16057
      },
      {
        lower := 16225, upper := 16390,
        witness := RowWitness.topPrime 16223
      },
      {
        lower := 16391, upper := 16548,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16549, upper := 16714,
        witness := RowWitness.topPrime 16547
      },
      {
        lower := 16715, upper := 16870,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16871, upper := 17038,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17039, upper := 17200,
        witness := RowWitness.topPrime 17033
      },
      {
        lower := 17201, upper := 17358,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17359, upper := 17526,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17527, upper := 17686,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17687, upper := 17850,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17851, upper := 18018,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18019, upper := 18180,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18181, upper := 18348,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18349, upper := 18508,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18509, upper := 18670,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18671, upper := 18838,
        witness := RowWitness.topPrime 18671
      },
      {
        lower := 18839, upper := 19006,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19007, upper := 19168,
        witness := RowWitness.topPrime 19001
      },
      {
        lower := 19169, upper := 19330,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19331, upper := 19486,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19487, upper := 19650,
        witness := RowWitness.topPrime 19483
      },
      {
        lower := 19651, upper := 19776,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19777, upper := 19944,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19945, upper := 20104,
        witness := RowWitness.topPrime 19937
      },
      {
        lower := 20105, upper := 20268,
        witness := RowWitness.topPrime 20101
      },
      {
        lower := 20269, upper := 20436,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20437, upper := 20598,
        witness := RowWitness.topPrime 20431
      },
      {
        lower := 20599, upper := 20766,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20767, upper := 20926,
        witness := RowWitness.topPrime 20759
      },
      {
        lower := 20927, upper := 21088,
        witness := RowWitness.topPrime 20921
      },
      {
        lower := 21089, upper := 21256,
        witness := RowWitness.topPrime 21089
      },
      {
        lower := 21257, upper := 21414,
        witness := RowWitness.topPrime 21247
      },
      {
        lower := 21415, upper := 21574,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21575, upper := 21736,
        witness := RowWitness.topPrime 21569
      },
      {
        lower := 21737, upper := 21904,
        witness := RowWitness.topPrime 21737
      },
      {
        lower := 21905, upper := 22060,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22061, upper := 22218,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22219, upper := 22360,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22361, upper := 22516,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22517, upper := 22678,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 22679, upper := 22846,
        witness := RowWitness.topPrime 22679
      },
      {
        lower := 22847, upper := 22984,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 22985, upper := 23140,
        witness := RowWitness.topPrime 22973
      },
      {
        lower := 23141, upper := 23298,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23299, upper := 23464,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23465, upper := 23626,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23627, upper := 23794,
        witness := RowWitness.topPrime 23627
      },
      {
        lower := 23795, upper := 23956,
        witness := RowWitness.topPrime 23789
      },
      {
        lower := 23957, upper := 24124,
        witness := RowWitness.topPrime 23957
      },
      {
        lower := 24125, upper := 24288,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24289, upper := 24448,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24449, upper := 24610,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24611, upper := 24778,
        witness := RowWitness.topPrime 24611
      },
      {
        lower := 24779, upper := 24934,
        witness := RowWitness.topPrime 24767
      },
      {
        lower := 24935, upper := 25090,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25091, upper := 25254,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25255, upper := 25420,
        witness := RowWitness.topPrime 25253
      },
      {
        lower := 25421, upper := 25578,
        witness := RowWitness.topPrime 25411
      },
      {
        lower := 25579, upper := 25746,
        witness := RowWitness.topPrime 25579
      },
      {
        lower := 25747, upper := 25914,
        witness := RowWitness.topPrime 25747
      },
      {
        lower := 25915, upper := 26080,
        witness := RowWitness.topPrime 25913
      },
      {
        lower := 26081, upper := 26220,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26221, upper := 26376,
        witness := RowWitness.topPrime 26209
      },
      {
        lower := 26377, upper := 26538,
        witness := RowWitness.topPrime 26371
      },
      {
        lower := 26539, upper := 26706,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26707, upper := 26868,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26869, upper := 27030,
        witness := RowWitness.topPrime 26863
      },
      {
        lower := 27031, upper := 27198,
        witness := RowWitness.topPrime 27031
      },
      {
        lower := 27199, upper := 27364,
        witness := RowWitness.topPrime 27197
      },
      {
        lower := 27365, upper := 27528,
        witness := RowWitness.topPrime 27361
      },
      {
        lower := 27529, upper := 27696,
        witness := RowWitness.topPrime 27529
      },
      {
        lower := 27697, upper := 27864,
        witness := RowWitness.topPrime 27697
      },
      {
        lower := 27865, upper := 28018,
        witness := RowWitness.topPrime 27851
      },
      {
        lower := 28019, upper := 28055,
        witness := RowWitness.topPrime 28019
      },
      {
        lower := 28125, upper := 28290,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28291, upper := 28292,
        witness := RowWitness.topPrime 28289
      },
      {
        lower := 28717, upper := 28728,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29935,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30758, upper := 30770,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 31060,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31061, upper := 31066,
        witness := RowWitness.topPrime 31051
      },
      {
        lower := 31250, upper := 31416,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31417, upper := 31417,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31423, upper := 31496,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31851,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31994,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32935,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32955, upper := 32972,
        witness := RowWitness.topPrime 32941
      },
      {
        lower := 33614, upper := 33656,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33781,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34486,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34487, upper := 34558,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36664,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36665, upper := 36668,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37377,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37470,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37660,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37661, upper := 37705,
        witness := RowWitness.topPrime 37657
      },
      {
        lower := 38307, upper := 38458,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39490,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39491, upper := 39493,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40495,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40971,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 43750, upper := 43854,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45420,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47688,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47689, upper := 47691,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48128,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48538,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48539, upper := 48540,
        witness := RowWitness.topPrime 48539
      },
      {
        lower := 48734, upper := 48900,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48901, upper := 48901,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49379, upper := 49465,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 51076, upper := 51172,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 52215, upper := 52261,
        witness := RowWitness.topPrime 52201
      },
      {
        lower := 53138, upper := 53212,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53305,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55608,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55609, upper := 55614,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 55815, upper := 55945,
        witness := RowWitness.topPrime 55813
      },
      {
        lower := 56307, upper := 56336,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56474,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57289,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58731,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62577,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68806,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68807, upper := 68818,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69057,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71454,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71455, upper := 71456,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73169,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73334,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83688,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85850,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89540,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93917,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 102152, upper := 102177,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103133,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109542,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149044,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154616,
        witness := RowWitness.topPrime 154543
      },
      {
        lower := 195223, upper := 195279,
        witness := RowWitness.topPrime 195203
      },
      {
        lower := 199927, upper := 199976,
        witness := RowWitness.topPrime 199921
      }
    ],
    layers := [
      {
        lower := 28056, upper := 56112, M := 15
      },
      {
        lower := 56112, upper := 112224, M := 11
      },
      {
        lower := 112224, upper := 224448, M := 9
      },
      {
        lower := 224448, upper := 448896, M := 6
      },
      {
        lower := 448896, upper := 897792, M := 5
      },
      {
        lower := 897792, upper := 1795584, M := 4
      },
      {
        lower := 1795584, upper := 3591168, M := 3
      },
      {
        lower := 3591168, upper := 7182336, M := 2
      },
      {
        lower := 7182336, upper := 14364672, M := 2
      },
      {
        lower := 14364672, upper := 28729344, M := 1
      },
      {
        lower := 28729344, upper := 57458688, M := 1
      },
      {
        lower := 57458688, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 169, r := 56, s := 120,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 340, upper := 505,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 506, upper := 671,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 672, upper := 829,
        witness := RowWitness.topPrime 661
      },
      {
        lower := 830, upper := 997,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 998, upper := 1165,
        witness := RowWitness.topPrime 997
      },
      {
        lower := 1166, upper := 1331,
        witness := RowWitness.topPrime 1163
      },
      {
        lower := 1332, upper := 1495,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1496, upper := 1661,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1662, upper := 1825,
        witness := RowWitness.topPrime 1657
      },
      {
        lower := 1826, upper := 1991,
        witness := RowWitness.topPrime 1823
      },
      {
        lower := 1992, upper := 2155,
        witness := RowWitness.topPrime 1987
      },
      {
        lower := 2156, upper := 2321,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2322, upper := 2479,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2480, upper := 2645,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2646, upper := 2801,
        witness := RowWitness.topPrime 2633
      },
      {
        lower := 2802, upper := 2969,
        witness := RowWitness.topPrime 2801
      },
      {
        lower := 2970, upper := 3137,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3138, upper := 3305,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3306, upper := 3469,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3470, upper := 3637,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3638, upper := 3805,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3806, upper := 3971,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3972, upper := 4135,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4136, upper := 4301,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4302, upper := 4465,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4466, upper := 4631,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4632, upper := 4789,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4790, upper := 4957,
        witness := RowWitness.topPrime 4789
      },
      {
        lower := 4958, upper := 5125,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5126, upper := 5287,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5288, upper := 5449,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5450, upper := 5617,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5618, upper := 5759,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5760, upper := 5917,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5918, upper := 6071,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6072, upper := 6235,
        witness := RowWitness.topPrime 6067
      },
      {
        lower := 6236, upper := 6397,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6398, upper := 6565,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6566, upper := 6731,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6732, upper := 6887,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6888, upper := 7051,
        witness := RowWitness.topPrime 6883
      },
      {
        lower := 7052, upper := 7211,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7212, upper := 7379,
        witness := RowWitness.topPrime 7211
      },
      {
        lower := 7380, upper := 7537,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7538, upper := 7705,
        witness := RowWitness.topPrime 7537
      },
      {
        lower := 7706, upper := 7871,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7872, upper := 8035,
        witness := RowWitness.topPrime 7867
      },
      {
        lower := 8036, upper := 8185,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8186, upper := 8347,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8348, upper := 8497,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8498, upper := 8635,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8636, upper := 8797,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8798, upper := 8951,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8952, upper := 9119,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9120, upper := 9277,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9278, upper := 9445,
        witness := RowWitness.topPrime 9277
      },
      {
        lower := 9446, upper := 9607,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9608, upper := 9769,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9770, upper := 9937,
        witness := RowWitness.topPrime 9769
      },
      {
        lower := 9938, upper := 10099,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10100, upper := 10267,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10268, upper := 10435,
        witness := RowWitness.topPrime 10267
      },
      {
        lower := 10436, upper := 10601,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10602, upper := 10769,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10770, upper := 10921,
        witness := RowWitness.topPrime 10753
      },
      {
        lower := 10922, upper := 11077,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11078, upper := 11239,
        witness := RowWitness.topPrime 11071
      },
      {
        lower := 11240, upper := 11407,
        witness := RowWitness.topPrime 11239
      },
      {
        lower := 11408, upper := 11567,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11568, upper := 11719,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11720, upper := 11887,
        witness := RowWitness.topPrime 11719
      },
      {
        lower := 11888, upper := 12055,
        witness := RowWitness.topPrime 11887
      },
      {
        lower := 12056, upper := 12217,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12218, upper := 12379,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12380, upper := 12547,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12548, upper := 12715,
        witness := RowWitness.topPrime 12547
      },
      {
        lower := 12716, upper := 12881,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12882, upper := 13021,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13022, upper := 13177,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13178, upper := 13345,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13346, upper := 13507,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13508, upper := 13667,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13668, upper := 13817,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13818, upper := 13975,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13976, upper := 14135,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14136, upper := 14275,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14276, upper := 14419,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14420, upper := 14587,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14588, upper := 14731,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14732, upper := 14899,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14900, upper := 15065,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15066, upper := 15229,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15230, upper := 15395,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15396, upper := 15559,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15560, upper := 15727,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15728, upper := 15895,
        witness := RowWitness.topPrime 15727
      },
      {
        lower := 15896, upper := 16057,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16058, upper := 16225,
        witness := RowWitness.topPrime 16057
      },
      {
        lower := 16226, upper := 16391,
        witness := RowWitness.topPrime 16223
      },
      {
        lower := 16392, upper := 16549,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16550, upper := 16715,
        witness := RowWitness.topPrime 16547
      },
      {
        lower := 16716, upper := 16871,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16872, upper := 17039,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17040, upper := 17201,
        witness := RowWitness.topPrime 17033
      },
      {
        lower := 17202, upper := 17359,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17360, upper := 17527,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17528, upper := 17687,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17688, upper := 17851,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17852, upper := 18019,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18020, upper := 18181,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18182, upper := 18349,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18350, upper := 18509,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18510, upper := 18671,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18672, upper := 18839,
        witness := RowWitness.topPrime 18671
      },
      {
        lower := 18840, upper := 19007,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19008, upper := 19169,
        witness := RowWitness.topPrime 19001
      },
      {
        lower := 19170, upper := 19331,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19332, upper := 19487,
        witness := RowWitness.topPrime 19319
      },
      {
        lower := 19488, upper := 19651,
        witness := RowWitness.topPrime 19483
      },
      {
        lower := 19652, upper := 19777,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19778, upper := 19945,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19946, upper := 20105,
        witness := RowWitness.topPrime 19937
      },
      {
        lower := 20106, upper := 20269,
        witness := RowWitness.topPrime 20101
      },
      {
        lower := 20270, upper := 20437,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20438, upper := 20599,
        witness := RowWitness.topPrime 20431
      },
      {
        lower := 20600, upper := 20767,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20768, upper := 20927,
        witness := RowWitness.topPrime 20759
      },
      {
        lower := 20928, upper := 21089,
        witness := RowWitness.topPrime 20921
      },
      {
        lower := 21090, upper := 21257,
        witness := RowWitness.topPrime 21089
      },
      {
        lower := 21258, upper := 21415,
        witness := RowWitness.topPrime 21247
      },
      {
        lower := 21416, upper := 21575,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21576, upper := 21737,
        witness := RowWitness.topPrime 21569
      },
      {
        lower := 21738, upper := 21905,
        witness := RowWitness.topPrime 21737
      },
      {
        lower := 21906, upper := 22061,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22062, upper := 22219,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22220, upper := 22361,
        witness := RowWitness.topPrime 22193
      },
      {
        lower := 22362, upper := 22517,
        witness := RowWitness.topPrime 22349
      },
      {
        lower := 22518, upper := 22679,
        witness := RowWitness.topPrime 22511
      },
      {
        lower := 22680, upper := 22847,
        witness := RowWitness.topPrime 22679
      },
      {
        lower := 22848, upper := 22985,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 22986, upper := 23141,
        witness := RowWitness.topPrime 22973
      },
      {
        lower := 23142, upper := 23299,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23300, upper := 23465,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23466, upper := 23627,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23628, upper := 23795,
        witness := RowWitness.topPrime 23627
      },
      {
        lower := 23796, upper := 23957,
        witness := RowWitness.topPrime 23789
      },
      {
        lower := 23958, upper := 24125,
        witness := RowWitness.topPrime 23957
      },
      {
        lower := 24126, upper := 24289,
        witness := RowWitness.topPrime 24121
      },
      {
        lower := 24290, upper := 24449,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24450, upper := 24611,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24612, upper := 24779,
        witness := RowWitness.topPrime 24611
      },
      {
        lower := 24780, upper := 24935,
        witness := RowWitness.topPrime 24767
      },
      {
        lower := 24936, upper := 25091,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25092, upper := 25255,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25256, upper := 25421,
        witness := RowWitness.topPrime 25253
      },
      {
        lower := 25422, upper := 25579,
        witness := RowWitness.topPrime 25411
      },
      {
        lower := 25580, upper := 25747,
        witness := RowWitness.topPrime 25579
      },
      {
        lower := 25748, upper := 25915,
        witness := RowWitness.topPrime 25747
      },
      {
        lower := 25916, upper := 26081,
        witness := RowWitness.topPrime 25913
      },
      {
        lower := 26082, upper := 26221,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26222, upper := 26377,
        witness := RowWitness.topPrime 26209
      },
      {
        lower := 26378, upper := 26539,
        witness := RowWitness.topPrime 26371
      },
      {
        lower := 26540, upper := 26707,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26708, upper := 26869,
        witness := RowWitness.topPrime 26701
      },
      {
        lower := 26870, upper := 27031,
        witness := RowWitness.topPrime 26863
      },
      {
        lower := 27032, upper := 27199,
        witness := RowWitness.topPrime 27031
      },
      {
        lower := 27200, upper := 27365,
        witness := RowWitness.topPrime 27197
      },
      {
        lower := 27366, upper := 27529,
        witness := RowWitness.topPrime 27361
      },
      {
        lower := 27530, upper := 27697,
        witness := RowWitness.topPrime 27529
      },
      {
        lower := 27698, upper := 27865,
        witness := RowWitness.topPrime 27697
      },
      {
        lower := 27866, upper := 28019,
        witness := RowWitness.topPrime 27851
      },
      {
        lower := 28020, upper := 28187,
        witness := RowWitness.topPrime 28019
      },
      {
        lower := 28188, upper := 28351,
        witness := RowWitness.topPrime 28183
      },
      {
        lower := 28352, upper := 28391,
        witness := RowWitness.topPrime 28351
      },
      {
        lower := 28717, upper := 28879,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28880, upper := 28885,
        witness := RowWitness.topPrime 28879
      },
      {
        lower := 29791, upper := 29936,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30761,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30762, upper := 30771,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31067,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31361,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31362, upper := 31418,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31497,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31852,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31995,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32936,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33657,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33782,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34487,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34488, upper := 34559,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36665,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36666, upper := 36669,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37378,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37471,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37661,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37662, upper := 37706,
        witness := RowWitness.topPrime 37657
      },
      {
        lower := 38307, upper := 38459,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39491,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39492, upper := 39494,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40496,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41095,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41096, upper := 41099,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 43750, upper := 43855,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45056, upper := 45058,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45421,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45964,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47689,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47690, upper := 47692,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48129,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48539,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48540, upper := 48541,
        witness := RowWitness.topPrime 48539
      },
      {
        lower := 48734, upper := 48901,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48902, upper := 48902,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49152, upper := 49307,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49308, upper := 49320,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49466,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50578,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51173,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53213,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53407,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53408, upper := 53416,
        witness := RowWitness.topPrime 53407
      },
      {
        lower := 55451, upper := 55609,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55610, upper := 55615,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56337,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56475,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57344, upper := 57413,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58732,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62578,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65704,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68807,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68808, upper := 68819,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69058,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71455,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71456, upper := 71457,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73170,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73335,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83689,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 89383, upper := 89541,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93918,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98472,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102178,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103134,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109543,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137949,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149045,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 195223, upper := 195280,
        witness := RowWitness.topPrime 195203
      }
    ],
    layers := [
      {
        lower := 28392, upper := 56784, M := 14
      },
      {
        lower := 56784, upper := 113568, M := 11
      },
      {
        lower := 113568, upper := 227136, M := 8
      },
      {
        lower := 227136, upper := 454272, M := 6
      },
      {
        lower := 454272, upper := 908544, M := 5
      },
      {
        lower := 908544, upper := 1817088, M := 4
      },
      {
        lower := 1817088, upper := 3634176, M := 3
      },
      {
        lower := 3634176, upper := 7268352, M := 2
      },
      {
        lower := 7268352, upper := 14536704, M := 2
      },
      {
        lower := 14536704, upper := 29073408, M := 1
      },
      {
        lower := 29073408, upper := 58146816, M := 1
      },
      {
        lower := 58146816, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 170, r := 56, s := 121,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 342, upper := 506,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 507, upper := 672,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 673, upper := 842,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 843, upper := 1008,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 1009, upper := 1178,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1179, upper := 1340,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1341, upper := 1496,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1497, upper := 1662,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1663, upper := 1832,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1833, upper := 2000,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 2001, upper := 2168,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2169, upper := 2330,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2331, upper := 2480,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2481, upper := 2646,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2647, upper := 2816,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2817, upper := 2972,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2973, upper := 3140,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3141, upper := 3306,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3307, upper := 3476,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3477, upper := 3638,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3639, upper := 3806,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3807, upper := 3972,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3973, upper := 4136,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4137, upper := 4302,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4303, upper := 4466,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4467, upper := 4632,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4633, upper := 4790,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4791, upper := 4958,
        witness := RowWitness.topPrime 4789
      },
      {
        lower := 4959, upper := 5126,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5127, upper := 5288,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5289, upper := 5450,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5451, upper := 5618,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5619, upper := 5760,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5761, upper := 5918,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5919, upper := 6072,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6073, upper := 6242,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6243, upper := 6398,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6399, upper := 6566,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6567, upper := 6732,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6733, upper := 6902,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6903, upper := 7068,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7069, upper := 7238,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7239, upper := 7406,
        witness := RowWitness.topPrime 7237
      },
      {
        lower := 7407, upper := 7562,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7563, upper := 7730,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7731, upper := 7896,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7897, upper := 8052,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8053, upper := 8222,
        witness := RowWitness.topPrime 8053
      },
      {
        lower := 8223, upper := 8390,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8391, upper := 8558,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8559, upper := 8712,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8713, upper := 8882,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8883, upper := 9036,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9037, upper := 9198,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9199, upper := 9368,
        witness := RowWitness.topPrime 9199
      },
      {
        lower := 9369, upper := 9518,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9519, upper := 9680,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9681, upper := 9848,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9849, upper := 10008,
        witness := RowWitness.topPrime 9839
      },
      {
        lower := 10009, upper := 10178,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10179, upper := 10346,
        witness := RowWitness.topPrime 10177
      },
      {
        lower := 10347, upper := 10512,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10513, upper := 10682,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10683, upper := 10836,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10837, upper := 11006,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11007, upper := 11172,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11173, upper := 11342,
        witness := RowWitness.topPrime 11173
      },
      {
        lower := 11343, upper := 11498,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11499, upper := 11666,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11667, upper := 11826,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11827, upper := 11996,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 11997, upper := 12156,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12157, upper := 12326,
        witness := RowWitness.topPrime 12157
      },
      {
        lower := 12327, upper := 12492,
        witness := RowWitness.topPrime 12323
      },
      {
        lower := 12493, upper := 12660,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12661, upper := 12828,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12829, upper := 12998,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 12999, upper := 13152,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13153, upper := 13320,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13321, upper := 13482,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13483, upper := 13646,
        witness := RowWitness.topPrime 13477
      },
      {
        lower := 13647, upper := 13802,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13803, upper := 13968,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 13969, upper := 14136,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14137, upper := 14276,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14277, upper := 14420,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14421, upper := 14588,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14589, upper := 14732,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14733, upper := 14900,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14901, upper := 15066,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15067, upper := 15230,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15231, upper := 15396,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15397, upper := 15560,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15561, upper := 15728,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15729, upper := 15896,
        witness := RowWitness.topPrime 15727
      },
      {
        lower := 15897, upper := 16058,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16059, upper := 16226,
        witness := RowWitness.topPrime 16057
      },
      {
        lower := 16227, upper := 16392,
        witness := RowWitness.topPrime 16223
      },
      {
        lower := 16393, upper := 16550,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16551, upper := 16716,
        witness := RowWitness.topPrime 16547
      },
      {
        lower := 16717, upper := 16872,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16873, upper := 17040,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17041, upper := 17210,
        witness := RowWitness.topPrime 17041
      },
      {
        lower := 17211, upper := 17378,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17379, upper := 17546,
        witness := RowWitness.topPrime 17377
      },
      {
        lower := 17547, upper := 17708,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17709, upper := 17876,
        witness := RowWitness.topPrime 17707
      },
      {
        lower := 17877, upper := 18032,
        witness := RowWitness.topPrime 17863
      },
      {
        lower := 18033, upper := 18182,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18183, upper := 18350,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18351, upper := 18510,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18511, upper := 18672,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18673, upper := 18840,
        witness := RowWitness.topPrime 18671
      },
      {
        lower := 18841, upper := 19008,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19009, upper := 19178,
        witness := RowWitness.topPrime 19009
      },
      {
        lower := 19179, upper := 19332,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19333, upper := 19502,
        witness := RowWitness.topPrime 19333
      },
      {
        lower := 19503, upper := 19670,
        witness := RowWitness.topPrime 19501
      },
      {
        lower := 19671, upper := 19830,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19831, upper := 19988,
        witness := RowWitness.topPrime 19819
      },
      {
        lower := 19989, upper := 20148,
        witness := RowWitness.topPrime 19979
      },
      {
        lower := 20149, upper := 20318,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20319, upper := 20466,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20467, upper := 20612,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20613, upper := 20780,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 20781, upper := 20942,
        witness := RowWitness.topPrime 20773
      },
      {
        lower := 20943, upper := 21108,
        witness := RowWitness.topPrime 20939
      },
      {
        lower := 21109, upper := 21276,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21277, upper := 21446,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21447, upper := 21602,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21603, upper := 21770,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21771, upper := 21936,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21937, upper := 22106,
        witness := RowWitness.topPrime 21937
      },
      {
        lower := 22107, upper := 22262,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22263, upper := 22428,
        witness := RowWitness.topPrime 22259
      },
      {
        lower := 22429, upper := 22578,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22579, upper := 22742,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22743, upper := 22910,
        witness := RowWitness.topPrime 22741
      },
      {
        lower := 22911, upper := 23076,
        witness := RowWitness.topPrime 22907
      },
      {
        lower := 23077, upper := 23240,
        witness := RowWitness.topPrime 23071
      },
      {
        lower := 23241, upper := 23396,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23397, upper := 23540,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23541, upper := 23708,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23709, upper := 23858,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23859, upper := 24026,
        witness := RowWitness.topPrime 23857
      },
      {
        lower := 24027, upper := 24192,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24193, upper := 24350,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24351, upper := 24506,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24507, upper := 24668,
        witness := RowWitness.topPrime 24499
      },
      {
        lower := 24669, upper := 24828,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 24829, upper := 24990,
        witness := RowWitness.topPrime 24821
      },
      {
        lower := 24991, upper := 25158,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25159, upper := 25322,
        witness := RowWitness.topPrime 25153
      },
      {
        lower := 25323, upper := 25490,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 25491, upper := 25640,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25641, upper := 25808,
        witness := RowWitness.topPrime 25639
      },
      {
        lower := 25809, upper := 25970,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25971, upper := 26138,
        witness := RowWitness.topPrime 25969
      },
      {
        lower := 26139, upper := 26288,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26289, upper := 26436,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26437, upper := 26606,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26607, upper := 26766,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26767, upper := 26928,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26929, upper := 27096,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27097, upper := 27260,
        witness := RowWitness.topPrime 27091
      },
      {
        lower := 27261, upper := 27428,
        witness := RowWitness.topPrime 27259
      },
      {
        lower := 27429, upper := 27596,
        witness := RowWitness.topPrime 27427
      },
      {
        lower := 27597, upper := 27752,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27753, upper := 27920,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27921, upper := 28088,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28089, upper := 28256,
        witness := RowWitness.topPrime 28087
      },
      {
        lower := 28257, upper := 28398,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28399, upper := 28562,
        witness := RowWitness.topPrime 28393
      },
      {
        lower := 28563, upper := 28728,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28729, upper := 28886,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 29791, upper := 29937,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30762,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30763, upper := 30787,
        witness := RowWitness.topPrime 30763
      },
      {
        lower := 30899, upper := 31062,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31063, upper := 31068,
        witness := RowWitness.topPrime 31063
      },
      {
        lower := 31213, upper := 31362,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31363, upper := 31419,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31498,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31853,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31996,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32937,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33658,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33783,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34488,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34489, upper := 34516,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36666,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36667, upper := 36670,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37379,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37472,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37615,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37707,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38460,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39495,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40497,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41096,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41097, upper := 41100,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45369, upper := 45422,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45965,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47690,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47691, upper := 47693,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48130,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48540,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48541, upper := 48542,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48734, upper := 48902,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48903, upper := 48903,
        witness := RowWitness.topPrime 48889
      },
      {
        lower := 49298, upper := 49321,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49467,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50579,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51174,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53214,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53307,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55610,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55611, upper := 55616,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56338,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56476,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57291,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57414,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 65610, upper := 65705,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68808,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68809, upper := 68813,
        witness := RowWitness.topPrime 68791
      },
      {
        lower := 68921, upper := 69059,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71456,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71457, upper := 71458,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73171,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73336,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85852,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89542,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 96774, upper := 96774,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98473,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102179,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103135,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137950,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149046,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 195223, upper := 195281,
        witness := RowWitness.topPrime 195203
      }
    ],
    layers := [
      {
        lower := 28730, upper := 57460, M := 14
      },
      {
        lower := 57460, upper := 114920, M := 10
      },
      {
        lower := 114920, upper := 229840, M := 8
      },
      {
        lower := 229840, upper := 459680, M := 6
      },
      {
        lower := 459680, upper := 919360, M := 4
      },
      {
        lower := 919360, upper := 1838720, M := 3
      },
      {
        lower := 1838720, upper := 3677440, M := 3
      },
      {
        lower := 3677440, upper := 7354880, M := 2
      },
      {
        lower := 7354880, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 171, r := 56, s := 121,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 344, upper := 507,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 508, upper := 673,
        witness := RowWitness.topPrime 503
      },
      {
        lower := 674, upper := 843,
        witness := RowWitness.topPrime 673
      },
      {
        lower := 844, upper := 1009,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 1010, upper := 1179,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1180, upper := 1341,
        witness := RowWitness.topPrime 1171
      },
      {
        lower := 1342, upper := 1497,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1498, upper := 1663,
        witness := RowWitness.topPrime 1493
      },
      {
        lower := 1664, upper := 1833,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1834, upper := 2001,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 2002, upper := 2169,
        witness := RowWitness.topPrime 1999
      },
      {
        lower := 2170, upper := 2331,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2332, upper := 2481,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2482, upper := 2647,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2648, upper := 2817,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2818, upper := 2973,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2974, upper := 3141,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3142, upper := 3307,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3308, upper := 3477,
        witness := RowWitness.topPrime 3307
      },
      {
        lower := 3478, upper := 3639,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3640, upper := 3807,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3808, upper := 3973,
        witness := RowWitness.topPrime 3803
      },
      {
        lower := 3974, upper := 4137,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4138, upper := 4303,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4304, upper := 4467,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4468, upper := 4633,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4634, upper := 4791,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4792, upper := 4959,
        witness := RowWitness.topPrime 4789
      },
      {
        lower := 4960, upper := 5127,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5128, upper := 5289,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5290, upper := 5451,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5452, upper := 5619,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5620, upper := 5761,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5762, upper := 5919,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5920, upper := 6073,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6074, upper := 6243,
        witness := RowWitness.topPrime 6073
      },
      {
        lower := 6244, upper := 6399,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6400, upper := 6567,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6568, upper := 6733,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6734, upper := 6903,
        witness := RowWitness.topPrime 6733
      },
      {
        lower := 6904, upper := 7069,
        witness := RowWitness.topPrime 6899
      },
      {
        lower := 7070, upper := 7239,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7240, upper := 7407,
        witness := RowWitness.topPrime 7237
      },
      {
        lower := 7408, upper := 7563,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7564, upper := 7731,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7732, upper := 7897,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7898, upper := 8053,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8054, upper := 8223,
        witness := RowWitness.topPrime 8053
      },
      {
        lower := 8224, upper := 8391,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8392, upper := 8559,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8560, upper := 8713,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8714, upper := 8883,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8884, upper := 9037,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9038, upper := 9199,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9200, upper := 9369,
        witness := RowWitness.topPrime 9199
      },
      {
        lower := 9370, upper := 9519,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9520, upper := 9681,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9682, upper := 9849,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9850, upper := 10009,
        witness := RowWitness.topPrime 9839
      },
      {
        lower := 10010, upper := 10179,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10180, upper := 10347,
        witness := RowWitness.topPrime 10177
      },
      {
        lower := 10348, upper := 10513,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10514, upper := 10683,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10684, upper := 10837,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10838, upper := 11007,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11008, upper := 11173,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11174, upper := 11343,
        witness := RowWitness.topPrime 11173
      },
      {
        lower := 11344, upper := 11499,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11500, upper := 11667,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11668, upper := 11827,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11828, upper := 11997,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 11998, upper := 12157,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12158, upper := 12327,
        witness := RowWitness.topPrime 12157
      },
      {
        lower := 12328, upper := 12493,
        witness := RowWitness.topPrime 12323
      },
      {
        lower := 12494, upper := 12661,
        witness := RowWitness.topPrime 12491
      },
      {
        lower := 12662, upper := 12829,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12830, upper := 12999,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 13000, upper := 13153,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13154, upper := 13321,
        witness := RowWitness.topPrime 13151
      },
      {
        lower := 13322, upper := 13483,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13484, upper := 13647,
        witness := RowWitness.topPrime 13477
      },
      {
        lower := 13648, upper := 13803,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13804, upper := 13969,
        witness := RowWitness.topPrime 13799
      },
      {
        lower := 13970, upper := 14137,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14138, upper := 14277,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14278, upper := 14421,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14422, upper := 14589,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14590, upper := 14733,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14734, upper := 14901,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14902, upper := 15067,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15068, upper := 15231,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15232, upper := 15397,
        witness := RowWitness.topPrime 15227
      },
      {
        lower := 15398, upper := 15561,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15562, upper := 15729,
        witness := RowWitness.topPrime 15559
      },
      {
        lower := 15730, upper := 15897,
        witness := RowWitness.topPrime 15727
      },
      {
        lower := 15898, upper := 16059,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16060, upper := 16227,
        witness := RowWitness.topPrime 16057
      },
      {
        lower := 16228, upper := 16393,
        witness := RowWitness.topPrime 16223
      },
      {
        lower := 16394, upper := 16551,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16552, upper := 16717,
        witness := RowWitness.topPrime 16547
      },
      {
        lower := 16718, upper := 16873,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16874, upper := 17041,
        witness := RowWitness.topPrime 16871
      },
      {
        lower := 17042, upper := 17211,
        witness := RowWitness.topPrime 17041
      },
      {
        lower := 17212, upper := 17379,
        witness := RowWitness.topPrime 17209
      },
      {
        lower := 17380, upper := 17547,
        witness := RowWitness.topPrime 17377
      },
      {
        lower := 17548, upper := 17709,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17710, upper := 17877,
        witness := RowWitness.topPrime 17707
      },
      {
        lower := 17878, upper := 18033,
        witness := RowWitness.topPrime 17863
      },
      {
        lower := 18034, upper := 18183,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18184, upper := 18351,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18352, upper := 18511,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18512, upper := 18673,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18674, upper := 18841,
        witness := RowWitness.topPrime 18671
      },
      {
        lower := 18842, upper := 19009,
        witness := RowWitness.topPrime 18839
      },
      {
        lower := 19010, upper := 19179,
        witness := RowWitness.topPrime 19009
      },
      {
        lower := 19180, upper := 19333,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19334, upper := 19503,
        witness := RowWitness.topPrime 19333
      },
      {
        lower := 19504, upper := 19671,
        witness := RowWitness.topPrime 19501
      },
      {
        lower := 19672, upper := 19831,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19832, upper := 19989,
        witness := RowWitness.topPrime 19819
      },
      {
        lower := 19990, upper := 20149,
        witness := RowWitness.topPrime 19979
      },
      {
        lower := 20150, upper := 20319,
        witness := RowWitness.topPrime 20149
      },
      {
        lower := 20320, upper := 20467,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20468, upper := 20613,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20614, upper := 20781,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 20782, upper := 20943,
        witness := RowWitness.topPrime 20773
      },
      {
        lower := 20944, upper := 21109,
        witness := RowWitness.topPrime 20939
      },
      {
        lower := 21110, upper := 21277,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21278, upper := 21447,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21448, upper := 21603,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21604, upper := 21771,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21772, upper := 21937,
        witness := RowWitness.topPrime 21767
      },
      {
        lower := 21938, upper := 22107,
        witness := RowWitness.topPrime 21937
      },
      {
        lower := 22108, upper := 22263,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22264, upper := 22429,
        witness := RowWitness.topPrime 22259
      },
      {
        lower := 22430, upper := 22579,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22580, upper := 22743,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22744, upper := 22911,
        witness := RowWitness.topPrime 22741
      },
      {
        lower := 22912, upper := 23077,
        witness := RowWitness.topPrime 22907
      },
      {
        lower := 23078, upper := 23241,
        witness := RowWitness.topPrime 23071
      },
      {
        lower := 23242, upper := 23397,
        witness := RowWitness.topPrime 23227
      },
      {
        lower := 23398, upper := 23541,
        witness := RowWitness.topPrime 23371
      },
      {
        lower := 23542, upper := 23709,
        witness := RowWitness.topPrime 23539
      },
      {
        lower := 23710, upper := 23859,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23860, upper := 24027,
        witness := RowWitness.topPrime 23857
      },
      {
        lower := 24028, upper := 24193,
        witness := RowWitness.topPrime 24023
      },
      {
        lower := 24194, upper := 24351,
        witness := RowWitness.topPrime 24181
      },
      {
        lower := 24352, upper := 24507,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24508, upper := 24669,
        witness := RowWitness.topPrime 24499
      },
      {
        lower := 24670, upper := 24829,
        witness := RowWitness.topPrime 24659
      },
      {
        lower := 24830, upper := 24991,
        witness := RowWitness.topPrime 24821
      },
      {
        lower := 24992, upper := 25159,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25160, upper := 25323,
        witness := RowWitness.topPrime 25153
      },
      {
        lower := 25324, upper := 25491,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 25492, upper := 25641,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25642, upper := 25809,
        witness := RowWitness.topPrime 25639
      },
      {
        lower := 25810, upper := 25971,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25972, upper := 26139,
        witness := RowWitness.topPrime 25969
      },
      {
        lower := 26140, upper := 26289,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26290, upper := 26437,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26438, upper := 26607,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26608, upper := 26767,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26768, upper := 26929,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26930, upper := 27097,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27098, upper := 27261,
        witness := RowWitness.topPrime 27091
      },
      {
        lower := 27262, upper := 27429,
        witness := RowWitness.topPrime 27259
      },
      {
        lower := 27430, upper := 27597,
        witness := RowWitness.topPrime 27427
      },
      {
        lower := 27598, upper := 27753,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27754, upper := 27921,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27922, upper := 28089,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28090, upper := 28257,
        witness := RowWitness.topPrime 28087
      },
      {
        lower := 28258, upper := 28399,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28400, upper := 28563,
        witness := RowWitness.topPrime 28393
      },
      {
        lower := 28564, upper := 28729,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28730, upper := 28899,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28900, upper := 29049,
        witness := RowWitness.topPrime 28879
      },
      {
        lower := 29050, upper := 29069,
        witness := RowWitness.topPrime 29033
      },
      {
        lower := 29791, upper := 29938,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31363,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31364, upper := 31420,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31499,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31854,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31997,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33659,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33784,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34507,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34508, upper := 34561,
        witness := RowWitness.topPrime 34501
      },
      {
        lower := 36517, upper := 36667,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36668, upper := 36671,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37380,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37473,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37663,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37664, upper := 37708,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38461,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40498,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41097,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41098, upper := 41101,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45060,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45423,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47045, upper := 47045,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47691,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47692, upper := 47694,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48373, upper := 48541,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48542, upper := 48543,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48838,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49309,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49310, upper := 49322,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49468,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50580,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51175,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53215,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53409,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53410, upper := 53418,
        witness := RowWitness.topPrime 53407
      },
      {
        lower := 55451, upper := 55611,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55612, upper := 55617,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56339,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56477,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57292,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57415,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 62500, upper := 62580,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68694, upper := 68814,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 68921, upper := 69060,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71457,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71458, upper := 71459,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73172,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73337,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83691,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85853,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89543,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93920,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96775,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 102152, upper := 102180,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103136,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109545,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149047,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 29070, upper := 58140, M := 13
      },
      {
        lower := 58140, upper := 116280, M := 10
      },
      {
        lower := 116280, upper := 232560, M := 7
      },
      {
        lower := 232560, upper := 465120, M := 5
      },
      {
        lower := 465120, upper := 930240, M := 4
      },
      {
        lower := 930240, upper := 1860480, M := 3
      },
      {
        lower := 1860480, upper := 3720960, M := 2
      },
      {
        lower := 3720960, upper := 7441920, M := 2
      },
      {
        lower := 7441920, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 172, r := 57, s := 122,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 346, upper := 508,
        witness := RowWitness.topPrime 337
      },
      {
        lower := 509, upper := 680,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 681, upper := 848,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 849, upper := 1010,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 1011, upper := 1180,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1181, upper := 1352,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1353, upper := 1498,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1499, upper := 1670,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1671, upper := 1840,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1841, upper := 2002,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 2003, upper := 2174,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2175, upper := 2332,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2333, upper := 2504,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2505, upper := 2674,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2675, upper := 2842,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2843, upper := 3014,
        witness := RowWitness.topPrime 2843
      },
      {
        lower := 3015, upper := 3182,
        witness := RowWitness.topPrime 3011
      },
      {
        lower := 3183, upper := 3352,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3353, upper := 3518,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3519, upper := 3688,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3689, upper := 3848,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3849, upper := 4018,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 4019, upper := 4190,
        witness := RowWitness.topPrime 4019
      },
      {
        lower := 4191, upper := 4348,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4349, upper := 4520,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4521, upper := 4690,
        witness := RowWitness.topPrime 4519
      },
      {
        lower := 4691, upper := 4862,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4863, upper := 5032,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5033, upper := 5194,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5195, upper := 5360,
        witness := RowWitness.topPrime 5189
      },
      {
        lower := 5361, upper := 5522,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5523, upper := 5692,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5693, upper := 5864,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5865, upper := 6032,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 6033, upper := 6200,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6201, upper := 6370,
        witness := RowWitness.topPrime 6199
      },
      {
        lower := 6371, upper := 6538,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6539, upper := 6700,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6701, upper := 6872,
        witness := RowWitness.topPrime 6701
      },
      {
        lower := 6873, upper := 7042,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7043, upper := 7214,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7215, upper := 7384,
        witness := RowWitness.topPrime 7213
      },
      {
        lower := 7385, upper := 7540,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7541, upper := 7712,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7713, upper := 7874,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7875, upper := 8044,
        witness := RowWitness.topPrime 7873
      },
      {
        lower := 8045, upper := 8210,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8211, upper := 8380,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8381, upper := 8548,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8549, upper := 8714,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8715, upper := 8884,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8885, upper := 9038,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9039, upper := 9200,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9201, upper := 9370,
        witness := RowWitness.topPrime 9199
      },
      {
        lower := 9371, upper := 9542,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9543, upper := 9710,
        witness := RowWitness.topPrime 9539
      },
      {
        lower := 9711, upper := 9868,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9869, upper := 10030,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10031, upper := 10180,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10181, upper := 10352,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10353, upper := 10514,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10515, upper := 10684,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10685, upper := 10838,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10839, upper := 11008,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11009, upper := 11174,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11175, upper := 11344,
        witness := RowWitness.topPrime 11173
      },
      {
        lower := 11345, upper := 11500,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11501, upper := 11668,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11669, upper := 11828,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11829, upper := 11998,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 11999, upper := 12158,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12159, upper := 12328,
        witness := RowWitness.topPrime 12157
      },
      {
        lower := 12329, upper := 12500,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12501, upper := 12668,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12669, upper := 12830,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12831, upper := 13000,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 13001, upper := 13172,
        witness := RowWitness.topPrime 13001
      },
      {
        lower := 13173, upper := 13342,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13343, upper := 13510,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13511, upper := 13670,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13671, upper := 13840,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13841, upper := 14012,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14013, upper := 14182,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14183, upper := 14348,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14349, upper := 14518,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14519, upper := 14690,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14691, upper := 14854,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14855, upper := 15022,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 15023, upper := 15188,
        witness := RowWitness.topPrime 15017
      },
      {
        lower := 15189, upper := 15358,
        witness := RowWitness.topPrime 15187
      },
      {
        lower := 15359, upper := 15530,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15531, upper := 15698,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15699, upper := 15854,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15855, upper := 15994,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15995, upper := 16162,
        witness := RowWitness.topPrime 15991
      },
      {
        lower := 16163, upper := 16312,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16313, upper := 16472,
        witness := RowWitness.topPrime 16301
      },
      {
        lower := 16473, upper := 16624,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16625, upper := 16790,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16791, upper := 16958,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16959, upper := 17114,
        witness := RowWitness.topPrime 16943
      },
      {
        lower := 17115, upper := 17278,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17279, upper := 17428,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17429, upper := 17590,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17591, upper := 17752,
        witness := RowWitness.topPrime 17581
      },
      {
        lower := 17753, upper := 17920,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17921, upper := 18092,
        witness := RowWitness.topPrime 17921
      },
      {
        lower := 18093, upper := 18260,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18261, upper := 18428,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18429, upper := 18598,
        witness := RowWitness.topPrime 18427
      },
      {
        lower := 18599, upper := 18764,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18765, upper := 18928,
        witness := RowWitness.topPrime 18757
      },
      {
        lower := 18929, upper := 19090,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19091, upper := 19258,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19259, upper := 19430,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19431, upper := 19600,
        witness := RowWitness.topPrime 19429
      },
      {
        lower := 19601, upper := 19768,
        witness := RowWitness.topPrime 19597
      },
      {
        lower := 19769, upper := 19934,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19935, upper := 20098,
        witness := RowWitness.topPrime 19927
      },
      {
        lower := 20099, upper := 20260,
        witness := RowWitness.topPrime 20089
      },
      {
        lower := 20261, upper := 20432,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20433, upper := 20602,
        witness := RowWitness.topPrime 20431
      },
      {
        lower := 20603, upper := 20770,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20771, upper := 20942,
        witness := RowWitness.topPrime 20771
      },
      {
        lower := 20943, upper := 21110,
        witness := RowWitness.topPrime 20939
      },
      {
        lower := 21111, upper := 21278,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21279, upper := 21448,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21449, upper := 21604,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21605, upper := 21772,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21773, upper := 21944,
        witness := RowWitness.topPrime 21773
      },
      {
        lower := 21945, upper := 22114,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22115, upper := 22282,
        witness := RowWitness.topPrime 22111
      },
      {
        lower := 22283, upper := 22454,
        witness := RowWitness.topPrime 22283
      },
      {
        lower := 22455, upper := 22624,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22625, upper := 22792,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22793, upper := 22958,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22959, upper := 23114,
        witness := RowWitness.topPrime 22943
      },
      {
        lower := 23115, upper := 23270,
        witness := RowWitness.topPrime 23099
      },
      {
        lower := 23271, upper := 23440,
        witness := RowWitness.topPrime 23269
      },
      {
        lower := 23441, upper := 23602,
        witness := RowWitness.topPrime 23431
      },
      {
        lower := 23603, upper := 23774,
        witness := RowWitness.topPrime 23603
      },
      {
        lower := 23775, upper := 23944,
        witness := RowWitness.topPrime 23773
      },
      {
        lower := 23945, upper := 24100,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24101, upper := 24268,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24269, upper := 24422,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24423, upper := 24592,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24593, upper := 24764,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24765, upper := 24934,
        witness := RowWitness.topPrime 24763
      },
      {
        lower := 24935, upper := 25094,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25095, upper := 25258,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25259, upper := 25424,
        witness := RowWitness.topPrime 25253
      },
      {
        lower := 25425, upper := 25594,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25595, upper := 25760,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25761, upper := 25930,
        witness := RowWitness.topPrime 25759
      },
      {
        lower := 25931, upper := 26102,
        witness := RowWitness.topPrime 25931
      },
      {
        lower := 26103, upper := 26270,
        witness := RowWitness.topPrime 26099
      },
      {
        lower := 26271, upper := 26438,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26439, upper := 26608,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26609, upper := 26768,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26769, upper := 26930,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26931, upper := 27098,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27099, upper := 27262,
        witness := RowWitness.topPrime 27091
      },
      {
        lower := 27263, upper := 27430,
        witness := RowWitness.topPrime 27259
      },
      {
        lower := 27431, upper := 27602,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27603, upper := 27754,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27755, upper := 27922,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27923, upper := 28090,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28091, upper := 28258,
        witness := RowWitness.topPrime 28087
      },
      {
        lower := 28259, upper := 28400,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28401, upper := 28564,
        witness := RowWitness.topPrime 28393
      },
      {
        lower := 28565, upper := 28730,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28731, upper := 28900,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28901, upper := 29072,
        witness := RowWitness.topPrime 28901
      },
      {
        lower := 29073, upper := 29234,
        witness := RowWitness.topPrime 29063
      },
      {
        lower := 29235, upper := 29402,
        witness := RowWitness.topPrime 29231
      },
      {
        lower := 29403, upper := 29411,
        witness := RowWitness.topPrime 29401
      },
      {
        lower := 29791, upper := 29939,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31213, upper := 31364,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31365, upper := 31421,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31500,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31855,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31998,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32939,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33660,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33785,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34490,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34491, upper := 34562,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36668,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36669, upper := 36672,
        witness := RowWitness.topPrime 36653
      },
      {
        lower := 37303, upper := 37381,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37474,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37664,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37665, upper := 37709,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38462,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39475,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40499,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40975,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45369, upper := 45424,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45967,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47046,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47692,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47693, upper := 47695,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48132,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48542,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48543, upper := 48544,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48839,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49310,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49311, upper := 49323,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49469,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50581,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51176,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53216,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53309,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55612,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55613, upper := 55618,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56340,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56478,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57293,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58735,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 68694, upper := 68815,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71458,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71459, upper := 71460,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73173,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73338,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83692,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85854,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89544,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93921,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96776,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 103041, upper := 103137,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109546,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137952,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149048,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 29412, upper := 58824, M := 13
      },
      {
        lower := 58824, upper := 117648, M := 9
      },
      {
        lower := 117648, upper := 235296, M := 7
      },
      {
        lower := 235296, upper := 470592, M := 5
      },
      {
        lower := 470592, upper := 941184, M := 4
      },
      {
        lower := 941184, upper := 1882368, M := 3
      },
      {
        lower := 1882368, upper := 3764736, M := 2
      },
      {
        lower := 3764736, upper := 7529472, M := 2
      },
      {
        lower := 7529472, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 173, r := 57, s := 123,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 348, upper := 519,
        witness := RowWitness.topPrime 347
      },
      {
        lower := 520, upper := 681,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 682, upper := 849,
        witness := RowWitness.topPrime 677
      },
      {
        lower := 850, upper := 1011,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 1012, upper := 1181,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1182, upper := 1353,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1354, upper := 1499,
        witness := RowWitness.topPrime 1327
      },
      {
        lower := 1500, upper := 1671,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1672, upper := 1841,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1842, upper := 2003,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 2004, upper := 2175,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2176, upper := 2333,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2334, upper := 2505,
        witness := RowWitness.topPrime 2333
      },
      {
        lower := 2506, upper := 2675,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2676, upper := 2843,
        witness := RowWitness.topPrime 2671
      },
      {
        lower := 2844, upper := 3015,
        witness := RowWitness.topPrime 2843
      },
      {
        lower := 3016, upper := 3183,
        witness := RowWitness.topPrime 3011
      },
      {
        lower := 3184, upper := 3353,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3354, upper := 3519,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3520, upper := 3689,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3690, upper := 3849,
        witness := RowWitness.topPrime 3677
      },
      {
        lower := 3850, upper := 4019,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 4020, upper := 4191,
        witness := RowWitness.topPrime 4019
      },
      {
        lower := 4192, upper := 4349,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4350, upper := 4521,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4522, upper := 4691,
        witness := RowWitness.topPrime 4519
      },
      {
        lower := 4692, upper := 4863,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4864, upper := 5033,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5034, upper := 5195,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5196, upper := 5361,
        witness := RowWitness.topPrime 5189
      },
      {
        lower := 5362, upper := 5523,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5524, upper := 5693,
        witness := RowWitness.topPrime 5521
      },
      {
        lower := 5694, upper := 5865,
        witness := RowWitness.topPrime 5693
      },
      {
        lower := 5866, upper := 6033,
        witness := RowWitness.topPrime 5861
      },
      {
        lower := 6034, upper := 6201,
        witness := RowWitness.topPrime 6029
      },
      {
        lower := 6202, upper := 6371,
        witness := RowWitness.topPrime 6199
      },
      {
        lower := 6372, upper := 6539,
        witness := RowWitness.topPrime 6367
      },
      {
        lower := 6540, upper := 6701,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6702, upper := 6873,
        witness := RowWitness.topPrime 6701
      },
      {
        lower := 6874, upper := 7043,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7044, upper := 7215,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7216, upper := 7385,
        witness := RowWitness.topPrime 7213
      },
      {
        lower := 7386, upper := 7541,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7542, upper := 7713,
        witness := RowWitness.topPrime 7541
      },
      {
        lower := 7714, upper := 7875,
        witness := RowWitness.topPrime 7703
      },
      {
        lower := 7876, upper := 8045,
        witness := RowWitness.topPrime 7873
      },
      {
        lower := 8046, upper := 8211,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8212, upper := 8381,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8382, upper := 8549,
        witness := RowWitness.topPrime 8377
      },
      {
        lower := 8550, upper := 8715,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8716, upper := 8885,
        witness := RowWitness.topPrime 8713
      },
      {
        lower := 8886, upper := 9039,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9040, upper := 9201,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9202, upper := 9371,
        witness := RowWitness.topPrime 9199
      },
      {
        lower := 9372, upper := 9543,
        witness := RowWitness.topPrime 9371
      },
      {
        lower := 9544, upper := 9711,
        witness := RowWitness.topPrime 9539
      },
      {
        lower := 9712, upper := 9869,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9870, upper := 10031,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 10032, upper := 10181,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10182, upper := 10353,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10354, upper := 10515,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10516, upper := 10685,
        witness := RowWitness.topPrime 10513
      },
      {
        lower := 10686, upper := 10839,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10840, upper := 11009,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11010, upper := 11175,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11176, upper := 11345,
        witness := RowWitness.topPrime 11173
      },
      {
        lower := 11346, upper := 11501,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11502, upper := 11669,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11670, upper := 11829,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11830, upper := 11999,
        witness := RowWitness.topPrime 11827
      },
      {
        lower := 12000, upper := 12159,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12160, upper := 12329,
        witness := RowWitness.topPrime 12157
      },
      {
        lower := 12330, upper := 12501,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12502, upper := 12669,
        witness := RowWitness.topPrime 12497
      },
      {
        lower := 12670, upper := 12831,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12832, upper := 13001,
        witness := RowWitness.topPrime 12829
      },
      {
        lower := 13002, upper := 13173,
        witness := RowWitness.topPrime 13001
      },
      {
        lower := 13174, upper := 13343,
        witness := RowWitness.topPrime 13171
      },
      {
        lower := 13344, upper := 13511,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13512, upper := 13671,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13672, upper := 13841,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13842, upper := 14013,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 14014, upper := 14183,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14184, upper := 14349,
        witness := RowWitness.topPrime 14177
      },
      {
        lower := 14350, upper := 14519,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14520, upper := 14691,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14692, upper := 14855,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14856, upper := 15023,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 15024, upper := 15189,
        witness := RowWitness.topPrime 15017
      },
      {
        lower := 15190, upper := 15359,
        witness := RowWitness.topPrime 15187
      },
      {
        lower := 15360, upper := 15531,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15532, upper := 15699,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15700, upper := 15855,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15856, upper := 15995,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 15996, upper := 16163,
        witness := RowWitness.topPrime 15991
      },
      {
        lower := 16164, upper := 16313,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16314, upper := 16473,
        witness := RowWitness.topPrime 16301
      },
      {
        lower := 16474, upper := 16625,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16626, upper := 16791,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16792, upper := 16959,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16960, upper := 17115,
        witness := RowWitness.topPrime 16943
      },
      {
        lower := 17116, upper := 17279,
        witness := RowWitness.topPrime 17107
      },
      {
        lower := 17280, upper := 17429,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17430, upper := 17591,
        witness := RowWitness.topPrime 17419
      },
      {
        lower := 17592, upper := 17753,
        witness := RowWitness.topPrime 17581
      },
      {
        lower := 17754, upper := 17921,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17922, upper := 18093,
        witness := RowWitness.topPrime 17921
      },
      {
        lower := 18094, upper := 18261,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18262, upper := 18429,
        witness := RowWitness.topPrime 18257
      },
      {
        lower := 18430, upper := 18599,
        witness := RowWitness.topPrime 18427
      },
      {
        lower := 18600, upper := 18765,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18766, upper := 18929,
        witness := RowWitness.topPrime 18757
      },
      {
        lower := 18930, upper := 19091,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19092, upper := 19259,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19260, upper := 19431,
        witness := RowWitness.topPrime 19259
      },
      {
        lower := 19432, upper := 19601,
        witness := RowWitness.topPrime 19429
      },
      {
        lower := 19602, upper := 19769,
        witness := RowWitness.topPrime 19597
      },
      {
        lower := 19770, upper := 19935,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19936, upper := 20099,
        witness := RowWitness.topPrime 19927
      },
      {
        lower := 20100, upper := 20261,
        witness := RowWitness.topPrime 20089
      },
      {
        lower := 20262, upper := 20433,
        witness := RowWitness.topPrime 20261
      },
      {
        lower := 20434, upper := 20603,
        witness := RowWitness.topPrime 20431
      },
      {
        lower := 20604, upper := 20771,
        witness := RowWitness.topPrime 20599
      },
      {
        lower := 20772, upper := 20943,
        witness := RowWitness.topPrime 20771
      },
      {
        lower := 20944, upper := 21111,
        witness := RowWitness.topPrime 20939
      },
      {
        lower := 21112, upper := 21279,
        witness := RowWitness.topPrime 21107
      },
      {
        lower := 21280, upper := 21449,
        witness := RowWitness.topPrime 21277
      },
      {
        lower := 21450, upper := 21605,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21606, upper := 21773,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21774, upper := 21945,
        witness := RowWitness.topPrime 21773
      },
      {
        lower := 21946, upper := 22115,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22116, upper := 22283,
        witness := RowWitness.topPrime 22111
      },
      {
        lower := 22284, upper := 22455,
        witness := RowWitness.topPrime 22283
      },
      {
        lower := 22456, upper := 22625,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22626, upper := 22793,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22794, upper := 22959,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22960, upper := 23115,
        witness := RowWitness.topPrime 22943
      },
      {
        lower := 23116, upper := 23271,
        witness := RowWitness.topPrime 23099
      },
      {
        lower := 23272, upper := 23441,
        witness := RowWitness.topPrime 23269
      },
      {
        lower := 23442, upper := 23603,
        witness := RowWitness.topPrime 23431
      },
      {
        lower := 23604, upper := 23775,
        witness := RowWitness.topPrime 23603
      },
      {
        lower := 23776, upper := 23945,
        witness := RowWitness.topPrime 23773
      },
      {
        lower := 23946, upper := 24101,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24102, upper := 24269,
        witness := RowWitness.topPrime 24097
      },
      {
        lower := 24270, upper := 24423,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24424, upper := 24593,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24594, upper := 24765,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24766, upper := 24935,
        witness := RowWitness.topPrime 24763
      },
      {
        lower := 24936, upper := 25095,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25096, upper := 25259,
        witness := RowWitness.topPrime 25087
      },
      {
        lower := 25260, upper := 25425,
        witness := RowWitness.topPrime 25253
      },
      {
        lower := 25426, upper := 25595,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25596, upper := 25761,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25762, upper := 25931,
        witness := RowWitness.topPrime 25759
      },
      {
        lower := 25932, upper := 26103,
        witness := RowWitness.topPrime 25931
      },
      {
        lower := 26104, upper := 26271,
        witness := RowWitness.topPrime 26099
      },
      {
        lower := 26272, upper := 26439,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26440, upper := 26609,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26610, upper := 26769,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26770, upper := 26931,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26932, upper := 27099,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27100, upper := 27263,
        witness := RowWitness.topPrime 27091
      },
      {
        lower := 27264, upper := 27431,
        witness := RowWitness.topPrime 27259
      },
      {
        lower := 27432, upper := 27603,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27604, upper := 27755,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27756, upper := 27923,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27924, upper := 28091,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28092, upper := 28259,
        witness := RowWitness.topPrime 28087
      },
      {
        lower := 28260, upper := 28401,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28402, upper := 28565,
        witness := RowWitness.topPrime 28393
      },
      {
        lower := 28566, upper := 28731,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28732, upper := 28901,
        witness := RowWitness.topPrime 28729
      },
      {
        lower := 28902, upper := 29073,
        witness := RowWitness.topPrime 28901
      },
      {
        lower := 29074, upper := 29235,
        witness := RowWitness.topPrime 29063
      },
      {
        lower := 29236, upper := 29403,
        witness := RowWitness.topPrime 29231
      },
      {
        lower := 29404, upper := 29573,
        witness := RowWitness.topPrime 29401
      },
      {
        lower := 29574, upper := 29745,
        witness := RowWitness.topPrime 29573
      },
      {
        lower := 29746, upper := 29755,
        witness := RowWitness.topPrime 29741
      },
      {
        lower := 29791, upper := 29940,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 31250, upper := 31421,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31422, upper := 31501,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31856,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 31999,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32940,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33661,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33786,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34491,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34492, upper := 34563,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 37303, upper := 37382,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37475,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37665,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37666, upper := 37710,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38463,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39476,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40500,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41099,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41100, upper := 41103,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45062,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45927, upper := 45968,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47047,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47693,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47694, upper := 47696,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48133,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48395,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48840,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49311,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49312, upper := 49324,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49470,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50582,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51177,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53217,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53310,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55613,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55614, upper := 55619,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56341,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56479,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57294,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57417,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58736,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59128,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 68694, upper := 68816,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71459,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71460, upper := 71461,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73174,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73339,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83693,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85855,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89545,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93922,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96777,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98476,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103138,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109547,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137953,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149049,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 29756, upper := 59512, M := 12
      },
      {
        lower := 59512, upper := 119024, M := 9
      },
      {
        lower := 119024, upper := 238048, M := 7
      },
      {
        lower := 238048, upper := 476096, M := 5
      },
      {
        lower := 476096, upper := 952192, M := 4
      },
      {
        lower := 952192, upper := 1904384, M := 3
      },
      {
        lower := 1904384, upper := 3808768, M := 2
      },
      {
        lower := 3808768, upper := 7617536, M := 2
      },
      {
        lower := 7617536, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 174, r := 57, s := 123,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 350, upper := 522,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 523, upper := 696,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 697, upper := 864,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 865, upper := 1036,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1037, upper := 1206,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1207, upper := 1374,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1375, upper := 1546,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1547, upper := 1716,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1717, upper := 1882,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1883, upper := 2052,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 2053, upper := 2226,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2227, upper := 2394,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2395, upper := 2566,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2567, upper := 2730,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2731, upper := 2904,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2905, upper := 3076,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3077, upper := 3240,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3241, upper := 3402,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3403, upper := 3564,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3565, upper := 3732,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3733, upper := 3906,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3907, upper := 4080,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 4081, upper := 4252,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4253, upper := 4426,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4427, upper := 4596,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4597, upper := 4770,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4771, upper := 4932,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4933, upper := 5106,
        witness := RowWitness.topPrime 4933
      },
      {
        lower := 5107, upper := 5280,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5281, upper := 5454,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5455, upper := 5622,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5623, upper := 5796,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5797, upper := 5964,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5965, upper := 6126,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6127, upper := 6294,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6295, upper := 6460,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6461, upper := 6624,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6625, upper := 6792,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6793, upper := 6966,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6967, upper := 7140,
        witness := RowWitness.topPrime 6967
      },
      {
        lower := 7141, upper := 7302,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7303, upper := 7470,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7471, upper := 7632,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7633, upper := 7794,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7795, upper := 7966,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7967, upper := 8136,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8137, upper := 8296,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8297, upper := 8470,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8471, upper := 8640,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8641, upper := 8814,
        witness := RowWitness.topPrime 8641
      },
      {
        lower := 8815, upper := 8980,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8981, upper := 9144,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9145, upper := 9310,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9311, upper := 9484,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9485, upper := 9652,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9653, upper := 9822,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9823, upper := 9990,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9991, upper := 10146,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10147, upper := 10314,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10315, upper := 10486,
        witness := RowWitness.topPrime 10313
      },
      {
        lower := 10487, upper := 10660,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10661, upper := 10830,
        witness := RowWitness.topPrime 10657
      },
      {
        lower := 10831, upper := 11004,
        witness := RowWitness.topPrime 10831
      },
      {
        lower := 11005, upper := 11176,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11177, upper := 11350,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11351, upper := 11524,
        witness := RowWitness.topPrime 11351
      },
      {
        lower := 11525, upper := 11692,
        witness := RowWitness.topPrime 11519
      },
      {
        lower := 11693, upper := 11862,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11863, upper := 12036,
        witness := RowWitness.topPrime 11863
      },
      {
        lower := 12037, upper := 12210,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12211, upper := 12384,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12385, upper := 12552,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12553, upper := 12726,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12727, upper := 12894,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12895, upper := 13066,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13067, upper := 13236,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13237, upper := 13402,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13403, upper := 13572,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13573, upper := 13740,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13741, upper := 13902,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13903, upper := 14076,
        witness := RowWitness.topPrime 13903
      },
      {
        lower := 14077, upper := 14244,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14245, upper := 14416,
        witness := RowWitness.topPrime 14243
      },
      {
        lower := 14417, upper := 14584,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14585, upper := 14736,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14737, upper := 14910,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14911, upper := 15070,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15071, upper := 15234,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15235, upper := 15406,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15407, upper := 15574,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15575, upper := 15742,
        witness := RowWitness.topPrime 15569
      },
      {
        lower := 15743, upper := 15912,
        witness := RowWitness.topPrime 15739
      },
      {
        lower := 15913, upper := 16086,
        witness := RowWitness.topPrime 15913
      },
      {
        lower := 16087, upper := 16260,
        witness := RowWitness.topPrime 16087
      },
      {
        lower := 16261, upper := 16426,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16427, upper := 16600,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16601, upper := 16746,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16747, upper := 16920,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16921, upper := 17094,
        witness := RowWitness.topPrime 16921
      },
      {
        lower := 17095, upper := 17266,
        witness := RowWitness.topPrime 17093
      },
      {
        lower := 17267, upper := 17430,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17431, upper := 17604,
        witness := RowWitness.topPrime 17431
      },
      {
        lower := 17605, upper := 17772,
        witness := RowWitness.topPrime 17599
      },
      {
        lower := 17773, upper := 17934,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17935, upper := 18102,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18103, upper := 18270,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18271, upper := 18442,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18443, upper := 18616,
        witness := RowWitness.topPrime 18443
      },
      {
        lower := 18617, upper := 18790,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18791, upper := 18960,
        witness := RowWitness.topPrime 18787
      },
      {
        lower := 18961, upper := 19132,
        witness := RowWitness.topPrime 18959
      },
      {
        lower := 19133, upper := 19294,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19295, upper := 19462,
        witness := RowWitness.topPrime 19289
      },
      {
        lower := 19463, upper := 19636,
        witness := RowWitness.topPrime 19463
      },
      {
        lower := 19637, upper := 19782,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19783, upper := 19950,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19951, upper := 20122,
        witness := RowWitness.topPrime 19949
      },
      {
        lower := 20123, upper := 20296,
        witness := RowWitness.topPrime 20123
      },
      {
        lower := 20297, upper := 20470,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20471, upper := 20616,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20617, upper := 20784,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 20785, upper := 20946,
        witness := RowWitness.topPrime 20773
      },
      {
        lower := 20947, upper := 21120,
        witness := RowWitness.topPrime 20947
      },
      {
        lower := 21121, upper := 21294,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21295, upper := 21456,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21457, upper := 21606,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21607, upper := 21774,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21775, upper := 21946,
        witness := RowWitness.topPrime 21773
      },
      {
        lower := 21947, upper := 22116,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22117, upper := 22284,
        witness := RowWitness.topPrime 22111
      },
      {
        lower := 22285, upper := 22456,
        witness := RowWitness.topPrime 22283
      },
      {
        lower := 22457, upper := 22626,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22627, upper := 22794,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22795, upper := 22960,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22961, upper := 23134,
        witness := RowWitness.topPrime 22961
      },
      {
        lower := 23135, upper := 23304,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23305, upper := 23470,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23471, upper := 23632,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23633, upper := 23806,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23807, upper := 23974,
        witness := RowWitness.topPrime 23801
      },
      {
        lower := 23975, upper := 24144,
        witness := RowWitness.topPrime 23971
      },
      {
        lower := 24145, upper := 24310,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24311, upper := 24454,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24455, upper := 24616,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24617, upper := 24784,
        witness := RowWitness.topPrime 24611
      },
      {
        lower := 24785, upper := 24954,
        witness := RowWitness.topPrime 24781
      },
      {
        lower := 24955, upper := 25126,
        witness := RowWitness.topPrime 24953
      },
      {
        lower := 25127, upper := 25300,
        witness := RowWitness.topPrime 25127
      },
      {
        lower := 25301, upper := 25474,
        witness := RowWitness.topPrime 25301
      },
      {
        lower := 25475, upper := 25644,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25645, upper := 25816,
        witness := RowWitness.topPrime 25643
      },
      {
        lower := 25817, upper := 25974,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25975, upper := 26142,
        witness := RowWitness.topPrime 25969
      },
      {
        lower := 26143, upper := 26314,
        witness := RowWitness.topPrime 26141
      },
      {
        lower := 26315, upper := 26482,
        witness := RowWitness.topPrime 26309
      },
      {
        lower := 26483, upper := 26652,
        witness := RowWitness.topPrime 26479
      },
      {
        lower := 26653, upper := 26820,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26821, upper := 26994,
        witness := RowWitness.topPrime 26821
      },
      {
        lower := 26995, upper := 27166,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27167, upper := 27316,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27317, upper := 27472,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27473, upper := 27630,
        witness := RowWitness.topPrime 27457
      },
      {
        lower := 27631, upper := 27804,
        witness := RowWitness.topPrime 27631
      },
      {
        lower := 27805, upper := 27976,
        witness := RowWitness.topPrime 27803
      },
      {
        lower := 27977, upper := 28140,
        witness := RowWitness.topPrime 27967
      },
      {
        lower := 28141, upper := 28296,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28297, upper := 28470,
        witness := RowWitness.topPrime 28297
      },
      {
        lower := 28471, upper := 28636,
        witness := RowWitness.topPrime 28463
      },
      {
        lower := 28637, upper := 28804,
        witness := RowWitness.topPrime 28631
      },
      {
        lower := 28805, upper := 28966,
        witness := RowWitness.topPrime 28793
      },
      {
        lower := 28967, upper := 29134,
        witness := RowWitness.topPrime 28961
      },
      {
        lower := 29135, upper := 29304,
        witness := RowWitness.topPrime 29131
      },
      {
        lower := 29305, upper := 29476,
        witness := RowWitness.topPrime 29303
      },
      {
        lower := 29477, upper := 29646,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 29647, upper := 29814,
        witness := RowWitness.topPrime 29641
      },
      {
        lower := 29815, upper := 29976,
        witness := RowWitness.topPrime 29803
      },
      {
        lower := 29977, upper := 30101,
        witness := RowWitness.topPrime 29959
      },
      {
        lower := 30758, upper := 30776,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 31066,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31067, upper := 31072,
        witness := RowWitness.topPrime 31063
      },
      {
        lower := 31213, upper := 31366,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31367, upper := 31502,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31827, upper := 31857,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 32000,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33662,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33787,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34492,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34493, upper := 34564,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36670,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36671, upper := 36674,
        witness := RowWitness.topPrime 36671
      },
      {
        lower := 37303, upper := 37383,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37476,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37666,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37667, upper := 37711,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38464,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39496,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39497, upper := 39499,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40501,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41100,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41101, upper := 41104,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 43750, upper := 43860,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43923, upper := 43923,
        witness := RowWitness.topPrime 43913
      },
      {
        lower := 45369, upper := 45426,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47045, upper := 47048,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47694,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47695, upper := 47697,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48134,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48544,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48545, upper := 48546,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48734, upper := 48841,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 49152, upper := 49312,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49313, upper := 49325,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49471,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50583,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51178,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53218,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53311,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55614,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55615, upper := 55620,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56342,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56480,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57295,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57418,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58737,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59129,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62583,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68812,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68813, upper := 68824,
        witness := RowWitness.topPrime 68813
      },
      {
        lower := 68921, upper := 69063,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71460,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71461, upper := 71462,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 83667, upper := 83694,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85856,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89546,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93923,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96778,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 102152, upper := 102183,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103139,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109548,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149050,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 30102, upper := 60204, M := 14
      },
      {
        lower := 60204, upper := 120408, M := 11
      },
      {
        lower := 120408, upper := 240816, M := 8
      },
      {
        lower := 240816, upper := 481632, M := 6
      },
      {
        lower := 481632, upper := 963264, M := 5
      },
      {
        lower := 963264, upper := 1926528, M := 3
      },
      {
        lower := 1926528, upper := 3853056, M := 3
      },
      {
        lower := 3853056, upper := 7706112, M := 2
      },
      {
        lower := 7706112, upper := 15412224, M := 2
      },
      {
        lower := 15412224, upper := 30824448, M := 1
      },
      {
        lower := 30824448, upper := 61648896, M := 1
      },
      {
        lower := 61648896, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 175, r := 58, s := 124,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 352, upper := 523,
        witness := RowWitness.topPrime 349
      },
      {
        lower := 524, upper := 697,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 698, upper := 865,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 866, upper := 1037,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1038, upper := 1207,
        witness := RowWitness.topPrime 1033
      },
      {
        lower := 1208, upper := 1375,
        witness := RowWitness.topPrime 1201
      },
      {
        lower := 1376, upper := 1547,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1548, upper := 1717,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1718, upper := 1883,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1884, upper := 2053,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 2054, upper := 2227,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2228, upper := 2395,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2396, upper := 2567,
        witness := RowWitness.topPrime 2393
      },
      {
        lower := 2568, upper := 2731,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2732, upper := 2905,
        witness := RowWitness.topPrime 2731
      },
      {
        lower := 2906, upper := 3077,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3078, upper := 3241,
        witness := RowWitness.topPrime 3067
      },
      {
        lower := 3242, upper := 3403,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3404, upper := 3565,
        witness := RowWitness.topPrime 3391
      },
      {
        lower := 3566, upper := 3733,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3734, upper := 3907,
        witness := RowWitness.topPrime 3733
      },
      {
        lower := 3908, upper := 4081,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 4082, upper := 4253,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4254, upper := 4427,
        witness := RowWitness.topPrime 4253
      },
      {
        lower := 4428, upper := 4597,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4598, upper := 4771,
        witness := RowWitness.topPrime 4597
      },
      {
        lower := 4772, upper := 4933,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4934, upper := 5107,
        witness := RowWitness.topPrime 4933
      },
      {
        lower := 5108, upper := 5281,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5282, upper := 5455,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5456, upper := 5623,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5624, upper := 5797,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5798, upper := 5965,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5966, upper := 6127,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6128, upper := 6295,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6296, upper := 6461,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6462, upper := 6625,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6626, upper := 6793,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6794, upper := 6967,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6968, upper := 7141,
        witness := RowWitness.topPrime 6967
      },
      {
        lower := 7142, upper := 7303,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7304, upper := 7471,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7472, upper := 7633,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7634, upper := 7795,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7796, upper := 7967,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7968, upper := 8137,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8138, upper := 8297,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8298, upper := 8471,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8472, upper := 8641,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8642, upper := 8815,
        witness := RowWitness.topPrime 8641
      },
      {
        lower := 8816, upper := 8981,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8982, upper := 9145,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9146, upper := 9311,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9312, upper := 9485,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9486, upper := 9653,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9654, upper := 9823,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9824, upper := 9991,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9992, upper := 10147,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10148, upper := 10315,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10316, upper := 10487,
        witness := RowWitness.topPrime 10313
      },
      {
        lower := 10488, upper := 10661,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10662, upper := 10831,
        witness := RowWitness.topPrime 10657
      },
      {
        lower := 10832, upper := 11005,
        witness := RowWitness.topPrime 10831
      },
      {
        lower := 11006, upper := 11177,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11178, upper := 11351,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11352, upper := 11525,
        witness := RowWitness.topPrime 11351
      },
      {
        lower := 11526, upper := 11693,
        witness := RowWitness.topPrime 11519
      },
      {
        lower := 11694, upper := 11863,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11864, upper := 12037,
        witness := RowWitness.topPrime 11863
      },
      {
        lower := 12038, upper := 12211,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12212, upper := 12385,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12386, upper := 12553,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12554, upper := 12727,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12728, upper := 12895,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12896, upper := 13067,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13068, upper := 13237,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13238, upper := 13403,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13404, upper := 13573,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13574, upper := 13741,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13742, upper := 13903,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13904, upper := 14077,
        witness := RowWitness.topPrime 13903
      },
      {
        lower := 14078, upper := 14245,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14246, upper := 14417,
        witness := RowWitness.topPrime 14243
      },
      {
        lower := 14418, upper := 14585,
        witness := RowWitness.topPrime 14411
      },
      {
        lower := 14586, upper := 14737,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14738, upper := 14911,
        witness := RowWitness.topPrime 14737
      },
      {
        lower := 14912, upper := 15071,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15072, upper := 15235,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15236, upper := 15407,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15408, upper := 15575,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15576, upper := 15743,
        witness := RowWitness.topPrime 15569
      },
      {
        lower := 15744, upper := 15913,
        witness := RowWitness.topPrime 15739
      },
      {
        lower := 15914, upper := 16087,
        witness := RowWitness.topPrime 15913
      },
      {
        lower := 16088, upper := 16261,
        witness := RowWitness.topPrime 16087
      },
      {
        lower := 16262, upper := 16427,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16428, upper := 16601,
        witness := RowWitness.topPrime 16427
      },
      {
        lower := 16602, upper := 16747,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16748, upper := 16921,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16922, upper := 17095,
        witness := RowWitness.topPrime 16921
      },
      {
        lower := 17096, upper := 17267,
        witness := RowWitness.topPrime 17093
      },
      {
        lower := 17268, upper := 17431,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17432, upper := 17605,
        witness := RowWitness.topPrime 17431
      },
      {
        lower := 17606, upper := 17773,
        witness := RowWitness.topPrime 17599
      },
      {
        lower := 17774, upper := 17935,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17936, upper := 18103,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18104, upper := 18271,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18272, upper := 18443,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18444, upper := 18617,
        witness := RowWitness.topPrime 18443
      },
      {
        lower := 18618, upper := 18791,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18792, upper := 18961,
        witness := RowWitness.topPrime 18787
      },
      {
        lower := 18962, upper := 19133,
        witness := RowWitness.topPrime 18959
      },
      {
        lower := 19134, upper := 19295,
        witness := RowWitness.topPrime 19121
      },
      {
        lower := 19296, upper := 19463,
        witness := RowWitness.topPrime 19289
      },
      {
        lower := 19464, upper := 19637,
        witness := RowWitness.topPrime 19463
      },
      {
        lower := 19638, upper := 19783,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19784, upper := 19951,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19952, upper := 20123,
        witness := RowWitness.topPrime 19949
      },
      {
        lower := 20124, upper := 20297,
        witness := RowWitness.topPrime 20123
      },
      {
        lower := 20298, upper := 20471,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20472, upper := 20617,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20618, upper := 20785,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 20786, upper := 20947,
        witness := RowWitness.topPrime 20773
      },
      {
        lower := 20948, upper := 21121,
        witness := RowWitness.topPrime 20947
      },
      {
        lower := 21122, upper := 21295,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21296, upper := 21457,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21458, upper := 21607,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21608, upper := 21775,
        witness := RowWitness.topPrime 21601
      },
      {
        lower := 21776, upper := 21947,
        witness := RowWitness.topPrime 21773
      },
      {
        lower := 21948, upper := 22117,
        witness := RowWitness.topPrime 21943
      },
      {
        lower := 22118, upper := 22285,
        witness := RowWitness.topPrime 22111
      },
      {
        lower := 22286, upper := 22457,
        witness := RowWitness.topPrime 22283
      },
      {
        lower := 22458, upper := 22627,
        witness := RowWitness.topPrime 22453
      },
      {
        lower := 22628, upper := 22795,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22796, upper := 22961,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22962, upper := 23135,
        witness := RowWitness.topPrime 22961
      },
      {
        lower := 23136, upper := 23305,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23306, upper := 23471,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23472, upper := 23633,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23634, upper := 23807,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23808, upper := 23975,
        witness := RowWitness.topPrime 23801
      },
      {
        lower := 23976, upper := 24145,
        witness := RowWitness.topPrime 23971
      },
      {
        lower := 24146, upper := 24311,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24312, upper := 24455,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24456, upper := 24617,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24618, upper := 24785,
        witness := RowWitness.topPrime 24611
      },
      {
        lower := 24786, upper := 24955,
        witness := RowWitness.topPrime 24781
      },
      {
        lower := 24956, upper := 25127,
        witness := RowWitness.topPrime 24953
      },
      {
        lower := 25128, upper := 25301,
        witness := RowWitness.topPrime 25127
      },
      {
        lower := 25302, upper := 25475,
        witness := RowWitness.topPrime 25301
      },
      {
        lower := 25476, upper := 25645,
        witness := RowWitness.topPrime 25471
      },
      {
        lower := 25646, upper := 25817,
        witness := RowWitness.topPrime 25643
      },
      {
        lower := 25818, upper := 25975,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25976, upper := 26143,
        witness := RowWitness.topPrime 25969
      },
      {
        lower := 26144, upper := 26315,
        witness := RowWitness.topPrime 26141
      },
      {
        lower := 26316, upper := 26483,
        witness := RowWitness.topPrime 26309
      },
      {
        lower := 26484, upper := 26653,
        witness := RowWitness.topPrime 26479
      },
      {
        lower := 26654, upper := 26821,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26822, upper := 26995,
        witness := RowWitness.topPrime 26821
      },
      {
        lower := 26996, upper := 27167,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27168, upper := 27317,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27318, upper := 27473,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27474, upper := 27631,
        witness := RowWitness.topPrime 27457
      },
      {
        lower := 27632, upper := 27805,
        witness := RowWitness.topPrime 27631
      },
      {
        lower := 27806, upper := 27977,
        witness := RowWitness.topPrime 27803
      },
      {
        lower := 27978, upper := 28141,
        witness := RowWitness.topPrime 27967
      },
      {
        lower := 28142, upper := 28297,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28298, upper := 28471,
        witness := RowWitness.topPrime 28297
      },
      {
        lower := 28472, upper := 28637,
        witness := RowWitness.topPrime 28463
      },
      {
        lower := 28638, upper := 28805,
        witness := RowWitness.topPrime 28631
      },
      {
        lower := 28806, upper := 28967,
        witness := RowWitness.topPrime 28793
      },
      {
        lower := 28968, upper := 29135,
        witness := RowWitness.topPrime 28961
      },
      {
        lower := 29136, upper := 29305,
        witness := RowWitness.topPrime 29131
      },
      {
        lower := 29306, upper := 29477,
        witness := RowWitness.topPrime 29303
      },
      {
        lower := 29478, upper := 29647,
        witness := RowWitness.topPrime 29473
      },
      {
        lower := 29648, upper := 29815,
        witness := RowWitness.topPrime 29641
      },
      {
        lower := 29816, upper := 29977,
        witness := RowWitness.topPrime 29803
      },
      {
        lower := 29978, upper := 30133,
        witness := RowWitness.topPrime 29959
      },
      {
        lower := 30134, upper := 30307,
        witness := RowWitness.topPrime 30133
      },
      {
        lower := 30308, upper := 30449,
        witness := RowWitness.topPrime 30307
      },
      {
        lower := 30618, upper := 30767,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30768, upper := 30792,
        witness := RowWitness.topPrime 30763
      },
      {
        lower := 30899, upper := 31067,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31068, upper := 31073,
        witness := RowWitness.topPrime 31063
      },
      {
        lower := 31329, upper := 31379,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31503,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31858,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 32001,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32942,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33663,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33788,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34493,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34494, upper := 34565,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36671,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36672, upper := 36675,
        witness := RowWitness.topPrime 36671
      },
      {
        lower := 37303, upper := 37384,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37477,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37620,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37712,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38465,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39497,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39498, upper := 39500,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40502,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41101,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41102, upper := 41105,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45064,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45427,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45970,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47695,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47696, upper := 47698,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48135,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48545,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48546, upper := 48547,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48734, upper := 48907,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48908, upper := 48908,
        witness := RowWitness.topPrime 48907
      },
      {
        lower := 49152, upper := 49313,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49314, upper := 49326,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49472,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 51076, upper := 51179,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53219,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53413,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53414, upper := 53422,
        witness := RowWitness.topPrime 53411
      },
      {
        lower := 55451, upper := 55615,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55616, upper := 55621,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56343,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56481,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57296,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57419,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58738,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59130,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 65610, upper := 65710,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68813,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68814, upper := 68818,
        witness := RowWitness.topPrime 68813
      },
      {
        lower := 68921, upper := 69064,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71461,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71462, upper := 71463,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73176,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73341,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83695,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85857,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89547,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 96774, upper := 96779,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98478,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102184,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103140,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137955,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149051,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 195223, upper := 195286,
        witness := RowWitness.topPrime 195203
      }
    ],
    layers := [
      {
        lower := 30450, upper := 60900, M := 14
      },
      {
        lower := 60900, upper := 121800, M := 10
      },
      {
        lower := 121800, upper := 243600, M := 8
      },
      {
        lower := 243600, upper := 487200, M := 6
      },
      {
        lower := 487200, upper := 974400, M := 4
      },
      {
        lower := 974400, upper := 1948800, M := 3
      },
      {
        lower := 1948800, upper := 3897600, M := 3
      },
      {
        lower := 3897600, upper := 7795200, M := 2
      },
      {
        lower := 7795200, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 176, r := 58, s := 125,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 354, upper := 528,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 529, upper := 698,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 699, upper := 866,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 867, upper := 1038,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1039, upper := 1214,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1215, upper := 1388,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1389, upper := 1556,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1557, upper := 1728,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1729, upper := 1898,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1899, upper := 2064,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2065, upper := 2238,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2239, upper := 2414,
        witness := RowWitness.topPrime 2239
      },
      {
        lower := 2415, upper := 2586,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2587, upper := 2754,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2755, upper := 2928,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2929, upper := 3102,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3103, upper := 3264,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3265, upper := 3434,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3435, upper := 3608,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3609, upper := 3782,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3783, upper := 3954,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3955, upper := 4122,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4123, upper := 4286,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4287, upper := 4458,
        witness := RowWitness.topPrime 4283
      },
      {
        lower := 4459, upper := 4632,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4633, upper := 4796,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4797, upper := 4968,
        witness := RowWitness.topPrime 4793
      },
      {
        lower := 4969, upper := 5144,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5145, upper := 5294,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5295, upper := 5456,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5457, upper := 5624,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5625, upper := 5798,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5799, upper := 5966,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5967, upper := 6128,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6129, upper := 6296,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6297, upper := 6462,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6463, upper := 6626,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6627, upper := 6794,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6795, upper := 6968,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6969, upper := 7142,
        witness := RowWitness.topPrime 6967
      },
      {
        lower := 7143, upper := 7304,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7305, upper := 7472,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7473, upper := 7634,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7635, upper := 7796,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7797, upper := 7968,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7969, upper := 8138,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8139, upper := 8298,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8299, upper := 8472,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8473, upper := 8642,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8643, upper := 8816,
        witness := RowWitness.topPrime 8641
      },
      {
        lower := 8817, upper := 8982,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8983, upper := 9146,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9147, upper := 9312,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9313, upper := 9486,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9487, upper := 9654,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9655, upper := 9824,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9825, upper := 9992,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9993, upper := 10148,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10149, upper := 10316,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10317, upper := 10488,
        witness := RowWitness.topPrime 10313
      },
      {
        lower := 10489, upper := 10662,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10663, upper := 10838,
        witness := RowWitness.topPrime 10663
      },
      {
        lower := 10839, upper := 11012,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11013, upper := 11178,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11179, upper := 11352,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11353, upper := 11528,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11529, upper := 11702,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11703, upper := 11876,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11877, upper := 12042,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12043, upper := 12218,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12219, upper := 12386,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12387, upper := 12554,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12555, upper := 12728,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12729, upper := 12896,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12897, upper := 13068,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13069, upper := 13238,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13239, upper := 13404,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13405, upper := 13574,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13575, upper := 13742,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13743, upper := 13904,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13905, upper := 14078,
        witness := RowWitness.topPrime 13903
      },
      {
        lower := 14079, upper := 14246,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14247, upper := 14418,
        witness := RowWitness.topPrime 14243
      },
      {
        lower := 14419, upper := 14594,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14595, upper := 14768,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14769, upper := 14942,
        witness := RowWitness.topPrime 14767
      },
      {
        lower := 14943, upper := 15114,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15115, upper := 15282,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15283, upper := 15452,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15453, upper := 15626,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15627, upper := 15794,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15795, upper := 15966,
        witness := RowWitness.topPrime 15791
      },
      {
        lower := 15967, upper := 16134,
        witness := RowWitness.topPrime 15959
      },
      {
        lower := 16135, upper := 16302,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16303, upper := 16476,
        witness := RowWitness.topPrime 16301
      },
      {
        lower := 16477, upper := 16652,
        witness := RowWitness.topPrime 16477
      },
      {
        lower := 16653, upper := 16826,
        witness := RowWitness.topPrime 16651
      },
      {
        lower := 16827, upper := 16998,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 16999, upper := 17168,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17169, upper := 17342,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17343, upper := 17516,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17517, upper := 17684,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17685, upper := 17858,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17859, upper := 18026,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18027, upper := 18188,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18189, upper := 18356,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18357, upper := 18528,
        witness := RowWitness.topPrime 18353
      },
      {
        lower := 18529, upper := 18698,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18699, upper := 18866,
        witness := RowWitness.topPrime 18691
      },
      {
        lower := 18867, upper := 19034,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19035, upper := 19206,
        witness := RowWitness.topPrime 19031
      },
      {
        lower := 19207, upper := 19382,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19383, upper := 19556,
        witness := RowWitness.topPrime 19381
      },
      {
        lower := 19557, upper := 19728,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19729, upper := 19902,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19903, upper := 20066,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20067, upper := 20238,
        witness := RowWitness.topPrime 20063
      },
      {
        lower := 20239, upper := 20408,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20409, upper := 20582,
        witness := RowWitness.topPrime 20407
      },
      {
        lower := 20583, upper := 20738,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20739, upper := 20906,
        witness := RowWitness.topPrime 20731
      },
      {
        lower := 20907, upper := 21078,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21079, upper := 21242,
        witness := RowWitness.topPrime 21067
      },
      {
        lower := 21243, upper := 21402,
        witness := RowWitness.topPrime 21227
      },
      {
        lower := 21403, upper := 21576,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21577, upper := 21752,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21753, upper := 21926,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21927, upper := 22086,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22087, upper := 22254,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22255, upper := 22422,
        witness := RowWitness.topPrime 22247
      },
      {
        lower := 22423, upper := 22584,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22585, upper := 22748,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22749, upper := 22916,
        witness := RowWitness.topPrime 22741
      },
      {
        lower := 22917, upper := 23082,
        witness := RowWitness.topPrime 22907
      },
      {
        lower := 23083, upper := 23256,
        witness := RowWitness.topPrime 23081
      },
      {
        lower := 23257, upper := 23426,
        witness := RowWitness.topPrime 23251
      },
      {
        lower := 23427, upper := 23592,
        witness := RowWitness.topPrime 23417
      },
      {
        lower := 23593, upper := 23768,
        witness := RowWitness.topPrime 23593
      },
      {
        lower := 23769, upper := 23942,
        witness := RowWitness.topPrime 23767
      },
      {
        lower := 23943, upper := 24104,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24105, upper := 24278,
        witness := RowWitness.topPrime 24103
      },
      {
        lower := 24279, upper := 24426,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24427, upper := 24596,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24597, upper := 24768,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24769, upper := 24942,
        witness := RowWitness.topPrime 24767
      },
      {
        lower := 24943, upper := 25118,
        witness := RowWitness.topPrime 24943
      },
      {
        lower := 25119, upper := 25292,
        witness := RowWitness.topPrime 25117
      },
      {
        lower := 25293, upper := 25436,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25437, upper := 25598,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25599, upper := 25764,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25765, upper := 25938,
        witness := RowWitness.topPrime 25763
      },
      {
        lower := 25939, upper := 26114,
        witness := RowWitness.topPrime 25939
      },
      {
        lower := 26115, upper := 26288,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26289, upper := 26442,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26443, upper := 26612,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26613, upper := 26772,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26773, upper := 26934,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26935, upper := 27102,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27103, upper := 27278,
        witness := RowWitness.topPrime 27103
      },
      {
        lower := 27279, upper := 27452,
        witness := RowWitness.topPrime 27277
      },
      {
        lower := 27453, upper := 27624,
        witness := RowWitness.topPrime 27449
      },
      {
        lower := 27625, upper := 27792,
        witness := RowWitness.topPrime 27617
      },
      {
        lower := 27793, upper := 27968,
        witness := RowWitness.topPrime 27793
      },
      {
        lower := 27969, upper := 28142,
        witness := RowWitness.topPrime 27967
      },
      {
        lower := 28143, upper := 28298,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28299, upper := 28472,
        witness := RowWitness.topPrime 28297
      },
      {
        lower := 28473, upper := 28638,
        witness := RowWitness.topPrime 28463
      },
      {
        lower := 28639, upper := 28806,
        witness := RowWitness.topPrime 28631
      },
      {
        lower := 28807, upper := 28982,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 28983, upper := 29154,
        witness := RowWitness.topPrime 28979
      },
      {
        lower := 29155, upper := 29328,
        witness := RowWitness.topPrime 29153
      },
      {
        lower := 29329, upper := 29502,
        witness := RowWitness.topPrime 29327
      },
      {
        lower := 29503, upper := 29676,
        witness := RowWitness.topPrime 29501
      },
      {
        lower := 29677, upper := 29846,
        witness := RowWitness.topPrime 29671
      },
      {
        lower := 29847, upper := 30012,
        witness := RowWitness.topPrime 29837
      },
      {
        lower := 30013, upper := 30188,
        witness := RowWitness.topPrime 30013
      },
      {
        lower := 30189, upper := 30362,
        witness := RowWitness.topPrime 30187
      },
      {
        lower := 30363, upper := 30522,
        witness := RowWitness.topPrime 30347
      },
      {
        lower := 30523, upper := 30692,
        witness := RowWitness.topPrime 30517
      },
      {
        lower := 30693, upper := 30799,
        witness := RowWitness.topPrime 30689
      },
      {
        lower := 31213, upper := 31368,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31369, upper := 31504,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31827, upper := 31859,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 32002,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33664,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33789,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34494,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34495, upper := 34566,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36672,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36673, upper := 36676,
        witness := RowWitness.topPrime 36671
      },
      {
        lower := 37303, upper := 37385,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37478,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37668,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37669, upper := 37713,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38466,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39479,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40503,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40979,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45369, upper := 45428,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45971,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47050,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47696,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47697, upper := 47699,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48136,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48546,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48547, upper := 48548,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48843,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49298, upper := 49305,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49473,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50585,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51180,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53220,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53313,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54043,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55616,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55617, upper := 55622,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56344,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56482,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57297,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 59049, upper := 59131,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62585,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68814,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68815, upper := 68819,
        witness := RowWitness.topPrime 68813
      },
      {
        lower := 68921, upper := 69065,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71462,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71463, upper := 71464,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73177,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 83667, upper := 83696,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85858,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89548,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93925,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96780,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 102152, upper := 102185,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103141,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109550,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137956,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149052,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 30800, upper := 61600, M := 13
      },
      {
        lower := 61600, upper := 123200, M := 10
      },
      {
        lower := 123200, upper := 246400, M := 7
      },
      {
        lower := 246400, upper := 492800, M := 5
      },
      {
        lower := 492800, upper := 985600, M := 4
      },
      {
        lower := 985600, upper := 1971200, M := 3
      },
      {
        lower := 1971200, upper := 3942400, M := 2
      },
      {
        lower := 3942400, upper := 7884800, M := 2
      },
      {
        lower := 7884800, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 177, r := 58, s := 126,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 356, upper := 529,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 530, upper := 699,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 700, upper := 867,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 868, upper := 1039,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1040, upper := 1215,
        witness := RowWitness.topPrime 1039
      },
      {
        lower := 1216, upper := 1389,
        witness := RowWitness.topPrime 1213
      },
      {
        lower := 1390, upper := 1557,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1558, upper := 1729,
        witness := RowWitness.topPrime 1553
      },
      {
        lower := 1730, upper := 1899,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1900, upper := 2065,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2066, upper := 2239,
        witness := RowWitness.topPrime 2063
      },
      {
        lower := 2240, upper := 2415,
        witness := RowWitness.topPrime 2239
      },
      {
        lower := 2416, upper := 2587,
        witness := RowWitness.topPrime 2411
      },
      {
        lower := 2588, upper := 2755,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2756, upper := 2929,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2930, upper := 3103,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3104, upper := 3265,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3266, upper := 3435,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3436, upper := 3609,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3610, upper := 3783,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3784, upper := 3955,
        witness := RowWitness.topPrime 3779
      },
      {
        lower := 3956, upper := 4123,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4124, upper := 4287,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4288, upper := 4459,
        witness := RowWitness.topPrime 4283
      },
      {
        lower := 4460, upper := 4633,
        witness := RowWitness.topPrime 4457
      },
      {
        lower := 4634, upper := 4797,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4798, upper := 4969,
        witness := RowWitness.topPrime 4793
      },
      {
        lower := 4970, upper := 5145,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5146, upper := 5295,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5296, upper := 5457,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5458, upper := 5625,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5626, upper := 5799,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5800, upper := 5967,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5968, upper := 6129,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6130, upper := 6297,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6298, upper := 6463,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6464, upper := 6627,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6628, upper := 6795,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6796, upper := 6969,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6970, upper := 7143,
        witness := RowWitness.topPrime 6967
      },
      {
        lower := 7144, upper := 7305,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7306, upper := 7473,
        witness := RowWitness.topPrime 7297
      },
      {
        lower := 7474, upper := 7635,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7636, upper := 7797,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7798, upper := 7969,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7970, upper := 8139,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8140, upper := 8299,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8300, upper := 8473,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8474, upper := 8643,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8644, upper := 8817,
        witness := RowWitness.topPrime 8641
      },
      {
        lower := 8818, upper := 8983,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8984, upper := 9147,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9148, upper := 9313,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9314, upper := 9487,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9488, upper := 9655,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9656, upper := 9825,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9826, upper := 9993,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9994, upper := 10149,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10150, upper := 10317,
        witness := RowWitness.topPrime 10141
      },
      {
        lower := 10318, upper := 10489,
        witness := RowWitness.topPrime 10313
      },
      {
        lower := 10490, upper := 10663,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10664, upper := 10839,
        witness := RowWitness.topPrime 10663
      },
      {
        lower := 10840, upper := 11013,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11014, upper := 11179,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11180, upper := 11353,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11354, upper := 11529,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11530, upper := 11703,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11704, upper := 11877,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11878, upper := 12043,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12044, upper := 12219,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12220, upper := 12387,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12388, upper := 12555,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12556, upper := 12729,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12730, upper := 12897,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12898, upper := 13069,
        witness := RowWitness.topPrime 12893
      },
      {
        lower := 13070, upper := 13239,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13240, upper := 13405,
        witness := RowWitness.topPrime 13229
      },
      {
        lower := 13406, upper := 13575,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13576, upper := 13743,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13744, upper := 13905,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13906, upper := 14079,
        witness := RowWitness.topPrime 13903
      },
      {
        lower := 14080, upper := 14247,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14248, upper := 14419,
        witness := RowWitness.topPrime 14243
      },
      {
        lower := 14420, upper := 14595,
        witness := RowWitness.topPrime 14419
      },
      {
        lower := 14596, upper := 14769,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14770, upper := 14943,
        witness := RowWitness.topPrime 14767
      },
      {
        lower := 14944, upper := 15115,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15116, upper := 15283,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15284, upper := 15453,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15454, upper := 15627,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15628, upper := 15795,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15796, upper := 15967,
        witness := RowWitness.topPrime 15791
      },
      {
        lower := 15968, upper := 16135,
        witness := RowWitness.topPrime 15959
      },
      {
        lower := 16136, upper := 16303,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16304, upper := 16477,
        witness := RowWitness.topPrime 16301
      },
      {
        lower := 16478, upper := 16653,
        witness := RowWitness.topPrime 16477
      },
      {
        lower := 16654, upper := 16827,
        witness := RowWitness.topPrime 16651
      },
      {
        lower := 16828, upper := 16999,
        witness := RowWitness.topPrime 16823
      },
      {
        lower := 17000, upper := 17169,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17170, upper := 17343,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17344, upper := 17517,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17518, upper := 17685,
        witness := RowWitness.topPrime 17509
      },
      {
        lower := 17686, upper := 17859,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17860, upper := 18027,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18028, upper := 18189,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18190, upper := 18357,
        witness := RowWitness.topPrime 18181
      },
      {
        lower := 18358, upper := 18529,
        witness := RowWitness.topPrime 18353
      },
      {
        lower := 18530, upper := 18699,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18700, upper := 18867,
        witness := RowWitness.topPrime 18691
      },
      {
        lower := 18868, upper := 19035,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19036, upper := 19207,
        witness := RowWitness.topPrime 19031
      },
      {
        lower := 19208, upper := 19383,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19384, upper := 19557,
        witness := RowWitness.topPrime 19381
      },
      {
        lower := 19558, upper := 19729,
        witness := RowWitness.topPrime 19553
      },
      {
        lower := 19730, upper := 19903,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19904, upper := 20067,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20068, upper := 20239,
        witness := RowWitness.topPrime 20063
      },
      {
        lower := 20240, upper := 20409,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20410, upper := 20583,
        witness := RowWitness.topPrime 20407
      },
      {
        lower := 20584, upper := 20739,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20740, upper := 20907,
        witness := RowWitness.topPrime 20731
      },
      {
        lower := 20908, upper := 21079,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21080, upper := 21243,
        witness := RowWitness.topPrime 21067
      },
      {
        lower := 21244, upper := 21403,
        witness := RowWitness.topPrime 21227
      },
      {
        lower := 21404, upper := 21577,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21578, upper := 21753,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21754, upper := 21927,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21928, upper := 22087,
        witness := RowWitness.topPrime 21911
      },
      {
        lower := 22088, upper := 22255,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22256, upper := 22423,
        witness := RowWitness.topPrime 22247
      },
      {
        lower := 22424, upper := 22585,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22586, upper := 22749,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22750, upper := 22917,
        witness := RowWitness.topPrime 22741
      },
      {
        lower := 22918, upper := 23083,
        witness := RowWitness.topPrime 22907
      },
      {
        lower := 23084, upper := 23257,
        witness := RowWitness.topPrime 23081
      },
      {
        lower := 23258, upper := 23427,
        witness := RowWitness.topPrime 23251
      },
      {
        lower := 23428, upper := 23593,
        witness := RowWitness.topPrime 23417
      },
      {
        lower := 23594, upper := 23769,
        witness := RowWitness.topPrime 23593
      },
      {
        lower := 23770, upper := 23943,
        witness := RowWitness.topPrime 23767
      },
      {
        lower := 23944, upper := 24105,
        witness := RowWitness.topPrime 23929
      },
      {
        lower := 24106, upper := 24279,
        witness := RowWitness.topPrime 24103
      },
      {
        lower := 24280, upper := 24427,
        witness := RowWitness.topPrime 24251
      },
      {
        lower := 24428, upper := 24597,
        witness := RowWitness.topPrime 24421
      },
      {
        lower := 24598, upper := 24769,
        witness := RowWitness.topPrime 24593
      },
      {
        lower := 24770, upper := 24943,
        witness := RowWitness.topPrime 24767
      },
      {
        lower := 24944, upper := 25119,
        witness := RowWitness.topPrime 24943
      },
      {
        lower := 25120, upper := 25293,
        witness := RowWitness.topPrime 25117
      },
      {
        lower := 25294, upper := 25437,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25438, upper := 25599,
        witness := RowWitness.topPrime 25423
      },
      {
        lower := 25600, upper := 25765,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25766, upper := 25939,
        witness := RowWitness.topPrime 25763
      },
      {
        lower := 25940, upper := 26115,
        witness := RowWitness.topPrime 25939
      },
      {
        lower := 26116, upper := 26289,
        witness := RowWitness.topPrime 26113
      },
      {
        lower := 26290, upper := 26443,
        witness := RowWitness.topPrime 26267
      },
      {
        lower := 26444, upper := 26613,
        witness := RowWitness.topPrime 26437
      },
      {
        lower := 26614, upper := 26773,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26774, upper := 26935,
        witness := RowWitness.topPrime 26759
      },
      {
        lower := 26936, upper := 27103,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27104, upper := 27279,
        witness := RowWitness.topPrime 27103
      },
      {
        lower := 27280, upper := 27453,
        witness := RowWitness.topPrime 27277
      },
      {
        lower := 27454, upper := 27625,
        witness := RowWitness.topPrime 27449
      },
      {
        lower := 27626, upper := 27793,
        witness := RowWitness.topPrime 27617
      },
      {
        lower := 27794, upper := 27969,
        witness := RowWitness.topPrime 27793
      },
      {
        lower := 27970, upper := 28143,
        witness := RowWitness.topPrime 27967
      },
      {
        lower := 28144, upper := 28299,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28300, upper := 28473,
        witness := RowWitness.topPrime 28297
      },
      {
        lower := 28474, upper := 28639,
        witness := RowWitness.topPrime 28463
      },
      {
        lower := 28640, upper := 28807,
        witness := RowWitness.topPrime 28631
      },
      {
        lower := 28808, upper := 28983,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 28984, upper := 29155,
        witness := RowWitness.topPrime 28979
      },
      {
        lower := 29156, upper := 29329,
        witness := RowWitness.topPrime 29153
      },
      {
        lower := 29330, upper := 29503,
        witness := RowWitness.topPrime 29327
      },
      {
        lower := 29504, upper := 29677,
        witness := RowWitness.topPrime 29501
      },
      {
        lower := 29678, upper := 29847,
        witness := RowWitness.topPrime 29671
      },
      {
        lower := 29848, upper := 30013,
        witness := RowWitness.topPrime 29837
      },
      {
        lower := 30014, upper := 30189,
        witness := RowWitness.topPrime 30013
      },
      {
        lower := 30190, upper := 30363,
        witness := RowWitness.topPrime 30187
      },
      {
        lower := 30364, upper := 30523,
        witness := RowWitness.topPrime 30347
      },
      {
        lower := 30524, upper := 30693,
        witness := RowWitness.topPrime 30517
      },
      {
        lower := 30694, upper := 30865,
        witness := RowWitness.topPrime 30689
      },
      {
        lower := 30866, upper := 31035,
        witness := RowWitness.topPrime 30859
      },
      {
        lower := 31036, upper := 31151,
        witness := RowWitness.topPrime 31033
      },
      {
        lower := 31213, upper := 31369,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31370, upper := 31389,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31423, upper := 31426,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31860,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 31974, upper := 32003,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 33614, upper := 33665,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33790,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34495,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34496, upper := 34567,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 36517, upper := 36673,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36674, upper := 36677,
        witness := RowWitness.topPrime 36671
      },
      {
        lower := 37303, upper := 37386,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37479,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37669,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37670, upper := 37714,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 39366, upper := 39480,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40504,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41103,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41104, upper := 41107,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45066,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 47045, upper := 47051,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47697,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47698, upper := 47700,
        witness := RowWitness.topPrime 47681
      },
      {
        lower := 48013, upper := 48137,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48547,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48548, upper := 48549,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48844,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49315,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49316, upper := 49328,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49474,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50586,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51181,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53221,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53415,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53416, upper := 53424,
        witness := RowWitness.topPrime 53411
      },
      {
        lower := 54043, upper := 54044,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55617,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55618, upper := 55623,
        witness := RowWitness.topPrime 55609
      },
      {
        lower := 56307, upper := 56345,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56483,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57298,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57421,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58740,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59132,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 68694, upper := 68820,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71463,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71464, upper := 71465,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73178,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73343,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83697,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85859,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89549,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93926,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96781,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 103041, upper := 103142,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109551,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149053,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 31152, upper := 62304, M := 13
      },
      {
        lower := 62304, upper := 124608, M := 9
      },
      {
        lower := 124608, upper := 249216, M := 7
      },
      {
        lower := 249216, upper := 498432, M := 5
      },
      {
        lower := 498432, upper := 996864, M := 4
      },
      {
        lower := 996864, upper := 1993728, M := 3
      },
      {
        lower := 1993728, upper := 3987456, M := 2
      },
      {
        lower := 3987456, upper := 7974912, M := 2
      },
      {
        lower := 7974912, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 178, r := 59, s := 127,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 358, upper := 530,
        witness := RowWitness.topPrime 353
      },
      {
        lower := 531, upper := 700,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 701, upper := 878,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 879, upper := 1054,
        witness := RowWitness.topPrime 877
      },
      {
        lower := 1055, upper := 1228,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1229, upper := 1406,
        witness := RowWitness.topPrime 1229
      },
      {
        lower := 1407, upper := 1576,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1577, upper := 1748,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1749, upper := 1924,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1925, upper := 2090,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2091, upper := 2266,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2267, upper := 2444,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2445, upper := 2618,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2619, upper := 2794,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2795, upper := 2968,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2969, upper := 3146,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3147, upper := 3314,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3315, upper := 3490,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3491, upper := 3668,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3669, upper := 3836,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3837, upper := 4010,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 4011, upper := 4184,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4185, upper := 4354,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4355, upper := 4526,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4527, upper := 4700,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4701, upper := 4868,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4869, upper := 5038,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5039, upper := 5216,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5217, upper := 5386,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5387, upper := 5564,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5565, upper := 5740,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5741, upper := 5918,
        witness := RowWitness.topPrime 5741
      },
      {
        lower := 5919, upper := 6080,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6081, upper := 6256,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6257, upper := 6434,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6435, upper := 6604,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6605, upper := 6776,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6777, upper := 6940,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6941, upper := 7094,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7095, upper := 7256,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7257, upper := 7430,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7431, upper := 7594,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7595, upper := 7768,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7769, upper := 7936,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7937, upper := 8114,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8115, upper := 8288,
        witness := RowWitness.topPrime 8111
      },
      {
        lower := 8289, upper := 8464,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8465, upper := 8638,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8639, upper := 8806,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8807, upper := 8984,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8985, upper := 9148,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9149, upper := 9314,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9315, upper := 9488,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9489, upper := 9656,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9657, upper := 9826,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9827, upper := 9994,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9995, upper := 10150,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10151, upper := 10328,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10329, upper := 10498,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10499, upper := 10676,
        witness := RowWitness.topPrime 10499
      },
      {
        lower := 10677, upper := 10844,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10845, upper := 11014,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11015, upper := 11180,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11181, upper := 11354,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11355, upper := 11530,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11531, upper := 11704,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11705, upper := 11878,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11879, upper := 12044,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12045, upper := 12220,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12221, upper := 12388,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12389, upper := 12556,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12557, upper := 12730,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12731, upper := 12898,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12899, upper := 13076,
        witness := RowWitness.topPrime 12899
      },
      {
        lower := 13077, upper := 13240,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13241, upper := 13418,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13419, upper := 13594,
        witness := RowWitness.topPrime 13417
      },
      {
        lower := 13595, upper := 13768,
        witness := RowWitness.topPrime 13591
      },
      {
        lower := 13769, upper := 13940,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13941, upper := 14110,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14111, upper := 14284,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14285, upper := 14458,
        witness := RowWitness.topPrime 14281
      },
      {
        lower := 14459, upper := 14626,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14627, upper := 14804,
        witness := RowWitness.topPrime 14627
      },
      {
        lower := 14805, upper := 14974,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14975, upper := 15146,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15147, upper := 15316,
        witness := RowWitness.topPrime 15139
      },
      {
        lower := 15317, upper := 15490,
        witness := RowWitness.topPrime 15313
      },
      {
        lower := 15491, upper := 15650,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15651, upper := 15826,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15827, upper := 16000,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 16001, upper := 16178,
        witness := RowWitness.topPrime 16001
      },
      {
        lower := 16179, upper := 16318,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16319, upper := 16496,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16497, upper := 16670,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16671, upper := 16838,
        witness := RowWitness.topPrime 16661
      },
      {
        lower := 16839, upper := 17008,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17009, upper := 17170,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17171, upper := 17344,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17345, upper := 17518,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17519, upper := 17696,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17697, upper := 17860,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17861, upper := 18028,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18029, upper := 18190,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18191, upper := 18368,
        witness := RowWitness.topPrime 18191
      },
      {
        lower := 18369, upper := 18544,
        witness := RowWitness.topPrime 18367
      },
      {
        lower := 18545, upper := 18718,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18719, upper := 18896,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18897, upper := 19046,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19047, upper := 19214,
        witness := RowWitness.topPrime 19037
      },
      {
        lower := 19215, upper := 19390,
        witness := RowWitness.topPrime 19213
      },
      {
        lower := 19391, upper := 19568,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19569, upper := 19736,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19737, upper := 19904,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19905, upper := 20068,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20069, upper := 20240,
        witness := RowWitness.topPrime 20063
      },
      {
        lower := 20241, upper := 20410,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20411, upper := 20588,
        witness := RowWitness.topPrime 20411
      },
      {
        lower := 20589, upper := 20740,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20741, upper := 20908,
        witness := RowWitness.topPrime 20731
      },
      {
        lower := 20909, upper := 21080,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21081, upper := 21244,
        witness := RowWitness.topPrime 21067
      },
      {
        lower := 21245, upper := 21404,
        witness := RowWitness.topPrime 21227
      },
      {
        lower := 21405, upper := 21578,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21579, upper := 21754,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21755, upper := 21928,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21929, upper := 22106,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 22107, upper := 22270,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22271, upper := 22448,
        witness := RowWitness.topPrime 22271
      },
      {
        lower := 22449, upper := 22624,
        witness := RowWitness.topPrime 22447
      },
      {
        lower := 22625, upper := 22798,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22799, upper := 22964,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22965, upper := 23140,
        witness := RowWitness.topPrime 22963
      },
      {
        lower := 23141, upper := 23308,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23309, upper := 23474,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23475, upper := 23650,
        witness := RowWitness.topPrime 23473
      },
      {
        lower := 23651, upper := 23810,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23811, upper := 23978,
        witness := RowWitness.topPrime 23801
      },
      {
        lower := 23979, upper := 24154,
        witness := RowWitness.topPrime 23977
      },
      {
        lower := 24155, upper := 24328,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24329, upper := 24506,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24507, upper := 24676,
        witness := RowWitness.topPrime 24499
      },
      {
        lower := 24677, upper := 24854,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 24855, upper := 25028,
        witness := RowWitness.topPrime 24851
      },
      {
        lower := 25029, upper := 25190,
        witness := RowWitness.topPrime 25013
      },
      {
        lower := 25191, upper := 25366,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25367, upper := 25544,
        witness := RowWitness.topPrime 25367
      },
      {
        lower := 25545, upper := 25718,
        witness := RowWitness.topPrime 25541
      },
      {
        lower := 25719, upper := 25894,
        witness := RowWitness.topPrime 25717
      },
      {
        lower := 25895, upper := 26066,
        witness := RowWitness.topPrime 25889
      },
      {
        lower := 26067, upper := 26230,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26231, upper := 26404,
        witness := RowWitness.topPrime 26227
      },
      {
        lower := 26405, upper := 26576,
        witness := RowWitness.topPrime 26399
      },
      {
        lower := 26577, upper := 26750,
        witness := RowWitness.topPrime 26573
      },
      {
        lower := 26751, upper := 26914,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 26915, upper := 27080,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 27081, upper := 27254,
        witness := RowWitness.topPrime 27077
      },
      {
        lower := 27255, upper := 27430,
        witness := RowWitness.topPrime 27253
      },
      {
        lower := 27431, upper := 27608,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27609, upper := 27760,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27761, upper := 27928,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27929, upper := 28096,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28097, upper := 28274,
        witness := RowWitness.topPrime 28097
      },
      {
        lower := 28275, upper := 28406,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28407, upper := 28580,
        witness := RowWitness.topPrime 28403
      },
      {
        lower := 28581, upper := 28756,
        witness := RowWitness.topPrime 28579
      },
      {
        lower := 28757, upper := 28930,
        witness := RowWitness.topPrime 28753
      },
      {
        lower := 28931, upper := 29104,
        witness := RowWitness.topPrime 28927
      },
      {
        lower := 29105, upper := 29278,
        witness := RowWitness.topPrime 29101
      },
      {
        lower := 29279, upper := 29446,
        witness := RowWitness.topPrime 29269
      },
      {
        lower := 29447, upper := 29620,
        witness := RowWitness.topPrime 29443
      },
      {
        lower := 29621, upper := 29788,
        witness := RowWitness.topPrime 29611
      },
      {
        lower := 29789, upper := 29966,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 29967, upper := 30136,
        witness := RowWitness.topPrime 29959
      },
      {
        lower := 30137, upper := 30314,
        witness := RowWitness.topPrime 30137
      },
      {
        lower := 30315, upper := 30490,
        witness := RowWitness.topPrime 30313
      },
      {
        lower := 30491, upper := 30668,
        witness := RowWitness.topPrime 30491
      },
      {
        lower := 30669, upper := 30838,
        witness := RowWitness.topPrime 30661
      },
      {
        lower := 30839, upper := 31016,
        witness := RowWitness.topPrime 30839
      },
      {
        lower := 31017, upper := 31190,
        witness := RowWitness.topPrime 31013
      },
      {
        lower := 31191, upper := 31366,
        witness := RowWitness.topPrime 31189
      },
      {
        lower := 31367, upper := 31506,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31974, upper := 32004,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32945,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33666,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33791,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34496,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34497, upper := 34568,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 37303, upper := 37387,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37480,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37670,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37671, upper := 37715,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38468,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39481,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40505,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41104,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41105, upper := 41108,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45927, upper := 45973,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47052,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 48013, upper := 48138,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48400,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48845,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49316,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49317, upper := 49329,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49475,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50587,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51182,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53222,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53315,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54045,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 56307, upper := 56346,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56484,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57299,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58741,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59133,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59582,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62587,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68694, upper := 68821,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71407, upper := 71463,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73167, upper := 73179,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73344,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83698,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85860,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89550,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93927,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96782,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98481,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103143,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109552,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149054,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 31506, upper := 63012, M := 12
      },
      {
        lower := 63012, upper := 126024, M := 9
      },
      {
        lower := 126024, upper := 252048, M := 6
      },
      {
        lower := 252048, upper := 504096, M := 5
      },
      {
        lower := 504096, upper := 1008192, M := 4
      },
      {
        lower := 1008192, upper := 2016384, M := 3
      },
      {
        lower := 2016384, upper := 4032768, M := 2
      },
      {
        lower := 4032768, upper := 8065536, M := 2
      },
      {
        lower := 8065536, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 179, r := 59, s := 128,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 360, upper := 537,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 538, upper := 701,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 702, upper := 879,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 880, upper := 1055,
        witness := RowWitness.topPrime 877
      },
      {
        lower := 1056, upper := 1229,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1230, upper := 1407,
        witness := RowWitness.topPrime 1229
      },
      {
        lower := 1408, upper := 1577,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1578, upper := 1749,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1750, upper := 1925,
        witness := RowWitness.topPrime 1747
      },
      {
        lower := 1926, upper := 2091,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2092, upper := 2267,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2268, upper := 2445,
        witness := RowWitness.topPrime 2267
      },
      {
        lower := 2446, upper := 2619,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2620, upper := 2795,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2796, upper := 2969,
        witness := RowWitness.topPrime 2791
      },
      {
        lower := 2970, upper := 3147,
        witness := RowWitness.topPrime 2969
      },
      {
        lower := 3148, upper := 3315,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3316, upper := 3491,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3492, upper := 3669,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3670, upper := 3837,
        witness := RowWitness.topPrime 3659
      },
      {
        lower := 3838, upper := 4011,
        witness := RowWitness.topPrime 3833
      },
      {
        lower := 4012, upper := 4185,
        witness := RowWitness.topPrime 4007
      },
      {
        lower := 4186, upper := 4355,
        witness := RowWitness.topPrime 4177
      },
      {
        lower := 4356, upper := 4527,
        witness := RowWitness.topPrime 4349
      },
      {
        lower := 4528, upper := 4701,
        witness := RowWitness.topPrime 4523
      },
      {
        lower := 4702, upper := 4869,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4870, upper := 5039,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5040, upper := 5217,
        witness := RowWitness.topPrime 5039
      },
      {
        lower := 5218, upper := 5387,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5388, upper := 5565,
        witness := RowWitness.topPrime 5387
      },
      {
        lower := 5566, upper := 5741,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5742, upper := 5919,
        witness := RowWitness.topPrime 5741
      },
      {
        lower := 5920, upper := 6081,
        witness := RowWitness.topPrime 5903
      },
      {
        lower := 6082, upper := 6257,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6258, upper := 6435,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6436, upper := 6605,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6606, upper := 6777,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6778, upper := 6941,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6942, upper := 7095,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7096, upper := 7257,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7258, upper := 7431,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7432, upper := 7595,
        witness := RowWitness.topPrime 7417
      },
      {
        lower := 7596, upper := 7769,
        witness := RowWitness.topPrime 7591
      },
      {
        lower := 7770, upper := 7937,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7938, upper := 8115,
        witness := RowWitness.topPrime 7937
      },
      {
        lower := 8116, upper := 8289,
        witness := RowWitness.topPrime 8111
      },
      {
        lower := 8290, upper := 8465,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8466, upper := 8639,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8640, upper := 8807,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8808, upper := 8985,
        witness := RowWitness.topPrime 8807
      },
      {
        lower := 8986, upper := 9149,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9150, upper := 9315,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9316, upper := 9489,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9490, upper := 9657,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9658, upper := 9827,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9828, upper := 9995,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9996, upper := 10151,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10152, upper := 10329,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10330, upper := 10499,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10500, upper := 10677,
        witness := RowWitness.topPrime 10499
      },
      {
        lower := 10678, upper := 10845,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10846, upper := 11015,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 11016, upper := 11181,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11182, upper := 11355,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11356, upper := 11531,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11532, upper := 11705,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11706, upper := 11879,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11880, upper := 12045,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12046, upper := 12221,
        witness := RowWitness.topPrime 12043
      },
      {
        lower := 12222, upper := 12389,
        witness := RowWitness.topPrime 12211
      },
      {
        lower := 12390, upper := 12557,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12558, upper := 12731,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12732, upper := 12899,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12900, upper := 13077,
        witness := RowWitness.topPrime 12899
      },
      {
        lower := 13078, upper := 13241,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13242, upper := 13419,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13420, upper := 13595,
        witness := RowWitness.topPrime 13417
      },
      {
        lower := 13596, upper := 13769,
        witness := RowWitness.topPrime 13591
      },
      {
        lower := 13770, upper := 13941,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13942, upper := 14111,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14112, upper := 14285,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14286, upper := 14459,
        witness := RowWitness.topPrime 14281
      },
      {
        lower := 14460, upper := 14627,
        witness := RowWitness.topPrime 14449
      },
      {
        lower := 14628, upper := 14805,
        witness := RowWitness.topPrime 14627
      },
      {
        lower := 14806, upper := 14975,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14976, upper := 15147,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15148, upper := 15317,
        witness := RowWitness.topPrime 15139
      },
      {
        lower := 15318, upper := 15491,
        witness := RowWitness.topPrime 15313
      },
      {
        lower := 15492, upper := 15651,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15652, upper := 15827,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15828, upper := 16001,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 16002, upper := 16179,
        witness := RowWitness.topPrime 16001
      },
      {
        lower := 16180, upper := 16319,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16320, upper := 16497,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16498, upper := 16671,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16672, upper := 16839,
        witness := RowWitness.topPrime 16661
      },
      {
        lower := 16840, upper := 17009,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 17010, upper := 17171,
        witness := RowWitness.topPrime 16993
      },
      {
        lower := 17172, upper := 17345,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17346, upper := 17519,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17520, upper := 17697,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17698, upper := 17861,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17862, upper := 18029,
        witness := RowWitness.topPrime 17851
      },
      {
        lower := 18030, upper := 18191,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18192, upper := 18369,
        witness := RowWitness.topPrime 18191
      },
      {
        lower := 18370, upper := 18545,
        witness := RowWitness.topPrime 18367
      },
      {
        lower := 18546, upper := 18719,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18720, upper := 18897,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18898, upper := 19047,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19048, upper := 19215,
        witness := RowWitness.topPrime 19037
      },
      {
        lower := 19216, upper := 19391,
        witness := RowWitness.topPrime 19213
      },
      {
        lower := 19392, upper := 19569,
        witness := RowWitness.topPrime 19391
      },
      {
        lower := 19570, upper := 19737,
        witness := RowWitness.topPrime 19559
      },
      {
        lower := 19738, upper := 19905,
        witness := RowWitness.topPrime 19727
      },
      {
        lower := 19906, upper := 20069,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20070, upper := 20241,
        witness := RowWitness.topPrime 20063
      },
      {
        lower := 20242, upper := 20411,
        witness := RowWitness.topPrime 20233
      },
      {
        lower := 20412, upper := 20589,
        witness := RowWitness.topPrime 20411
      },
      {
        lower := 20590, upper := 20741,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20742, upper := 20909,
        witness := RowWitness.topPrime 20731
      },
      {
        lower := 20910, upper := 21081,
        witness := RowWitness.topPrime 20903
      },
      {
        lower := 21082, upper := 21245,
        witness := RowWitness.topPrime 21067
      },
      {
        lower := 21246, upper := 21405,
        witness := RowWitness.topPrime 21227
      },
      {
        lower := 21406, upper := 21579,
        witness := RowWitness.topPrime 21401
      },
      {
        lower := 21580, upper := 21755,
        witness := RowWitness.topPrime 21577
      },
      {
        lower := 21756, upper := 21929,
        witness := RowWitness.topPrime 21751
      },
      {
        lower := 21930, upper := 22107,
        witness := RowWitness.topPrime 21929
      },
      {
        lower := 22108, upper := 22271,
        witness := RowWitness.topPrime 22093
      },
      {
        lower := 22272, upper := 22449,
        witness := RowWitness.topPrime 22271
      },
      {
        lower := 22450, upper := 22625,
        witness := RowWitness.topPrime 22447
      },
      {
        lower := 22626, upper := 22799,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 22800, upper := 22965,
        witness := RowWitness.topPrime 22787
      },
      {
        lower := 22966, upper := 23141,
        witness := RowWitness.topPrime 22963
      },
      {
        lower := 23142, upper := 23309,
        witness := RowWitness.topPrime 23131
      },
      {
        lower := 23310, upper := 23475,
        witness := RowWitness.topPrime 23297
      },
      {
        lower := 23476, upper := 23651,
        witness := RowWitness.topPrime 23473
      },
      {
        lower := 23652, upper := 23811,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23812, upper := 23979,
        witness := RowWitness.topPrime 23801
      },
      {
        lower := 23980, upper := 24155,
        witness := RowWitness.topPrime 23977
      },
      {
        lower := 24156, upper := 24329,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24330, upper := 24507,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24508, upper := 24677,
        witness := RowWitness.topPrime 24499
      },
      {
        lower := 24678, upper := 24855,
        witness := RowWitness.topPrime 24677
      },
      {
        lower := 24856, upper := 25029,
        witness := RowWitness.topPrime 24851
      },
      {
        lower := 25030, upper := 25191,
        witness := RowWitness.topPrime 25013
      },
      {
        lower := 25192, upper := 25367,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25368, upper := 25545,
        witness := RowWitness.topPrime 25367
      },
      {
        lower := 25546, upper := 25719,
        witness := RowWitness.topPrime 25541
      },
      {
        lower := 25720, upper := 25895,
        witness := RowWitness.topPrime 25717
      },
      {
        lower := 25896, upper := 26067,
        witness := RowWitness.topPrime 25889
      },
      {
        lower := 26068, upper := 26231,
        witness := RowWitness.topPrime 26053
      },
      {
        lower := 26232, upper := 26405,
        witness := RowWitness.topPrime 26227
      },
      {
        lower := 26406, upper := 26577,
        witness := RowWitness.topPrime 26399
      },
      {
        lower := 26578, upper := 26751,
        witness := RowWitness.topPrime 26573
      },
      {
        lower := 26752, upper := 26915,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 26916, upper := 27081,
        witness := RowWitness.topPrime 26903
      },
      {
        lower := 27082, upper := 27255,
        witness := RowWitness.topPrime 27077
      },
      {
        lower := 27256, upper := 27431,
        witness := RowWitness.topPrime 27253
      },
      {
        lower := 27432, upper := 27609,
        witness := RowWitness.topPrime 27431
      },
      {
        lower := 27610, upper := 27761,
        witness := RowWitness.topPrime 27583
      },
      {
        lower := 27762, upper := 27929,
        witness := RowWitness.topPrime 27751
      },
      {
        lower := 27930, upper := 28097,
        witness := RowWitness.topPrime 27919
      },
      {
        lower := 28098, upper := 28275,
        witness := RowWitness.topPrime 28097
      },
      {
        lower := 28276, upper := 28407,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28408, upper := 28581,
        witness := RowWitness.topPrime 28403
      },
      {
        lower := 28582, upper := 28757,
        witness := RowWitness.topPrime 28579
      },
      {
        lower := 28758, upper := 28931,
        witness := RowWitness.topPrime 28753
      },
      {
        lower := 28932, upper := 29105,
        witness := RowWitness.topPrime 28927
      },
      {
        lower := 29106, upper := 29279,
        witness := RowWitness.topPrime 29101
      },
      {
        lower := 29280, upper := 29447,
        witness := RowWitness.topPrime 29269
      },
      {
        lower := 29448, upper := 29621,
        witness := RowWitness.topPrime 29443
      },
      {
        lower := 29622, upper := 29789,
        witness := RowWitness.topPrime 29611
      },
      {
        lower := 29790, upper := 29967,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 29968, upper := 30137,
        witness := RowWitness.topPrime 29959
      },
      {
        lower := 30138, upper := 30315,
        witness := RowWitness.topPrime 30137
      },
      {
        lower := 30316, upper := 30491,
        witness := RowWitness.topPrime 30313
      },
      {
        lower := 30492, upper := 30669,
        witness := RowWitness.topPrime 30491
      },
      {
        lower := 30670, upper := 30839,
        witness := RowWitness.topPrime 30661
      },
      {
        lower := 30840, upper := 31017,
        witness := RowWitness.topPrime 30839
      },
      {
        lower := 31018, upper := 31191,
        witness := RowWitness.topPrime 31013
      },
      {
        lower := 31192, upper := 31367,
        witness := RowWitness.topPrime 31189
      },
      {
        lower := 31368, upper := 31535,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31536, upper := 31709,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 31710, upper := 31862,
        witness := RowWitness.topPrime 31699
      },
      {
        lower := 31974, upper := 32005,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32946,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33667,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33792,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34497,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34498, upper := 34569,
        witness := RowWitness.topPrime 34487
      },
      {
        lower := 37303, upper := 37388,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37481,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37671,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37672, upper := 37716,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38469,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39482,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40506,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 41105,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41106, upper := 41109,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 45056, upper := 45068,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45927, upper := 45974,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47053,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47699,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47700, upper := 47702,
        witness := RowWitness.topPrime 47699
      },
      {
        lower := 48013, upper := 48139,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48401,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48846,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49317,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49318, upper := 49330,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49476,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50588,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51183,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53223,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53316,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54046,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55619,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55620, upper := 55625,
        witness := RowWitness.topPrime 55619
      },
      {
        lower := 56307, upper := 56347,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56485,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57300,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57423,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58742,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59134,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59583,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62588,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68694, upper := 68822,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71407, upper := 71464,
        witness := RowWitness.topPrime 71399
      },
      {
        lower := 73167, upper := 73180,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73345,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83699,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85861,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89551,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93928,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96783,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98482,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 148955, upper := 149055,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 31862, upper := 63724, M := 12
      },
      {
        lower := 63724, upper := 127448, M := 8
      },
      {
        lower := 127448, upper := 254896, M := 6
      },
      {
        lower := 254896, upper := 509792, M := 5
      },
      {
        lower := 509792, upper := 1019584, M := 3
      },
      {
        lower := 1019584, upper := 2039168, M := 3
      },
      {
        lower := 2039168, upper := 4078336, M := 2
      },
      {
        lower := 4078336, upper := 8156672, M := 2
      },
      {
        lower := 8156672, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 180, r := 59, s := 128,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 362, upper := 538,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 539, upper := 702,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 703, upper := 880,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 881, upper := 1060,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 1061, upper := 1240,
        witness := RowWitness.topPrime 1061
      },
      {
        lower := 1241, upper := 1416,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1417, upper := 1588,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1589, upper := 1762,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1763, upper := 1938,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1939, upper := 2112,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2113, upper := 2292,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2293, upper := 2472,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2473, upper := 2652,
        witness := RowWitness.topPrime 2473
      },
      {
        lower := 2653, upper := 2826,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2827, upper := 2998,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2999, upper := 3178,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3179, upper := 3348,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3349, upper := 3526,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3527, upper := 3706,
        witness := RowWitness.topPrime 3527
      },
      {
        lower := 3707, upper := 3880,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3881, upper := 4060,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4061, upper := 4236,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4237, upper := 4410,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4411, upper := 4588,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4589, upper := 4762,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4763, upper := 4938,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4939, upper := 5116,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5117, upper := 5292,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5293, upper := 5460,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5461, upper := 5628,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5629, upper := 5802,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5803, upper := 5980,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5981, upper := 6160,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6161, upper := 6330,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6331, upper := 6508,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6509, upper := 6670,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6671, upper := 6840,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6841, upper := 7020,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 7021, upper := 7198,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7199, upper := 7372,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7373, upper := 7548,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7549, upper := 7728,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7729, upper := 7906,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7907, upper := 8086,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8087, upper := 8266,
        witness := RowWitness.topPrime 8087
      },
      {
        lower := 8267, upper := 8442,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8443, upper := 8622,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8623, upper := 8802,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8803, upper := 8982,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8983, upper := 9150,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9151, upper := 9330,
        witness := RowWitness.topPrime 9151
      },
      {
        lower := 9331, upper := 9502,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9503, upper := 9676,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9677, upper := 9856,
        witness := RowWitness.topPrime 9677
      },
      {
        lower := 9857, upper := 10036,
        witness := RowWitness.topPrime 9857
      },
      {
        lower := 10037, upper := 10216,
        witness := RowWitness.topPrime 10037
      },
      {
        lower := 10217, upper := 10390,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10391, upper := 10570,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10571, upper := 10746,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10747, upper := 10918,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10919, upper := 11088,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11089, upper := 11266,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11267, upper := 11440,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11441, upper := 11616,
        witness := RowWitness.topPrime 11437
      },
      {
        lower := 11617, upper := 11796,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11797, upper := 11968,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11969, upper := 12148,
        witness := RowWitness.topPrime 11969
      },
      {
        lower := 12149, upper := 12328,
        witness := RowWitness.topPrime 12149
      },
      {
        lower := 12329, upper := 12508,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12509, upper := 12682,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12683, upper := 12850,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12851, upper := 13020,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 13021, upper := 13188,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13189, upper := 13366,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13367, upper := 13546,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13547, upper := 13716,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13717, upper := 13890,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13891, upper := 14062,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14063, upper := 14236,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14237, upper := 14400,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14401, upper := 14580,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14581, upper := 14742,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14743, upper := 14920,
        witness := RowWitness.topPrime 14741
      },
      {
        lower := 14921, upper := 15076,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15077, upper := 15256,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15257, upper := 15420,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15421, upper := 15592,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15593, upper := 15762,
        witness := RowWitness.topPrime 15583
      },
      {
        lower := 15763, upper := 15940,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15941, upper := 16116,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16117, upper := 16290,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16291, upper := 16452,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16453, upper := 16632,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16633, upper := 16812,
        witness := RowWitness.topPrime 16633
      },
      {
        lower := 16813, upper := 16990,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16991, upper := 17166,
        witness := RowWitness.topPrime 16987
      },
      {
        lower := 17167, upper := 17346,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17347, upper := 17520,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17521, upper := 17698,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17699, upper := 17862,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17863, upper := 18042,
        witness := RowWitness.topPrime 17863
      },
      {
        lower := 18043, upper := 18222,
        witness := RowWitness.topPrime 18043
      },
      {
        lower := 18223, upper := 18402,
        witness := RowWitness.topPrime 18223
      },
      {
        lower := 18403, upper := 18580,
        witness := RowWitness.topPrime 18401
      },
      {
        lower := 18581, upper := 18732,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18733, upper := 18910,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18911, upper := 19090,
        witness := RowWitness.topPrime 18911
      },
      {
        lower := 19091, upper := 19266,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19267, upper := 19446,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19447, upper := 19626,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19627, upper := 19788,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19789, upper := 19956,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19957, upper := 20128,
        witness := RowWitness.topPrime 19949
      },
      {
        lower := 20129, upper := 20308,
        witness := RowWitness.topPrime 20129
      },
      {
        lower := 20309, upper := 20476,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20477, upper := 20656,
        witness := RowWitness.topPrime 20477
      },
      {
        lower := 20657, upper := 20820,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20821, upper := 20988,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20989, upper := 21162,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21163, upper := 21342,
        witness := RowWitness.topPrime 21163
      },
      {
        lower := 21343, upper := 21520,
        witness := RowWitness.topPrime 21341
      },
      {
        lower := 21521, upper := 21700,
        witness := RowWitness.topPrime 21521
      },
      {
        lower := 21701, upper := 21880,
        witness := RowWitness.topPrime 21701
      },
      {
        lower := 21881, upper := 22060,
        witness := RowWitness.topPrime 21881
      },
      {
        lower := 22061, upper := 22230,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22231, upper := 22408,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22409, upper := 22588,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22589, upper := 22752,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22753, upper := 22930,
        witness := RowWitness.topPrime 22751
      },
      {
        lower := 22931, upper := 23100,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23101, upper := 23278,
        witness := RowWitness.topPrime 23099
      },
      {
        lower := 23279, upper := 23458,
        witness := RowWitness.topPrime 23279
      },
      {
        lower := 23459, upper := 23638,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23639, upper := 23812,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23813, upper := 23992,
        witness := RowWitness.topPrime 23813
      },
      {
        lower := 23993, upper := 24172,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24173, upper := 24348,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24349, upper := 24516,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24517, upper := 24696,
        witness := RowWitness.topPrime 24517
      },
      {
        lower := 24697, upper := 24876,
        witness := RowWitness.topPrime 24697
      },
      {
        lower := 24877, upper := 25056,
        witness := RowWitness.topPrime 24877
      },
      {
        lower := 25057, upper := 25236,
        witness := RowWitness.topPrime 25057
      },
      {
        lower := 25237, upper := 25416,
        witness := RowWitness.topPrime 25237
      },
      {
        lower := 25417, upper := 25590,
        witness := RowWitness.topPrime 25411
      },
      {
        lower := 25591, upper := 25768,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25769, upper := 25942,
        witness := RowWitness.topPrime 25763
      },
      {
        lower := 25943, upper := 26122,
        witness := RowWitness.topPrime 25943
      },
      {
        lower := 26123, upper := 26298,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26299, upper := 26476,
        witness := RowWitness.topPrime 26297
      },
      {
        lower := 26477, upper := 26638,
        witness := RowWitness.topPrime 26459
      },
      {
        lower := 26639, upper := 26812,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 26813, upper := 26992,
        witness := RowWitness.topPrime 26813
      },
      {
        lower := 26993, upper := 27172,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27173, upper := 27322,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27323, upper := 27478,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27479, upper := 27658,
        witness := RowWitness.topPrime 27479
      },
      {
        lower := 27659, upper := 27832,
        witness := RowWitness.topPrime 27653
      },
      {
        lower := 27833, upper := 28006,
        witness := RowWitness.topPrime 27827
      },
      {
        lower := 28007, upper := 28180,
        witness := RowWitness.topPrime 28001
      },
      {
        lower := 28181, upper := 28360,
        witness := RowWitness.topPrime 28181
      },
      {
        lower := 28361, upper := 28530,
        witness := RowWitness.topPrime 28351
      },
      {
        lower := 28531, upper := 28696,
        witness := RowWitness.topPrime 28517
      },
      {
        lower := 28697, upper := 28876,
        witness := RowWitness.topPrime 28697
      },
      {
        lower := 28877, upper := 29050,
        witness := RowWitness.topPrime 28871
      },
      {
        lower := 29051, upper := 29212,
        witness := RowWitness.topPrime 29033
      },
      {
        lower := 29213, upper := 29388,
        witness := RowWitness.topPrime 29209
      },
      {
        lower := 29389, upper := 29568,
        witness := RowWitness.topPrime 29389
      },
      {
        lower := 29569, upper := 29748,
        witness := RowWitness.topPrime 29569
      },
      {
        lower := 29749, upper := 29920,
        witness := RowWitness.topPrime 29741
      },
      {
        lower := 29921, upper := 30100,
        witness := RowWitness.topPrime 29921
      },
      {
        lower := 30101, upper := 30276,
        witness := RowWitness.topPrime 30097
      },
      {
        lower := 30277, upper := 30450,
        witness := RowWitness.topPrime 30271
      },
      {
        lower := 30451, upper := 30628,
        witness := RowWitness.topPrime 30449
      },
      {
        lower := 30629, upper := 30772,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30773, upper := 30952,
        witness := RowWitness.topPrime 30773
      },
      {
        lower := 30953, upper := 31128,
        witness := RowWitness.topPrime 30949
      },
      {
        lower := 31129, upper := 31302,
        witness := RowWitness.topPrime 31123
      },
      {
        lower := 31303, upper := 31456,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31457, upper := 31576,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31577, upper := 31752,
        witness := RowWitness.topPrime 31573
      },
      {
        lower := 31753, upper := 31930,
        witness := RowWitness.topPrime 31751
      },
      {
        lower := 31931, upper := 32086,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32087, upper := 32219,
        witness := RowWitness.topPrime 32083
      },
      {
        lower := 33614, upper := 33668,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33793,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34498,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34499, upper := 34570,
        witness := RowWitness.topPrime 34499
      },
      {
        lower := 36517, upper := 36676,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36677, upper := 36680,
        witness := RowWitness.topPrime 36677
      },
      {
        lower := 37303, upper := 37389,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37482,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37625,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37717,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38470,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40507,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40983,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45369, upper := 45432,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47700,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47701, upper := 47703,
        witness := RowWitness.topPrime 47701
      },
      {
        lower := 48013, upper := 48140,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48550,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48551, upper := 48552,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48847,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49318,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49319, upper := 49331,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49477,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50589,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51184,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53224,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53317,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54047,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55620,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55621, upper := 55626,
        witness := RowWitness.topPrime 55621
      },
      {
        lower := 56307, upper := 56348,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56486,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57301,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58743,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59135,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59584,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 63869, upper := 64042,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64043, upper := 64048,
        witness := RowWitness.topPrime 64037
      },
      {
        lower := 64082, upper := 64127,
        witness := RowWitness.topPrime 64081
      },
      {
        lower := 68644, upper := 68818,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68819, upper := 68823,
        witness := RowWitness.topPrime 68819
      },
      {
        lower := 68921, upper := 69069,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71466,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71467, upper := 71468,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73181,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73346,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83700,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85862,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89552,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 96774, upper := 96784,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 102152, upper := 102189,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103145,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149056,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 32220, upper := 64440, M := 13
      },
      {
        lower := 64440, upper := 128880, M := 10
      },
      {
        lower := 128880, upper := 257760, M := 7
      },
      {
        lower := 257760, upper := 515520, M := 6
      },
      {
        lower := 515520, upper := 1031040, M := 4
      },
      {
        lower := 1031040, upper := 2062080, M := 3
      },
      {
        lower := 2062080, upper := 4124160, M := 2
      },
      {
        lower := 4124160, upper := 8248320, M := 2
      },
      {
        lower := 8248320, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 181, r := 60, s := 129,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 364, upper := 539,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 540, upper := 703,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 704, upper := 881,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 882, upper := 1061,
        witness := RowWitness.topPrime 881
      },
      {
        lower := 1062, upper := 1241,
        witness := RowWitness.topPrime 1061
      },
      {
        lower := 1242, upper := 1417,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1418, upper := 1589,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1590, upper := 1763,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1764, upper := 1939,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1940, upper := 2113,
        witness := RowWitness.topPrime 1933
      },
      {
        lower := 2114, upper := 2293,
        witness := RowWitness.topPrime 2113
      },
      {
        lower := 2294, upper := 2473,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2474, upper := 2653,
        witness := RowWitness.topPrime 2473
      },
      {
        lower := 2654, upper := 2827,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2828, upper := 2999,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 3000, upper := 3179,
        witness := RowWitness.topPrime 2999
      },
      {
        lower := 3180, upper := 3349,
        witness := RowWitness.topPrime 3169
      },
      {
        lower := 3350, upper := 3527,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3528, upper := 3707,
        witness := RowWitness.topPrime 3527
      },
      {
        lower := 3708, upper := 3881,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3882, upper := 4061,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4062, upper := 4237,
        witness := RowWitness.topPrime 4057
      },
      {
        lower := 4238, upper := 4411,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4412, upper := 4589,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4590, upper := 4763,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4764, upper := 4939,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4940, upper := 5117,
        witness := RowWitness.topPrime 4937
      },
      {
        lower := 5118, upper := 5293,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5294, upper := 5461,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5462, upper := 5629,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5630, upper := 5803,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5804, upper := 5981,
        witness := RowWitness.topPrime 5801
      },
      {
        lower := 5982, upper := 6161,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6162, upper := 6331,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6332, upper := 6509,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6510, upper := 6671,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6672, upper := 6841,
        witness := RowWitness.topPrime 6661
      },
      {
        lower := 6842, upper := 7021,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 7022, upper := 7199,
        witness := RowWitness.topPrime 7019
      },
      {
        lower := 7200, upper := 7373,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7374, upper := 7549,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7550, upper := 7729,
        witness := RowWitness.topPrime 7549
      },
      {
        lower := 7730, upper := 7907,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7908, upper := 8087,
        witness := RowWitness.topPrime 7907
      },
      {
        lower := 8088, upper := 8267,
        witness := RowWitness.topPrime 8087
      },
      {
        lower := 8268, upper := 8443,
        witness := RowWitness.topPrime 8263
      },
      {
        lower := 8444, upper := 8623,
        witness := RowWitness.topPrime 8443
      },
      {
        lower := 8624, upper := 8803,
        witness := RowWitness.topPrime 8623
      },
      {
        lower := 8804, upper := 8983,
        witness := RowWitness.topPrime 8803
      },
      {
        lower := 8984, upper := 9151,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9152, upper := 9331,
        witness := RowWitness.topPrime 9151
      },
      {
        lower := 9332, upper := 9503,
        witness := RowWitness.topPrime 9323
      },
      {
        lower := 9504, upper := 9677,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9678, upper := 9857,
        witness := RowWitness.topPrime 9677
      },
      {
        lower := 9858, upper := 10037,
        witness := RowWitness.topPrime 9857
      },
      {
        lower := 10038, upper := 10217,
        witness := RowWitness.topPrime 10037
      },
      {
        lower := 10218, upper := 10391,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10392, upper := 10571,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10572, upper := 10747,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10748, upper := 10919,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10920, upper := 11089,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11090, upper := 11267,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11268, upper := 11441,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11442, upper := 11617,
        witness := RowWitness.topPrime 11437
      },
      {
        lower := 11618, upper := 11797,
        witness := RowWitness.topPrime 11617
      },
      {
        lower := 11798, upper := 11969,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11970, upper := 12149,
        witness := RowWitness.topPrime 11969
      },
      {
        lower := 12150, upper := 12329,
        witness := RowWitness.topPrime 12149
      },
      {
        lower := 12330, upper := 12509,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12510, upper := 12683,
        witness := RowWitness.topPrime 12503
      },
      {
        lower := 12684, upper := 12851,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12852, upper := 13021,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 13022, upper := 13189,
        witness := RowWitness.topPrime 13009
      },
      {
        lower := 13190, upper := 13367,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13368, upper := 13547,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13548, upper := 13717,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13718, upper := 13891,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13892, upper := 14063,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14064, upper := 14237,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14238, upper := 14401,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14402, upper := 14581,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14582, upper := 14743,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14744, upper := 14921,
        witness := RowWitness.topPrime 14741
      },
      {
        lower := 14922, upper := 15077,
        witness := RowWitness.topPrime 14897
      },
      {
        lower := 15078, upper := 15257,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15258, upper := 15421,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15422, upper := 15593,
        witness := RowWitness.topPrime 15413
      },
      {
        lower := 15594, upper := 15763,
        witness := RowWitness.topPrime 15583
      },
      {
        lower := 15764, upper := 15941,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15942, upper := 16117,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16118, upper := 16291,
        witness := RowWitness.topPrime 16111
      },
      {
        lower := 16292, upper := 16453,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16454, upper := 16633,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16634, upper := 16813,
        witness := RowWitness.topPrime 16633
      },
      {
        lower := 16814, upper := 16991,
        witness := RowWitness.topPrime 16811
      },
      {
        lower := 16992, upper := 17167,
        witness := RowWitness.topPrime 16987
      },
      {
        lower := 17168, upper := 17347,
        witness := RowWitness.topPrime 17167
      },
      {
        lower := 17348, upper := 17521,
        witness := RowWitness.topPrime 17341
      },
      {
        lower := 17522, upper := 17699,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17700, upper := 17863,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17864, upper := 18043,
        witness := RowWitness.topPrime 17863
      },
      {
        lower := 18044, upper := 18223,
        witness := RowWitness.topPrime 18043
      },
      {
        lower := 18224, upper := 18403,
        witness := RowWitness.topPrime 18223
      },
      {
        lower := 18404, upper := 18581,
        witness := RowWitness.topPrime 18401
      },
      {
        lower := 18582, upper := 18733,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18734, upper := 18911,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18912, upper := 19091,
        witness := RowWitness.topPrime 18911
      },
      {
        lower := 19092, upper := 19267,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19268, upper := 19447,
        witness := RowWitness.topPrime 19267
      },
      {
        lower := 19448, upper := 19627,
        witness := RowWitness.topPrime 19447
      },
      {
        lower := 19628, upper := 19789,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19790, upper := 19957,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19958, upper := 20129,
        witness := RowWitness.topPrime 19949
      },
      {
        lower := 20130, upper := 20309,
        witness := RowWitness.topPrime 20129
      },
      {
        lower := 20310, upper := 20477,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20478, upper := 20657,
        witness := RowWitness.topPrime 20477
      },
      {
        lower := 20658, upper := 20821,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20822, upper := 20989,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20990, upper := 21163,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21164, upper := 21343,
        witness := RowWitness.topPrime 21163
      },
      {
        lower := 21344, upper := 21521,
        witness := RowWitness.topPrime 21341
      },
      {
        lower := 21522, upper := 21701,
        witness := RowWitness.topPrime 21521
      },
      {
        lower := 21702, upper := 21881,
        witness := RowWitness.topPrime 21701
      },
      {
        lower := 21882, upper := 22061,
        witness := RowWitness.topPrime 21881
      },
      {
        lower := 22062, upper := 22231,
        witness := RowWitness.topPrime 22051
      },
      {
        lower := 22232, upper := 22409,
        witness := RowWitness.topPrime 22229
      },
      {
        lower := 22410, upper := 22589,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22590, upper := 22753,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22754, upper := 22931,
        witness := RowWitness.topPrime 22751
      },
      {
        lower := 22932, upper := 23101,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23102, upper := 23279,
        witness := RowWitness.topPrime 23099
      },
      {
        lower := 23280, upper := 23459,
        witness := RowWitness.topPrime 23279
      },
      {
        lower := 23460, upper := 23639,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23640, upper := 23813,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23814, upper := 23993,
        witness := RowWitness.topPrime 23813
      },
      {
        lower := 23994, upper := 24173,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24174, upper := 24349,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24350, upper := 24517,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24518, upper := 24697,
        witness := RowWitness.topPrime 24517
      },
      {
        lower := 24698, upper := 24877,
        witness := RowWitness.topPrime 24697
      },
      {
        lower := 24878, upper := 25057,
        witness := RowWitness.topPrime 24877
      },
      {
        lower := 25058, upper := 25237,
        witness := RowWitness.topPrime 25057
      },
      {
        lower := 25238, upper := 25417,
        witness := RowWitness.topPrime 25237
      },
      {
        lower := 25418, upper := 25591,
        witness := RowWitness.topPrime 25411
      },
      {
        lower := 25592, upper := 25769,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25770, upper := 25943,
        witness := RowWitness.topPrime 25763
      },
      {
        lower := 25944, upper := 26123,
        witness := RowWitness.topPrime 25943
      },
      {
        lower := 26124, upper := 26299,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26300, upper := 26477,
        witness := RowWitness.topPrime 26297
      },
      {
        lower := 26478, upper := 26639,
        witness := RowWitness.topPrime 26459
      },
      {
        lower := 26640, upper := 26813,
        witness := RowWitness.topPrime 26633
      },
      {
        lower := 26814, upper := 26993,
        witness := RowWitness.topPrime 26813
      },
      {
        lower := 26994, upper := 27173,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27174, upper := 27323,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27324, upper := 27479,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27480, upper := 27659,
        witness := RowWitness.topPrime 27479
      },
      {
        lower := 27660, upper := 27833,
        witness := RowWitness.topPrime 27653
      },
      {
        lower := 27834, upper := 28007,
        witness := RowWitness.topPrime 27827
      },
      {
        lower := 28008, upper := 28181,
        witness := RowWitness.topPrime 28001
      },
      {
        lower := 28182, upper := 28361,
        witness := RowWitness.topPrime 28181
      },
      {
        lower := 28362, upper := 28531,
        witness := RowWitness.topPrime 28351
      },
      {
        lower := 28532, upper := 28697,
        witness := RowWitness.topPrime 28517
      },
      {
        lower := 28698, upper := 28877,
        witness := RowWitness.topPrime 28697
      },
      {
        lower := 28878, upper := 29051,
        witness := RowWitness.topPrime 28871
      },
      {
        lower := 29052, upper := 29213,
        witness := RowWitness.topPrime 29033
      },
      {
        lower := 29214, upper := 29389,
        witness := RowWitness.topPrime 29209
      },
      {
        lower := 29390, upper := 29569,
        witness := RowWitness.topPrime 29389
      },
      {
        lower := 29570, upper := 29749,
        witness := RowWitness.topPrime 29569
      },
      {
        lower := 29750, upper := 29921,
        witness := RowWitness.topPrime 29741
      },
      {
        lower := 29922, upper := 30101,
        witness := RowWitness.topPrime 29921
      },
      {
        lower := 30102, upper := 30277,
        witness := RowWitness.topPrime 30097
      },
      {
        lower := 30278, upper := 30451,
        witness := RowWitness.topPrime 30271
      },
      {
        lower := 30452, upper := 30629,
        witness := RowWitness.topPrime 30449
      },
      {
        lower := 30630, upper := 30773,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30774, upper := 30953,
        witness := RowWitness.topPrime 30773
      },
      {
        lower := 30954, upper := 31129,
        witness := RowWitness.topPrime 30949
      },
      {
        lower := 31130, upper := 31303,
        witness := RowWitness.topPrime 31123
      },
      {
        lower := 31304, upper := 31457,
        witness := RowWitness.topPrime 31277
      },
      {
        lower := 31458, upper := 31577,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31578, upper := 31753,
        witness := RowWitness.topPrime 31573
      },
      {
        lower := 31754, upper := 31931,
        witness := RowWitness.topPrime 31751
      },
      {
        lower := 31932, upper := 32087,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32088, upper := 32263,
        witness := RowWitness.topPrime 32083
      },
      {
        lower := 32264, upper := 32441,
        witness := RowWitness.topPrime 32261
      },
      {
        lower := 32442, upper := 32579,
        witness := RowWitness.topPrime 32441
      },
      {
        lower := 32805, upper := 32948,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33669,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33794,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34499,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34500, upper := 34571,
        witness := RowWitness.topPrime 34499
      },
      {
        lower := 36517, upper := 36677,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36678, upper := 36681,
        witness := RowWitness.topPrime 36677
      },
      {
        lower := 37303, upper := 37390,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37483,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37673,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37674, upper := 37718,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38471,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39484,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40508,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40804, upper := 40805,
        witness := RowWitness.topPrime 40801
      },
      {
        lower := 40931, upper := 41107,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41108, upper := 41111,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 41334, upper := 41334,
        witness := RowWitness.topPrime 41333
      },
      {
        lower := 45056, upper := 45070,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45433,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45976,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47055,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47701,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47702, upper := 47704,
        witness := RowWitness.topPrime 47701
      },
      {
        lower := 48013, upper := 48141,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48551,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48552, upper := 48553,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48848,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49319,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49320, upper := 49332,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49478,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50590,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51185,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53225,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53419,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53420, upper := 53428,
        witness := RowWitness.topPrime 53419
      },
      {
        lower := 54043, upper := 54048,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55621,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55622, upper := 55627,
        witness := RowWitness.topPrime 55621
      },
      {
        lower := 56307, upper := 56349,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56487,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57302,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57425,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58744,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59136,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59585,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62590,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64043,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64044, upper := 64049,
        witness := RowWitness.topPrime 64037
      },
      {
        lower := 64082, upper := 64128,
        witness := RowWitness.topPrime 64081
      },
      {
        lower := 68694, upper := 68824,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 71289, upper := 71467,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71468, upper := 71469,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73182,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73347,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83701,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85863,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89553,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93930,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96785,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98484,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103146,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109555,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137961,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149057,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 32580, upper := 65160, M := 13
      },
      {
        lower := 65160, upper := 130320, M := 9
      },
      {
        lower := 130320, upper := 260640, M := 7
      },
      {
        lower := 260640, upper := 521280, M := 5
      },
      {
        lower := 521280, upper := 1042560, M := 4
      },
      {
        lower := 1042560, upper := 2085120, M := 3
      },
      {
        lower := 2085120, upper := 4170240, M := 2
      },
      {
        lower := 4170240, upper := 8340480, M := 2
      },
      {
        lower := 8340480, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 182, r := 60, s := 129,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 366, upper := 540,
        witness := RowWitness.topPrime 359
      },
      {
        lower := 541, upper := 722,
        witness := RowWitness.topPrime 541
      },
      {
        lower := 723, upper := 900,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 901, upper := 1068,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1069, upper := 1250,
        witness := RowWitness.topPrime 1069
      },
      {
        lower := 1251, upper := 1430,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1431, upper := 1610,
        witness := RowWitness.topPrime 1429
      },
      {
        lower := 1611, upper := 1790,
        witness := RowWitness.topPrime 1609
      },
      {
        lower := 1791, upper := 1970,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1971, upper := 2132,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2133, upper := 2312,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2313, upper := 2492,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2493, upper := 2658,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2659, upper := 2840,
        witness := RowWitness.topPrime 2659
      },
      {
        lower := 2841, upper := 3018,
        witness := RowWitness.topPrime 2837
      },
      {
        lower := 3019, upper := 3200,
        witness := RowWitness.topPrime 3019
      },
      {
        lower := 3201, upper := 3372,
        witness := RowWitness.topPrime 3191
      },
      {
        lower := 3373, upper := 3554,
        witness := RowWitness.topPrime 3373
      },
      {
        lower := 3555, upper := 3728,
        witness := RowWitness.topPrime 3547
      },
      {
        lower := 3729, upper := 3908,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3909, upper := 4088,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 4089, upper := 4260,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4261, upper := 4442,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4443, upper := 4622,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4623, upper := 4802,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4803, upper := 4982,
        witness := RowWitness.topPrime 4801
      },
      {
        lower := 4983, upper := 5154,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5155, upper := 5334,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5335, upper := 5514,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5515, upper := 5688,
        witness := RowWitness.topPrime 5507
      },
      {
        lower := 5689, upper := 5870,
        witness := RowWitness.topPrime 5689
      },
      {
        lower := 5871, upper := 6050,
        witness := RowWitness.topPrime 5869
      },
      {
        lower := 6051, upper := 6228,
        witness := RowWitness.topPrime 6047
      },
      {
        lower := 6229, upper := 6410,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6411, upper := 6578,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6579, upper := 6758,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6759, upper := 6918,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6919, upper := 7098,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7099, upper := 7260,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7261, upper := 7434,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7435, upper := 7614,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7615, upper := 7788,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7789, upper := 7970,
        witness := RowWitness.topPrime 7789
      },
      {
        lower := 7971, upper := 8144,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8145, upper := 8304,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8305, upper := 8478,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8479, upper := 8648,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8649, upper := 8828,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8829, upper := 9002,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 9003, upper := 9182,
        witness := RowWitness.topPrime 9001
      },
      {
        lower := 9183, upper := 9362,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9363, upper := 9530,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9531, upper := 9702,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9703, upper := 9878,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9879, upper := 10052,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 10053, upper := 10220,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10221, upper := 10392,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10393, upper := 10572,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10573, upper := 10748,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10749, upper := 10920,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10921, upper := 11090,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11091, upper := 11268,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11269, upper := 11442,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11443, upper := 11624,
        witness := RowWitness.topPrime 11443
      },
      {
        lower := 11625, upper := 11802,
        witness := RowWitness.topPrime 11621
      },
      {
        lower := 11803, upper := 11982,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11983, upper := 12162,
        witness := RowWitness.topPrime 11981
      },
      {
        lower := 12163, upper := 12344,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12345, upper := 12524,
        witness := RowWitness.topPrime 12343
      },
      {
        lower := 12525, upper := 12698,
        witness := RowWitness.topPrime 12517
      },
      {
        lower := 12699, upper := 12878,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12879, upper := 13034,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13035, upper := 13214,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13215, upper := 13368,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13369, upper := 13548,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13549, upper := 13718,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13719, upper := 13892,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13893, upper := 14064,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14065, upper := 14238,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14239, upper := 14402,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14403, upper := 14582,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14583, upper := 14744,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14745, upper := 14922,
        witness := RowWitness.topPrime 14741
      },
      {
        lower := 14923, upper := 15104,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15105, upper := 15282,
        witness := RowWitness.topPrime 15101
      },
      {
        lower := 15283, upper := 15458,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15459, upper := 15632,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15633, upper := 15810,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15811, upper := 15990,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15991, upper := 16172,
        witness := RowWitness.topPrime 15991
      },
      {
        lower := 16173, upper := 16322,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16323, upper := 16500,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16501, upper := 16674,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16675, upper := 16854,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16855, upper := 17024,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17025, upper := 17202,
        witness := RowWitness.topPrime 17021
      },
      {
        lower := 17203, upper := 17384,
        witness := RowWitness.topPrime 17203
      },
      {
        lower := 17385, upper := 17564,
        witness := RowWitness.topPrime 17383
      },
      {
        lower := 17565, upper := 17732,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17733, upper := 17910,
        witness := RowWitness.topPrime 17729
      },
      {
        lower := 17911, upper := 18092,
        witness := RowWitness.topPrime 17911
      },
      {
        lower := 18093, upper := 18270,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18271, upper := 18450,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18451, upper := 18632,
        witness := RowWitness.topPrime 18451
      },
      {
        lower := 18633, upper := 18798,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18799, upper := 18978,
        witness := RowWitness.topPrime 18797
      },
      {
        lower := 18979, upper := 19160,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19161, upper := 19338,
        witness := RowWitness.topPrime 19157
      },
      {
        lower := 19339, upper := 19514,
        witness := RowWitness.topPrime 19333
      },
      {
        lower := 19515, upper := 19688,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19689, upper := 19868,
        witness := RowWitness.topPrime 19687
      },
      {
        lower := 19869, upper := 20048,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20049, upper := 20228,
        witness := RowWitness.topPrime 20047
      },
      {
        lower := 20229, upper := 20400,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20401, upper := 20580,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20581, upper := 20744,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20745, upper := 20924,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20925, upper := 21102,
        witness := RowWitness.topPrime 20921
      },
      {
        lower := 21103, upper := 21282,
        witness := RowWitness.topPrime 21101
      },
      {
        lower := 21283, upper := 21464,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21465, upper := 21614,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21615, upper := 21794,
        witness := RowWitness.topPrime 21613
      },
      {
        lower := 21795, upper := 21968,
        witness := RowWitness.topPrime 21787
      },
      {
        lower := 21969, upper := 22142,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22143, upper := 22314,
        witness := RowWitness.topPrime 22133
      },
      {
        lower := 22315, upper := 22488,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22489, upper := 22664,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22665, upper := 22832,
        witness := RowWitness.topPrime 22651
      },
      {
        lower := 22833, upper := 22998,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 22999, upper := 23174,
        witness := RowWitness.topPrime 22993
      },
      {
        lower := 23175, upper := 23354,
        witness := RowWitness.topPrime 23173
      },
      {
        lower := 23355, upper := 23520,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23521, upper := 23690,
        witness := RowWitness.topPrime 23509
      },
      {
        lower := 23691, upper := 23870,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23871, upper := 24050,
        witness := RowWitness.topPrime 23869
      },
      {
        lower := 24051, upper := 24230,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24231, upper := 24410,
        witness := RowWitness.topPrime 24229
      },
      {
        lower := 24411, upper := 24588,
        witness := RowWitness.topPrime 24407
      },
      {
        lower := 24589, upper := 24752,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24753, upper := 24930,
        witness := RowWitness.topPrime 24749
      },
      {
        lower := 24931, upper := 25104,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25105, upper := 25278,
        witness := RowWitness.topPrime 25097
      },
      {
        lower := 25279, upper := 25442,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25443, upper := 25620,
        witness := RowWitness.topPrime 25439
      },
      {
        lower := 25621, upper := 25802,
        witness := RowWitness.topPrime 25621
      },
      {
        lower := 25803, upper := 25982,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25983, upper := 26162,
        witness := RowWitness.topPrime 25981
      },
      {
        lower := 26163, upper := 26342,
        witness := RowWitness.topPrime 26161
      },
      {
        lower := 26343, upper := 26520,
        witness := RowWitness.topPrime 26339
      },
      {
        lower := 26521, upper := 26694,
        witness := RowWitness.topPrime 26513
      },
      {
        lower := 26695, upper := 26874,
        witness := RowWitness.topPrime 26693
      },
      {
        lower := 26875, upper := 27044,
        witness := RowWitness.topPrime 26863
      },
      {
        lower := 27045, upper := 27224,
        witness := RowWitness.topPrime 27043
      },
      {
        lower := 27225, upper := 27392,
        witness := RowWitness.topPrime 27211
      },
      {
        lower := 27393, upper := 27548,
        witness := RowWitness.topPrime 27367
      },
      {
        lower := 27549, upper := 27722,
        witness := RowWitness.topPrime 27541
      },
      {
        lower := 27723, upper := 27882,
        witness := RowWitness.topPrime 27701
      },
      {
        lower := 27883, upper := 28064,
        witness := RowWitness.topPrime 27883
      },
      {
        lower := 28065, upper := 28238,
        witness := RowWitness.topPrime 28057
      },
      {
        lower := 28239, upper := 28410,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28411, upper := 28592,
        witness := RowWitness.topPrime 28411
      },
      {
        lower := 28593, upper := 28772,
        witness := RowWitness.topPrime 28591
      },
      {
        lower := 28773, upper := 28952,
        witness := RowWitness.topPrime 28771
      },
      {
        lower := 28953, upper := 29130,
        witness := RowWitness.topPrime 28949
      },
      {
        lower := 29131, upper := 29312,
        witness := RowWitness.topPrime 29131
      },
      {
        lower := 29313, upper := 29492,
        witness := RowWitness.topPrime 29311
      },
      {
        lower := 29493, upper := 29664,
        witness := RowWitness.topPrime 29483
      },
      {
        lower := 29665, upper := 29844,
        witness := RowWitness.topPrime 29663
      },
      {
        lower := 29845, upper := 30018,
        witness := RowWitness.topPrime 29837
      },
      {
        lower := 30019, upper := 30194,
        witness := RowWitness.topPrime 30013
      },
      {
        lower := 30195, upper := 30368,
        witness := RowWitness.topPrime 30187
      },
      {
        lower := 30369, upper := 30548,
        witness := RowWitness.topPrime 30367
      },
      {
        lower := 30549, upper := 30720,
        witness := RowWitness.topPrime 30539
      },
      {
        lower := 30721, upper := 30894,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30895, upper := 31074,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31075, upper := 31250,
        witness := RowWitness.topPrime 31069
      },
      {
        lower := 31251, upper := 31430,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31431, upper := 31578,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31579, upper := 31754,
        witness := RowWitness.topPrime 31573
      },
      {
        lower := 31755, upper := 31932,
        witness := RowWitness.topPrime 31751
      },
      {
        lower := 31933, upper := 32088,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32089, upper := 32270,
        witness := RowWitness.topPrime 32089
      },
      {
        lower := 32271, upper := 32442,
        witness := RowWitness.topPrime 32261
      },
      {
        lower := 32443, upper := 32624,
        witness := RowWitness.topPrime 32443
      },
      {
        lower := 32625, upper := 32802,
        witness := RowWitness.topPrime 32621
      },
      {
        lower := 32803, upper := 32949,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33670,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33795,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34500,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34501, upper := 34572,
        witness := RowWitness.topPrime 34501
      },
      {
        lower := 36517, upper := 36678,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36679, upper := 36682,
        witness := RowWitness.topPrime 36677
      },
      {
        lower := 37303, upper := 37391,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37484,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37674,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37675, upper := 37719,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38472,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39504,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39505, upper := 39507,
        witness := RowWitness.topPrime 39503
      },
      {
        lower := 40401, upper := 40509,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40804, upper := 40806,
        witness := RowWitness.topPrime 40801
      },
      {
        lower := 40931, upper := 41108,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41109, upper := 41112,
        witness := RowWitness.topPrime 41081
      },
      {
        lower := 41334, upper := 41335,
        witness := RowWitness.topPrime 41333
      },
      {
        lower := 43750, upper := 43868,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43923, upper := 43931,
        witness := RowWitness.topPrime 43913
      },
      {
        lower := 45369, upper := 45434,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45977,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47056,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47702,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47703, upper := 47705,
        witness := RowWitness.topPrime 47701
      },
      {
        lower := 48013, upper := 48142,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48552,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48553, upper := 48554,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48734, upper := 48914,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48915, upper := 48915,
        witness := RowWitness.topPrime 48907
      },
      {
        lower := 49152, upper := 49320,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49321, upper := 49333,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49479,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 51076, upper := 51186,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 52215, upper := 52275,
        witness := RowWitness.topPrime 52201
      },
      {
        lower := 53138, upper := 53226,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53319,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54049,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55622,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55623, upper := 55628,
        witness := RowWitness.topPrime 55621
      },
      {
        lower := 55815, upper := 55959,
        witness := RowWitness.topPrime 55813
      },
      {
        lower := 56307, upper := 56350,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56488,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57344, upper := 57426,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58745,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59137,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59586,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62591,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64044,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64045, upper := 64050,
        witness := RowWitness.topPrime 64037
      },
      {
        lower := 64082, upper := 64129,
        witness := RowWitness.topPrime 64081
      },
      {
        lower := 65533, upper := 65702,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65703, upper := 65717,
        witness := RowWitness.topPrime 65701
      },
      {
        lower := 68644, upper := 68820,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68821, upper := 68832,
        witness := RowWitness.topPrime 68821
      },
      {
        lower := 68921, upper := 69071,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71468,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71469, upper := 71470,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73183,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73348,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 75449, upper := 75453,
        witness := RowWitness.topPrime 75437
      },
      {
        lower := 83667, upper := 83702,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 89383, upper := 89554,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93931,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96786,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98304, upper := 98480,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 98481, upper := 98485,
        witness := RowWitness.topPrime 98479
      },
      {
        lower := 98596, upper := 98596,
        witness := RowWitness.topPrime 98573
      },
      {
        lower := 102152, upper := 102191,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103147,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109556,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 131072, upper := 131225,
        witness := RowWitness.topPrime 131071
      },
      {
        lower := 137842, upper := 137962,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149058,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 195223, upper := 195293,
        witness := RowWitness.topPrime 195203
      },
      {
        lower := 196608, upper := 196747,
        witness := RowWitness.topPrime 196597
      },
      {
        lower := 262144, upper := 262269,
        witness := RowWitness.topPrime 262139
      }
    ],
    layers := [
      {
        lower := 32942, upper := 65884, M := 15
      },
      {
        lower := 65884, upper := 131768, M := 11
      },
      {
        lower := 131768, upper := 263536, M := 8
      },
      {
        lower := 263536, upper := 527072, M := 6
      },
      {
        lower := 527072, upper := 1054144, M := 5
      },
      {
        lower := 1054144, upper := 2108288, M := 4
      },
      {
        lower := 2108288, upper := 4216576, M := 3
      },
      {
        lower := 4216576, upper := 8433152, M := 2
      },
      {
        lower := 8433152, upper := 16866304, M := 2
      },
      {
        lower := 16866304, upper := 33732608, M := 1
      },
      {
        lower := 33732608, upper := 67465216, M := 1
      },
      {
        lower := 67465216, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 183, r := 60, s := 130,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 368, upper := 549,
        witness := RowWitness.topPrime 367
      },
      {
        lower := 550, upper := 729,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 730, upper := 909,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 910, upper := 1089,
        witness := RowWitness.topPrime 907
      },
      {
        lower := 1090, upper := 1269,
        witness := RowWitness.topPrime 1087
      },
      {
        lower := 1270, upper := 1441,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1442, upper := 1621,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1622, upper := 1803,
        witness := RowWitness.topPrime 1621
      },
      {
        lower := 1804, upper := 1983,
        witness := RowWitness.topPrime 1801
      },
      {
        lower := 1984, upper := 2161,
        witness := RowWitness.topPrime 1979
      },
      {
        lower := 2162, upper := 2343,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2344, upper := 2523,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2524, upper := 2703,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2704, upper := 2881,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2882, upper := 3061,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 3062, upper := 3243,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3244, upper := 3411,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3412, upper := 3589,
        witness := RowWitness.topPrime 3407
      },
      {
        lower := 3590, upper := 3765,
        witness := RowWitness.topPrime 3583
      },
      {
        lower := 3766, upper := 3943,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3944, upper := 4125,
        witness := RowWitness.topPrime 3943
      },
      {
        lower := 4126, upper := 4293,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4294, upper := 4471,
        witness := RowWitness.topPrime 4289
      },
      {
        lower := 4472, upper := 4645,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4646, upper := 4825,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4826, upper := 4999,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 5000, upper := 5181,
        witness := RowWitness.topPrime 4999
      },
      {
        lower := 5182, upper := 5361,
        witness := RowWitness.topPrime 5179
      },
      {
        lower := 5362, upper := 5533,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5534, upper := 5713,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5714, upper := 5893,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5894, upper := 6063,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6064, upper := 6235,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6236, upper := 6411,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6412, upper := 6579,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6580, upper := 6759,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6760, upper := 6919,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6920, upper := 7099,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7100, upper := 7261,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7262, upper := 7435,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7436, upper := 7615,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7616, upper := 7789,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7790, upper := 7971,
        witness := RowWitness.topPrime 7789
      },
      {
        lower := 7972, upper := 8145,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8146, upper := 8305,
        witness := RowWitness.topPrime 8123
      },
      {
        lower := 8306, upper := 8479,
        witness := RowWitness.topPrime 8297
      },
      {
        lower := 8480, upper := 8649,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8650, upper := 8829,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8830, upper := 9003,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 9004, upper := 9183,
        witness := RowWitness.topPrime 9001
      },
      {
        lower := 9184, upper := 9363,
        witness := RowWitness.topPrime 9181
      },
      {
        lower := 9364, upper := 9531,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9532, upper := 9703,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9704, upper := 9879,
        witness := RowWitness.topPrime 9697
      },
      {
        lower := 9880, upper := 10053,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 10054, upper := 10221,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10222, upper := 10393,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10394, upper := 10573,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10574, upper := 10749,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10750, upper := 10921,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10922, upper := 11091,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11092, upper := 11269,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11270, upper := 11443,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11444, upper := 11625,
        witness := RowWitness.topPrime 11443
      },
      {
        lower := 11626, upper := 11803,
        witness := RowWitness.topPrime 11621
      },
      {
        lower := 11804, upper := 11983,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11984, upper := 12163,
        witness := RowWitness.topPrime 11981
      },
      {
        lower := 12164, upper := 12345,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12346, upper := 12525,
        witness := RowWitness.topPrime 12343
      },
      {
        lower := 12526, upper := 12699,
        witness := RowWitness.topPrime 12517
      },
      {
        lower := 12700, upper := 12879,
        witness := RowWitness.topPrime 12697
      },
      {
        lower := 12880, upper := 13035,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 13036, upper := 13215,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13216, upper := 13369,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13370, upper := 13549,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13550, upper := 13719,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13720, upper := 13893,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13894, upper := 14065,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14066, upper := 14239,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14240, upper := 14403,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14404, upper := 14583,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14584, upper := 14745,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14746, upper := 14923,
        witness := RowWitness.topPrime 14741
      },
      {
        lower := 14924, upper := 15105,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15106, upper := 15283,
        witness := RowWitness.topPrime 15101
      },
      {
        lower := 15284, upper := 15459,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15460, upper := 15633,
        witness := RowWitness.topPrime 15451
      },
      {
        lower := 15634, upper := 15811,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15812, upper := 15991,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15992, upper := 16173,
        witness := RowWitness.topPrime 15991
      },
      {
        lower := 16174, upper := 16323,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16324, upper := 16501,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16502, upper := 16675,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16676, upper := 16855,
        witness := RowWitness.topPrime 16673
      },
      {
        lower := 16856, upper := 17025,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 17026, upper := 17203,
        witness := RowWitness.topPrime 17021
      },
      {
        lower := 17204, upper := 17385,
        witness := RowWitness.topPrime 17203
      },
      {
        lower := 17386, upper := 17565,
        witness := RowWitness.topPrime 17383
      },
      {
        lower := 17566, upper := 17733,
        witness := RowWitness.topPrime 17551
      },
      {
        lower := 17734, upper := 17911,
        witness := RowWitness.topPrime 17729
      },
      {
        lower := 17912, upper := 18093,
        witness := RowWitness.topPrime 17911
      },
      {
        lower := 18094, upper := 18271,
        witness := RowWitness.topPrime 18089
      },
      {
        lower := 18272, upper := 18451,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18452, upper := 18633,
        witness := RowWitness.topPrime 18451
      },
      {
        lower := 18634, upper := 18799,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18800, upper := 18979,
        witness := RowWitness.topPrime 18797
      },
      {
        lower := 18980, upper := 19161,
        witness := RowWitness.topPrime 18979
      },
      {
        lower := 19162, upper := 19339,
        witness := RowWitness.topPrime 19157
      },
      {
        lower := 19340, upper := 19515,
        witness := RowWitness.topPrime 19333
      },
      {
        lower := 19516, upper := 19689,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19690, upper := 19869,
        witness := RowWitness.topPrime 19687
      },
      {
        lower := 19870, upper := 20049,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20050, upper := 20229,
        witness := RowWitness.topPrime 20047
      },
      {
        lower := 20230, upper := 20401,
        witness := RowWitness.topPrime 20219
      },
      {
        lower := 20402, upper := 20581,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20582, upper := 20745,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20746, upper := 20925,
        witness := RowWitness.topPrime 20743
      },
      {
        lower := 20926, upper := 21103,
        witness := RowWitness.topPrime 20921
      },
      {
        lower := 21104, upper := 21283,
        witness := RowWitness.topPrime 21101
      },
      {
        lower := 21284, upper := 21465,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21466, upper := 21615,
        witness := RowWitness.topPrime 21433
      },
      {
        lower := 21616, upper := 21795,
        witness := RowWitness.topPrime 21613
      },
      {
        lower := 21796, upper := 21969,
        witness := RowWitness.topPrime 21787
      },
      {
        lower := 21970, upper := 22143,
        witness := RowWitness.topPrime 21961
      },
      {
        lower := 22144, upper := 22315,
        witness := RowWitness.topPrime 22133
      },
      {
        lower := 22316, upper := 22489,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22490, upper := 22665,
        witness := RowWitness.topPrime 22483
      },
      {
        lower := 22666, upper := 22833,
        witness := RowWitness.topPrime 22651
      },
      {
        lower := 22834, upper := 22999,
        witness := RowWitness.topPrime 22817
      },
      {
        lower := 23000, upper := 23175,
        witness := RowWitness.topPrime 22993
      },
      {
        lower := 23176, upper := 23355,
        witness := RowWitness.topPrime 23173
      },
      {
        lower := 23356, upper := 23521,
        witness := RowWitness.topPrime 23339
      },
      {
        lower := 23522, upper := 23691,
        witness := RowWitness.topPrime 23509
      },
      {
        lower := 23692, upper := 23871,
        witness := RowWitness.topPrime 23689
      },
      {
        lower := 23872, upper := 24051,
        witness := RowWitness.topPrime 23869
      },
      {
        lower := 24052, upper := 24231,
        witness := RowWitness.topPrime 24049
      },
      {
        lower := 24232, upper := 24411,
        witness := RowWitness.topPrime 24229
      },
      {
        lower := 24412, upper := 24589,
        witness := RowWitness.topPrime 24407
      },
      {
        lower := 24590, upper := 24753,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24754, upper := 24931,
        witness := RowWitness.topPrime 24749
      },
      {
        lower := 24932, upper := 25105,
        witness := RowWitness.topPrime 24923
      },
      {
        lower := 25106, upper := 25279,
        witness := RowWitness.topPrime 25097
      },
      {
        lower := 25280, upper := 25443,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 25444, upper := 25621,
        witness := RowWitness.topPrime 25439
      },
      {
        lower := 25622, upper := 25803,
        witness := RowWitness.topPrime 25621
      },
      {
        lower := 25804, upper := 25983,
        witness := RowWitness.topPrime 25801
      },
      {
        lower := 25984, upper := 26163,
        witness := RowWitness.topPrime 25981
      },
      {
        lower := 26164, upper := 26343,
        witness := RowWitness.topPrime 26161
      },
      {
        lower := 26344, upper := 26521,
        witness := RowWitness.topPrime 26339
      },
      {
        lower := 26522, upper := 26695,
        witness := RowWitness.topPrime 26513
      },
      {
        lower := 26696, upper := 26875,
        witness := RowWitness.topPrime 26693
      },
      {
        lower := 26876, upper := 27045,
        witness := RowWitness.topPrime 26863
      },
      {
        lower := 27046, upper := 27225,
        witness := RowWitness.topPrime 27043
      },
      {
        lower := 27226, upper := 27393,
        witness := RowWitness.topPrime 27211
      },
      {
        lower := 27394, upper := 27549,
        witness := RowWitness.topPrime 27367
      },
      {
        lower := 27550, upper := 27723,
        witness := RowWitness.topPrime 27541
      },
      {
        lower := 27724, upper := 27883,
        witness := RowWitness.topPrime 27701
      },
      {
        lower := 27884, upper := 28065,
        witness := RowWitness.topPrime 27883
      },
      {
        lower := 28066, upper := 28239,
        witness := RowWitness.topPrime 28057
      },
      {
        lower := 28240, upper := 28411,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28412, upper := 28593,
        witness := RowWitness.topPrime 28411
      },
      {
        lower := 28594, upper := 28773,
        witness := RowWitness.topPrime 28591
      },
      {
        lower := 28774, upper := 28953,
        witness := RowWitness.topPrime 28771
      },
      {
        lower := 28954, upper := 29131,
        witness := RowWitness.topPrime 28949
      },
      {
        lower := 29132, upper := 29313,
        witness := RowWitness.topPrime 29131
      },
      {
        lower := 29314, upper := 29493,
        witness := RowWitness.topPrime 29311
      },
      {
        lower := 29494, upper := 29665,
        witness := RowWitness.topPrime 29483
      },
      {
        lower := 29666, upper := 29845,
        witness := RowWitness.topPrime 29663
      },
      {
        lower := 29846, upper := 30019,
        witness := RowWitness.topPrime 29837
      },
      {
        lower := 30020, upper := 30195,
        witness := RowWitness.topPrime 30013
      },
      {
        lower := 30196, upper := 30369,
        witness := RowWitness.topPrime 30187
      },
      {
        lower := 30370, upper := 30549,
        witness := RowWitness.topPrime 30367
      },
      {
        lower := 30550, upper := 30721,
        witness := RowWitness.topPrime 30539
      },
      {
        lower := 30722, upper := 30895,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30896, upper := 31075,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 31076, upper := 31251,
        witness := RowWitness.topPrime 31069
      },
      {
        lower := 31252, upper := 31431,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31432, upper := 31579,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31580, upper := 31755,
        witness := RowWitness.topPrime 31573
      },
      {
        lower := 31756, upper := 31933,
        witness := RowWitness.topPrime 31751
      },
      {
        lower := 31934, upper := 32089,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32090, upper := 32271,
        witness := RowWitness.topPrime 32089
      },
      {
        lower := 32272, upper := 32443,
        witness := RowWitness.topPrime 32261
      },
      {
        lower := 32444, upper := 32625,
        witness := RowWitness.topPrime 32443
      },
      {
        lower := 32626, upper := 32803,
        witness := RowWitness.topPrime 32621
      },
      {
        lower := 32804, upper := 32985,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32986, upper := 33165,
        witness := RowWitness.topPrime 32983
      },
      {
        lower := 33166, upper := 33305,
        witness := RowWitness.topPrime 33161
      },
      {
        lower := 33708, upper := 33796,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34501,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34502, upper := 34573,
        witness := RowWitness.topPrime 34501
      },
      {
        lower := 36517, upper := 36679,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36680, upper := 36683,
        witness := RowWitness.topPrime 36677
      },
      {
        lower := 37446, upper := 37485,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37675,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37676, upper := 37720,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38473,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39505,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39506, upper := 39508,
        witness := RowWitness.topPrime 39503
      },
      {
        lower := 40401, upper := 40510,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40804, upper := 40807,
        witness := RowWitness.topPrime 40801
      },
      {
        lower := 40960, upper := 40986,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 41334, upper := 41336,
        witness := RowWitness.topPrime 41333
      },
      {
        lower := 43750, upper := 43869,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43923, upper := 43932,
        witness := RowWitness.topPrime 43913
      },
      {
        lower := 45056, upper := 45072,
        witness := RowWitness.topPrime 45053
      },
      {
        lower := 45369, upper := 45435,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47045, upper := 47057,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47703,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47704, upper := 47706,
        witness := RowWitness.topPrime 47701
      },
      {
        lower := 48013, upper := 48143,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48405,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48915,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48916, upper := 48916,
        witness := RowWitness.topPrime 48907
      },
      {
        lower := 49152, upper := 49321,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 49322, upper := 49334,
        witness := RowWitness.topPrime 49307
      },
      {
        lower := 49379, upper := 49480,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50592,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51187,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53227,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53248, upper := 53421,
        witness := RowWitness.topPrime 53239
      },
      {
        lower := 53422, upper := 53430,
        witness := RowWitness.topPrime 53419
      },
      {
        lower := 54043, upper := 54050,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55623,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55624, upper := 55629,
        witness := RowWitness.topPrime 55621
      },
      {
        lower := 56307, upper := 56351,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56489,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57304,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57427,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58746,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59138,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59587,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62592,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64045,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64046, upper := 64051,
        witness := RowWitness.topPrime 64037
      },
      {
        lower := 64082, upper := 64130,
        witness := RowWitness.topPrime 64081
      },
      {
        lower := 65533, upper := 65703,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65704, upper := 65715,
        witness := RowWitness.topPrime 65701
      },
      {
        lower := 68644, upper := 68821,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68822, upper := 68833,
        witness := RowWitness.topPrime 68821
      },
      {
        lower := 68921, upper := 69072,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71469,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71470, upper := 71471,
        witness := RowWitness.topPrime 71453
      },
      {
        lower := 73167, upper := 73184,
        witness := RowWitness.topPrime 73141
      },
      {
        lower := 73205, upper := 73349,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 75449, upper := 75454,
        witness := RowWitness.topPrime 75437
      },
      {
        lower := 83667, upper := 83703,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85865,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89555,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93932,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96787,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98304, upper := 98465,
        witness := RowWitness.topPrime 98299
      },
      {
        lower := 102152, upper := 102192,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103148,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109557,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 131072, upper := 131226,
        witness := RowWitness.topPrime 131071
      },
      {
        lower := 148955, upper := 149059,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 163840, upper := 163987,
        witness := RowWitness.topPrime 163819
      },
      {
        lower := 195223, upper := 195294,
        witness := RowWitness.topPrime 195203
      },
      {
        lower := 196608, upper := 196748,
        witness := RowWitness.topPrime 196597
      },
      {
        lower := 229376, upper := 229509,
        witness := RowWitness.topPrime 229373
      },
      {
        lower := 262144, upper := 262270,
        witness := RowWitness.topPrime 262139
      }
    ],
    layers := [
      {
        lower := 33306, upper := 66612, M := 14
      },
      {
        lower := 66612, upper := 133224, M := 11
      },
      {
        lower := 133224, upper := 266448, M := 8
      },
      {
        lower := 266448, upper := 532896, M := 6
      },
      {
        lower := 532896, upper := 1065792, M := 5
      },
      {
        lower := 1065792, upper := 2131584, M := 3
      },
      {
        lower := 2131584, upper := 4263168, M := 3
      },
      {
        lower := 4263168, upper := 8526336, M := 2
      },
      {
        lower := 8526336, upper := 17052672, M := 2
      },
      {
        lower := 17052672, upper := 34105344, M := 1
      },
      {
        lower := 34105344, upper := 68210688, M := 1
      },
      {
        lower := 68210688, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 184, r := 61, s := 130,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 370, upper := 550,
        witness := RowWitness.topPrime 367
      },
      {
        lower := 551, upper := 730,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 731, upper := 910,
        witness := RowWitness.topPrime 727
      },
      {
        lower := 911, upper := 1094,
        witness := RowWitness.topPrime 911
      },
      {
        lower := 1095, upper := 1276,
        witness := RowWitness.topPrime 1093
      },
      {
        lower := 1277, upper := 1460,
        witness := RowWitness.topPrime 1277
      },
      {
        lower := 1461, upper := 1642,
        witness := RowWitness.topPrime 1459
      },
      {
        lower := 1643, upper := 1820,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1821, upper := 1994,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1995, upper := 2176,
        witness := RowWitness.topPrime 1993
      },
      {
        lower := 2177, upper := 2344,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2345, upper := 2524,
        witness := RowWitness.topPrime 2341
      },
      {
        lower := 2525, upper := 2704,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2705, upper := 2882,
        witness := RowWitness.topPrime 2699
      },
      {
        lower := 2883, upper := 3062,
        witness := RowWitness.topPrime 2879
      },
      {
        lower := 3063, upper := 3244,
        witness := RowWitness.topPrime 3061
      },
      {
        lower := 3245, upper := 3412,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3413, upper := 3596,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3597, upper := 3776,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3777, upper := 3952,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3953, upper := 4130,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4131, upper := 4312,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4313, upper := 4480,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4481, upper := 4664,
        witness := RowWitness.topPrime 4481
      },
      {
        lower := 4665, upper := 4846,
        witness := RowWitness.topPrime 4663
      },
      {
        lower := 4847, upper := 5014,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 5015, upper := 5194,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5195, upper := 5372,
        witness := RowWitness.topPrime 5189
      },
      {
        lower := 5373, upper := 5534,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5535, upper := 5714,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5715, upper := 5894,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5895, upper := 6064,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6065, upper := 6236,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6237, upper := 6412,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6413, upper := 6580,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6581, upper := 6764,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6765, upper := 6946,
        witness := RowWitness.topPrime 6763
      },
      {
        lower := 6947, upper := 7130,
        witness := RowWitness.topPrime 6947
      },
      {
        lower := 7131, upper := 7312,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7313, upper := 7492,
        witness := RowWitness.topPrime 7309
      },
      {
        lower := 7493, upper := 7672,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7673, upper := 7856,
        witness := RowWitness.topPrime 7673
      },
      {
        lower := 7857, upper := 8036,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 8037, upper := 8200,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8201, upper := 8374,
        witness := RowWitness.topPrime 8191
      },
      {
        lower := 8375, upper := 8552,
        witness := RowWitness.topPrime 8369
      },
      {
        lower := 8553, upper := 8726,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8727, upper := 8902,
        witness := RowWitness.topPrime 8719
      },
      {
        lower := 8903, upper := 9076,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9077, upper := 9250,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9251, upper := 9424,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9425, upper := 9604,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9605, upper := 9784,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9785, upper := 9964,
        witness := RowWitness.topPrime 9781
      },
      {
        lower := 9965, upper := 10132,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10133, upper := 10316,
        witness := RowWitness.topPrime 10133
      },
      {
        lower := 10317, upper := 10496,
        witness := RowWitness.topPrime 10313
      },
      {
        lower := 10497, upper := 10670,
        witness := RowWitness.topPrime 10487
      },
      {
        lower := 10671, upper := 10850,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10851, upper := 11030,
        witness := RowWitness.topPrime 10847
      },
      {
        lower := 11031, upper := 11210,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11211, upper := 11380,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11381, upper := 11552,
        witness := RowWitness.topPrime 11369
      },
      {
        lower := 11553, upper := 11734,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11735, upper := 11914,
        witness := RowWitness.topPrime 11731
      },
      {
        lower := 11915, upper := 12092,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12093, upper := 12256,
        witness := RowWitness.topPrime 12073
      },
      {
        lower := 12257, upper := 12436,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12437, upper := 12620,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12621, upper := 12802,
        witness := RowWitness.topPrime 12619
      },
      {
        lower := 12803, upper := 12982,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12983, upper := 13166,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13167, upper := 13346,
        witness := RowWitness.topPrime 13163
      },
      {
        lower := 13347, upper := 13522,
        witness := RowWitness.topPrime 13339
      },
      {
        lower := 13523, upper := 13706,
        witness := RowWitness.topPrime 13523
      },
      {
        lower := 13707, upper := 13880,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13881, upper := 14062,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14063, upper := 14240,
        witness := RowWitness.topPrime 14057
      },
      {
        lower := 14241, upper := 14404,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14405, upper := 14584,
        witness := RowWitness.topPrime 14401
      },
      {
        lower := 14585, upper := 14746,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14747, upper := 14930,
        witness := RowWitness.topPrime 14747
      },
      {
        lower := 14931, upper := 15112,
        witness := RowWitness.topPrime 14929
      },
      {
        lower := 15113, upper := 15290,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15291, upper := 15472,
        witness := RowWitness.topPrime 15289
      },
      {
        lower := 15473, upper := 15656,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15657, upper := 15832,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15833, upper := 16006,
        witness := RowWitness.topPrime 15823
      },
      {
        lower := 16007, upper := 16190,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16191, upper := 16372,
        witness := RowWitness.topPrime 16189
      },
      {
        lower := 16373, upper := 16552,
        witness := RowWitness.topPrime 16369
      },
      {
        lower := 16553, upper := 16736,
        witness := RowWitness.topPrime 16553
      },
      {
        lower := 16737, upper := 16912,
        witness := RowWitness.topPrime 16729
      },
      {
        lower := 16913, upper := 17086,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17087, upper := 17260,
        witness := RowWitness.topPrime 17077
      },
      {
        lower := 17261, upper := 17440,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17441, upper := 17614,
        witness := RowWitness.topPrime 17431
      },
      {
        lower := 17615, upper := 17792,
        witness := RowWitness.topPrime 17609
      },
      {
        lower := 17793, upper := 17974,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 17975, upper := 18154,
        witness := RowWitness.topPrime 17971
      },
      {
        lower := 18155, upper := 18332,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18333, upper := 18512,
        witness := RowWitness.topPrime 18329
      },
      {
        lower := 18513, upper := 18686,
        witness := RowWitness.topPrime 18503
      },
      {
        lower := 18687, upper := 18862,
        witness := RowWitness.topPrime 18679
      },
      {
        lower := 18863, upper := 19042,
        witness := RowWitness.topPrime 18859
      },
      {
        lower := 19043, upper := 19220,
        witness := RowWitness.topPrime 19037
      },
      {
        lower := 19221, upper := 19402,
        witness := RowWitness.topPrime 19219
      },
      {
        lower := 19403, upper := 19586,
        witness := RowWitness.topPrime 19403
      },
      {
        lower := 19587, upper := 19766,
        witness := RowWitness.topPrime 19583
      },
      {
        lower := 19767, upper := 19946,
        witness := RowWitness.topPrime 19763
      },
      {
        lower := 19947, upper := 20120,
        witness := RowWitness.topPrime 19937
      },
      {
        lower := 20121, upper := 20300,
        witness := RowWitness.topPrime 20117
      },
      {
        lower := 20301, upper := 20480,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20481, upper := 20662,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20663, upper := 20846,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20847, upper := 20992,
        witness := RowWitness.topPrime 20809
      },
      {
        lower := 20993, upper := 21166,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21167, upper := 21346,
        witness := RowWitness.topPrime 21163
      },
      {
        lower := 21347, upper := 21530,
        witness := RowWitness.topPrime 21347
      },
      {
        lower := 21531, upper := 21712,
        witness := RowWitness.topPrime 21529
      },
      {
        lower := 21713, upper := 21896,
        witness := RowWitness.topPrime 21713
      },
      {
        lower := 21897, upper := 22076,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22077, upper := 22256,
        witness := RowWitness.topPrime 22073
      },
      {
        lower := 22257, upper := 22430,
        witness := RowWitness.topPrime 22247
      },
      {
        lower := 22431, upper := 22592,
        witness := RowWitness.topPrime 22409
      },
      {
        lower := 22593, upper := 22756,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22757, upper := 22934,
        witness := RowWitness.topPrime 22751
      },
      {
        lower := 22935, upper := 23104,
        witness := RowWitness.topPrime 22921
      },
      {
        lower := 23105, upper := 23282,
        witness := RowWitness.topPrime 23099
      },
      {
        lower := 23283, upper := 23462,
        witness := RowWitness.topPrime 23279
      },
      {
        lower := 23463, upper := 23642,
        witness := RowWitness.topPrime 23459
      },
      {
        lower := 23643, upper := 23816,
        witness := RowWitness.topPrime 23633
      },
      {
        lower := 23817, upper := 23996,
        witness := RowWitness.topPrime 23813
      },
      {
        lower := 23997, upper := 24176,
        witness := RowWitness.topPrime 23993
      },
      {
        lower := 24177, upper := 24352,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24353, upper := 24520,
        witness := RowWitness.topPrime 24337
      },
      {
        lower := 24521, upper := 24700,
        witness := RowWitness.topPrime 24517
      },
      {
        lower := 24701, upper := 24880,
        witness := RowWitness.topPrime 24697
      },
      {
        lower := 24881, upper := 25060,
        witness := RowWitness.topPrime 24877
      },
      {
        lower := 25061, upper := 25240,
        witness := RowWitness.topPrime 25057
      },
      {
        lower := 25241, upper := 25420,
        witness := RowWitness.topPrime 25237
      },
      {
        lower := 25421, upper := 25594,
        witness := RowWitness.topPrime 25411
      },
      {
        lower := 25595, upper := 25772,
        witness := RowWitness.topPrime 25589
      },
      {
        lower := 25773, upper := 25954,
        witness := RowWitness.topPrime 25771
      },
      {
        lower := 25955, upper := 26134,
        witness := RowWitness.topPrime 25951
      },
      {
        lower := 26135, upper := 26302,
        witness := RowWitness.topPrime 26119
      },
      {
        lower := 26303, upper := 26480,
        witness := RowWitness.topPrime 26297
      },
      {
        lower := 26481, upper := 26662,
        witness := RowWitness.topPrime 26479
      },
      {
        lower := 26663, upper := 26830,
        witness := RowWitness.topPrime 26647
      },
      {
        lower := 26831, upper := 27004,
        witness := RowWitness.topPrime 26821
      },
      {
        lower := 27005, upper := 27176,
        witness := RowWitness.topPrime 26993
      },
      {
        lower := 27177, upper := 27326,
        witness := RowWitness.topPrime 27143
      },
      {
        lower := 27327, upper := 27482,
        witness := RowWitness.topPrime 27299
      },
      {
        lower := 27483, upper := 27664,
        witness := RowWitness.topPrime 27481
      },
      {
        lower := 27665, upper := 27836,
        witness := RowWitness.topPrime 27653
      },
      {
        lower := 27837, upper := 28010,
        witness := RowWitness.topPrime 27827
      },
      {
        lower := 28011, upper := 28184,
        witness := RowWitness.topPrime 28001
      },
      {
        lower := 28185, upper := 28366,
        witness := RowWitness.topPrime 28183
      },
      {
        lower := 28367, upper := 28534,
        witness := RowWitness.topPrime 28351
      },
      {
        lower := 28535, upper := 28700,
        witness := RowWitness.topPrime 28517
      },
      {
        lower := 28701, upper := 28880,
        witness := RowWitness.topPrime 28697
      },
      {
        lower := 28881, upper := 29062,
        witness := RowWitness.topPrime 28879
      },
      {
        lower := 29063, upper := 29246,
        witness := RowWitness.topPrime 29063
      },
      {
        lower := 29247, upper := 29426,
        witness := RowWitness.topPrime 29243
      },
      {
        lower := 29427, upper := 29606,
        witness := RowWitness.topPrime 29423
      },
      {
        lower := 29607, upper := 29782,
        witness := RowWitness.topPrime 29599
      },
      {
        lower := 29783, upper := 29944,
        witness := RowWitness.topPrime 29761
      },
      {
        lower := 29945, upper := 30110,
        witness := RowWitness.topPrime 29927
      },
      {
        lower := 30111, upper := 30292,
        witness := RowWitness.topPrime 30109
      },
      {
        lower := 30293, upper := 30476,
        witness := RowWitness.topPrime 30293
      },
      {
        lower := 30477, upper := 30652,
        witness := RowWitness.topPrime 30469
      },
      {
        lower := 30653, upper := 30832,
        witness := RowWitness.topPrime 30649
      },
      {
        lower := 30833, upper := 31012,
        witness := RowWitness.topPrime 30829
      },
      {
        lower := 31013, upper := 31196,
        witness := RowWitness.topPrime 31013
      },
      {
        lower := 31197, upper := 31376,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31377, upper := 31540,
        witness := RowWitness.topPrime 31357
      },
      {
        lower := 31541, upper := 31724,
        witness := RowWitness.topPrime 31541
      },
      {
        lower := 31725, upper := 31906,
        witness := RowWitness.topPrime 31723
      },
      {
        lower := 31907, upper := 32090,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 32091, upper := 32272,
        witness := RowWitness.topPrime 32089
      },
      {
        lower := 32273, upper := 32444,
        witness := RowWitness.topPrime 32261
      },
      {
        lower := 32445, upper := 32626,
        witness := RowWitness.topPrime 32443
      },
      {
        lower := 32627, upper := 32804,
        witness := RowWitness.topPrime 32621
      },
      {
        lower := 32805, upper := 32986,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 32987, upper := 33170,
        witness := RowWitness.topPrime 32987
      },
      {
        lower := 33171, upper := 33344,
        witness := RowWitness.topPrime 33161
      },
      {
        lower := 33345, upper := 33526,
        witness := RowWitness.topPrime 33343
      },
      {
        lower := 33527, upper := 33672,
        witness := RowWitness.topPrime 33521
      },
      {
        lower := 33708, upper := 33797,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34502,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34503, upper := 34574,
        witness := RowWitness.topPrime 34501
      },
      {
        lower := 37303, upper := 37393,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37486,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37676,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37677, upper := 37721,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38474,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39506,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39507, upper := 39509,
        witness := RowWitness.topPrime 39503
      },
      {
        lower := 40401, upper := 40511,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40804, upper := 40808,
        witness := RowWitness.topPrime 40801
      },
      {
        lower := 40931, upper := 40987,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 41334, upper := 41337,
        witness := RowWitness.topPrime 41333
      },
      {
        lower := 43750, upper := 43870,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 43923, upper := 43933,
        witness := RowWitness.topPrime 43913
      },
      {
        lower := 45369, upper := 45436,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45979,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47045, upper := 47058,
        witness := RowWitness.topPrime 47041
      },
      {
        lower := 47526, upper := 47704,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47705, upper := 47707,
        witness := RowWitness.topPrime 47701
      },
      {
        lower := 48013, upper := 48144,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48373, upper := 48554,
        witness := RowWitness.topPrime 48371
      },
      {
        lower := 48555, upper := 48556,
        witness := RowWitness.topPrime 48541
      },
      {
        lower := 48778, upper := 48917,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49298, upper := 49313,
        witness := RowWitness.topPrime 49297
      },
      {
        lower := 49379, upper := 49481,
        witness := RowWitness.topPrime 49369
      },
      {
        lower := 50421, upper := 50593,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51188,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53138, upper := 53228,
        witness := RowWitness.topPrime 53129
      },
      {
        lower := 53290, upper := 53321,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 54043, upper := 54051,
        witness := RowWitness.topPrime 54037
      },
      {
        lower := 55451, upper := 55624,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55625, upper := 55630,
        witness := RowWitness.topPrime 55621
      },
      {
        lower := 56307, upper := 56352,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 56454, upper := 56490,
        witness := RowWitness.topPrime 56453
      },
      {
        lower := 57245, upper := 57305,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58747,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59139,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 59582, upper := 59588,
        witness := RowWitness.topPrime 59581
      },
      {
        lower := 62500, upper := 62593,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64046,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64047, upper := 64052,
        witness := RowWitness.topPrime 64037
      },
      {
        lower := 64082, upper := 64131,
        witness := RowWitness.topPrime 64081
      },
      {
        lower := 65533, upper := 65704,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65705, upper := 65719,
        witness := RowWitness.topPrime 65701
      },
      {
        lower := 68644, upper := 68822,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68823, upper := 68827,
        witness := RowWitness.topPrime 68821
      },
      {
        lower := 68921, upper := 69073,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71470,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71471, upper := 71472,
        witness := RowWitness.topPrime 71471
      },
      {
        lower := 73205, upper := 73350,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 83667, upper := 83704,
        witness := RowWitness.topPrime 83663
      },
      {
        lower := 85805, upper := 85866,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89556,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93933,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 96774, upper := 96788,
        witness := RowWitness.topPrime 96769
      },
      {
        lower := 98415, upper := 98466,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 98596, upper := 98598,
        witness := RowWitness.topPrime 98573
      },
      {
        lower := 102152, upper := 102193,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103149,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 131072, upper := 131227,
        witness := RowWitness.topPrime 131071
      },
      {
        lower := 137842, upper := 137964,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149060,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 195223, upper := 195295,
        witness := RowWitness.topPrime 195203
      },
      {
        lower := 262144, upper := 262271,
        witness := RowWitness.topPrime 262139
      }
    ],
    layers := [
      {
        lower := 33672, upper := 67344, M := 14
      },
      {
        lower := 67344, upper := 134688, M := 10
      },
      {
        lower := 134688, upper := 269376, M := 8
      },
      {
        lower := 269376, upper := 538752, M := 6
      },
      {
        lower := 538752, upper := 1077504, M := 4
      },
      {
        lower := 1077504, upper := 2155008, M := 3
      },
      {
        lower := 2155008, upper := 4310016, M := 3
      },
      {
        lower := 4310016, upper := 8620032, M := 2
      },
      {
        lower := 8620032, upper := 10000000, M := 2
      }
    ]
  }
]

theorem coverRows07_checked :
    coverRows07.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows07_checked

end B699LowIndex
