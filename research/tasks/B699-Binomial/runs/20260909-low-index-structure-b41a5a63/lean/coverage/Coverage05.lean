import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows05 : List FiniteCoverRow := [
  {
    height := {
      i := 129, r := 42, s := 91,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 260, upper := 385,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 386, upper := 511,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 512, upper := 637,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 638, upper := 759,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 760, upper := 885,
        witness := RowWitness.topPrime 757
      },
      {
        lower := 886, upper := 1011,
        witness := RowWitness.topPrime 883
      },
      {
        lower := 1012, upper := 1137,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1138, upper := 1257,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1258, upper := 1377,
        witness := RowWitness.topPrime 1249
      },
      {
        lower := 1378, upper := 1501,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1502, upper := 1627,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1628, upper := 1755,
        witness := RowWitness.topPrime 1627
      },
      {
        lower := 1756, upper := 1881,
        witness := RowWitness.topPrime 1753
      },
      {
        lower := 1882, upper := 2007,
        witness := RowWitness.topPrime 1879
      },
      {
        lower := 2008, upper := 2131,
        witness := RowWitness.topPrime 2003
      },
      {
        lower := 2132, upper := 2259,
        witness := RowWitness.topPrime 2131
      },
      {
        lower := 2260, upper := 2379,
        witness := RowWitness.topPrime 2251
      },
      {
        lower := 2380, upper := 2505,
        witness := RowWitness.topPrime 2377
      },
      {
        lower := 2506, upper := 2631,
        witness := RowWitness.topPrime 2503
      },
      {
        lower := 2632, upper := 2749,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2750, upper := 2877,
        witness := RowWitness.topPrime 2749
      },
      {
        lower := 2878, upper := 2989,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2990, upper := 3099,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3100, upper := 3217,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3218, upper := 3345,
        witness := RowWitness.topPrime 3217
      },
      {
        lower := 3346, upper := 3471,
        witness := RowWitness.topPrime 3343
      },
      {
        lower := 3472, upper := 3597,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3598, upper := 3721,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3722, upper := 3847,
        witness := RowWitness.topPrime 3719
      },
      {
        lower := 3848, upper := 3975,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3976, upper := 4095,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4096, upper := 4221,
        witness := RowWitness.topPrime 4093
      },
      {
        lower := 4222, upper := 4347,
        witness := RowWitness.topPrime 4219
      },
      {
        lower := 4348, upper := 4467,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4468, upper := 4591,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4592, upper := 4719,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4720, upper := 4831,
        witness := RowWitness.topPrime 4703
      },
      {
        lower := 4832, upper := 4959,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4960, upper := 5085,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5086, upper := 5209,
        witness := RowWitness.topPrime 5081
      },
      {
        lower := 5210, upper := 5337,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5338, upper := 5461,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5462, upper := 5577,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5578, upper := 5701,
        witness := RowWitness.topPrime 5573
      },
      {
        lower := 5702, upper := 5829,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5830, upper := 5955,
        witness := RowWitness.topPrime 5827
      },
      {
        lower := 5956, upper := 6081,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6082, upper := 6207,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6208, upper := 6331,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6332, upper := 6457,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6458, upper := 6579,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6580, upper := 6705,
        witness := RowWitness.topPrime 6577
      },
      {
        lower := 6706, upper := 6831,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6832, upper := 6957,
        witness := RowWitness.topPrime 6829
      },
      {
        lower := 6958, upper := 7077,
        witness := RowWitness.topPrime 6949
      },
      {
        lower := 7078, upper := 7197,
        witness := RowWitness.topPrime 7069
      },
      {
        lower := 7198, upper := 7321,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7322, upper := 7449,
        witness := RowWitness.topPrime 7321
      },
      {
        lower := 7450, upper := 7561,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7562, upper := 7689,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7690, upper := 7815,
        witness := RowWitness.topPrime 7687
      },
      {
        lower := 7816, upper := 7921,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7922, upper := 8047,
        witness := RowWitness.topPrime 7919
      },
      {
        lower := 8048, upper := 8167,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8168, upper := 8295,
        witness := RowWitness.topPrime 8167
      },
      {
        lower := 8296, upper := 8421,
        witness := RowWitness.topPrime 8293
      },
      {
        lower := 8422, upper := 8547,
        witness := RowWitness.topPrime 8419
      },
      {
        lower := 8548, upper := 8671,
        witness := RowWitness.topPrime 8543
      },
      {
        lower := 8672, upper := 8797,
        witness := RowWitness.topPrime 8669
      },
      {
        lower := 8798, upper := 8911,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8912, upper := 9021,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9022, upper := 9141,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9142, upper := 9265,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9266, upper := 9385,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9386, upper := 9505,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9506, upper := 9625,
        witness := RowWitness.topPrime 9497
      },
      {
        lower := 9626, upper := 9751,
        witness := RowWitness.topPrime 9623
      },
      {
        lower := 9752, upper := 9877,
        witness := RowWitness.topPrime 9749
      },
      {
        lower := 9878, upper := 9999,
        witness := RowWitness.topPrime 9871
      },
      {
        lower := 10000, upper := 10101,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10102, upper := 10227,
        witness := RowWitness.topPrime 10099
      },
      {
        lower := 10228, upper := 10351,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10352, upper := 10471,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10472, upper := 10591,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10592, upper := 10717,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10718, upper := 10839,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10840, upper := 10965,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10966, upper := 11085,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11086, upper := 11211,
        witness := RowWitness.topPrime 11083
      },
      {
        lower := 11212, upper := 11325,
        witness := RowWitness.topPrime 11197
      },
      {
        lower := 11326, upper := 11449,
        witness := RowWitness.topPrime 11321
      },
      {
        lower := 11450, upper := 11575,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11576, upper := 11679,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11680, upper := 11805,
        witness := RowWitness.topPrime 11677
      },
      {
        lower := 11806, upper := 11929,
        witness := RowWitness.topPrime 11801
      },
      {
        lower := 11930, upper := 12055,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12056, upper := 12177,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12178, upper := 12291,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12292, upper := 12417,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12418, upper := 12541,
        witness := RowWitness.topPrime 12413
      },
      {
        lower := 12542, upper := 12669,
        witness := RowWitness.topPrime 12541
      },
      {
        lower := 12670, upper := 12787,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12788, upper := 12909,
        witness := RowWitness.topPrime 12781
      },
      {
        lower := 12910, upper := 13035,
        witness := RowWitness.topPrime 12907
      },
      {
        lower := 13036, upper := 13161,
        witness := RowWitness.topPrime 13033
      },
      {
        lower := 13162, upper := 13287,
        witness := RowWitness.topPrime 13159
      },
      {
        lower := 13288, upper := 13395,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13396, upper := 13509,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13510, upper := 13627,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13628, upper := 13755,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13756, upper := 13879,
        witness := RowWitness.topPrime 13751
      },
      {
        lower := 13880, upper := 14007,
        witness := RowWitness.topPrime 13879
      },
      {
        lower := 14008, upper := 14127,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14128, upper := 14235,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14236, upper := 14349,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14350, upper := 14475,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14476, upper := 14589,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14590, upper := 14691,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14692, upper := 14811,
        witness := RowWitness.topPrime 14683
      },
      {
        lower := 14812, upper := 14925,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14926, upper := 15051,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15052, upper := 15159,
        witness := RowWitness.topPrime 15031
      },
      {
        lower := 15160, upper := 15277,
        witness := RowWitness.topPrime 15149
      },
      {
        lower := 15278, upper := 15405,
        witness := RowWitness.topPrime 15277
      },
      {
        lower := 15406, upper := 15529,
        witness := RowWitness.topPrime 15401
      },
      {
        lower := 15530, upper := 15655,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15656, upper := 15777,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15778, upper := 15901,
        witness := RowWitness.topPrime 15773
      },
      {
        lower := 15902, upper := 16029,
        witness := RowWitness.topPrime 15901
      },
      {
        lower := 16030, upper := 16135,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16136, upper := 16255,
        witness := RowWitness.topPrime 16127
      },
      {
        lower := 16256, upper := 16381,
        witness := RowWitness.topPrime 16253
      },
      {
        lower := 16382, upper := 16509,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16510, upper := 16512,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16810, upper := 16915,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16916, upper := 16938,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17529,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17530, upper := 17533,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17672, upper := 17704,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17800,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18491, upper := 18560,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18605, upper := 18619,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18745,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18746, upper := 18871,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18872, upper := 18878,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19294,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19789,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19790, upper := 19811,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19901,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20009,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20289,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20290, upper := 20292,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20480, upper := 20530,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20661,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20662, upper := 20663,
        witness := RowWitness.topPrime 20641
      },
      {
        lower := 20667, upper := 20705,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21411,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21412, upper := 21424,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21875, upper := 21999,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22000, upper := 22032,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22098,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22445, upper := 22454,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22597,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22598, upper := 22600,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22656,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23889,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23890, upper := 23890,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24334, upper := 24457,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24458, upper := 24495,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24693,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25092,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25317,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25318, upper := 25343,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26372,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26492,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26539,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26636,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26752,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27024,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27564,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28218,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28253,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28701,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28702, upper := 28705,
        witness := RowWitness.topPrime 28697
      },
      {
        lower := 28717, upper := 28800,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28845,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29896,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30720, upper := 30731,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30848,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31027,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31321,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31322, upper := 31378,
        witness := RowWitness.topPrime 31321
      },
      {
        lower := 31423, upper := 31457,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32896,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33617,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33742,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34465,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34466, upper := 34519,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36625,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36626, upper := 36629,
        witness := RowWitness.topPrime 36607
      },
      {
        lower := 37303, upper := 37338,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37574,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38419,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39432,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40456,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40932,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41059,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45381,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47649,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47650, upper := 47652,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48089,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48501,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48796,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49258,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50538,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51133,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53376,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55569,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55570, upper := 55575,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57250,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57373,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58692,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59084,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62538,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63991,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63992, upper := 63997,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65649,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65650, upper := 65661,
        witness := RowWitness.topPrime 65647
      },
      {
        lower := 68694, upper := 68718,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 68921, upper := 69018,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71415,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71416, upper := 71417,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73295,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89501,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 109503, upper := 109503,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149005,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 16512, upper := 33024, M := 17
      },
      {
        lower := 33024, upper := 66048, M := 13
      },
      {
        lower := 66048, upper := 132096, M := 10
      },
      {
        lower := 132096, upper := 264192, M := 8
      },
      {
        lower := 264192, upper := 528384, M := 6
      },
      {
        lower := 528384, upper := 1056768, M := 5
      },
      {
        lower := 1056768, upper := 2113536, M := 4
      },
      {
        lower := 2113536, upper := 4227072, M := 3
      },
      {
        lower := 4227072, upper := 8454144, M := 2
      },
      {
        lower := 8454144, upper := 16908288, M := 2
      },
      {
        lower := 16908288, upper := 33816576, M := 2
      },
      {
        lower := 33816576, upper := 67633152, M := 1
      },
      {
        lower := 67633152, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 130, r := 43, s := 92,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 262, upper := 386,
        witness := RowWitness.topPrime 257
      },
      {
        lower := 387, upper := 512,
        witness := RowWitness.topPrime 383
      },
      {
        lower := 513, upper := 638,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 639, upper := 760,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 761, upper := 890,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 891, upper := 1016,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1017, upper := 1142,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1143, upper := 1258,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1259, upper := 1388,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1389, upper := 1510,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1511, upper := 1640,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1641, upper := 1766,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1767, upper := 1888,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1889, upper := 2018,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2019, upper := 2146,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2147, upper := 2272,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2273, upper := 2402,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2403, upper := 2528,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2529, upper := 2650,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2651, upper := 2776,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2777, upper := 2906,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2907, upper := 3032,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3033, upper := 3152,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3153, upper := 3266,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3267, upper := 3388,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3389, upper := 3518,
        witness := RowWitness.topPrime 3389
      },
      {
        lower := 3519, upper := 3646,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3647, upper := 3772,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3773, upper := 3898,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3899, upper := 4018,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4019, upper := 4148,
        witness := RowWitness.topPrime 4019
      },
      {
        lower := 4149, upper := 4268,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4269, upper := 4390,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4391, upper := 4520,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4521, upper := 4648,
        witness := RowWitness.topPrime 4519
      },
      {
        lower := 4649, upper := 4778,
        witness := RowWitness.topPrime 4649
      },
      {
        lower := 4779, upper := 4888,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4889, upper := 5018,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5019, upper := 5140,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5141, upper := 5248,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5249, upper := 5366,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5367, upper := 5480,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5481, upper := 5608,
        witness := RowWitness.topPrime 5479
      },
      {
        lower := 5609, upper := 5720,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5721, upper := 5846,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5847, upper := 5972,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5973, upper := 6082,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6083, upper := 6208,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6209, upper := 6332,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6333, upper := 6458,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6459, upper := 6580,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6581, upper := 6710,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6711, upper := 6838,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6839, upper := 6962,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6963, upper := 7090,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7091, upper := 7208,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7209, upper := 7336,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7337, upper := 7462,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7463, upper := 7588,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7589, upper := 7718,
        witness := RowWitness.topPrime 7589
      },
      {
        lower := 7719, upper := 7846,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7847, upper := 7970,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7971, upper := 8092,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8093, upper := 8222,
        witness := RowWitness.topPrime 8093
      },
      {
        lower := 8223, upper := 8350,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8351, upper := 8458,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8459, upper := 8576,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8577, upper := 8702,
        witness := RowWitness.topPrime 8573
      },
      {
        lower := 8703, upper := 8828,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8829, upper := 8950,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8951, upper := 9080,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9081, upper := 9196,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9197, upper := 9316,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9317, upper := 9440,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9441, upper := 9568,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9569, upper := 9680,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9681, upper := 9808,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9809, upper := 9932,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9933, upper := 10060,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10061, upper := 10190,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10191, upper := 10310,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10311, upper := 10432,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10433, upper := 10562,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10563, upper := 10688,
        witness := RowWitness.topPrime 10559
      },
      {
        lower := 10689, upper := 10816,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10817, upper := 10928,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10929, upper := 11038,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11039, upper := 11156,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11157, upper := 11278,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11279, upper := 11408,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11409, upper := 11528,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11529, upper := 11656,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11657, upper := 11786,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11787, upper := 11912,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 11913, upper := 12038,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12039, upper := 12166,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12167, upper := 12292,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12293, upper := 12418,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12419, upper := 12542,
        witness := RowWitness.topPrime 12413
      },
      {
        lower := 12543, upper := 12670,
        witness := RowWitness.topPrime 12541
      },
      {
        lower := 12671, upper := 12800,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12801, upper := 12928,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12929, upper := 13052,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13053, upper := 13178,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13179, upper := 13306,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13307, upper := 13426,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13427, upper := 13550,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13551, upper := 13666,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13667, upper := 13778,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13779, upper := 13892,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13893, upper := 14012,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14013, upper := 14140,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14141, upper := 14236,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14237, upper := 14350,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14351, upper := 14476,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14477, upper := 14590,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14591, upper := 14720,
        witness := RowWitness.topPrime 14591
      },
      {
        lower := 14721, upper := 14846,
        witness := RowWitness.topPrime 14717
      },
      {
        lower := 14847, upper := 14972,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 14973, upper := 15098,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15099, upper := 15220,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15221, upper := 15346,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15347, upper := 15460,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15461, upper := 15590,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15591, upper := 15712,
        witness := RowWitness.topPrime 15583
      },
      {
        lower := 15713, upper := 15812,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15813, upper := 15938,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15939, upper := 16066,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16067, upper := 16196,
        witness := RowWitness.topPrime 16067
      },
      {
        lower := 16197, upper := 16322,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16323, upper := 16448,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16449, upper := 16576,
        witness := RowWitness.topPrime 16447
      },
      {
        lower := 16577, upper := 16702,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16703, upper := 16769,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16810, upper := 16916,
        witness := RowWitness.topPrime 16787
      },
      {
        lower := 16917, upper := 16939,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17405, upper := 17432,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17534,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17797, upper := 17801,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18491, upper := 18610,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18611, upper := 18620,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18746,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18747, upper := 18763,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18818, upper := 18852,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19295,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19790,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19791, upper := 19792,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19965, upper := 20010,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20290,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20291, upper := 20293,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20468,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20531,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20662,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20663, upper := 20664,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20667, upper := 20706,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21412,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21413, upper := 21425,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21992,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21993, upper := 21999,
        witness := RowWitness.topPrime 21991
      },
      {
        lower := 22188, upper := 22219,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22455,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22574,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23890,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23891, upper := 23891,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24037, upper := 24158,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24159, upper := 24166,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24458,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24459, upper := 24496,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24694,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25318,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25319, upper := 25344,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26508, upper := 26540,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27025,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27565,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27864,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28672, upper := 28690,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28801,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28846,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29607,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29897,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30722,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30723, upper := 30732,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30926, upper := 31028,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31322,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31323, upper := 31379,
        witness := RowWitness.topPrime 31321
      },
      {
        lower := 31423, upper := 31458,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32897,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33618,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33743,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34466,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34467, upper := 34520,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 37303, upper := 37339,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 38307, upper := 38420,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39433,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40457,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40933,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41060,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47650,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47651, upper := 47653,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48090,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48797,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49259,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50539,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51134,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55570,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55571, upper := 55576,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 58619, upper := 58693,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59085,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63948, upper := 63974,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65665,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68694, upper := 68719,
        witness := RowWitness.topPrime 68687
      },
      {
        lower := 68921, upper := 69019,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71416,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71417, upper := 71418,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73296,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89502,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98433,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137910,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149006,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 16770, upper := 33540, M := 16
      },
      {
        lower := 33540, upper := 67080, M := 12
      },
      {
        lower := 67080, upper := 134160, M := 10
      },
      {
        lower := 134160, upper := 268320, M := 7
      },
      {
        lower := 268320, upper := 536640, M := 6
      },
      {
        lower := 536640, upper := 1073280, M := 5
      },
      {
        lower := 1073280, upper := 2146560, M := 4
      },
      {
        lower := 2146560, upper := 4293120, M := 3
      },
      {
        lower := 4293120, upper := 8586240, M := 2
      },
      {
        lower := 8586240, upper := 17172480, M := 2
      },
      {
        lower := 17172480, upper := 34344960, M := 2
      },
      {
        lower := 34344960, upper := 68689920, M := 1
      },
      {
        lower := 68689920, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 131, r := 43, s := 92,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 264, upper := 393,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 394, upper := 519,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 520, upper := 639,
        witness := RowWitness.topPrime 509
      },
      {
        lower := 640, upper := 761,
        witness := RowWitness.topPrime 631
      },
      {
        lower := 762, upper := 891,
        witness := RowWitness.topPrime 761
      },
      {
        lower := 892, upper := 1017,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1018, upper := 1143,
        witness := RowWitness.topPrime 1013
      },
      {
        lower := 1144, upper := 1259,
        witness := RowWitness.topPrime 1129
      },
      {
        lower := 1260, upper := 1389,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1390, upper := 1511,
        witness := RowWitness.topPrime 1381
      },
      {
        lower := 1512, upper := 1641,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1642, upper := 1767,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1768, upper := 1889,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1890, upper := 2019,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2020, upper := 2147,
        witness := RowWitness.topPrime 2017
      },
      {
        lower := 2148, upper := 2273,
        witness := RowWitness.topPrime 2143
      },
      {
        lower := 2274, upper := 2403,
        witness := RowWitness.topPrime 2273
      },
      {
        lower := 2404, upper := 2529,
        witness := RowWitness.topPrime 2399
      },
      {
        lower := 2530, upper := 2651,
        witness := RowWitness.topPrime 2521
      },
      {
        lower := 2652, upper := 2777,
        witness := RowWitness.topPrime 2647
      },
      {
        lower := 2778, upper := 2907,
        witness := RowWitness.topPrime 2777
      },
      {
        lower := 2908, upper := 3033,
        witness := RowWitness.topPrime 2903
      },
      {
        lower := 3034, upper := 3153,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3154, upper := 3267,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3268, upper := 3389,
        witness := RowWitness.topPrime 3259
      },
      {
        lower := 3390, upper := 3519,
        witness := RowWitness.topPrime 3389
      },
      {
        lower := 3520, upper := 3647,
        witness := RowWitness.topPrime 3517
      },
      {
        lower := 3648, upper := 3773,
        witness := RowWitness.topPrime 3643
      },
      {
        lower := 3774, upper := 3899,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3900, upper := 4019,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4020, upper := 4149,
        witness := RowWitness.topPrime 4019
      },
      {
        lower := 4150, upper := 4269,
        witness := RowWitness.topPrime 4139
      },
      {
        lower := 4270, upper := 4391,
        witness := RowWitness.topPrime 4261
      },
      {
        lower := 4392, upper := 4521,
        witness := RowWitness.topPrime 4391
      },
      {
        lower := 4522, upper := 4649,
        witness := RowWitness.topPrime 4519
      },
      {
        lower := 4650, upper := 4779,
        witness := RowWitness.topPrime 4649
      },
      {
        lower := 4780, upper := 4889,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4890, upper := 5019,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5020, upper := 5141,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5142, upper := 5249,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5250, upper := 5367,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5368, upper := 5481,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5482, upper := 5609,
        witness := RowWitness.topPrime 5479
      },
      {
        lower := 5610, upper := 5721,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5722, upper := 5847,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5848, upper := 5973,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5974, upper := 6083,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6084, upper := 6209,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6210, upper := 6333,
        witness := RowWitness.topPrime 6203
      },
      {
        lower := 6334, upper := 6459,
        witness := RowWitness.topPrime 6329
      },
      {
        lower := 6460, upper := 6581,
        witness := RowWitness.topPrime 6451
      },
      {
        lower := 6582, upper := 6711,
        witness := RowWitness.topPrime 6581
      },
      {
        lower := 6712, upper := 6839,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6840, upper := 6963,
        witness := RowWitness.topPrime 6833
      },
      {
        lower := 6964, upper := 7091,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7092, upper := 7209,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7210, upper := 7337,
        witness := RowWitness.topPrime 7207
      },
      {
        lower := 7338, upper := 7463,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7464, upper := 7589,
        witness := RowWitness.topPrime 7459
      },
      {
        lower := 7590, upper := 7719,
        witness := RowWitness.topPrime 7589
      },
      {
        lower := 7720, upper := 7847,
        witness := RowWitness.topPrime 7717
      },
      {
        lower := 7848, upper := 7971,
        witness := RowWitness.topPrime 7841
      },
      {
        lower := 7972, upper := 8093,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8094, upper := 8223,
        witness := RowWitness.topPrime 8093
      },
      {
        lower := 8224, upper := 8351,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8352, upper := 8459,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8460, upper := 8577,
        witness := RowWitness.topPrime 8447
      },
      {
        lower := 8578, upper := 8703,
        witness := RowWitness.topPrime 8573
      },
      {
        lower := 8704, upper := 8829,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8830, upper := 8951,
        witness := RowWitness.topPrime 8821
      },
      {
        lower := 8952, upper := 9081,
        witness := RowWitness.topPrime 8951
      },
      {
        lower := 9082, upper := 9197,
        witness := RowWitness.topPrime 9067
      },
      {
        lower := 9198, upper := 9317,
        witness := RowWitness.topPrime 9187
      },
      {
        lower := 9318, upper := 9441,
        witness := RowWitness.topPrime 9311
      },
      {
        lower := 9442, upper := 9569,
        witness := RowWitness.topPrime 9439
      },
      {
        lower := 9570, upper := 9681,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9682, upper := 9809,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9810, upper := 9933,
        witness := RowWitness.topPrime 9803
      },
      {
        lower := 9934, upper := 10061,
        witness := RowWitness.topPrime 9931
      },
      {
        lower := 10062, upper := 10191,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10192, upper := 10311,
        witness := RowWitness.topPrime 10181
      },
      {
        lower := 10312, upper := 10433,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10434, upper := 10563,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10564, upper := 10689,
        witness := RowWitness.topPrime 10559
      },
      {
        lower := 10690, upper := 10817,
        witness := RowWitness.topPrime 10687
      },
      {
        lower := 10818, upper := 10929,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10930, upper := 11039,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11040, upper := 11157,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11158, upper := 11279,
        witness := RowWitness.topPrime 11149
      },
      {
        lower := 11280, upper := 11409,
        witness := RowWitness.topPrime 11279
      },
      {
        lower := 11410, upper := 11529,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11530, upper := 11657,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11658, upper := 11787,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11788, upper := 11913,
        witness := RowWitness.topPrime 11783
      },
      {
        lower := 11914, upper := 12039,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12040, upper := 12167,
        witness := RowWitness.topPrime 12037
      },
      {
        lower := 12168, upper := 12293,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12294, upper := 12419,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12420, upper := 12543,
        witness := RowWitness.topPrime 12413
      },
      {
        lower := 12544, upper := 12671,
        witness := RowWitness.topPrime 12541
      },
      {
        lower := 12672, upper := 12801,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12802, upper := 12929,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12930, upper := 13053,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13054, upper := 13179,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13180, upper := 13307,
        witness := RowWitness.topPrime 13177
      },
      {
        lower := 13308, upper := 13427,
        witness := RowWitness.topPrime 13297
      },
      {
        lower := 13428, upper := 13551,
        witness := RowWitness.topPrime 13421
      },
      {
        lower := 13552, upper := 13667,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13668, upper := 13779,
        witness := RowWitness.topPrime 13649
      },
      {
        lower := 13780, upper := 13893,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13894, upper := 14013,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14014, upper := 14141,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14142, upper := 14237,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14238, upper := 14351,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14352, upper := 14477,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14478, upper := 14591,
        witness := RowWitness.topPrime 14461
      },
      {
        lower := 14592, upper := 14721,
        witness := RowWitness.topPrime 14591
      },
      {
        lower := 14722, upper := 14847,
        witness := RowWitness.topPrime 14717
      },
      {
        lower := 14848, upper := 14973,
        witness := RowWitness.topPrime 14843
      },
      {
        lower := 14974, upper := 15099,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15100, upper := 15221,
        witness := RowWitness.topPrime 15091
      },
      {
        lower := 15222, upper := 15347,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15348, upper := 15461,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15462, upper := 15591,
        witness := RowWitness.topPrime 15461
      },
      {
        lower := 15592, upper := 15713,
        witness := RowWitness.topPrime 15583
      },
      {
        lower := 15714, upper := 15813,
        witness := RowWitness.topPrime 15683
      },
      {
        lower := 15814, upper := 15939,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15940, upper := 16067,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16068, upper := 16197,
        witness := RowWitness.topPrime 16067
      },
      {
        lower := 16198, upper := 16323,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16324, upper := 16449,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16450, upper := 16577,
        witness := RowWitness.topPrime 16447
      },
      {
        lower := 16578, upper := 16703,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16704, upper := 16833,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16834, upper := 16961,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16962, upper := 17029,
        witness := RowWitness.topPrime 16943
      },
      {
        lower := 17405, upper := 17433,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17496, upper := 17535,
        witness := RowWitness.topPrime 17491
      },
      {
        lower := 17576, upper := 17626,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17706,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17802,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18490, upper := 18611,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18612, upper := 18621,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18747,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18748, upper := 18873,
        witness := RowWitness.topPrime 18743
      },
      {
        lower := 18874, upper := 18880,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19296,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19791,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19792, upper := 19813,
        witness := RowWitness.topPrime 19777
      },
      {
        lower := 19881, upper := 19903,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20011,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20291,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20292, upper := 20294,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20469,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20532,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20535, upper := 20663,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20664, upper := 20665,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 20667, upper := 20707,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21413,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21414, upper := 21426,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21993,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21994, upper := 22034,
        witness := RowWitness.topPrime 21991
      },
      {
        lower := 22090, upper := 22100,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22220,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22456,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22599,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22600, upper := 22602,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23891,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23892, upper := 23892,
        witness := RowWitness.topPrime 23887
      },
      {
        lower := 24037, upper := 24159,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24160, upper := 24187,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24459,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24460, upper := 24497,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24695,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25094,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25319,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25320, upper := 25345,
        witness := RowWitness.topPrime 25309
      },
      {
        lower := 26364, upper := 26374,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26494,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26541,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26638,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26754,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27026,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27566,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27865,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28220,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28255,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28561,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28691,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28802,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28847,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29608,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29898,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30723,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30724, upper := 30748,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30850,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31029,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31323,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31324, upper := 31380,
        witness := RowWitness.topPrime 31321
      },
      {
        lower := 31423, upper := 31459,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32898,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33619,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33744,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34467,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34468, upper := 34521,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 37303, upper := 37340,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37576,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38421,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39434,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40458,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40934,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41061,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47651,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47652, upper := 47654,
        witness := RowWitness.topPrime 47639
      },
      {
        lower := 48013, upper := 48091,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48798,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49260,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50540,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51135,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55571,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55572, upper := 55577,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57252,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57375,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58694,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59086,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62540,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63975,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65666,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 71289, upper := 71417,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71418, upper := 71419,
        witness := RowWitness.topPrime 71413
      },
      {
        lower := 73205, upper := 73297,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 89383, upper := 89503,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98434,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 109503, upper := 109505,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137911,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149007,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 17030, upper := 34060, M := 16
      },
      {
        lower := 34060, upper := 68120, M := 12
      },
      {
        lower := 68120, upper := 136240, M := 9
      },
      {
        lower := 136240, upper := 272480, M := 7
      },
      {
        lower := 272480, upper := 544960, M := 5
      },
      {
        lower := 544960, upper := 1089920, M := 4
      },
      {
        lower := 1089920, upper := 2179840, M := 3
      },
      {
        lower := 2179840, upper := 4359680, M := 3
      },
      {
        lower := 4359680, upper := 8719360, M := 2
      },
      {
        lower := 8719360, upper := 17438720, M := 2
      },
      {
        lower := 17438720, upper := 34877440, M := 1
      },
      {
        lower := 34877440, upper := 69754880, M := 1
      },
      {
        lower := 69754880, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 132, r := 43, s := 93,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 266, upper := 394,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 395, upper := 520,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 521, upper := 652,
        witness := RowWitness.topPrime 521
      },
      {
        lower := 653, upper := 784,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 785, upper := 904,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 905, upper := 1018,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1019, upper := 1150,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1151, upper := 1282,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1283, upper := 1414,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1415, upper := 1540,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1541, upper := 1662,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1663, upper := 1794,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1795, upper := 1920,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1921, upper := 2044,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2045, upper := 2170,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2171, upper := 2292,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2293, upper := 2424,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2425, upper := 2554,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2555, upper := 2682,
        witness := RowWitness.topPrime 2551
      },
      {
        lower := 2683, upper := 2814,
        witness := RowWitness.topPrime 2683
      },
      {
        lower := 2815, upper := 2934,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2935, upper := 3058,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3059, upper := 3180,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3181, upper := 3312,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3313, upper := 3444,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3445, upper := 3564,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3565, upper := 3690,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3691, upper := 3822,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3823, upper := 3954,
        witness := RowWitness.topPrime 3823
      },
      {
        lower := 3955, upper := 4078,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4079, upper := 4210,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4211, upper := 4342,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4343, upper := 4470,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4471, upper := 4594,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4595, upper := 4722,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4723, upper := 4854,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4855, upper := 4962,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4963, upper := 5088,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5089, upper := 5218,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5219, upper := 5340,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5341, upper := 5464,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5465, upper := 5580,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5581, upper := 5712,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5713, upper := 5842,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5843, upper := 5974,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5975, upper := 6084,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6085, upper := 6210,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6211, upper := 6342,
        witness := RowWitness.topPrime 6211
      },
      {
        lower := 6343, upper := 6474,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6475, upper := 6604,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6605, upper := 6730,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6731, upper := 6850,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6851, upper := 6972,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6973, upper := 7102,
        witness := RowWitness.topPrime 6971
      },
      {
        lower := 7103, upper := 7234,
        witness := RowWitness.topPrime 7103
      },
      {
        lower := 7235, upper := 7360,
        witness := RowWitness.topPrime 7229
      },
      {
        lower := 7361, upper := 7482,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7483, upper := 7612,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7613, upper := 7738,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7739, upper := 7858,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7859, upper := 7984,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7985, upper := 8094,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8095, upper := 8224,
        witness := RowWitness.topPrime 8093
      },
      {
        lower := 8225, upper := 8352,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8353, upper := 8484,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8485, upper := 8598,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8599, upper := 8730,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8731, upper := 8862,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8863, upper := 8994,
        witness := RowWitness.topPrime 8863
      },
      {
        lower := 8995, upper := 9102,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9103, upper := 9234,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9235, upper := 9358,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9359, upper := 9480,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9481, upper := 9610,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9611, upper := 9732,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9733, upper := 9864,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9865, upper := 9990,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 9991, upper := 10104,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10105, upper := 10234,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10235, upper := 10354,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10355, upper := 10474,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10475, upper := 10594,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10595, upper := 10720,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10721, upper := 10842,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10843, upper := 10968,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10969, upper := 11088,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11089, upper := 11218,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11219, upper := 11344,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11345, upper := 11460,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11461, upper := 11578,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11579, upper := 11710,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11711, upper := 11832,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11833, upper := 11964,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11965, upper := 12090,
        witness := RowWitness.topPrime 11959
      },
      {
        lower := 12091, upper := 12204,
        witness := RowWitness.topPrime 12073
      },
      {
        lower := 12205, upper := 12334,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12335, upper := 12460,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12461, upper := 12588,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12589, upper := 12720,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12721, upper := 12852,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12853, upper := 12984,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12985, upper := 13114,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13115, upper := 13240,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13241, upper := 13372,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13373, upper := 13498,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13499, upper := 13630,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13631, upper := 13758,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13759, upper := 13890,
        witness := RowWitness.topPrime 13759
      },
      {
        lower := 13891, upper := 14014,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14015, upper := 14142,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14143, upper := 14274,
        witness := RowWitness.topPrime 14143
      },
      {
        lower := 14275, upper := 14382,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14383, upper := 14500,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14501, upper := 14620,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14621, upper := 14752,
        witness := RowWitness.topPrime 14621
      },
      {
        lower := 14753, upper := 14884,
        witness := RowWitness.topPrime 14753
      },
      {
        lower := 14885, upper := 15010,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15011, upper := 15114,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15115, upper := 15238,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15239, upper := 15364,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15365, upper := 15492,
        witness := RowWitness.topPrime 15361
      },
      {
        lower := 15493, upper := 15624,
        witness := RowWitness.topPrime 15493
      },
      {
        lower := 15625, upper := 15750,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15751, upper := 15880,
        witness := RowWitness.topPrime 15749
      },
      {
        lower := 15881, upper := 16012,
        witness := RowWitness.topPrime 15881
      },
      {
        lower := 16013, upper := 16138,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16139, upper := 16270,
        witness := RowWitness.topPrime 16139
      },
      {
        lower := 16271, upper := 16398,
        witness := RowWitness.topPrime 16267
      },
      {
        lower := 16399, upper := 16512,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16513, upper := 16624,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16625, upper := 16750,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16751, upper := 16878,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16879, upper := 17010,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17011, upper := 17142,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17143, upper := 17268,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17269, upper := 17291,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17405, upper := 17429,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17672, upper := 17707,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17803,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18491, upper := 18612,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18613, upper := 18622,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18723, upper := 18736,
        witness := RowWitness.topPrime 18719
      },
      {
        lower := 18750, upper := 18880,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18881, upper := 18881,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19297,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19792,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19793, upper := 19814,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19904,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20172, upper := 20292,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20293, upper := 20295,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20470,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20577, upper := 20694,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20695, upper := 20708,
        witness := RowWitness.topPrime 20693
      },
      {
        lower := 21316, upper := 21349,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21875, upper := 22002,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22003, upper := 22035,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22101,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22221,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22457,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22576,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23892,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23893, upper := 23893,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24141,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24168,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24334, upper := 24460,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24461, upper := 24498,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24702,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24703, upper := 24707,
        witness := RowWitness.topPrime 24697
      },
      {
        lower := 25000, upper := 25095,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25320,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25321, upper := 25346,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26375,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26495,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26542,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26934, upper := 27027,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27567,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27866,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28221,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28256,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28577, upper := 28692,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28812, upper := 28848,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29609,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29899,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30377,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30926, upper := 31030,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31324,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31325, upper := 31381,
        witness := RowWitness.topPrime 31321
      },
      {
        lower := 31423, upper := 31528,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31529, upper := 31554,
        witness := RowWitness.topPrime 31517
      },
      {
        lower := 32805, upper := 32899,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33620,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33745,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34450,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34451, upper := 34522,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 36517, upper := 36628,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36629, upper := 36632,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37341,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37577,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38422,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39454,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39455, upper := 39457,
        witness := RowWitness.topPrime 39451
      },
      {
        lower := 40401, upper := 40459,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40935,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 43750, upper := 43818,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45384,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47652,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47653, upper := 47655,
        witness := RowWitness.topPrime 47653
      },
      {
        lower := 48013, upper := 48092,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48504,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48864,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48865, upper := 48865,
        witness := RowWitness.topPrime 48859
      },
      {
        lower := 49152, upper := 49261,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50541,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51136,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55572,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55573, upper := 55578,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57253,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 59049, upper := 59087,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62541,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63994,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63995, upper := 64000,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65652,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65653, upper := 65664,
        witness := RowWitness.topPrime 65651
      },
      {
        lower := 68644, upper := 68770,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68771, upper := 68825,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68890, upper := 68913,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69021,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71418,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71419, upper := 71420,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 85805, upper := 85814,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89504,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 103041, upper := 103097,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109506,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149008,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 17292, upper := 34584, M := 18
      },
      {
        lower := 34584, upper := 69168, M := 14
      },
      {
        lower := 69168, upper := 138336, M := 11
      },
      {
        lower := 138336, upper := 276672, M := 9
      },
      {
        lower := 276672, upper := 553344, M := 7
      },
      {
        lower := 553344, upper := 1106688, M := 5
      },
      {
        lower := 1106688, upper := 2213376, M := 4
      },
      {
        lower := 2213376, upper := 4426752, M := 3
      },
      {
        lower := 4426752, upper := 8853504, M := 3
      },
      {
        lower := 8853504, upper := 17707008, M := 2
      },
      {
        lower := 17707008, upper := 35414016, M := 2
      },
      {
        lower := 35414016, upper := 70828032, M := 2
      },
      {
        lower := 70828032, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 133, r := 44, s := 94,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 268, upper := 395,
        witness := RowWitness.topPrime 263
      },
      {
        lower := 396, upper := 521,
        witness := RowWitness.topPrime 389
      },
      {
        lower := 522, upper := 653,
        witness := RowWitness.topPrime 521
      },
      {
        lower := 654, upper := 785,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 786, upper := 905,
        witness := RowWitness.topPrime 773
      },
      {
        lower := 906, upper := 1019,
        witness := RowWitness.topPrime 887
      },
      {
        lower := 1020, upper := 1151,
        witness := RowWitness.topPrime 1019
      },
      {
        lower := 1152, upper := 1283,
        witness := RowWitness.topPrime 1151
      },
      {
        lower := 1284, upper := 1415,
        witness := RowWitness.topPrime 1283
      },
      {
        lower := 1416, upper := 1541,
        witness := RowWitness.topPrime 1409
      },
      {
        lower := 1542, upper := 1663,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1664, upper := 1795,
        witness := RowWitness.topPrime 1663
      },
      {
        lower := 1796, upper := 1921,
        witness := RowWitness.topPrime 1789
      },
      {
        lower := 1922, upper := 2045,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2046, upper := 2171,
        witness := RowWitness.topPrime 2039
      },
      {
        lower := 2172, upper := 2293,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2294, upper := 2425,
        witness := RowWitness.topPrime 2293
      },
      {
        lower := 2426, upper := 2555,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2556, upper := 2683,
        witness := RowWitness.topPrime 2551
      },
      {
        lower := 2684, upper := 2815,
        witness := RowWitness.topPrime 2683
      },
      {
        lower := 2816, upper := 2935,
        witness := RowWitness.topPrime 2803
      },
      {
        lower := 2936, upper := 3059,
        witness := RowWitness.topPrime 2927
      },
      {
        lower := 3060, upper := 3181,
        witness := RowWitness.topPrime 3049
      },
      {
        lower := 3182, upper := 3313,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3314, upper := 3445,
        witness := RowWitness.topPrime 3313
      },
      {
        lower := 3446, upper := 3565,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3566, upper := 3691,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3692, upper := 3823,
        witness := RowWitness.topPrime 3691
      },
      {
        lower := 3824, upper := 3955,
        witness := RowWitness.topPrime 3823
      },
      {
        lower := 3956, upper := 4079,
        witness := RowWitness.topPrime 3947
      },
      {
        lower := 4080, upper := 4211,
        witness := RowWitness.topPrime 4079
      },
      {
        lower := 4212, upper := 4343,
        witness := RowWitness.topPrime 4211
      },
      {
        lower := 4344, upper := 4471,
        witness := RowWitness.topPrime 4339
      },
      {
        lower := 4472, upper := 4595,
        witness := RowWitness.topPrime 4463
      },
      {
        lower := 4596, upper := 4723,
        witness := RowWitness.topPrime 4591
      },
      {
        lower := 4724, upper := 4855,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4856, upper := 4963,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4964, upper := 5089,
        witness := RowWitness.topPrime 4957
      },
      {
        lower := 5090, upper := 5219,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5220, upper := 5341,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5342, upper := 5465,
        witness := RowWitness.topPrime 5333
      },
      {
        lower := 5466, upper := 5581,
        witness := RowWitness.topPrime 5449
      },
      {
        lower := 5582, upper := 5713,
        witness := RowWitness.topPrime 5581
      },
      {
        lower := 5714, upper := 5843,
        witness := RowWitness.topPrime 5711
      },
      {
        lower := 5844, upper := 5975,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5976, upper := 6085,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6086, upper := 6211,
        witness := RowWitness.topPrime 6079
      },
      {
        lower := 6212, upper := 6343,
        witness := RowWitness.topPrime 6211
      },
      {
        lower := 6344, upper := 6475,
        witness := RowWitness.topPrime 6343
      },
      {
        lower := 6476, upper := 6605,
        witness := RowWitness.topPrime 6473
      },
      {
        lower := 6606, upper := 6731,
        witness := RowWitness.topPrime 6599
      },
      {
        lower := 6732, upper := 6851,
        witness := RowWitness.topPrime 6719
      },
      {
        lower := 6852, upper := 6973,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6974, upper := 7103,
        witness := RowWitness.topPrime 6971
      },
      {
        lower := 7104, upper := 7235,
        witness := RowWitness.topPrime 7103
      },
      {
        lower := 7236, upper := 7361,
        witness := RowWitness.topPrime 7229
      },
      {
        lower := 7362, upper := 7483,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7484, upper := 7613,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7614, upper := 7739,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7740, upper := 7859,
        witness := RowWitness.topPrime 7727
      },
      {
        lower := 7860, upper := 7985,
        witness := RowWitness.topPrime 7853
      },
      {
        lower := 7986, upper := 8095,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8096, upper := 8225,
        witness := RowWitness.topPrime 8093
      },
      {
        lower := 8226, upper := 8353,
        witness := RowWitness.topPrime 8221
      },
      {
        lower := 8354, upper := 8485,
        witness := RowWitness.topPrime 8353
      },
      {
        lower := 8486, upper := 8599,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8600, upper := 8731,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8732, upper := 8863,
        witness := RowWitness.topPrime 8731
      },
      {
        lower := 8864, upper := 8995,
        witness := RowWitness.topPrime 8863
      },
      {
        lower := 8996, upper := 9103,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9104, upper := 9235,
        witness := RowWitness.topPrime 9103
      },
      {
        lower := 9236, upper := 9359,
        witness := RowWitness.topPrime 9227
      },
      {
        lower := 9360, upper := 9481,
        witness := RowWitness.topPrime 9349
      },
      {
        lower := 9482, upper := 9611,
        witness := RowWitness.topPrime 9479
      },
      {
        lower := 9612, upper := 9733,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9734, upper := 9865,
        witness := RowWitness.topPrime 9733
      },
      {
        lower := 9866, upper := 9991,
        witness := RowWitness.topPrime 9859
      },
      {
        lower := 9992, upper := 10105,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10106, upper := 10235,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10236, upper := 10355,
        witness := RowWitness.topPrime 10223
      },
      {
        lower := 10356, upper := 10475,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10476, upper := 10595,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10596, upper := 10721,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10722, upper := 10843,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10844, upper := 10969,
        witness := RowWitness.topPrime 10837
      },
      {
        lower := 10970, upper := 11089,
        witness := RowWitness.topPrime 10957
      },
      {
        lower := 11090, upper := 11219,
        witness := RowWitness.topPrime 11087
      },
      {
        lower := 11220, upper := 11345,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11346, upper := 11461,
        witness := RowWitness.topPrime 11329
      },
      {
        lower := 11462, upper := 11579,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11580, upper := 11711,
        witness := RowWitness.topPrime 11579
      },
      {
        lower := 11712, upper := 11833,
        witness := RowWitness.topPrime 11701
      },
      {
        lower := 11834, upper := 11965,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11966, upper := 12091,
        witness := RowWitness.topPrime 11959
      },
      {
        lower := 12092, upper := 12205,
        witness := RowWitness.topPrime 12073
      },
      {
        lower := 12206, upper := 12335,
        witness := RowWitness.topPrime 12203
      },
      {
        lower := 12336, upper := 12461,
        witness := RowWitness.topPrime 12329
      },
      {
        lower := 12462, upper := 12589,
        witness := RowWitness.topPrime 12457
      },
      {
        lower := 12590, upper := 12721,
        witness := RowWitness.topPrime 12589
      },
      {
        lower := 12722, upper := 12853,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12854, upper := 12985,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12986, upper := 13115,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13116, upper := 13241,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13242, upper := 13373,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13374, upper := 13499,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13500, upper := 13631,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13632, upper := 13759,
        witness := RowWitness.topPrime 13627
      },
      {
        lower := 13760, upper := 13891,
        witness := RowWitness.topPrime 13759
      },
      {
        lower := 13892, upper := 14015,
        witness := RowWitness.topPrime 13883
      },
      {
        lower := 14016, upper := 14143,
        witness := RowWitness.topPrime 14011
      },
      {
        lower := 14144, upper := 14275,
        witness := RowWitness.topPrime 14143
      },
      {
        lower := 14276, upper := 14383,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14384, upper := 14501,
        witness := RowWitness.topPrime 14369
      },
      {
        lower := 14502, upper := 14621,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14622, upper := 14753,
        witness := RowWitness.topPrime 14621
      },
      {
        lower := 14754, upper := 14885,
        witness := RowWitness.topPrime 14753
      },
      {
        lower := 14886, upper := 15011,
        witness := RowWitness.topPrime 14879
      },
      {
        lower := 15012, upper := 15115,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15116, upper := 15239,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15240, upper := 15365,
        witness := RowWitness.topPrime 15233
      },
      {
        lower := 15366, upper := 15493,
        witness := RowWitness.topPrime 15361
      },
      {
        lower := 15494, upper := 15625,
        witness := RowWitness.topPrime 15493
      },
      {
        lower := 15626, upper := 15751,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15752, upper := 15881,
        witness := RowWitness.topPrime 15749
      },
      {
        lower := 15882, upper := 16013,
        witness := RowWitness.topPrime 15881
      },
      {
        lower := 16014, upper := 16139,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16140, upper := 16271,
        witness := RowWitness.topPrime 16139
      },
      {
        lower := 16272, upper := 16399,
        witness := RowWitness.topPrime 16267
      },
      {
        lower := 16400, upper := 16513,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16514, upper := 16625,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16626, upper := 16751,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16752, upper := 16879,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16880, upper := 17011,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17012, upper := 17143,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17144, upper := 17269,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17270, upper := 17389,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17390, upper := 17521,
        witness := RowWitness.topPrime 17389
      },
      {
        lower := 17522, upper := 17555,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17576, upper := 17628,
        witness := RowWitness.topPrime 17573
      },
      {
        lower := 17672, upper := 17708,
        witness := RowWitness.topPrime 17669
      },
      {
        lower := 17797, upper := 17804,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 18490, upper := 18613,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18614, upper := 18623,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18749,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18750, upper := 18881,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18882, upper := 18882,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19663, upper := 19793,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19794, upper := 19815,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19905,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20013,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20293,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20294, upper := 20296,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20471,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20611,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20612, upper := 20612,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 20667, upper := 20667,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21415,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21416, upper := 21428,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21995,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21996, upper := 22036,
        witness := RowWitness.topPrime 21991
      },
      {
        lower := 22090, upper := 22102,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22222,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22458,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22601,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22602, upper := 22604,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22660,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23893,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23894, upper := 23894,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24161,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24162, upper := 24189,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24299,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24461,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24462, upper := 24499,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24703,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24704, upper := 24708,
        witness := RowWitness.topPrime 24697
      },
      {
        lower := 25000, upper := 25096,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25321,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25322, upper := 25347,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26376,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26624, upper := 26640,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26756,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27028,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27848, upper := 27867,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28222,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28257,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28563,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28577, upper := 28705,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28706, upper := 28709,
        witness := RowWitness.topPrime 28703
      },
      {
        lower := 28717, upper := 28804,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29584, upper := 29610,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29900,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30378,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30725,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30726, upper := 30750,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30852,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31031,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31381,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31382, upper := 31382,
        witness := RowWitness.topPrime 31379
      },
      {
        lower := 31423, upper := 31529,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31530, upper := 31555,
        witness := RowWitness.topPrime 31517
      },
      {
        lower := 32805, upper := 32900,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33621,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33746,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34347, upper := 34469,
        witness := RowWitness.topPrime 34337
      },
      {
        lower := 34470, upper := 34523,
        witness := RowWitness.topPrime 34469
      },
      {
        lower := 34816, upper := 34939,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34940, upper := 34942,
        witness := RowWitness.topPrime 34939
      },
      {
        lower := 36517, upper := 36629,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36630, upper := 36633,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37342,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37578,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38423,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39455,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39456, upper := 39458,
        witness := RowWitness.topPrime 39451
      },
      {
        lower := 40401, upper := 40460,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40936,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41063,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43819,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45385,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45928,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47653,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47654, upper := 47656,
        witness := RowWitness.topPrime 47653
      },
      {
        lower := 48387, upper := 48505,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48865,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48866, upper := 48866,
        witness := RowWitness.topPrime 48859
      },
      {
        lower := 49152, upper := 49262,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51137,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53380,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55573,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55574, upper := 55579,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57254,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57377,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58696,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59088,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62542,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63995,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63996, upper := 64001,
        witness := RowWitness.topPrime 63977
      },
      {
        lower := 65536, upper := 65653,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65654, upper := 65668,
        witness := RowWitness.topPrime 65651
      },
      {
        lower := 68651, upper := 68771,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68772, upper := 68826,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68890, upper := 68914,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 68921, upper := 69022,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71419,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71420, upper := 71421,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73299,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85815,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89505,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98436,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103098,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109507,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137913,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149009,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 17556, upper := 35112, M := 18
      },
      {
        lower := 35112, upper := 70224, M := 14
      },
      {
        lower := 70224, upper := 140448, M := 11
      },
      {
        lower := 140448, upper := 280896, M := 8
      },
      {
        lower := 280896, upper := 561792, M := 6
      },
      {
        lower := 561792, upper := 1123584, M := 5
      },
      {
        lower := 1123584, upper := 2247168, M := 4
      },
      {
        lower := 2247168, upper := 4494336, M := 3
      },
      {
        lower := 4494336, upper := 8988672, M := 3
      },
      {
        lower := 8988672, upper := 17977344, M := 2
      },
      {
        lower := 17977344, upper := 35954688, M := 2
      },
      {
        lower := 35954688, upper := 71909376, M := 1
      },
      {
        lower := 71909376, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 134, r := 44, s := 94,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 270, upper := 402,
        witness := RowWitness.topPrime 269
      },
      {
        lower := 403, upper := 534,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 535, upper := 656,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 657, upper := 786,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 787, upper := 920,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 921, upper := 1052,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1053, upper := 1184,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1185, upper := 1314,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1315, upper := 1440,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1441, upper := 1572,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1573, upper := 1704,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1705, upper := 1832,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1833, upper := 1964,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1965, upper := 2084,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2085, upper := 2216,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2217, upper := 2346,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2347, upper := 2480,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2481, upper := 2610,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2611, upper := 2742,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2743, upper := 2874,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2875, upper := 2994,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2995, upper := 3104,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3105, upper := 3222,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3223, upper := 3354,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3355, upper := 3480,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3481, upper := 3602,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3603, upper := 3726,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3727, upper := 3860,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3861, upper := 3986,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3987, upper := 4100,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4101, upper := 4232,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4233, upper := 4364,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4365, upper := 4496,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4497, upper := 4626,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4627, upper := 4754,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4755, upper := 4884,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4885, upper := 5010,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 5011, upper := 5144,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5145, upper := 5252,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5253, upper := 5370,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5371, upper := 5484,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5485, upper := 5616,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5617, upper := 5724,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5725, upper := 5850,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5851, upper := 5984,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5985, upper := 6114,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6115, upper := 6246,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6247, upper := 6380,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6381, upper := 6512,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6513, upper := 6624,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6625, upper := 6752,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6753, upper := 6870,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6871, upper := 7004,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7005, upper := 7134,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7135, upper := 7262,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7263, upper := 7386,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7387, upper := 7502,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7503, upper := 7632,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7633, upper := 7754,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7755, upper := 7886,
        witness := RowWitness.topPrime 7753
      },
      {
        lower := 7887, upper := 8016,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8017, upper := 8150,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8151, upper := 8280,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8281, upper := 8406,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8407, upper := 8522,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8523, upper := 8654,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8655, upper := 8780,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8781, upper := 8912,
        witness := RowWitness.topPrime 8779
      },
      {
        lower := 8913, upper := 9026,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9027, upper := 9146,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9147, upper := 9270,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9271, upper := 9390,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9391, upper := 9524,
        witness := RowWitness.topPrime 9391
      },
      {
        lower := 9525, upper := 9654,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9655, upper := 9782,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9783, upper := 9914,
        witness := RowWitness.topPrime 9781
      },
      {
        lower := 9915, upper := 10040,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10041, upper := 10172,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10173, upper := 10302,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10303, upper := 10436,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10437, upper := 10566,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10567, upper := 10700,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10701, upper := 10824,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10825, upper := 10932,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10933, upper := 11042,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11043, upper := 11160,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11161, upper := 11294,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11295, upper := 11420,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11421, upper := 11544,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11545, upper := 11660,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11661, upper := 11790,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11791, upper := 11922,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11923, upper := 12056,
        witness := RowWitness.topPrime 11923
      },
      {
        lower := 12057, upper := 12182,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12183, upper := 12296,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12297, upper := 12422,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12423, upper := 12554,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12555, upper := 12686,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12687, upper := 12804,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12805, upper := 12932,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12933, upper := 13056,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13057, upper := 13182,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13183, upper := 13316,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13317, upper := 13446,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13447, upper := 13574,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13575, upper := 13700,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13701, upper := 13830,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13831, upper := 13964,
        witness := RowWitness.topPrime 13831
      },
      {
        lower := 13965, upper := 14096,
        witness := RowWitness.topPrime 13963
      },
      {
        lower := 14097, upper := 14220,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14221, upper := 14354,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14355, upper := 14480,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14481, upper := 14612,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14613, upper := 14726,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14727, upper := 14856,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14857, upper := 14984,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 14985, upper := 15116,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15117, upper := 15240,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15241, upper := 15374,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15375, upper := 15506,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15507, upper := 15630,
        witness := RowWitness.topPrime 15497
      },
      {
        lower := 15631, upper := 15762,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15763, upper := 15894,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15895, upper := 16022,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16023, upper := 16140,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16141, upper := 16274,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16275, upper := 16406,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16407, upper := 16514,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16515, upper := 16626,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16627, upper := 16752,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16753, upper := 16880,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16881, upper := 17012,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17013, upper := 17144,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17145, upper := 17270,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17271, upper := 17390,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17391, upper := 17522,
        witness := RowWitness.topPrime 17389
      },
      {
        lower := 17523, upper := 17652,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17653, upper := 17760,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17761, upper := 17821,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 18491, upper := 18614,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18615, upper := 18624,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18750,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18751, upper := 18882,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18883, upper := 18883,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19299,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19794,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19795, upper := 19816,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19906,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20014,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20294,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20295, upper := 20297,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20472,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20612,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20613, upper := 20710,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 21296, upper := 21416,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21417, upper := 21429,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21870, upper := 21996,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21997, upper := 22037,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22103,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22223,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 23763, upper := 23894,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23895, upper := 23895,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24162,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24163, upper := 24190,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24300,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24462,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24463, upper := 24500,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24698,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25097,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25322,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25323, upper := 25348,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26377,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26497,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26544,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 27556, upper := 27569,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27868,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28223,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28258,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28564,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28577, upper := 28706,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28707, upper := 28710,
        witness := RowWitness.topPrime 28703
      },
      {
        lower := 28717, upper := 28805,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28850,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29611,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29901,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30726,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30727, upper := 30736,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30926, upper := 31032,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31326,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31327, upper := 31383,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31433, upper := 31462,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32901,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33622,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33747,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34452,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34453, upper := 34524,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35344, upper := 35420,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36630,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36631, upper := 36634,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37343,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37579,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38424,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39437,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40931, upper := 40937,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41064,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45386,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45929,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47654,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47655, upper := 47657,
        witness := RowWitness.topPrime 47653
      },
      {
        lower := 48013, upper := 48094,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48506,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48801,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49263,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50543,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51138,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55574,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55575, upper := 55580,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57255,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58697,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59089,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62543,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 63996,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 63997, upper := 64002,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65654,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65655, upper := 65669,
        witness := RowWitness.topPrime 65651
      },
      {
        lower := 68644, upper := 68772,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68773, upper := 68784,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68921, upper := 69023,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71420,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71421, upper := 71422,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73300,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85816,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89506,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98437,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103099,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109508,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137914,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149010,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 17822, upper := 35644, M := 17
      },
      {
        lower := 35644, upper := 71288, M := 13
      },
      {
        lower := 71288, upper := 142576, M := 10
      },
      {
        lower := 142576, upper := 285152, M := 8
      },
      {
        lower := 285152, upper := 570304, M := 6
      },
      {
        lower := 570304, upper := 1140608, M := 5
      },
      {
        lower := 1140608, upper := 2281216, M := 4
      },
      {
        lower := 2281216, upper := 4562432, M := 3
      },
      {
        lower := 4562432, upper := 9124864, M := 2
      },
      {
        lower := 9124864, upper := 18249728, M := 2
      },
      {
        lower := 18249728, upper := 36499456, M := 2
      },
      {
        lower := 36499456, upper := 72998912, M := 1
      },
      {
        lower := 72998912, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 135, r := 44, s := 95,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 272, upper := 405,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 406, upper := 535,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 536, upper := 657,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 658, upper := 787,
        witness := RowWitness.topPrime 653
      },
      {
        lower := 788, upper := 921,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 922, upper := 1053,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1054, upper := 1185,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1186, upper := 1315,
        witness := RowWitness.topPrime 1181
      },
      {
        lower := 1316, upper := 1441,
        witness := RowWitness.topPrime 1307
      },
      {
        lower := 1442, upper := 1573,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1574, upper := 1705,
        witness := RowWitness.topPrime 1571
      },
      {
        lower := 1706, upper := 1833,
        witness := RowWitness.topPrime 1699
      },
      {
        lower := 1834, upper := 1965,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1966, upper := 2085,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2086, upper := 2217,
        witness := RowWitness.topPrime 2083
      },
      {
        lower := 2218, upper := 2347,
        witness := RowWitness.topPrime 2213
      },
      {
        lower := 2348, upper := 2481,
        witness := RowWitness.topPrime 2347
      },
      {
        lower := 2482, upper := 2611,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2612, upper := 2743,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2744, upper := 2875,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2876, upper := 2995,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2996, upper := 3105,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3106, upper := 3223,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3224, upper := 3355,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3356, upper := 3481,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3482, upper := 3603,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3604, upper := 3727,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3728, upper := 3861,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3862, upper := 3987,
        witness := RowWitness.topPrime 3853
      },
      {
        lower := 3988, upper := 4101,
        witness := RowWitness.topPrime 3967
      },
      {
        lower := 4102, upper := 4233,
        witness := RowWitness.topPrime 4099
      },
      {
        lower := 4234, upper := 4365,
        witness := RowWitness.topPrime 4231
      },
      {
        lower := 4366, upper := 4497,
        witness := RowWitness.topPrime 4363
      },
      {
        lower := 4498, upper := 4627,
        witness := RowWitness.topPrime 4493
      },
      {
        lower := 4628, upper := 4755,
        witness := RowWitness.topPrime 4621
      },
      {
        lower := 4756, upper := 4885,
        witness := RowWitness.topPrime 4751
      },
      {
        lower := 4886, upper := 5011,
        witness := RowWitness.topPrime 4877
      },
      {
        lower := 5012, upper := 5145,
        witness := RowWitness.topPrime 5011
      },
      {
        lower := 5146, upper := 5253,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5254, upper := 5371,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5372, upper := 5485,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5486, upper := 5617,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5618, upper := 5725,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5726, upper := 5851,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5852, upper := 5985,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5986, upper := 6115,
        witness := RowWitness.topPrime 5981
      },
      {
        lower := 6116, upper := 6247,
        witness := RowWitness.topPrime 6113
      },
      {
        lower := 6248, upper := 6381,
        witness := RowWitness.topPrime 6247
      },
      {
        lower := 6382, upper := 6513,
        witness := RowWitness.topPrime 6379
      },
      {
        lower := 6514, upper := 6625,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6626, upper := 6753,
        witness := RowWitness.topPrime 6619
      },
      {
        lower := 6754, upper := 6871,
        witness := RowWitness.topPrime 6737
      },
      {
        lower := 6872, upper := 7005,
        witness := RowWitness.topPrime 6871
      },
      {
        lower := 7006, upper := 7135,
        witness := RowWitness.topPrime 7001
      },
      {
        lower := 7136, upper := 7263,
        witness := RowWitness.topPrime 7129
      },
      {
        lower := 7264, upper := 7387,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7388, upper := 7503,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7504, upper := 7633,
        witness := RowWitness.topPrime 7499
      },
      {
        lower := 7634, upper := 7755,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7756, upper := 7887,
        witness := RowWitness.topPrime 7753
      },
      {
        lower := 7888, upper := 8017,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8018, upper := 8151,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8152, upper := 8281,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8282, upper := 8407,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8408, upper := 8523,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8524, upper := 8655,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8656, upper := 8781,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8782, upper := 8913,
        witness := RowWitness.topPrime 8779
      },
      {
        lower := 8914, upper := 9027,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9028, upper := 9147,
        witness := RowWitness.topPrime 9013
      },
      {
        lower := 9148, upper := 9271,
        witness := RowWitness.topPrime 9137
      },
      {
        lower := 9272, upper := 9391,
        witness := RowWitness.topPrime 9257
      },
      {
        lower := 9392, upper := 9525,
        witness := RowWitness.topPrime 9391
      },
      {
        lower := 9526, upper := 9655,
        witness := RowWitness.topPrime 9521
      },
      {
        lower := 9656, upper := 9783,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9784, upper := 9915,
        witness := RowWitness.topPrime 9781
      },
      {
        lower := 9916, upper := 10041,
        witness := RowWitness.topPrime 9907
      },
      {
        lower := 10042, upper := 10173,
        witness := RowWitness.topPrime 10039
      },
      {
        lower := 10174, upper := 10303,
        witness := RowWitness.topPrime 10169
      },
      {
        lower := 10304, upper := 10437,
        witness := RowWitness.topPrime 10303
      },
      {
        lower := 10438, upper := 10567,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10568, upper := 10701,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10702, upper := 10825,
        witness := RowWitness.topPrime 10691
      },
      {
        lower := 10826, upper := 10933,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10934, upper := 11043,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11044, upper := 11161,
        witness := RowWitness.topPrime 11027
      },
      {
        lower := 11162, upper := 11295,
        witness := RowWitness.topPrime 11161
      },
      {
        lower := 11296, upper := 11421,
        witness := RowWitness.topPrime 11287
      },
      {
        lower := 11422, upper := 11545,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11546, upper := 11661,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11662, upper := 11791,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11792, upper := 11923,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11924, upper := 12057,
        witness := RowWitness.topPrime 11923
      },
      {
        lower := 12058, upper := 12183,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12184, upper := 12297,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12298, upper := 12423,
        witness := RowWitness.topPrime 12289
      },
      {
        lower := 12424, upper := 12555,
        witness := RowWitness.topPrime 12421
      },
      {
        lower := 12556, upper := 12687,
        witness := RowWitness.topPrime 12553
      },
      {
        lower := 12688, upper := 12805,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12806, upper := 12933,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12934, upper := 13057,
        witness := RowWitness.topPrime 12923
      },
      {
        lower := 13058, upper := 13183,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13184, upper := 13317,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13318, upper := 13447,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13448, upper := 13575,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13576, upper := 13701,
        witness := RowWitness.topPrime 13567
      },
      {
        lower := 13702, upper := 13831,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13832, upper := 13965,
        witness := RowWitness.topPrime 13831
      },
      {
        lower := 13966, upper := 14097,
        witness := RowWitness.topPrime 13963
      },
      {
        lower := 14098, upper := 14221,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14222, upper := 14355,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14356, upper := 14481,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14482, upper := 14613,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14614, upper := 14727,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14728, upper := 14857,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14858, upper := 14985,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 14986, upper := 15117,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15118, upper := 15241,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15242, upper := 15375,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15376, upper := 15507,
        witness := RowWitness.topPrime 15373
      },
      {
        lower := 15508, upper := 15631,
        witness := RowWitness.topPrime 15497
      },
      {
        lower := 15632, upper := 15763,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15764, upper := 15895,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15896, upper := 16023,
        witness := RowWitness.topPrime 15889
      },
      {
        lower := 16024, upper := 16141,
        witness := RowWitness.topPrime 16007
      },
      {
        lower := 16142, upper := 16275,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16276, upper := 16407,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16408, upper := 16515,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16516, upper := 16627,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16628, upper := 16753,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16754, upper := 16881,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16882, upper := 17013,
        witness := RowWitness.topPrime 16879
      },
      {
        lower := 17014, upper := 17145,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17146, upper := 17271,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17272, upper := 17391,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17392, upper := 17523,
        witness := RowWitness.topPrime 17389
      },
      {
        lower := 17524, upper := 17653,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17654, upper := 17761,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17762, upper := 17895,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17896, upper := 18025,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18026, upper := 18089,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18490, upper := 18615,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18616, upper := 18625,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18634, upper := 18751,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18752, upper := 18768,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18818, upper := 18857,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19300,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19795,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19796, upper := 19797,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19907,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20015,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20295,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20296, upper := 20298,
        witness := RowWitness.topPrime 20287
      },
      {
        lower := 20402, upper := 20473,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20613,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20614, upper := 20711,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 21296, upper := 21417,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21418, upper := 21430,
        witness := RowWitness.topPrime 21407
      },
      {
        lower := 21904, upper := 22027,
        witness := RowWitness.topPrime 21893
      },
      {
        lower := 22028, upper := 22038,
        witness := RowWitness.topPrime 22027
      },
      {
        lower := 22090, upper := 22104,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22224,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22460,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22603,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22604, upper := 22606,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23895,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23896, upper := 23896,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24144,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24171,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24301,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24463,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24464, upper := 24501,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24699,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25323,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25324, upper := 25349,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26411, upper := 26498,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26545,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26642,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26645, upper := 26758,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27030,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27570,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27869,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28672, upper := 28695,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28806,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28851,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29612,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29902,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30720, upper := 30737,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30854,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31033,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31327,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31328, upper := 31384,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31463,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 33614, upper := 33623,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33748,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34453,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34454, upper := 34525,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 35344, upper := 35421,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36046,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 37303, upper := 37344,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 38307, upper := 38425,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40462,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40938,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41065,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47655,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47656, upper := 47658,
        witness := RowWitness.topPrime 47653
      },
      {
        lower := 48013, upper := 48095,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48802,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49264,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50544,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51139,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55575,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55576, upper := 55581,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57256,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57379,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58698,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 63948, upper := 63979,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 68644, upper := 68773,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68774, upper := 68785,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68921, upper := 69024,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71421,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71422, upper := 71423,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73301,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85817,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89507,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 103041, upper := 103100,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 148955, upper := 149011,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 18090, upper := 36180, M := 16
      },
      {
        lower := 36180, upper := 72360, M := 12
      },
      {
        lower := 72360, upper := 144720, M := 9
      },
      {
        lower := 144720, upper := 289440, M := 7
      },
      {
        lower := 289440, upper := 578880, M := 6
      },
      {
        lower := 578880, upper := 1157760, M := 4
      },
      {
        lower := 1157760, upper := 2315520, M := 3
      },
      {
        lower := 2315520, upper := 4631040, M := 3
      },
      {
        lower := 4631040, upper := 9262080, M := 2
      },
      {
        lower := 9262080, upper := 18524160, M := 2
      },
      {
        lower := 18524160, upper := 37048320, M := 1
      },
      {
        lower := 37048320, upper := 74096640, M := 1
      },
      {
        lower := 74096640, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 136, r := 45, s := 96,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 274, upper := 406,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 407, upper := 536,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 537, upper := 658,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 659, upper := 794,
        witness := RowWitness.topPrime 659
      },
      {
        lower := 795, upper := 922,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 923, upper := 1054,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1055, upper := 1186,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1187, upper := 1322,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1323, upper := 1456,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1457, upper := 1588,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1589, upper := 1718,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1719, upper := 1844,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1845, upper := 1966,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1967, upper := 2086,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2087, upper := 2222,
        witness := RowWitness.topPrime 2087
      },
      {
        lower := 2223, upper := 2356,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2357, upper := 2492,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2493, upper := 2612,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2613, upper := 2744,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2745, upper := 2876,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2877, upper := 2996,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2997, upper := 3106,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3107, upper := 3224,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3225, upper := 3356,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3357, upper := 3482,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3483, upper := 3604,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3605, upper := 3728,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3729, upper := 3862,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3863, upper := 3998,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 3999, upper := 4124,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4125, upper := 4246,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4247, upper := 4378,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4379, upper := 4508,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4509, upper := 4642,
        witness := RowWitness.topPrime 4507
      },
      {
        lower := 4643, upper := 4778,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4779, upper := 4894,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4895, upper := 5024,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5025, upper := 5158,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5159, upper := 5288,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5289, upper := 5416,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5417, upper := 5552,
        witness := RowWitness.topPrime 5417
      },
      {
        lower := 5553, upper := 5666,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5667, upper := 5794,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5795, upper := 5926,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5927, upper := 6062,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6063, upper := 6188,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6189, upper := 6308,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6309, upper := 6436,
        witness := RowWitness.topPrime 6301
      },
      {
        lower := 6437, upper := 6562,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6563, upper := 6698,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6699, upper := 6826,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6827, upper := 6962,
        witness := RowWitness.topPrime 6827
      },
      {
        lower := 6963, upper := 7096,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7097, upper := 7214,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7215, upper := 7348,
        witness := RowWitness.topPrime 7213
      },
      {
        lower := 7349, upper := 7484,
        witness := RowWitness.topPrime 7349
      },
      {
        lower := 7485, upper := 7616,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7617, upper := 7742,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7743, upper := 7876,
        witness := RowWitness.topPrime 7741
      },
      {
        lower := 7877, upper := 8012,
        witness := RowWitness.topPrime 7877
      },
      {
        lower := 8013, upper := 8146,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8147, upper := 8282,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8283, upper := 8408,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8409, upper := 8524,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8525, upper := 8656,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8657, upper := 8782,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8783, upper := 8918,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8919, upper := 9028,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9029, upper := 9164,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9165, upper := 9296,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9297, upper := 9428,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9429, upper := 9556,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9557, upper := 9686,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9687, upper := 9814,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9815, upper := 9946,
        witness := RowWitness.topPrime 9811
      },
      {
        lower := 9947, upper := 10076,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10077, upper := 10204,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10205, upper := 10328,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10329, upper := 10456,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10457, upper := 10592,
        witness := RowWitness.topPrime 10457
      },
      {
        lower := 10593, upper := 10724,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10725, upper := 10858,
        witness := RowWitness.topPrime 10723
      },
      {
        lower := 10859, upper := 10994,
        witness := RowWitness.topPrime 10859
      },
      {
        lower := 10995, upper := 11128,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11129, upper := 11254,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11255, upper := 11386,
        witness := RowWitness.topPrime 11251
      },
      {
        lower := 11387, upper := 11518,
        witness := RowWitness.topPrime 11383
      },
      {
        lower := 11519, upper := 11654,
        witness := RowWitness.topPrime 11519
      },
      {
        lower := 11655, upper := 11768,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11769, upper := 11878,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11879, upper := 12002,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12003, upper := 12122,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12123, upper := 12254,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12255, upper := 12388,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12389, upper := 12514,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12515, upper := 12646,
        witness := RowWitness.topPrime 12511
      },
      {
        lower := 12647, upper := 12782,
        witness := RowWitness.topPrime 12647
      },
      {
        lower := 12783, upper := 12916,
        witness := RowWitness.topPrime 12781
      },
      {
        lower := 12917, upper := 13052,
        witness := RowWitness.topPrime 12917
      },
      {
        lower := 13053, upper := 13184,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13185, upper := 13318,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13319, upper := 13448,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13449, upper := 13576,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13577, upper := 13712,
        witness := RowWitness.topPrime 13577
      },
      {
        lower := 13713, upper := 13846,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13847, upper := 13976,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13977, upper := 14102,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14103, upper := 14222,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14223, upper := 14356,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14357, upper := 14482,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14483, upper := 14614,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14615, upper := 14728,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14729, upper := 14858,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14859, upper := 14986,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 14987, upper := 15118,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15119, upper := 15242,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15243, upper := 15376,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15377, upper := 15512,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15513, upper := 15646,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15647, upper := 15782,
        witness := RowWitness.topPrime 15647
      },
      {
        lower := 15783, upper := 15908,
        witness := RowWitness.topPrime 15773
      },
      {
        lower := 15909, upper := 16042,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16043, upper := 16168,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16169, upper := 16276,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16277, upper := 16408,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16409, upper := 16516,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16517, upper := 16628,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16629, upper := 16754,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16755, upper := 16882,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16883, upper := 17018,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17019, upper := 17146,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17147, upper := 17272,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17273, upper := 17392,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17393, upper := 17528,
        witness := RowWitness.topPrime 17393
      },
      {
        lower := 17529, upper := 17654,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17655, upper := 17762,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17763, upper := 17896,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17897, upper := 18026,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18027, upper := 18148,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18149, upper := 18284,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18285, upper := 18359,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18491, upper := 18616,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18617, upper := 18626,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18634, upper := 18752,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18753, upper := 18884,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18885, upper := 18885,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19301,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19683, upper := 19816,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 19817, upper := 19818,
        witness := RowWitness.topPrime 19813
      },
      {
        lower := 19881, upper := 19908,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20016,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20296,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20297, upper := 20299,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20474,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20535, upper := 20537,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20698,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20699, upper := 20712,
        witness := RowWitness.topPrime 20693
      },
      {
        lower := 21316, upper := 21353,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21998,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 21999, upper := 22010,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22105,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22225,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22461,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22580,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23896,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23897, upper := 23897,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24164,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24165, upper := 24192,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24302,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24464,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24465, upper := 24502,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 25000, upper := 25099,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25324,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25325, upper := 25350,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26379,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26499,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26546,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 27556, upper := 27571,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27870,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28225,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28227, upper := 28260,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28566,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28812, upper := 28852,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29903,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30728,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30729, upper := 30738,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30926, upper := 31034,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31328,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31329, upper := 31385,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31464,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32903,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33624,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33749,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34454,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34455, upper := 34510,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 36015, upper := 36047,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36632,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36633, upper := 36636,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37345,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37581,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 38307, upper := 38426,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 40401, upper := 40463,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40939,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45927, upper := 45931,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47656,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47657, upper := 47659,
        witness := RowWitness.topPrime 47657
      },
      {
        lower := 48013, upper := 48096,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48803,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50545,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51140,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55576,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55577, upper := 55582,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57257,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58699,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62545,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63980,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65671,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68774,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68775, upper := 68786,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68921, upper := 69025,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71422,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71423, upper := 71424,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73302,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85818,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89508,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 103041, upper := 103101,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109510,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137916,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149012,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 18360, upper := 36720, M := 15
      },
      {
        lower := 36720, upper := 73440, M := 12
      },
      {
        lower := 73440, upper := 146880, M := 9
      },
      {
        lower := 146880, upper := 293760, M := 7
      },
      {
        lower := 293760, upper := 587520, M := 5
      },
      {
        lower := 587520, upper := 1175040, M := 4
      },
      {
        lower := 1175040, upper := 2350080, M := 3
      },
      {
        lower := 2350080, upper := 4700160, M := 2
      },
      {
        lower := 4700160, upper := 9400320, M := 2
      },
      {
        lower := 9400320, upper := 18800640, M := 2
      },
      {
        lower := 18800640, upper := 37601280, M := 1
      },
      {
        lower := 37601280, upper := 75202560, M := 1
      },
      {
        lower := 75202560, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 137, r := 45, s := 97,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 276, upper := 407,
        witness := RowWitness.topPrime 271
      },
      {
        lower := 408, upper := 537,
        witness := RowWitness.topPrime 401
      },
      {
        lower := 538, upper := 659,
        witness := RowWitness.topPrime 523
      },
      {
        lower := 660, upper := 795,
        witness := RowWitness.topPrime 659
      },
      {
        lower := 796, upper := 923,
        witness := RowWitness.topPrime 787
      },
      {
        lower := 924, upper := 1055,
        witness := RowWitness.topPrime 919
      },
      {
        lower := 1056, upper := 1187,
        witness := RowWitness.topPrime 1051
      },
      {
        lower := 1188, upper := 1323,
        witness := RowWitness.topPrime 1187
      },
      {
        lower := 1324, upper := 1457,
        witness := RowWitness.topPrime 1321
      },
      {
        lower := 1458, upper := 1589,
        witness := RowWitness.topPrime 1453
      },
      {
        lower := 1590, upper := 1719,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1720, upper := 1845,
        witness := RowWitness.topPrime 1709
      },
      {
        lower := 1846, upper := 1967,
        witness := RowWitness.topPrime 1831
      },
      {
        lower := 1968, upper := 2087,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2088, upper := 2223,
        witness := RowWitness.topPrime 2087
      },
      {
        lower := 2224, upper := 2357,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2358, upper := 2493,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2494, upper := 2613,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2614, upper := 2745,
        witness := RowWitness.topPrime 2609
      },
      {
        lower := 2746, upper := 2877,
        witness := RowWitness.topPrime 2741
      },
      {
        lower := 2878, upper := 2997,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 2998, upper := 3107,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3108, upper := 3225,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3226, upper := 3357,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3358, upper := 3483,
        witness := RowWitness.topPrime 3347
      },
      {
        lower := 3484, upper := 3605,
        witness := RowWitness.topPrime 3469
      },
      {
        lower := 3606, upper := 3729,
        witness := RowWitness.topPrime 3593
      },
      {
        lower := 3730, upper := 3863,
        witness := RowWitness.topPrime 3727
      },
      {
        lower := 3864, upper := 3999,
        witness := RowWitness.topPrime 3863
      },
      {
        lower := 4000, upper := 4125,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4126, upper := 4247,
        witness := RowWitness.topPrime 4111
      },
      {
        lower := 4248, upper := 4379,
        witness := RowWitness.topPrime 4243
      },
      {
        lower := 4380, upper := 4509,
        witness := RowWitness.topPrime 4373
      },
      {
        lower := 4510, upper := 4643,
        witness := RowWitness.topPrime 4507
      },
      {
        lower := 4644, upper := 4779,
        witness := RowWitness.topPrime 4643
      },
      {
        lower := 4780, upper := 4895,
        witness := RowWitness.topPrime 4759
      },
      {
        lower := 4896, upper := 5025,
        witness := RowWitness.topPrime 4889
      },
      {
        lower := 5026, upper := 5159,
        witness := RowWitness.topPrime 5023
      },
      {
        lower := 5160, upper := 5289,
        witness := RowWitness.topPrime 5153
      },
      {
        lower := 5290, upper := 5417,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5418, upper := 5553,
        witness := RowWitness.topPrime 5417
      },
      {
        lower := 5554, upper := 5667,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5668, upper := 5795,
        witness := RowWitness.topPrime 5659
      },
      {
        lower := 5796, upper := 5927,
        witness := RowWitness.topPrime 5791
      },
      {
        lower := 5928, upper := 6063,
        witness := RowWitness.topPrime 5927
      },
      {
        lower := 6064, upper := 6189,
        witness := RowWitness.topPrime 6053
      },
      {
        lower := 6190, upper := 6309,
        witness := RowWitness.topPrime 6173
      },
      {
        lower := 6310, upper := 6437,
        witness := RowWitness.topPrime 6301
      },
      {
        lower := 6438, upper := 6563,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6564, upper := 6699,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6700, upper := 6827,
        witness := RowWitness.topPrime 6691
      },
      {
        lower := 6828, upper := 6963,
        witness := RowWitness.topPrime 6827
      },
      {
        lower := 6964, upper := 7097,
        witness := RowWitness.topPrime 6961
      },
      {
        lower := 7098, upper := 7215,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7216, upper := 7349,
        witness := RowWitness.topPrime 7213
      },
      {
        lower := 7350, upper := 7485,
        witness := RowWitness.topPrime 7349
      },
      {
        lower := 7486, upper := 7617,
        witness := RowWitness.topPrime 7481
      },
      {
        lower := 7618, upper := 7743,
        witness := RowWitness.topPrime 7607
      },
      {
        lower := 7744, upper := 7877,
        witness := RowWitness.topPrime 7741
      },
      {
        lower := 7878, upper := 8013,
        witness := RowWitness.topPrime 7877
      },
      {
        lower := 8014, upper := 8147,
        witness := RowWitness.topPrime 8011
      },
      {
        lower := 8148, upper := 8283,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8284, upper := 8409,
        witness := RowWitness.topPrime 8273
      },
      {
        lower := 8410, upper := 8525,
        witness := RowWitness.topPrime 8389
      },
      {
        lower := 8526, upper := 8657,
        witness := RowWitness.topPrime 8521
      },
      {
        lower := 8658, upper := 8783,
        witness := RowWitness.topPrime 8647
      },
      {
        lower := 8784, upper := 8919,
        witness := RowWitness.topPrime 8783
      },
      {
        lower := 8920, upper := 9029,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9030, upper := 9165,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9166, upper := 9297,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9298, upper := 9429,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9430, upper := 9557,
        witness := RowWitness.topPrime 9421
      },
      {
        lower := 9558, upper := 9687,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9688, upper := 9815,
        witness := RowWitness.topPrime 9679
      },
      {
        lower := 9816, upper := 9947,
        witness := RowWitness.topPrime 9811
      },
      {
        lower := 9948, upper := 10077,
        witness := RowWitness.topPrime 9941
      },
      {
        lower := 10078, upper := 10205,
        witness := RowWitness.topPrime 10069
      },
      {
        lower := 10206, upper := 10329,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10330, upper := 10457,
        witness := RowWitness.topPrime 10321
      },
      {
        lower := 10458, upper := 10593,
        witness := RowWitness.topPrime 10457
      },
      {
        lower := 10594, upper := 10725,
        witness := RowWitness.topPrime 10589
      },
      {
        lower := 10726, upper := 10859,
        witness := RowWitness.topPrime 10723
      },
      {
        lower := 10860, upper := 10995,
        witness := RowWitness.topPrime 10859
      },
      {
        lower := 10996, upper := 11129,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11130, upper := 11255,
        witness := RowWitness.topPrime 11119
      },
      {
        lower := 11256, upper := 11387,
        witness := RowWitness.topPrime 11251
      },
      {
        lower := 11388, upper := 11519,
        witness := RowWitness.topPrime 11383
      },
      {
        lower := 11520, upper := 11655,
        witness := RowWitness.topPrime 11519
      },
      {
        lower := 11656, upper := 11769,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11770, upper := 11879,
        witness := RowWitness.topPrime 11743
      },
      {
        lower := 11880, upper := 12003,
        witness := RowWitness.topPrime 11867
      },
      {
        lower := 12004, upper := 12123,
        witness := RowWitness.topPrime 11987
      },
      {
        lower := 12124, upper := 12255,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12256, upper := 12389,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12390, upper := 12515,
        witness := RowWitness.topPrime 12379
      },
      {
        lower := 12516, upper := 12647,
        witness := RowWitness.topPrime 12511
      },
      {
        lower := 12648, upper := 12783,
        witness := RowWitness.topPrime 12647
      },
      {
        lower := 12784, upper := 12917,
        witness := RowWitness.topPrime 12781
      },
      {
        lower := 12918, upper := 13053,
        witness := RowWitness.topPrime 12917
      },
      {
        lower := 13054, upper := 13185,
        witness := RowWitness.topPrime 13049
      },
      {
        lower := 13186, upper := 13319,
        witness := RowWitness.topPrime 13183
      },
      {
        lower := 13320, upper := 13449,
        witness := RowWitness.topPrime 13313
      },
      {
        lower := 13450, upper := 13577,
        witness := RowWitness.topPrime 13441
      },
      {
        lower := 13578, upper := 13713,
        witness := RowWitness.topPrime 13577
      },
      {
        lower := 13714, upper := 13847,
        witness := RowWitness.topPrime 13711
      },
      {
        lower := 13848, upper := 13977,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13978, upper := 14103,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14104, upper := 14223,
        witness := RowWitness.topPrime 14087
      },
      {
        lower := 14224, upper := 14357,
        witness := RowWitness.topPrime 14221
      },
      {
        lower := 14358, upper := 14483,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14484, upper := 14615,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14616, upper := 14729,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14730, upper := 14859,
        witness := RowWitness.topPrime 14723
      },
      {
        lower := 14860, upper := 14987,
        witness := RowWitness.topPrime 14851
      },
      {
        lower := 14988, upper := 15119,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15120, upper := 15243,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15244, upper := 15377,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15378, upper := 15513,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15514, upper := 15647,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15648, upper := 15783,
        witness := RowWitness.topPrime 15647
      },
      {
        lower := 15784, upper := 15909,
        witness := RowWitness.topPrime 15773
      },
      {
        lower := 15910, upper := 16043,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16044, upper := 16169,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16170, upper := 16277,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16278, upper := 16409,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16410, upper := 16517,
        witness := RowWitness.topPrime 16381
      },
      {
        lower := 16518, upper := 16629,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16630, upper := 16755,
        witness := RowWitness.topPrime 16619
      },
      {
        lower := 16756, upper := 16883,
        witness := RowWitness.topPrime 16747
      },
      {
        lower := 16884, upper := 17019,
        witness := RowWitness.topPrime 16883
      },
      {
        lower := 17020, upper := 17147,
        witness := RowWitness.topPrime 17011
      },
      {
        lower := 17148, upper := 17273,
        witness := RowWitness.topPrime 17137
      },
      {
        lower := 17274, upper := 17393,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17394, upper := 17529,
        witness := RowWitness.topPrime 17393
      },
      {
        lower := 17530, upper := 17655,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17656, upper := 17763,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17764, upper := 17897,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17898, upper := 18027,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18028, upper := 18149,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18150, upper := 18285,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18286, upper := 18405,
        witness := RowWitness.topPrime 18269
      },
      {
        lower := 18406, upper := 18537,
        witness := RowWitness.topPrime 18401
      },
      {
        lower := 18538, upper := 18631,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18634, upper := 18753,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18754, upper := 18885,
        witness := RowWitness.topPrime 18749
      },
      {
        lower := 18886, upper := 18886,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19208, upper := 19302,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19797,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19798, upper := 19819,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19909,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 20172, upper := 20297,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20298, upper := 20300,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20475,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20538,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20577, upper := 20616,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20667, upper := 20713,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21354,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 21999,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22000, upper := 22011,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22106,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22226,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22462,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22605,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22606, upper := 22608,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23897,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23898, upper := 23898,
        witness := RowWitness.topPrime 23893
      },
      {
        lower := 24037, upper := 24165,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24166, upper := 24193,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24303,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24465,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24466, upper := 24503,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24701,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25100,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25341,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26380,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26500,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26547,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26733,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26734, upper := 26760,
        witness := RowWitness.topPrime 26731
      },
      {
        lower := 27556, upper := 27572,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28259,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28260, upper := 28261,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28567,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28697,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28808,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28853,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29791, upper := 29904,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30729,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30730, upper := 30739,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30926, upper := 31035,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31329,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31330, upper := 31386,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31465,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32904,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33625,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33750,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34455,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34456, upper := 34527,
        witness := RowWitness.topPrime 34439
      },
      {
        lower := 36517, upper := 36633,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36634, upper := 36637,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37346,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 38307, upper := 38427,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39440,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40464,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40940,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41067,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45927, upper := 45932,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47657,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47658, upper := 47660,
        witness := RowWitness.topPrime 47657
      },
      {
        lower := 48013, upper := 48097,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48804,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49266,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50546,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51141,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55577,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55578, upper := 55583,
        witness := RowWitness.topPrime 55547
      },
      {
        lower := 57245, upper := 57258,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57381,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58700,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 62500, upper := 62546,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65672,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68775,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68776, upper := 68787,
        witness := RowWitness.topPrime 68771
      },
      {
        lower := 68921, upper := 69026,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71423,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71424, upper := 71425,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73303,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85819,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89509,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98440,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137917,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149013,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 18632, upper := 37264, M := 14
      },
      {
        lower := 37264, upper := 74528, M := 11
      },
      {
        lower := 74528, upper := 149056, M := 8
      },
      {
        lower := 149056, upper := 298112, M := 6
      },
      {
        lower := 298112, upper := 596224, M := 5
      },
      {
        lower := 596224, upper := 1192448, M := 4
      },
      {
        lower := 1192448, upper := 2384896, M := 3
      },
      {
        lower := 2384896, upper := 4769792, M := 2
      },
      {
        lower := 4769792, upper := 9539584, M := 2
      },
      {
        lower := 9539584, upper := 10000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 138, r := 45, s := 97,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 278, upper := 414,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 415, upper := 546,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 547, upper := 684,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 685, upper := 820,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 821, upper := 958,
        witness := RowWitness.topPrime 821
      },
      {
        lower := 959, upper := 1090,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1091, upper := 1228,
        witness := RowWitness.topPrime 1091
      },
      {
        lower := 1229, upper := 1366,
        witness := RowWitness.topPrime 1229
      },
      {
        lower := 1367, upper := 1504,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1505, upper := 1636,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1637, upper := 1774,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1775, upper := 1896,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1897, upper := 2026,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2027, upper := 2164,
        witness := RowWitness.topPrime 2027
      },
      {
        lower := 2165, upper := 2298,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2299, upper := 2434,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2435, upper := 2560,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2561, upper := 2694,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2695, upper := 2830,
        witness := RowWitness.topPrime 2693
      },
      {
        lower := 2831, upper := 2956,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2957, upper := 3094,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3095, upper := 3226,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3227, upper := 3358,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3359, upper := 3496,
        witness := RowWitness.topPrime 3359
      },
      {
        lower := 3497, upper := 3628,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3629, upper := 3760,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3761, upper := 3898,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3899, upper := 4026,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4027, upper := 4164,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4165, upper := 4296,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4297, upper := 4434,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4435, upper := 4560,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4561, upper := 4698,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4699, upper := 4828,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4829, upper := 4954,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4955, upper := 5088,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5089, upper := 5224,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5225, upper := 5346,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5347, upper := 5484,
        witness := RowWitness.topPrime 5347
      },
      {
        lower := 5485, upper := 5620,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5621, upper := 5728,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5729, upper := 5854,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5855, upper := 5988,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5989, upper := 6124,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6125, upper := 6258,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6259, upper := 6394,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6395, upper := 6526,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6527, upper := 6658,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6659, upper := 6796,
        witness := RowWitness.topPrime 6659
      },
      {
        lower := 6797, upper := 6930,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6931, upper := 7054,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7055, upper := 7180,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7181, upper := 7314,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7315, upper := 7446,
        witness := RowWitness.topPrime 7309
      },
      {
        lower := 7447, upper := 7570,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7571, upper := 7698,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7699, upper := 7836,
        witness := RowWitness.topPrime 7699
      },
      {
        lower := 7837, upper := 7966,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7967, upper := 8100,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8101, upper := 8238,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8239, upper := 8374,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8375, upper := 8506,
        witness := RowWitness.topPrime 8369
      },
      {
        lower := 8507, upper := 8638,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8639, upper := 8766,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8767, upper := 8898,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8899, upper := 9030,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9031, upper := 9166,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9167, upper := 9298,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9299, upper := 9430,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9431, upper := 9568,
        witness := RowWitness.topPrime 9431
      },
      {
        lower := 9569, upper := 9688,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9689, upper := 9826,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9827, upper := 9954,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9955, upper := 10086,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10087, upper := 10216,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10217, upper := 10348,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10349, upper := 10480,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10481, upper := 10614,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10615, upper := 10750,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10751, upper := 10876,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10877, upper := 11004,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 11005, upper := 11140,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11141, upper := 11268,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11269, upper := 11398,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11399, upper := 11536,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11537, upper := 11664,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11665, upper := 11794,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11795, upper := 11926,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11927, upper := 12064,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12065, upper := 12186,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12187, upper := 12300,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12301, upper := 12438,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12439, upper := 12574,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12575, upper := 12706,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12707, upper := 12840,
        witness := RowWitness.topPrime 12703
      },
      {
        lower := 12841, upper := 12978,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 12979, upper := 13116,
        witness := RowWitness.topPrime 12979
      },
      {
        lower := 13117, upper := 13246,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13247, upper := 13378,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13379, upper := 13504,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13505, upper := 13636,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13637, upper := 13770,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13771, upper := 13900,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13901, upper := 14038,
        witness := RowWitness.topPrime 13901
      },
      {
        lower := 14039, upper := 14170,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14171, upper := 14296,
        witness := RowWitness.topPrime 14159
      },
      {
        lower := 14297, upper := 14430,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14431, upper := 14568,
        witness := RowWitness.topPrime 14431
      },
      {
        lower := 14569, upper := 14700,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14701, upper := 14836,
        witness := RowWitness.topPrime 14699
      },
      {
        lower := 14837, upper := 14968,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14969, upper := 15106,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15107, upper := 15244,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15245, upper := 15378,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15379, upper := 15514,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15515, upper := 15648,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15649, upper := 15786,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15787, upper := 15924,
        witness := RowWitness.topPrime 15787
      },
      {
        lower := 15925, upper := 16060,
        witness := RowWitness.topPrime 15923
      },
      {
        lower := 16061, upper := 16198,
        witness := RowWitness.topPrime 16061
      },
      {
        lower := 16199, upper := 16330,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16331, upper := 16456,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16457, upper := 16590,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16591, upper := 16710,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16711, upper := 16840,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16841, upper := 16968,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16969, upper := 17100,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17101, upper := 17236,
        witness := RowWitness.topPrime 17099
      },
      {
        lower := 17237, upper := 17368,
        witness := RowWitness.topPrime 17231
      },
      {
        lower := 17369, upper := 17496,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17497, upper := 17634,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17635, upper := 17764,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17765, upper := 17898,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17899, upper := 18028,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18029, upper := 18150,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18151, upper := 18286,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18287, upper := 18424,
        witness := RowWitness.topPrime 18287
      },
      {
        lower := 18425, upper := 18550,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18551, upper := 18678,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18679, upper := 18816,
        witness := RowWitness.topPrime 18679
      },
      {
        lower := 18817, upper := 18906,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 19208, upper := 19303,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19798,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19799, upper := 19820,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19910,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20018,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20298,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20299, upper := 20301,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20476,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20616,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20617, upper := 20714,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 21296, upper := 21420,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21421, upper := 21433,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21875, upper := 22008,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22009, upper := 22041,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22107,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22227,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22445, upper := 22463,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22582,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23898,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23899, upper := 23899,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24147,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24174,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24304,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24367, upper := 24496,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24497, upper := 24504,
        witness := RowWitness.topPrime 24481
      },
      {
        lower := 24576, upper := 24702,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25101,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25326,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25327, upper := 25352,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26381,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26501,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26548,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26645,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27033,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27573,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27872,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28260,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28261, upper := 28262,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28577, upper := 28710,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28711, upper := 28714,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28717, upper := 28809,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28854,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29615,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29905,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30926, upper := 31036,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31330,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31331, upper := 31387,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31534,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31535, upper := 31560,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 32805, upper := 32905,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33626,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33751,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34456,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34457, upper := 34528,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35287, upper := 35289,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35424,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36049,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 37303, upper := 37347,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37349, upper := 37440,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37486,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37630,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37631, upper := 37690,
        witness := RowWitness.topPrime 37619
      },
      {
        lower := 38307, upper := 38428,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39441,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40465,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40941,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41068,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45390,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47658,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47659, upper := 47661,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48098,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48510,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 49152, upper := 49267,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50547,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51142,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55578,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55579, upper := 55584,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 57245, upper := 57259,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58701,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59093,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62547,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64000,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64001, upper := 64006,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65658,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65659, upper := 65670,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68644, upper := 68776,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68777, upper := 68788,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69027,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71424,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71425, upper := 71426,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73304,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85820,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89510,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93887,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 103041, upper := 103103,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 146410, upper := 146471,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149014,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 18906, upper := 37812, M := 17
      },
      {
        lower := 37812, upper := 75624, M := 13
      },
      {
        lower := 75624, upper := 151248, M := 10
      },
      {
        lower := 151248, upper := 302496, M := 8
      },
      {
        lower := 302496, upper := 604992, M := 6
      },
      {
        lower := 604992, upper := 1209984, M := 5
      },
      {
        lower := 1209984, upper := 2419968, M := 4
      },
      {
        lower := 2419968, upper := 4839936, M := 3
      },
      {
        lower := 4839936, upper := 9679872, M := 2
      },
      {
        lower := 9679872, upper := 19359744, M := 2
      },
      {
        lower := 19359744, upper := 38719488, M := 2
      },
      {
        lower := 38719488, upper := 77438976, M := 1
      },
      {
        lower := 77438976, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 139, r := 46, s := 98,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 280, upper := 415,
        witness := RowWitness.topPrime 277
      },
      {
        lower := 416, upper := 547,
        witness := RowWitness.topPrime 409
      },
      {
        lower := 548, upper := 685,
        witness := RowWitness.topPrime 547
      },
      {
        lower := 686, upper := 821,
        witness := RowWitness.topPrime 683
      },
      {
        lower := 822, upper := 959,
        witness := RowWitness.topPrime 821
      },
      {
        lower := 960, upper := 1091,
        witness := RowWitness.topPrime 953
      },
      {
        lower := 1092, upper := 1229,
        witness := RowWitness.topPrime 1091
      },
      {
        lower := 1230, upper := 1367,
        witness := RowWitness.topPrime 1229
      },
      {
        lower := 1368, upper := 1505,
        witness := RowWitness.topPrime 1367
      },
      {
        lower := 1506, upper := 1637,
        witness := RowWitness.topPrime 1499
      },
      {
        lower := 1638, upper := 1775,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1776, upper := 1897,
        witness := RowWitness.topPrime 1759
      },
      {
        lower := 1898, upper := 2027,
        witness := RowWitness.topPrime 1889
      },
      {
        lower := 2028, upper := 2165,
        witness := RowWitness.topPrime 2027
      },
      {
        lower := 2166, upper := 2299,
        witness := RowWitness.topPrime 2161
      },
      {
        lower := 2300, upper := 2435,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2436, upper := 2561,
        witness := RowWitness.topPrime 2423
      },
      {
        lower := 2562, upper := 2695,
        witness := RowWitness.topPrime 2557
      },
      {
        lower := 2696, upper := 2831,
        witness := RowWitness.topPrime 2693
      },
      {
        lower := 2832, upper := 2957,
        witness := RowWitness.topPrime 2819
      },
      {
        lower := 2958, upper := 3095,
        witness := RowWitness.topPrime 2957
      },
      {
        lower := 3096, upper := 3227,
        witness := RowWitness.topPrime 3089
      },
      {
        lower := 3228, upper := 3359,
        witness := RowWitness.topPrime 3221
      },
      {
        lower := 3360, upper := 3497,
        witness := RowWitness.topPrime 3359
      },
      {
        lower := 3498, upper := 3629,
        witness := RowWitness.topPrime 3491
      },
      {
        lower := 3630, upper := 3761,
        witness := RowWitness.topPrime 3623
      },
      {
        lower := 3762, upper := 3899,
        witness := RowWitness.topPrime 3761
      },
      {
        lower := 3900, upper := 4027,
        witness := RowWitness.topPrime 3889
      },
      {
        lower := 4028, upper := 4165,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4166, upper := 4297,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4298, upper := 4435,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4436, upper := 4561,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4562, upper := 4699,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4700, upper := 4829,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4830, upper := 4955,
        witness := RowWitness.topPrime 4817
      },
      {
        lower := 4956, upper := 5089,
        witness := RowWitness.topPrime 4951
      },
      {
        lower := 5090, upper := 5225,
        witness := RowWitness.topPrime 5087
      },
      {
        lower := 5226, upper := 5347,
        witness := RowWitness.topPrime 5209
      },
      {
        lower := 5348, upper := 5485,
        witness := RowWitness.topPrime 5347
      },
      {
        lower := 5486, upper := 5621,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5622, upper := 5729,
        witness := RowWitness.topPrime 5591
      },
      {
        lower := 5730, upper := 5855,
        witness := RowWitness.topPrime 5717
      },
      {
        lower := 5856, upper := 5989,
        witness := RowWitness.topPrime 5851
      },
      {
        lower := 5990, upper := 6125,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6126, upper := 6259,
        witness := RowWitness.topPrime 6121
      },
      {
        lower := 6260, upper := 6395,
        witness := RowWitness.topPrime 6257
      },
      {
        lower := 6396, upper := 6527,
        witness := RowWitness.topPrime 6389
      },
      {
        lower := 6528, upper := 6659,
        witness := RowWitness.topPrime 6521
      },
      {
        lower := 6660, upper := 6797,
        witness := RowWitness.topPrime 6659
      },
      {
        lower := 6798, upper := 6931,
        witness := RowWitness.topPrime 6793
      },
      {
        lower := 6932, upper := 7055,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7056, upper := 7181,
        witness := RowWitness.topPrime 7043
      },
      {
        lower := 7182, upper := 7315,
        witness := RowWitness.topPrime 7177
      },
      {
        lower := 7316, upper := 7447,
        witness := RowWitness.topPrime 7309
      },
      {
        lower := 7448, upper := 7571,
        witness := RowWitness.topPrime 7433
      },
      {
        lower := 7572, upper := 7699,
        witness := RowWitness.topPrime 7561
      },
      {
        lower := 7700, upper := 7837,
        witness := RowWitness.topPrime 7699
      },
      {
        lower := 7838, upper := 7967,
        witness := RowWitness.topPrime 7829
      },
      {
        lower := 7968, upper := 8101,
        witness := RowWitness.topPrime 7963
      },
      {
        lower := 8102, upper := 8239,
        witness := RowWitness.topPrime 8101
      },
      {
        lower := 8240, upper := 8375,
        witness := RowWitness.topPrime 8237
      },
      {
        lower := 8376, upper := 8507,
        witness := RowWitness.topPrime 8369
      },
      {
        lower := 8508, upper := 8639,
        witness := RowWitness.topPrime 8501
      },
      {
        lower := 8640, upper := 8767,
        witness := RowWitness.topPrime 8629
      },
      {
        lower := 8768, upper := 8899,
        witness := RowWitness.topPrime 8761
      },
      {
        lower := 8900, upper := 9031,
        witness := RowWitness.topPrime 8893
      },
      {
        lower := 9032, upper := 9167,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9168, upper := 9299,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9300, upper := 9431,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9432, upper := 9569,
        witness := RowWitness.topPrime 9431
      },
      {
        lower := 9570, upper := 9689,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9690, upper := 9827,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9828, upper := 9955,
        witness := RowWitness.topPrime 9817
      },
      {
        lower := 9956, upper := 10087,
        witness := RowWitness.topPrime 9949
      },
      {
        lower := 10088, upper := 10217,
        witness := RowWitness.topPrime 10079
      },
      {
        lower := 10218, upper := 10349,
        witness := RowWitness.topPrime 10211
      },
      {
        lower := 10350, upper := 10481,
        witness := RowWitness.topPrime 10343
      },
      {
        lower := 10482, upper := 10615,
        witness := RowWitness.topPrime 10477
      },
      {
        lower := 10616, upper := 10751,
        witness := RowWitness.topPrime 10613
      },
      {
        lower := 10752, upper := 10877,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10878, upper := 11005,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 11006, upper := 11141,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11142, upper := 11269,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11270, upper := 11399,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11400, upper := 11537,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11538, upper := 11665,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11666, upper := 11795,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11796, upper := 11927,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11928, upper := 12065,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12066, upper := 12187,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12188, upper := 12301,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12302, upper := 12439,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12440, upper := 12575,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12576, upper := 12707,
        witness := RowWitness.topPrime 12569
      },
      {
        lower := 12708, upper := 12841,
        witness := RowWitness.topPrime 12703
      },
      {
        lower := 12842, upper := 12979,
        witness := RowWitness.topPrime 12841
      },
      {
        lower := 12980, upper := 13117,
        witness := RowWitness.topPrime 12979
      },
      {
        lower := 13118, upper := 13247,
        witness := RowWitness.topPrime 13109
      },
      {
        lower := 13248, upper := 13379,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13380, upper := 13505,
        witness := RowWitness.topPrime 13367
      },
      {
        lower := 13506, upper := 13637,
        witness := RowWitness.topPrime 13499
      },
      {
        lower := 13638, upper := 13771,
        witness := RowWitness.topPrime 13633
      },
      {
        lower := 13772, upper := 13901,
        witness := RowWitness.topPrime 13763
      },
      {
        lower := 13902, upper := 14039,
        witness := RowWitness.topPrime 13901
      },
      {
        lower := 14040, upper := 14171,
        witness := RowWitness.topPrime 14033
      },
      {
        lower := 14172, upper := 14297,
        witness := RowWitness.topPrime 14159
      },
      {
        lower := 14298, upper := 14431,
        witness := RowWitness.topPrime 14293
      },
      {
        lower := 14432, upper := 14569,
        witness := RowWitness.topPrime 14431
      },
      {
        lower := 14570, upper := 14701,
        witness := RowWitness.topPrime 14563
      },
      {
        lower := 14702, upper := 14837,
        witness := RowWitness.topPrime 14699
      },
      {
        lower := 14838, upper := 14969,
        witness := RowWitness.topPrime 14831
      },
      {
        lower := 14970, upper := 15107,
        witness := RowWitness.topPrime 14969
      },
      {
        lower := 15108, upper := 15245,
        witness := RowWitness.topPrime 15107
      },
      {
        lower := 15246, upper := 15379,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15380, upper := 15515,
        witness := RowWitness.topPrime 15377
      },
      {
        lower := 15516, upper := 15649,
        witness := RowWitness.topPrime 15511
      },
      {
        lower := 15650, upper := 15787,
        witness := RowWitness.topPrime 15649
      },
      {
        lower := 15788, upper := 15925,
        witness := RowWitness.topPrime 15787
      },
      {
        lower := 15926, upper := 16061,
        witness := RowWitness.topPrime 15923
      },
      {
        lower := 16062, upper := 16199,
        witness := RowWitness.topPrime 16061
      },
      {
        lower := 16200, upper := 16331,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16332, upper := 16457,
        witness := RowWitness.topPrime 16319
      },
      {
        lower := 16458, upper := 16591,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16592, upper := 16711,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16712, upper := 16841,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16842, upper := 16969,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16970, upper := 17101,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17102, upper := 17237,
        witness := RowWitness.topPrime 17099
      },
      {
        lower := 17238, upper := 17369,
        witness := RowWitness.topPrime 17231
      },
      {
        lower := 17370, upper := 17497,
        witness := RowWitness.topPrime 17359
      },
      {
        lower := 17498, upper := 17635,
        witness := RowWitness.topPrime 17497
      },
      {
        lower := 17636, upper := 17765,
        witness := RowWitness.topPrime 17627
      },
      {
        lower := 17766, upper := 17899,
        witness := RowWitness.topPrime 17761
      },
      {
        lower := 17900, upper := 18029,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18030, upper := 18151,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18152, upper := 18287,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18288, upper := 18425,
        witness := RowWitness.topPrime 18287
      },
      {
        lower := 18426, upper := 18551,
        witness := RowWitness.topPrime 18413
      },
      {
        lower := 18552, upper := 18679,
        witness := RowWitness.topPrime 18541
      },
      {
        lower := 18680, upper := 18817,
        witness := RowWitness.topPrime 18679
      },
      {
        lower := 18818, upper := 18941,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18942, upper := 19057,
        witness := RowWitness.topPrime 18919
      },
      {
        lower := 19058, upper := 19181,
        witness := RowWitness.topPrime 19051
      },
      {
        lower := 19208, upper := 19304,
        witness := RowWitness.topPrime 19207
      },
      {
        lower := 19663, upper := 19799,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19800, upper := 19821,
        witness := RowWitness.topPrime 19793
      },
      {
        lower := 19881, upper := 19911,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20019,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20299,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20300, upper := 20302,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20477,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20480, upper := 20617,
        witness := RowWitness.topPrime 20479
      },
      {
        lower := 20618, upper := 20715,
        witness := RowWitness.topPrime 20611
      },
      {
        lower := 21296, upper := 21421,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21422, upper := 21434,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21870, upper := 22001,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22002, upper := 22042,
        witness := RowWitness.topPrime 21997
      },
      {
        lower := 22090, upper := 22108,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22228,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22326,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22464,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22607,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22608, upper := 22610,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23899,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23900, upper := 23900,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24167,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24168, upper := 24195,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24305,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24467,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24468, upper := 24505,
        witness := RowWitness.topPrime 24443
      },
      {
        lower := 24576, upper := 24703,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25102,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25327,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25328, upper := 25353,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26382,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26502,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26549,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26735,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26736, upper := 26762,
        witness := RowWitness.topPrime 26731
      },
      {
        lower := 26934, upper := 27034,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27574,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27873,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28261,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28262, upper := 28263,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28569,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28699,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28810,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28855,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29616,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29906,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30731,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30732, upper := 30756,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30858,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30926, upper := 31037,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31331,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31332, upper := 31388,
        witness := RowWitness.topPrime 31327
      },
      {
        lower := 31423, upper := 31467,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 32805, upper := 32906,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33627,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33752,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34457,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34458, upper := 34529,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35287, upper := 35290,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35425,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36050,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36635,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36636, upper := 36639,
        witness := RowWitness.topPrime 36629
      },
      {
        lower := 37303, upper := 37348,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37500, upper := 37631,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37632, upper := 37676,
        witness := RowWitness.topPrime 37619
      },
      {
        lower := 38307, upper := 38429,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39366, upper := 39442,
        witness := RowWitness.topPrime 39359
      },
      {
        lower := 40401, upper := 40466,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40942,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41069,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45391,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45934,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47659,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47660, upper := 47662,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48099,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48511,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48806,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49268,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50548,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51143,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53386,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55579,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55580, upper := 55585,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56307,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57260,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57383,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58702,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59094,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62548,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64001,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64002, upper := 64007,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65659,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65660, upper := 65674,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68644, upper := 68777,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68778, upper := 68789,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69028,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71425,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71426, upper := 71427,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73305,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85821,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89511,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93888,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98442,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103104,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109513,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137919,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146472,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149015,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 19182, upper := 38364, M := 16
      },
      {
        lower := 38364, upper := 76728, M := 13
      },
      {
        lower := 76728, upper := 153456, M := 10
      },
      {
        lower := 153456, upper := 306912, M := 7
      },
      {
        lower := 306912, upper := 613824, M := 6
      },
      {
        lower := 613824, upper := 1227648, M := 4
      },
      {
        lower := 1227648, upper := 2455296, M := 4
      },
      {
        lower := 2455296, upper := 4910592, M := 3
      },
      {
        lower := 4910592, upper := 9821184, M := 2
      },
      {
        lower := 9821184, upper := 19642368, M := 2
      },
      {
        lower := 19642368, upper := 39284736, M := 1
      },
      {
        lower := 39284736, upper := 78569472, M := 1
      },
      {
        lower := 78569472, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 140, r := 46, s := 98,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 282, upper := 420,
        witness := RowWitness.topPrime 281
      },
      {
        lower := 421, upper := 560,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 561, upper := 696,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 697, upper := 830,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 831, upper := 968,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 969, upper := 1106,
        witness := RowWitness.topPrime 967
      },
      {
        lower := 1107, upper := 1242,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1243, upper := 1376,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1377, upper := 1512,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1513, upper := 1650,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1651, upper := 1776,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1777, upper := 1916,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1917, upper := 2052,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2053, upper := 2192,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2193, upper := 2318,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2319, upper := 2450,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2451, upper := 2586,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2587, upper := 2718,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2719, upper := 2858,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2859, upper := 2996,
        witness := RowWitness.topPrime 2857
      },
      {
        lower := 2997, upper := 3110,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3111, upper := 3248,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3249, upper := 3368,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3369, upper := 3500,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3501, upper := 3638,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3639, upper := 3776,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3777, upper := 3908,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3909, upper := 4046,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 4047, upper := 4166,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4167, upper := 4298,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4299, upper := 4436,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4437, upper := 4562,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4563, upper := 4700,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4701, upper := 4830,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4831, upper := 4970,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4971, upper := 5108,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5109, upper := 5246,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5247, upper := 5376,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5377, upper := 5490,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5491, upper := 5622,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5623, upper := 5762,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5763, upper := 5888,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5889, upper := 6020,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6021, upper := 6150,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6151, upper := 6290,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6291, upper := 6426,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6427, upper := 6566,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6567, upper := 6702,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6703, upper := 6842,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6843, upper := 6980,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6981, upper := 7116,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7117, upper := 7248,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7249, upper := 7386,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7387, upper := 7508,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7509, upper := 7646,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7647, upper := 7782,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7783, upper := 7898,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7899, upper := 8022,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8023, upper := 8156,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8157, upper := 8286,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8287, upper := 8426,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8427, upper := 8562,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8563, upper := 8702,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8703, upper := 8838,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8839, upper := 8978,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8979, upper := 9110,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9111, upper := 9248,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9249, upper := 9380,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9381, upper := 9516,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9517, upper := 9650,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9651, upper := 9788,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9789, upper := 9926,
        witness := RowWitness.topPrime 9787
      },
      {
        lower := 9927, upper := 10062,
        witness := RowWitness.topPrime 9923
      },
      {
        lower := 10063, upper := 10200,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10201, upper := 10332,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10333, upper := 10472,
        witness := RowWitness.topPrime 10333
      },
      {
        lower := 10473, upper := 10602,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10603, upper := 10740,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10741, upper := 10878,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10879, upper := 11006,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 11007, upper := 11142,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11143, upper := 11270,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11271, upper := 11400,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11401, upper := 11538,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11539, upper := 11666,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11667, upper := 11796,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11797, upper := 11928,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11929, upper := 12066,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12067, upper := 12188,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12189, upper := 12302,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12303, upper := 12440,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12441, upper := 12576,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12577, upper := 12716,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12717, upper := 12852,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12853, upper := 12992,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12993, upper := 13122,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13123, upper := 13260,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13261, upper := 13398,
        witness := RowWitness.topPrime 13259
      },
      {
        lower := 13399, upper := 13538,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13539, upper := 13676,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13677, upper := 13808,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13809, upper := 13946,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13947, upper := 14072,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14073, upper := 14210,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14211, upper := 14346,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14347, upper := 14486,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14487, upper := 14618,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14619, upper := 14732,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14733, upper := 14870,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14871, upper := 15008,
        witness := RowWitness.topPrime 14869
      },
      {
        lower := 15009, upper := 15122,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15123, upper := 15260,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15261, upper := 15398,
        witness := RowWitness.topPrime 15259
      },
      {
        lower := 15399, upper := 15530,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15531, upper := 15666,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15667, upper := 15806,
        witness := RowWitness.topPrime 15667
      },
      {
        lower := 15807, upper := 15942,
        witness := RowWitness.topPrime 15803
      },
      {
        lower := 15943, upper := 16076,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16077, upper := 16212,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16213, upper := 16332,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16333, upper := 16472,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16473, upper := 16592,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16593, upper := 16712,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16713, upper := 16842,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16843, upper := 16982,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16983, upper := 17120,
        witness := RowWitness.topPrime 16981
      },
      {
        lower := 17121, upper := 17256,
        witness := RowWitness.topPrime 17117
      },
      {
        lower := 17257, upper := 17396,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17397, upper := 17532,
        witness := RowWitness.topPrime 17393
      },
      {
        lower := 17533, upper := 17658,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17659, upper := 17798,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17799, upper := 17930,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 17931, upper := 18068,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18069, upper := 18200,
        witness := RowWitness.topPrime 18061
      },
      {
        lower := 18201, upper := 18338,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18339, upper := 18468,
        witness := RowWitness.topPrime 18329
      },
      {
        lower := 18469, upper := 18600,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18601, upper := 18732,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18733, upper := 18870,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18871, upper := 19008,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19009, upper := 19148,
        witness := RowWitness.topPrime 19009
      },
      {
        lower := 19149, upper := 19280,
        witness := RowWitness.topPrime 19141
      },
      {
        lower := 19281, upper := 19412,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19413, upper := 19459,
        witness := RowWitness.topPrime 19403
      },
      {
        lower := 19663, upper := 19800,
        witness := RowWitness.topPrime 19661
      },
      {
        lower := 19801, upper := 19822,
        witness := RowWitness.topPrime 19801
      },
      {
        lower := 19881, upper := 19912,
        witness := RowWitness.topPrime 19867
      },
      {
        lower := 19965, upper := 20020,
        witness := RowWitness.topPrime 19963
      },
      {
        lower := 20172, upper := 20300,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20301, upper := 20303,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20478,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20535, upper := 20541,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20577, upper := 20702,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20703, upper := 20716,
        witness := RowWitness.topPrime 20693
      },
      {
        lower := 21296, upper := 21422,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21423, upper := 21435,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21870, upper := 22002,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22003, upper := 22043,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22109,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22229,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22327,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22465,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22584,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23900,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23901, upper := 23901,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24168,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24169, upper := 24196,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24299, upper := 24306,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24468,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24469, upper := 24506,
        witness := RowWitness.topPrime 24469
      },
      {
        lower := 24576, upper := 24710,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24711, upper := 24715,
        witness := RowWitness.topPrime 24709
      },
      {
        lower := 25215, upper := 25328,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25329, upper := 25420,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26011, upper := 26025,
        witness := RowWitness.topPrime 26003
      },
      {
        lower := 26047, upper := 26150,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26364, upper := 26383,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26645, upper := 26647,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27035,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27575,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27874,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28227, upper := 28229,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28570,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28577, upper := 28700,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 29584, upper := 29617,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29907,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30385,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30618, upper := 30732,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30733, upper := 30742,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30926, upper := 31038,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31388,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31389, upper := 31389,
        witness := RowWitness.topPrime 31387
      },
      {
        lower := 31423, upper := 31536,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31537, upper := 31562,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 31939, upper := 31966,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32078,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32907,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33628,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33753,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34458,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34459, upper := 34530,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35131, upper := 35131,
        witness := RowWitness.topPrime 35129
      },
      {
        lower := 35152, upper := 35270,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35287, upper := 35291,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35426,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36517, upper := 36636,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36637, upper := 36640,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37210, upper := 37340,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37341, upper := 37442,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37488,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37676,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37677, upper := 37692,
        witness := RowWitness.topPrime 37663
      },
      {
        lower := 38307, upper := 38430,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39462,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39463, upper := 39465,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40467,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40943,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 45369, upper := 45392,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45935,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47660,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47661, upper := 47663,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48100,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48512,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48872,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48873, upper := 48873,
        witness := RowWitness.topPrime 48871
      },
      {
        lower := 49152, upper := 49269,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51144,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 52215, upper := 52233,
        witness := RowWitness.topPrime 52201
      },
      {
        lower := 55451, upper := 55580,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55581, upper := 55586,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56308,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57261,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58703,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59095,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63869, upper := 64002,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64003, upper := 64008,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65660,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65661, upper := 65675,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68644, upper := 68778,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68779, upper := 68833,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 69020,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 69021, upper := 69029,
        witness := RowWitness.topPrime 69019
      },
      {
        lower := 71289, upper := 71426,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71427, upper := 71428,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73306,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85822,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89512,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 95052, upper := 95166,
        witness := RowWitness.topPrime 95027
      },
      {
        lower := 95167, upper := 95187,
        witness := RowWitness.topPrime 95153
      },
      {
        lower := 98415, upper := 98443,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103105,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 112908, upper := 113040,
        witness := RowWitness.topPrime 112901
      },
      {
        lower := 113041, upper := 113042,
        witness := RowWitness.topPrime 113041
      },
      {
        lower := 137388, upper := 137427,
        witness := RowWitness.topPrime 137387
      },
      {
        lower := 137842, upper := 137920,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146473,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149016,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154588,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 19460, upper := 38920, M := 19
      },
      {
        lower := 38920, upper := 77840, M := 15
      },
      {
        lower := 77840, upper := 155680, M := 12
      },
      {
        lower := 155680, upper := 311360, M := 9
      },
      {
        lower := 311360, upper := 622720, M := 7
      },
      {
        lower := 622720, upper := 1245440, M := 6
      },
      {
        lower := 1245440, upper := 2490880, M := 5
      },
      {
        lower := 2490880, upper := 4981760, M := 4
      },
      {
        lower := 4981760, upper := 9963520, M := 3
      },
      {
        lower := 9963520, upper := 19927040, M := 2
      },
      {
        lower := 19927040, upper := 39854080, M := 2
      },
      {
        lower := 39854080, upper := 79708160, M := 2
      },
      {
        lower := 79708160, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 141, r := 46, s := 99,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 284, upper := 423,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 424, upper := 561,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 562, upper := 697,
        witness := RowWitness.topPrime 557
      },
      {
        lower := 698, upper := 831,
        witness := RowWitness.topPrime 691
      },
      {
        lower := 832, upper := 969,
        witness := RowWitness.topPrime 829
      },
      {
        lower := 970, upper := 1107,
        witness := RowWitness.topPrime 967
      },
      {
        lower := 1108, upper := 1243,
        witness := RowWitness.topPrime 1103
      },
      {
        lower := 1244, upper := 1377,
        witness := RowWitness.topPrime 1237
      },
      {
        lower := 1378, upper := 1513,
        witness := RowWitness.topPrime 1373
      },
      {
        lower := 1514, upper := 1651,
        witness := RowWitness.topPrime 1511
      },
      {
        lower := 1652, upper := 1777,
        witness := RowWitness.topPrime 1637
      },
      {
        lower := 1778, upper := 1917,
        witness := RowWitness.topPrime 1777
      },
      {
        lower := 1918, upper := 2053,
        witness := RowWitness.topPrime 1913
      },
      {
        lower := 2054, upper := 2193,
        witness := RowWitness.topPrime 2053
      },
      {
        lower := 2194, upper := 2319,
        witness := RowWitness.topPrime 2179
      },
      {
        lower := 2320, upper := 2451,
        witness := RowWitness.topPrime 2311
      },
      {
        lower := 2452, upper := 2587,
        witness := RowWitness.topPrime 2447
      },
      {
        lower := 2588, upper := 2719,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2720, upper := 2859,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2860, upper := 2997,
        witness := RowWitness.topPrime 2857
      },
      {
        lower := 2998, upper := 3111,
        witness := RowWitness.topPrime 2971
      },
      {
        lower := 3112, upper := 3249,
        witness := RowWitness.topPrime 3109
      },
      {
        lower := 3250, upper := 3369,
        witness := RowWitness.topPrime 3229
      },
      {
        lower := 3370, upper := 3501,
        witness := RowWitness.topPrime 3361
      },
      {
        lower := 3502, upper := 3639,
        witness := RowWitness.topPrime 3499
      },
      {
        lower := 3640, upper := 3777,
        witness := RowWitness.topPrime 3637
      },
      {
        lower := 3778, upper := 3909,
        witness := RowWitness.topPrime 3769
      },
      {
        lower := 3910, upper := 4047,
        witness := RowWitness.topPrime 3907
      },
      {
        lower := 4048, upper := 4167,
        witness := RowWitness.topPrime 4027
      },
      {
        lower := 4168, upper := 4299,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4300, upper := 4437,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4438, upper := 4563,
        witness := RowWitness.topPrime 4423
      },
      {
        lower := 4564, upper := 4701,
        witness := RowWitness.topPrime 4561
      },
      {
        lower := 4702, upper := 4831,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4832, upper := 4971,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4972, upper := 5109,
        witness := RowWitness.topPrime 4969
      },
      {
        lower := 5110, upper := 5247,
        witness := RowWitness.topPrime 5107
      },
      {
        lower := 5248, upper := 5377,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5378, upper := 5491,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5492, upper := 5623,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5624, upper := 5763,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5764, upper := 5889,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5890, upper := 6021,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6022, upper := 6151,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6152, upper := 6291,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6292, upper := 6427,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6428, upper := 6567,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6568, upper := 6703,
        witness := RowWitness.topPrime 6563
      },
      {
        lower := 6704, upper := 6843,
        witness := RowWitness.topPrime 6703
      },
      {
        lower := 6844, upper := 6981,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6982, upper := 7117,
        witness := RowWitness.topPrime 6977
      },
      {
        lower := 7118, upper := 7249,
        witness := RowWitness.topPrime 7109
      },
      {
        lower := 7250, upper := 7387,
        witness := RowWitness.topPrime 7247
      },
      {
        lower := 7388, upper := 7509,
        witness := RowWitness.topPrime 7369
      },
      {
        lower := 7510, upper := 7647,
        witness := RowWitness.topPrime 7507
      },
      {
        lower := 7648, upper := 7783,
        witness := RowWitness.topPrime 7643
      },
      {
        lower := 7784, upper := 7899,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7900, upper := 8023,
        witness := RowWitness.topPrime 7883
      },
      {
        lower := 8024, upper := 8157,
        witness := RowWitness.topPrime 8017
      },
      {
        lower := 8158, upper := 8287,
        witness := RowWitness.topPrime 8147
      },
      {
        lower := 8288, upper := 8427,
        witness := RowWitness.topPrime 8287
      },
      {
        lower := 8428, upper := 8563,
        witness := RowWitness.topPrime 8423
      },
      {
        lower := 8564, upper := 8703,
        witness := RowWitness.topPrime 8563
      },
      {
        lower := 8704, upper := 8839,
        witness := RowWitness.topPrime 8699
      },
      {
        lower := 8840, upper := 8979,
        witness := RowWitness.topPrime 8839
      },
      {
        lower := 8980, upper := 9111,
        witness := RowWitness.topPrime 8971
      },
      {
        lower := 9112, upper := 9249,
        witness := RowWitness.topPrime 9109
      },
      {
        lower := 9250, upper := 9381,
        witness := RowWitness.topPrime 9241
      },
      {
        lower := 9382, upper := 9517,
        witness := RowWitness.topPrime 9377
      },
      {
        lower := 9518, upper := 9651,
        witness := RowWitness.topPrime 9511
      },
      {
        lower := 9652, upper := 9789,
        witness := RowWitness.topPrime 9649
      },
      {
        lower := 9790, upper := 9927,
        witness := RowWitness.topPrime 9787
      },
      {
        lower := 9928, upper := 10063,
        witness := RowWitness.topPrime 9923
      },
      {
        lower := 10064, upper := 10201,
        witness := RowWitness.topPrime 10061
      },
      {
        lower := 10202, upper := 10333,
        witness := RowWitness.topPrime 10193
      },
      {
        lower := 10334, upper := 10473,
        witness := RowWitness.topPrime 10333
      },
      {
        lower := 10474, upper := 10603,
        witness := RowWitness.topPrime 10463
      },
      {
        lower := 10604, upper := 10741,
        witness := RowWitness.topPrime 10601
      },
      {
        lower := 10742, upper := 10879,
        witness := RowWitness.topPrime 10739
      },
      {
        lower := 10880, upper := 11007,
        witness := RowWitness.topPrime 10867
      },
      {
        lower := 11008, upper := 11143,
        witness := RowWitness.topPrime 11003
      },
      {
        lower := 11144, upper := 11271,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11272, upper := 11401,
        witness := RowWitness.topPrime 11261
      },
      {
        lower := 11402, upper := 11539,
        witness := RowWitness.topPrime 11399
      },
      {
        lower := 11540, upper := 11667,
        witness := RowWitness.topPrime 11527
      },
      {
        lower := 11668, upper := 11797,
        witness := RowWitness.topPrime 11657
      },
      {
        lower := 11798, upper := 11929,
        witness := RowWitness.topPrime 11789
      },
      {
        lower := 11930, upper := 12067,
        witness := RowWitness.topPrime 11927
      },
      {
        lower := 12068, upper := 12189,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12190, upper := 12303,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12304, upper := 12441,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12442, upper := 12577,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12578, upper := 12717,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12718, upper := 12853,
        witness := RowWitness.topPrime 12713
      },
      {
        lower := 12854, upper := 12993,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12994, upper := 13123,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13124, upper := 13261,
        witness := RowWitness.topPrime 13121
      },
      {
        lower := 13262, upper := 13399,
        witness := RowWitness.topPrime 13259
      },
      {
        lower := 13400, upper := 13539,
        witness := RowWitness.topPrime 13399
      },
      {
        lower := 13540, upper := 13677,
        witness := RowWitness.topPrime 13537
      },
      {
        lower := 13678, upper := 13809,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13810, upper := 13947,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13948, upper := 14073,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14074, upper := 14211,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14212, upper := 14347,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14348, upper := 14487,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14488, upper := 14619,
        witness := RowWitness.topPrime 14479
      },
      {
        lower := 14620, upper := 14733,
        witness := RowWitness.topPrime 14593
      },
      {
        lower := 14734, upper := 14871,
        witness := RowWitness.topPrime 14731
      },
      {
        lower := 14872, upper := 15009,
        witness := RowWitness.topPrime 14869
      },
      {
        lower := 15010, upper := 15123,
        witness := RowWitness.topPrime 14983
      },
      {
        lower := 15124, upper := 15261,
        witness := RowWitness.topPrime 15121
      },
      {
        lower := 15262, upper := 15399,
        witness := RowWitness.topPrime 15259
      },
      {
        lower := 15400, upper := 15531,
        witness := RowWitness.topPrime 15391
      },
      {
        lower := 15532, upper := 15667,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15668, upper := 15807,
        witness := RowWitness.topPrime 15667
      },
      {
        lower := 15808, upper := 15943,
        witness := RowWitness.topPrime 15803
      },
      {
        lower := 15944, upper := 16077,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16078, upper := 16213,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16214, upper := 16333,
        witness := RowWitness.topPrime 16193
      },
      {
        lower := 16334, upper := 16473,
        witness := RowWitness.topPrime 16333
      },
      {
        lower := 16474, upper := 16593,
        witness := RowWitness.topPrime 16453
      },
      {
        lower := 16594, upper := 16713,
        witness := RowWitness.topPrime 16573
      },
      {
        lower := 16714, upper := 16843,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16844, upper := 16983,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16984, upper := 17121,
        witness := RowWitness.topPrime 16981
      },
      {
        lower := 17122, upper := 17257,
        witness := RowWitness.topPrime 17117
      },
      {
        lower := 17258, upper := 17397,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17398, upper := 17533,
        witness := RowWitness.topPrime 17393
      },
      {
        lower := 17534, upper := 17659,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17660, upper := 17799,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17800, upper := 17931,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 17932, upper := 18069,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18070, upper := 18201,
        witness := RowWitness.topPrime 18061
      },
      {
        lower := 18202, upper := 18339,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18340, upper := 18469,
        witness := RowWitness.topPrime 18329
      },
      {
        lower := 18470, upper := 18601,
        witness := RowWitness.topPrime 18461
      },
      {
        lower := 18602, upper := 18733,
        witness := RowWitness.topPrime 18593
      },
      {
        lower := 18734, upper := 18871,
        witness := RowWitness.topPrime 18731
      },
      {
        lower := 18872, upper := 19009,
        witness := RowWitness.topPrime 18869
      },
      {
        lower := 19010, upper := 19149,
        witness := RowWitness.topPrime 19009
      },
      {
        lower := 19150, upper := 19281,
        witness := RowWitness.topPrime 19141
      },
      {
        lower := 19282, upper := 19413,
        witness := RowWitness.topPrime 19273
      },
      {
        lower := 19414, upper := 19543,
        witness := RowWitness.topPrime 19403
      },
      {
        lower := 19544, upper := 19683,
        witness := RowWitness.topPrime 19543
      },
      {
        lower := 19684, upper := 19821,
        witness := RowWitness.topPrime 19681
      },
      {
        lower := 19822, upper := 19823,
        witness := RowWitness.topPrime 19819
      },
      {
        lower := 20172, upper := 20301,
        witness := RowWitness.topPrime 20161
      },
      {
        lower := 20302, upper := 20304,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20402, upper := 20539,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20540, upper := 20673,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20674, upper := 20717,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21423,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21424, upper := 21436,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21875, upper := 22011,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22012, upper := 22044,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22326, upper := 22328,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22466,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22609,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22610, upper := 22612,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 22627, upper := 22668,
        witness := RowWitness.topPrime 22621
      },
      {
        lower := 23763, upper := 23901,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23902, upper := 23902,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24010, upper := 24147,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24148, upper := 24150,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24167, upper := 24177,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24367, upper := 24499,
        witness := RowWitness.topPrime 24359
      },
      {
        lower := 24500, upper := 24507,
        witness := RowWitness.topPrime 24499
      },
      {
        lower := 24576, upper := 24711,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24712, upper := 24716,
        witness := RowWitness.topPrime 24709
      },
      {
        lower := 25000, upper := 25104,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25329,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25330, upper := 25421,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26011, upper := 26026,
        witness := RowWitness.topPrime 26003
      },
      {
        lower := 26047, upper := 26151,
        witness := RowWitness.topPrime 26041
      },
      {
        lower := 26364, upper := 26384,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26504,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26645, upper := 26764,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27036,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27576,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27875,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28263,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28264, upper := 28265,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28577, upper := 28713,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28714, upper := 28717,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28812, upper := 28812,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29618,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29908,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30258, upper := 30386,
        witness := RowWitness.topPrime 30253
      },
      {
        lower := 30720, upper := 30743,
        witness := RowWitness.topPrime 30713
      },
      {
        lower := 30758, upper := 30860,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 31213, upper := 31333,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31334, upper := 31390,
        witness := RowWitness.topPrime 31333
      },
      {
        lower := 31423, upper := 31537,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31538, upper := 31563,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 31939, upper := 31967,
        witness := RowWitness.topPrime 31907
      },
      {
        lower := 31974, upper := 32079,
        witness := RowWitness.topPrime 31973
      },
      {
        lower := 32805, upper := 32908,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33629,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33754,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34459,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34460, upper := 34531,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 34816, upper := 34947,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34948, upper := 34950,
        witness := RowWitness.topPrime 34939
      },
      {
        lower := 35152, upper := 35271,
        witness := RowWitness.topPrime 35149
      },
      {
        lower := 35287, upper := 35292,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 36015, upper := 36052,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36637,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36638, upper := 36641,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37303, upper := 37417,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37418, upper := 37443,
        witness := RowWitness.topPrime 37409
      },
      {
        lower := 37446, upper := 37489,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37633,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37634, upper := 37678,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38443,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38444, upper := 38447,
        witness := RowWitness.topPrime 38431
      },
      {
        lower := 39326, upper := 39463,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39464, upper := 39466,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40468,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40944,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41071,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43827,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45369, upper := 45393,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 47526, upper := 47661,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47662, upper := 47664,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48101,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48513,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48873,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48874, upper := 48874,
        witness := RowWitness.topPrime 48871
      },
      {
        lower := 49152, upper := 49270,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50550,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51145,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53388,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55581,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55582, upper := 55587,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56309,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57262,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57385,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58704,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59096,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62550,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64003,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64004, upper := 64009,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65661,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65662, upper := 65673,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68644, upper := 68779,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68780, upper := 68834,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 69021,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 69022, upper := 69030,
        witness := RowWitness.topPrime 69019
      },
      {
        lower := 71289, upper := 71427,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71428, upper := 71429,
        witness := RowWitness.topPrime 71419
      },
      {
        lower := 73205, upper := 73307,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85823,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89513,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93890,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 103041, upper := 103106,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109515,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 146410, upper := 146474,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149017,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154589,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 19740, upper := 39480, M := 19
      },
      {
        lower := 39480, upper := 78960, M := 14
      },
      {
        lower := 78960, upper := 157920, M := 11
      },
      {
        lower := 157920, upper := 315840, M := 9
      },
      {
        lower := 315840, upper := 631680, M := 7
      },
      {
        lower := 631680, upper := 1263360, M := 5
      },
      {
        lower := 1263360, upper := 2526720, M := 4
      },
      {
        lower := 2526720, upper := 5053440, M := 3
      },
      {
        lower := 5053440, upper := 10106880, M := 3
      },
      {
        lower := 10106880, upper := 20213760, M := 2
      },
      {
        lower := 20213760, upper := 40427520, M := 2
      },
      {
        lower := 40427520, upper := 80855040, M := 2
      },
      {
        lower := 80855040, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 142, r := 47, s := 100,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 286, upper := 424,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 425, upper := 562,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 563, upper := 704,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 705, upper := 842,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 843, upper := 980,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 981, upper := 1118,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1119, upper := 1258,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1259, upper := 1400,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1401, upper := 1540,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1541, upper := 1672,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1673, upper := 1810,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1811, upper := 1952,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1953, upper := 2092,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2093, upper := 2230,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2231, upper := 2362,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2363, upper := 2498,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2499, upper := 2618,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2619, upper := 2758,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2759, upper := 2894,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2895, upper := 3028,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3029, upper := 3164,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3165, upper := 3304,
        witness := RowWitness.topPrime 3163
      },
      {
        lower := 3305, upper := 3442,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3443, upper := 3574,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3575, upper := 3712,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3713, upper := 3850,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3851, upper := 3992,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 3993, upper := 4130,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4131, upper := 4270,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4271, upper := 4412,
        witness := RowWitness.topPrime 4271
      },
      {
        lower := 4413, upper := 4550,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4551, upper := 4690,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4691, upper := 4832,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4833, upper := 4972,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4973, upper := 5114,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5115, upper := 5254,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5255, upper := 5378,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5379, upper := 5492,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5493, upper := 5624,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5625, upper := 5764,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5765, upper := 5890,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5891, upper := 6022,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6023, upper := 6152,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6153, upper := 6292,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6293, upper := 6428,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6429, upper := 6568,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6569, upper := 6710,
        witness := RowWitness.topPrime 6569
      },
      {
        lower := 6711, upper := 6850,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6851, upper := 6982,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6983, upper := 7124,
        witness := RowWitness.topPrime 6983
      },
      {
        lower := 7125, upper := 7262,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7263, upper := 7394,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7395, upper := 7534,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7535, upper := 7670,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7671, upper := 7810,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7811, upper := 7934,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7935, upper := 8074,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8075, upper := 8210,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8211, upper := 8350,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8351, upper := 8470,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8471, upper := 8608,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8609, upper := 8750,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8751, upper := 8888,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8889, upper := 9028,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 9029, upper := 9170,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9171, upper := 9302,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9303, upper := 9434,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9435, upper := 9574,
        witness := RowWitness.topPrime 9433
      },
      {
        lower := 9575, upper := 9692,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9693, upper := 9830,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9831, upper := 9970,
        witness := RowWitness.topPrime 9829
      },
      {
        lower := 9971, upper := 10108,
        witness := RowWitness.topPrime 9967
      },
      {
        lower := 10109, upper := 10244,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10245, upper := 10384,
        witness := RowWitness.topPrime 10243
      },
      {
        lower := 10385, upper := 10510,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10511, upper := 10642,
        witness := RowWitness.topPrime 10501
      },
      {
        lower := 10643, upper := 10780,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10781, upper := 10922,
        witness := RowWitness.topPrime 10781
      },
      {
        lower := 10923, upper := 11050,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11051, upper := 11188,
        witness := RowWitness.topPrime 11047
      },
      {
        lower := 11189, upper := 11318,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11319, upper := 11458,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11459, upper := 11588,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11589, upper := 11728,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11729, upper := 11860,
        witness := RowWitness.topPrime 11719
      },
      {
        lower := 11861, upper := 11980,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11981, upper := 12122,
        witness := RowWitness.topPrime 11981
      },
      {
        lower := 12123, upper := 12260,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12261, upper := 12394,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12395, upper := 12532,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12533, upper := 12668,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12669, upper := 12800,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12801, upper := 12940,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12941, upper := 13082,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13083, upper := 13204,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13205, upper := 13328,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13329, upper := 13468,
        witness := RowWitness.topPrime 13327
      },
      {
        lower := 13469, upper := 13610,
        witness := RowWitness.topPrime 13469
      },
      {
        lower := 13611, upper := 13738,
        witness := RowWitness.topPrime 13597
      },
      {
        lower := 13739, upper := 13870,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13871, upper := 14000,
        witness := RowWitness.topPrime 13859
      },
      {
        lower := 14001, upper := 14140,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14141, upper := 14248,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14249, upper := 14390,
        witness := RowWitness.topPrime 14249
      },
      {
        lower := 14391, upper := 14530,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14531, upper := 14660,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14661, upper := 14798,
        witness := RowWitness.topPrime 14657
      },
      {
        lower := 14799, upper := 14938,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14939, upper := 15080,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15081, upper := 15218,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15219, upper := 15358,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15359, upper := 15500,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15501, upper := 15638,
        witness := RowWitness.topPrime 15497
      },
      {
        lower := 15639, upper := 15770,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15771, upper := 15908,
        witness := RowWitness.topPrime 15767
      },
      {
        lower := 15909, upper := 16048,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16049, upper := 16174,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16175, upper := 16282,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16283, upper := 16414,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16415, upper := 16552,
        witness := RowWitness.topPrime 16411
      },
      {
        lower := 16553, upper := 16694,
        witness := RowWitness.topPrime 16553
      },
      {
        lower := 16695, upper := 16834,
        witness := RowWitness.topPrime 16693
      },
      {
        lower := 16835, upper := 16972,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16973, upper := 17104,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17105, upper := 17240,
        witness := RowWitness.topPrime 17099
      },
      {
        lower := 17241, upper := 17380,
        witness := RowWitness.topPrime 17239
      },
      {
        lower := 17381, upper := 17518,
        witness := RowWitness.topPrime 17377
      },
      {
        lower := 17519, upper := 17660,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17661, upper := 17800,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17801, upper := 17932,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 17933, upper := 18070,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18071, upper := 18202,
        witness := RowWitness.topPrime 18061
      },
      {
        lower := 18203, upper := 18340,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18341, upper := 18482,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18483, upper := 18622,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18623, upper := 18758,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18759, upper := 18898,
        witness := RowWitness.topPrime 18757
      },
      {
        lower := 18899, upper := 19040,
        witness := RowWitness.topPrime 18899
      },
      {
        lower := 19041, upper := 19178,
        witness := RowWitness.topPrime 19037
      },
      {
        lower := 19179, upper := 19304,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19305, upper := 19442,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19443, upper := 19582,
        witness := RowWitness.topPrime 19441
      },
      {
        lower := 19583, upper := 19724,
        witness := RowWitness.topPrime 19583
      },
      {
        lower := 19725, upper := 19858,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19859, upper := 19994,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 19995, upper := 20022,
        witness := RowWitness.topPrime 19993
      },
      {
        lower := 20402, upper := 20540,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20541, upper := 20674,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20675, upper := 20718,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21296, upper := 21424,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21425, upper := 21437,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21870, upper := 22004,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22005, upper := 22045,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22111,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22231,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22329,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22467,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22586,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23902,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23903, upper := 23903,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24010, upper := 24148,
        witness := RowWitness.topPrime 24007
      },
      {
        lower := 24149, upper := 24198,
        witness := RowWitness.topPrime 24137
      },
      {
        lower := 24299, upper := 24308,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24470,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24471, upper := 24508,
        witness := RowWitness.topPrime 24469
      },
      {
        lower := 24576, upper := 24712,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 24713, upper := 24717,
        witness := RowWitness.topPrime 24709
      },
      {
        lower := 25000, upper := 25105,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25356,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26385,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26505,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26508, upper := 26552,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26645, upper := 26649,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27037,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27577,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27876,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28264,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28265, upper := 28266,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28572,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28577, upper := 28714,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28715, upper := 28852,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28853, upper := 28858,
        witness := RowWitness.topPrime 28843
      },
      {
        lower := 29584, upper := 29619,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29909,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30734,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30735, upper := 30744,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30759,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30899,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31040,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31334,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31335, upper := 31391,
        witness := RowWitness.topPrime 31333
      },
      {
        lower := 31423, upper := 31538,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31539, upper := 31564,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 32805, upper := 32909,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33630,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33755,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34460,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34461, upper := 34532,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36015, upper := 36053,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36638,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36639, upper := 36642,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37210, upper := 37342,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37343, upper := 37444,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37446, upper := 37490,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37634,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37635, upper := 37694,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38444,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38445, upper := 38448,
        witness := RowWitness.topPrime 38431
      },
      {
        lower := 39326, upper := 39464,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39465, upper := 39467,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 39605, upper := 39687,
        witness := RowWitness.topPrime 39581
      },
      {
        lower := 40931, upper := 40945,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41072,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 43750, upper := 43828,
        witness := RowWitness.topPrime 43721
      },
      {
        lower := 45927, upper := 45937,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47662,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47663, upper := 47665,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48102,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48514,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48734, upper := 48874,
        witness := RowWitness.topPrime 48733
      },
      {
        lower := 48875, upper := 48875,
        witness := RowWitness.topPrime 48871
      },
      {
        lower := 49152, upper := 49271,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51146,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56310,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57263,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57386,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58705,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59097,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62551,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64004,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64005, upper := 64010,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65610, upper := 65677,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68780,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68781, upper := 68835,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68890, upper := 69022,
        witness := RowWitness.topPrime 68881
      },
      {
        lower := 69023, upper := 69031,
        witness := RowWitness.topPrime 69019
      },
      {
        lower := 71289, upper := 71428,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71429, upper := 71430,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73308,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85824,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89514,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93891,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98445,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103107,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109516,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137922,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 146410, upper := 146475,
        witness := RowWitness.topPrime 146407
      },
      {
        lower := 148955, upper := 149018,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154590,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 20022, upper := 40044, M := 18
      },
      {
        lower := 40044, upper := 80088, M := 14
      },
      {
        lower := 80088, upper := 160176, M := 10
      },
      {
        lower := 160176, upper := 320352, M := 8
      },
      {
        lower := 320352, upper := 640704, M := 6
      },
      {
        lower := 640704, upper := 1281408, M := 5
      },
      {
        lower := 1281408, upper := 2562816, M := 4
      },
      {
        lower := 2562816, upper := 5125632, M := 3
      },
      {
        lower := 5125632, upper := 10251264, M := 2
      },
      {
        lower := 10251264, upper := 20502528, M := 2
      },
      {
        lower := 20502528, upper := 41005056, M := 2
      },
      {
        lower := 41005056, upper := 82010112, M := 1
      },
      {
        lower := 82010112, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 143, r := 47, s := 101,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 288, upper := 425,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 426, upper := 563,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 564, upper := 705,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 706, upper := 843,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 844, upper := 981,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 982, upper := 1119,
        witness := RowWitness.topPrime 977
      },
      {
        lower := 1120, upper := 1259,
        witness := RowWitness.topPrime 1117
      },
      {
        lower := 1260, upper := 1401,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1402, upper := 1541,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1542, upper := 1673,
        witness := RowWitness.topPrime 1531
      },
      {
        lower := 1674, upper := 1811,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1812, upper := 1953,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1954, upper := 2093,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2094, upper := 2231,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2232, upper := 2363,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2364, upper := 2499,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2500, upper := 2619,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2620, upper := 2759,
        witness := RowWitness.topPrime 2617
      },
      {
        lower := 2760, upper := 2895,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2896, upper := 3029,
        witness := RowWitness.topPrime 2887
      },
      {
        lower := 3030, upper := 3165,
        witness := RowWitness.topPrime 3023
      },
      {
        lower := 3166, upper := 3305,
        witness := RowWitness.topPrime 3163
      },
      {
        lower := 3306, upper := 3443,
        witness := RowWitness.topPrime 3301
      },
      {
        lower := 3444, upper := 3575,
        witness := RowWitness.topPrime 3433
      },
      {
        lower := 3576, upper := 3713,
        witness := RowWitness.topPrime 3571
      },
      {
        lower := 3714, upper := 3851,
        witness := RowWitness.topPrime 3709
      },
      {
        lower := 3852, upper := 3993,
        witness := RowWitness.topPrime 3851
      },
      {
        lower := 3994, upper := 4131,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4132, upper := 4271,
        witness := RowWitness.topPrime 4129
      },
      {
        lower := 4272, upper := 4413,
        witness := RowWitness.topPrime 4271
      },
      {
        lower := 4414, upper := 4551,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4552, upper := 4691,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4692, upper := 4833,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4834, upper := 4973,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4974, upper := 5115,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5116, upper := 5255,
        witness := RowWitness.topPrime 5113
      },
      {
        lower := 5256, upper := 5379,
        witness := RowWitness.topPrime 5237
      },
      {
        lower := 5380, upper := 5493,
        witness := RowWitness.topPrime 5351
      },
      {
        lower := 5494, upper := 5625,
        witness := RowWitness.topPrime 5483
      },
      {
        lower := 5626, upper := 5765,
        witness := RowWitness.topPrime 5623
      },
      {
        lower := 5766, upper := 5891,
        witness := RowWitness.topPrime 5749
      },
      {
        lower := 5892, upper := 6023,
        witness := RowWitness.topPrime 5881
      },
      {
        lower := 6024, upper := 6153,
        witness := RowWitness.topPrime 6011
      },
      {
        lower := 6154, upper := 6293,
        witness := RowWitness.topPrime 6151
      },
      {
        lower := 6294, upper := 6429,
        witness := RowWitness.topPrime 6287
      },
      {
        lower := 6430, upper := 6569,
        witness := RowWitness.topPrime 6427
      },
      {
        lower := 6570, upper := 6711,
        witness := RowWitness.topPrime 6569
      },
      {
        lower := 6712, upper := 6851,
        witness := RowWitness.topPrime 6709
      },
      {
        lower := 6852, upper := 6983,
        witness := RowWitness.topPrime 6841
      },
      {
        lower := 6984, upper := 7125,
        witness := RowWitness.topPrime 6983
      },
      {
        lower := 7126, upper := 7263,
        witness := RowWitness.topPrime 7121
      },
      {
        lower := 7264, upper := 7395,
        witness := RowWitness.topPrime 7253
      },
      {
        lower := 7396, upper := 7535,
        witness := RowWitness.topPrime 7393
      },
      {
        lower := 7536, upper := 7671,
        witness := RowWitness.topPrime 7529
      },
      {
        lower := 7672, upper := 7811,
        witness := RowWitness.topPrime 7669
      },
      {
        lower := 7812, upper := 7935,
        witness := RowWitness.topPrime 7793
      },
      {
        lower := 7936, upper := 8075,
        witness := RowWitness.topPrime 7933
      },
      {
        lower := 8076, upper := 8211,
        witness := RowWitness.topPrime 8069
      },
      {
        lower := 8212, upper := 8351,
        witness := RowWitness.topPrime 8209
      },
      {
        lower := 8352, upper := 8471,
        witness := RowWitness.topPrime 8329
      },
      {
        lower := 8472, upper := 8609,
        witness := RowWitness.topPrime 8467
      },
      {
        lower := 8610, upper := 8751,
        witness := RowWitness.topPrime 8609
      },
      {
        lower := 8752, upper := 8889,
        witness := RowWitness.topPrime 8747
      },
      {
        lower := 8890, upper := 9029,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 9030, upper := 9171,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9172, upper := 9303,
        witness := RowWitness.topPrime 9161
      },
      {
        lower := 9304, upper := 9435,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9436, upper := 9575,
        witness := RowWitness.topPrime 9433
      },
      {
        lower := 9576, upper := 9693,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9694, upper := 9831,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9832, upper := 9971,
        witness := RowWitness.topPrime 9829
      },
      {
        lower := 9972, upper := 10109,
        witness := RowWitness.topPrime 9967
      },
      {
        lower := 10110, upper := 10245,
        witness := RowWitness.topPrime 10103
      },
      {
        lower := 10246, upper := 10385,
        witness := RowWitness.topPrime 10243
      },
      {
        lower := 10386, upper := 10511,
        witness := RowWitness.topPrime 10369
      },
      {
        lower := 10512, upper := 10643,
        witness := RowWitness.topPrime 10501
      },
      {
        lower := 10644, upper := 10781,
        witness := RowWitness.topPrime 10639
      },
      {
        lower := 10782, upper := 10923,
        witness := RowWitness.topPrime 10781
      },
      {
        lower := 10924, upper := 11051,
        witness := RowWitness.topPrime 10909
      },
      {
        lower := 11052, upper := 11189,
        witness := RowWitness.topPrime 11047
      },
      {
        lower := 11190, upper := 11319,
        witness := RowWitness.topPrime 11177
      },
      {
        lower := 11320, upper := 11459,
        witness := RowWitness.topPrime 11317
      },
      {
        lower := 11460, upper := 11589,
        witness := RowWitness.topPrime 11447
      },
      {
        lower := 11590, upper := 11729,
        witness := RowWitness.topPrime 11587
      },
      {
        lower := 11730, upper := 11861,
        witness := RowWitness.topPrime 11719
      },
      {
        lower := 11862, upper := 11981,
        witness := RowWitness.topPrime 11839
      },
      {
        lower := 11982, upper := 12123,
        witness := RowWitness.topPrime 11981
      },
      {
        lower := 12124, upper := 12261,
        witness := RowWitness.topPrime 12119
      },
      {
        lower := 12262, upper := 12395,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12396, upper := 12533,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12534, upper := 12669,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12670, upper := 12801,
        witness := RowWitness.topPrime 12659
      },
      {
        lower := 12802, upper := 12941,
        witness := RowWitness.topPrime 12799
      },
      {
        lower := 12942, upper := 13083,
        witness := RowWitness.topPrime 12941
      },
      {
        lower := 13084, upper := 13205,
        witness := RowWitness.topPrime 13063
      },
      {
        lower := 13206, upper := 13329,
        witness := RowWitness.topPrime 13187
      },
      {
        lower := 13330, upper := 13469,
        witness := RowWitness.topPrime 13327
      },
      {
        lower := 13470, upper := 13611,
        witness := RowWitness.topPrime 13469
      },
      {
        lower := 13612, upper := 13739,
        witness := RowWitness.topPrime 13597
      },
      {
        lower := 13740, upper := 13871,
        witness := RowWitness.topPrime 13729
      },
      {
        lower := 13872, upper := 14001,
        witness := RowWitness.topPrime 13859
      },
      {
        lower := 14002, upper := 14141,
        witness := RowWitness.topPrime 13999
      },
      {
        lower := 14142, upper := 14249,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14250, upper := 14391,
        witness := RowWitness.topPrime 14249
      },
      {
        lower := 14392, upper := 14531,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14532, upper := 14661,
        witness := RowWitness.topPrime 14519
      },
      {
        lower := 14662, upper := 14799,
        witness := RowWitness.topPrime 14657
      },
      {
        lower := 14800, upper := 14939,
        witness := RowWitness.topPrime 14797
      },
      {
        lower := 14940, upper := 15081,
        witness := RowWitness.topPrime 14939
      },
      {
        lower := 15082, upper := 15219,
        witness := RowWitness.topPrime 15077
      },
      {
        lower := 15220, upper := 15359,
        witness := RowWitness.topPrime 15217
      },
      {
        lower := 15360, upper := 15501,
        witness := RowWitness.topPrime 15359
      },
      {
        lower := 15502, upper := 15639,
        witness := RowWitness.topPrime 15497
      },
      {
        lower := 15640, upper := 15771,
        witness := RowWitness.topPrime 15629
      },
      {
        lower := 15772, upper := 15909,
        witness := RowWitness.topPrime 15767
      },
      {
        lower := 15910, upper := 16049,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16050, upper := 16175,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16176, upper := 16283,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16284, upper := 16415,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16416, upper := 16553,
        witness := RowWitness.topPrime 16411
      },
      {
        lower := 16554, upper := 16695,
        witness := RowWitness.topPrime 16553
      },
      {
        lower := 16696, upper := 16835,
        witness := RowWitness.topPrime 16693
      },
      {
        lower := 16836, upper := 16973,
        witness := RowWitness.topPrime 16831
      },
      {
        lower := 16974, upper := 17105,
        witness := RowWitness.topPrime 16963
      },
      {
        lower := 17106, upper := 17241,
        witness := RowWitness.topPrime 17099
      },
      {
        lower := 17242, upper := 17381,
        witness := RowWitness.topPrime 17239
      },
      {
        lower := 17382, upper := 17519,
        witness := RowWitness.topPrime 17377
      },
      {
        lower := 17520, upper := 17661,
        witness := RowWitness.topPrime 17519
      },
      {
        lower := 17662, upper := 17801,
        witness := RowWitness.topPrime 17659
      },
      {
        lower := 17802, upper := 17933,
        witness := RowWitness.topPrime 17791
      },
      {
        lower := 17934, upper := 18071,
        witness := RowWitness.topPrime 17929
      },
      {
        lower := 18072, upper := 18203,
        witness := RowWitness.topPrime 18061
      },
      {
        lower := 18204, upper := 18341,
        witness := RowWitness.topPrime 18199
      },
      {
        lower := 18342, upper := 18483,
        witness := RowWitness.topPrime 18341
      },
      {
        lower := 18484, upper := 18623,
        witness := RowWitness.topPrime 18481
      },
      {
        lower := 18624, upper := 18759,
        witness := RowWitness.topPrime 18617
      },
      {
        lower := 18760, upper := 18899,
        witness := RowWitness.topPrime 18757
      },
      {
        lower := 18900, upper := 19041,
        witness := RowWitness.topPrime 18899
      },
      {
        lower := 19042, upper := 19179,
        witness := RowWitness.topPrime 19037
      },
      {
        lower := 19180, upper := 19305,
        witness := RowWitness.topPrime 19163
      },
      {
        lower := 19306, upper := 19443,
        witness := RowWitness.topPrime 19301
      },
      {
        lower := 19444, upper := 19583,
        witness := RowWitness.topPrime 19441
      },
      {
        lower := 19584, upper := 19725,
        witness := RowWitness.topPrime 19583
      },
      {
        lower := 19726, upper := 19859,
        witness := RowWitness.topPrime 19717
      },
      {
        lower := 19860, upper := 19995,
        witness := RowWitness.topPrime 19853
      },
      {
        lower := 19996, upper := 20135,
        witness := RowWitness.topPrime 19993
      },
      {
        lower := 20136, upper := 20271,
        witness := RowWitness.topPrime 20129
      },
      {
        lower := 20272, upper := 20306,
        witness := RowWitness.topPrime 20269
      },
      {
        lower := 20402, upper := 20541,
        witness := RowWitness.topPrime 20399
      },
      {
        lower := 20542, upper := 20675,
        witness := RowWitness.topPrime 20533
      },
      {
        lower := 20676, upper := 20719,
        witness := RowWitness.topPrime 20663
      },
      {
        lower := 21316, upper := 21360,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 22005,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22006, upper := 22017,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22188, upper := 22232,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22330,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22468,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22611,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22612, upper := 22614,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23903,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23904, upper := 23904,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24171,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24172, upper := 24179,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24334, upper := 24471,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24472, upper := 24509,
        witness := RowWitness.topPrime 24469
      },
      {
        lower := 24576, upper := 24707,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25106,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25331,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25332, upper := 25357,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26508, upper := 26553,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26739,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26740, upper := 26766,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 26934, upper := 27038,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27578,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27877,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28265,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28266, upper := 28267,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28573,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28577, upper := 28715,
        witness := RowWitness.topPrime 28573
      },
      {
        lower := 28716, upper := 28853,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28854, upper := 28859,
        witness := RowWitness.topPrime 28843
      },
      {
        lower := 29584, upper := 29620,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29910,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30735,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30736, upper := 30760,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30926, upper := 31041,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31335,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31336, upper := 31392,
        witness := RowWitness.topPrime 31333
      },
      {
        lower := 31423, upper := 31539,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31540, upper := 31565,
        witness := RowWitness.topPrime 31531
      },
      {
        lower := 32805, upper := 32910,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33631,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33756,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34461,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34462, upper := 34533,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 34816, upper := 34949,
        witness := RowWitness.topPrime 34807
      },
      {
        lower := 34950, upper := 34952,
        witness := RowWitness.topPrime 34949
      },
      {
        lower := 35344, upper := 35429,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36054,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36639,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36640, upper := 36643,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37210, upper := 37343,
        witness := RowWitness.topPrime 37201
      },
      {
        lower := 37344, upper := 37352,
        witness := RowWitness.topPrime 37339
      },
      {
        lower := 37500, upper := 37635,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37636, upper := 37695,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38445,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38446, upper := 38449,
        witness := RowWitness.topPrime 38431
      },
      {
        lower := 39326, upper := 39465,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39466, upper := 39468,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40470,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40946,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41073,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45369, upper := 45395,
        witness := RowWitness.topPrime 45361
      },
      {
        lower := 45927, upper := 45938,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47663,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47664, upper := 47666,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48103,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48387, upper := 48515,
        witness := RowWitness.topPrime 48383
      },
      {
        lower := 48778, upper := 48810,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49272,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50552,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51147,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 53290, upper := 53390,
        witness := RowWitness.topPrime 53281
      },
      {
        lower := 55451, upper := 55583,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55584, upper := 55589,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56311,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57344, upper := 57387,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 59049, upper := 59098,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62552,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63869, upper := 64005,
        witness := RowWitness.topPrime 63863
      },
      {
        lower := 64006, upper := 64011,
        witness := RowWitness.topPrime 63997
      },
      {
        lower := 65536, upper := 65663,
        witness := RowWitness.topPrime 65521
      },
      {
        lower := 65664, upper := 65678,
        witness := RowWitness.topPrime 65657
      },
      {
        lower := 68644, upper := 68781,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68782, upper := 68793,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69032,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71429,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71430, upper := 71431,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 89383, upper := 89515,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93892,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98446,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 102152, upper := 102152,
        witness := RowWitness.topPrime 102149
      },
      {
        lower := 103041, upper := 103108,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109517,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 137842, upper := 137923,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149019,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154591,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 20306, upper := 40612, M := 17
      },
      {
        lower := 40612, upper := 81224, M := 13
      },
      {
        lower := 81224, upper := 162448, M := 10
      },
      {
        lower := 162448, upper := 324896, M := 8
      },
      {
        lower := 324896, upper := 649792, M := 6
      },
      {
        lower := 649792, upper := 1299584, M := 5
      },
      {
        lower := 1299584, upper := 2599168, M := 4
      },
      {
        lower := 2599168, upper := 5198336, M := 3
      },
      {
        lower := 5198336, upper := 10396672, M := 2
      },
      {
        lower := 10396672, upper := 20793344, M := 2
      },
      {
        lower := 20793344, upper := 41586688, M := 2
      },
      {
        lower := 41586688, upper := 83173376, M := 1
      },
      {
        lower := 83173376, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 144, r := 47, s := 102,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 290, upper := 426,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 427, upper := 564,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 565, upper := 706,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 707, upper := 844,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 845, upper := 982,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 983, upper := 1126,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1127, upper := 1266,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1267, upper := 1402,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1403, upper := 1542,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1543, upper := 1686,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1687, upper := 1812,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1813, upper := 1954,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1955, upper := 2094,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2095, upper := 2232,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2233, upper := 2364,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2365, upper := 2500,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2501, upper := 2620,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2621, upper := 2764,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2765, upper := 2896,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2897, upper := 3040,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3041, upper := 3184,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3185, upper := 3324,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3325, upper := 3466,
        witness := RowWitness.topPrime 3323
      },
      {
        lower := 3467, upper := 3610,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3611, upper := 3750,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3751, upper := 3882,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3883, upper := 4024,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4025, upper := 4164,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4165, upper := 4302,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4303, upper := 4440,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4441, upper := 4584,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4585, upper := 4726,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4727, upper := 4866,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4867, upper := 5004,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5005, upper := 5146,
        witness := RowWitness.topPrime 5003
      },
      {
        lower := 5147, upper := 5290,
        witness := RowWitness.topPrime 5147
      },
      {
        lower := 5291, upper := 5424,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5425, upper := 5562,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5563, upper := 5706,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5707, upper := 5844,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5845, upper := 5986,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5987, upper := 6130,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6131, upper := 6274,
        witness := RowWitness.topPrime 6131
      },
      {
        lower := 6275, upper := 6414,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6415, upper := 6540,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6541, upper := 6672,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6673, upper := 6816,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6817, upper := 6946,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6947, upper := 7090,
        witness := RowWitness.topPrime 6947
      },
      {
        lower := 7091, upper := 7222,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7223, upper := 7362,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7363, upper := 7494,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7495, upper := 7632,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7633, upper := 7764,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7765, upper := 7902,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7903, upper := 8044,
        witness := RowWitness.topPrime 7901
      },
      {
        lower := 8045, upper := 8182,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8183, upper := 8322,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8323, upper := 8460,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8461, upper := 8604,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8605, upper := 8742,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8743, upper := 8884,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8885, upper := 9010,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9011, upper := 9154,
        witness := RowWitness.topPrime 9011
      },
      {
        lower := 9155, upper := 9294,
        witness := RowWitness.topPrime 9151
      },
      {
        lower := 9295, upper := 9436,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9437, upper := 9580,
        witness := RowWitness.topPrime 9437
      },
      {
        lower := 9581, upper := 9694,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9695, upper := 9832,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9833, upper := 9976,
        witness := RowWitness.topPrime 9833
      },
      {
        lower := 9977, upper := 10116,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10117, upper := 10254,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10255, upper := 10396,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10397, upper := 10534,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10535, upper := 10674,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10675, upper := 10810,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10811, upper := 10942,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10943, upper := 11082,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11083, upper := 11226,
        witness := RowWitness.topPrime 11083
      },
      {
        lower := 11227, upper := 11356,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11357, upper := 11496,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11497, upper := 11640,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11641, upper := 11776,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11777, upper := 11920,
        witness := RowWitness.topPrime 11777
      },
      {
        lower := 11921, upper := 12052,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12053, upper := 12192,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12193, upper := 12306,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12307, upper := 12444,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12445, upper := 12580,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12581, upper := 12720,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12721, upper := 12864,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12865, upper := 12996,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12997, upper := 13126,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13127, upper := 13270,
        witness := RowWitness.topPrime 13127
      },
      {
        lower := 13271, upper := 13410,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13411, upper := 13554,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13555, upper := 13696,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13697, upper := 13840,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13841, upper := 13984,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13985, upper := 14110,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14111, upper := 14250,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14251, upper := 14394,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14395, upper := 14532,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14533, upper := 14676,
        witness := RowWitness.topPrime 14533
      },
      {
        lower := 14677, upper := 14812,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14813, upper := 14956,
        witness := RowWitness.topPrime 14813
      },
      {
        lower := 14957, upper := 15100,
        witness := RowWitness.topPrime 14957
      },
      {
        lower := 15101, upper := 15244,
        witness := RowWitness.topPrime 15101
      },
      {
        lower := 15245, upper := 15384,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15385, upper := 15526,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15527, upper := 15670,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15671, upper := 15814,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15815, upper := 15952,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15953, upper := 16080,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16081, upper := 16216,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16217, upper := 16360,
        witness := RowWitness.topPrime 16217
      },
      {
        lower := 16361, upper := 16504,
        witness := RowWitness.topPrime 16361
      },
      {
        lower := 16505, upper := 16636,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16637, upper := 16776,
        witness := RowWitness.topPrime 16633
      },
      {
        lower := 16777, upper := 16906,
        witness := RowWitness.topPrime 16763
      },
      {
        lower := 16907, upper := 17046,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17047, upper := 17190,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17191, upper := 17334,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17335, upper := 17476,
        witness := RowWitness.topPrime 17333
      },
      {
        lower := 17477, upper := 17620,
        witness := RowWitness.topPrime 17477
      },
      {
        lower := 17621, upper := 17752,
        witness := RowWitness.topPrime 17609
      },
      {
        lower := 17753, upper := 17892,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17893, upper := 18034,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18035, upper := 18156,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18157, upper := 18292,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18293, upper := 18432,
        witness := RowWitness.topPrime 18289
      },
      {
        lower := 18433, upper := 18576,
        witness := RowWitness.topPrime 18433
      },
      {
        lower := 18577, upper := 18696,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18697, upper := 18834,
        witness := RowWitness.topPrime 18691
      },
      {
        lower := 18835, upper := 18946,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18947, upper := 19090,
        witness := RowWitness.topPrime 18947
      },
      {
        lower := 19091, upper := 19230,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19231, upper := 19374,
        witness := RowWitness.topPrime 19231
      },
      {
        lower := 19375, upper := 19516,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19517, upper := 19650,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19651, upper := 19752,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19753, upper := 19896,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19897, upper := 20034,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20035, upper := 20172,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20173, upper := 20316,
        witness := RowWitness.topPrime 20173
      },
      {
        lower := 20317, upper := 20440,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20441, upper := 20584,
        witness := RowWitness.topPrime 20441
      },
      {
        lower := 20585, upper := 20706,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20707, upper := 20720,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 21296, upper := 21426,
        witness := RowWitness.topPrime 21283
      },
      {
        lower := 21427, upper := 21439,
        witness := RowWitness.topPrime 21419
      },
      {
        lower := 21875, upper := 22014,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22015, upper := 22047,
        witness := RowWitness.topPrime 22013
      },
      {
        lower := 22090, upper := 22113,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22233,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22331,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22469,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22588,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 23763, upper := 23904,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23905, upper := 23905,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24153,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24167, upper := 24180,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24310,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24472,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24473, upper := 24510,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 25000, upper := 25107,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25332,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25333, upper := 25358,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26411, upper := 26550,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26551, upper := 26554,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26645, upper := 26651,
        witness := RowWitness.topPrime 26641
      },
      {
        lower := 26934, upper := 27039,
        witness := RowWitness.topPrime 26927
      },
      {
        lower := 27556, upper := 27579,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27878,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28266,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28267, upper := 28268,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28812, upper := 28860,
        witness := RowWitness.topPrime 28807
      },
      {
        lower := 29584, upper := 29621,
        witness := RowWitness.topPrime 29581
      },
      {
        lower := 29791, upper := 29911,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30899, upper := 30901,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31042,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31336,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31337, upper := 31393,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31472,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31827,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 33614, upper := 33632,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33757,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34462,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34463, upper := 34534,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 35287, upper := 35295,
        witness := RowWitness.topPrime 35281
      },
      {
        lower := 35344, upper := 35430,
        witness := RowWitness.topPrime 35339
      },
      {
        lower := 36015, upper := 36055,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36640,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36641, upper := 36644,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37303, upper := 37353,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37446,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37636,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37637, upper := 37681,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38446,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 38447, upper := 38450,
        witness := RowWitness.topPrime 38447
      },
      {
        lower := 39326, upper := 39447,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 40401, upper := 40471,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40947,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 47526, upper := 47664,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47665, upper := 47667,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48104,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48811,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 50421, upper := 50553,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51148,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55584,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55585, upper := 55590,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56312,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57265,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 58619, upper := 58707,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59099,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 62500, upper := 62553,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 63948, upper := 63988,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 68644, upper := 68782,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68783, upper := 68794,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69033,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71430,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71431, upper := 71432,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73310,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85826,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89516,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93893,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 103041, upper := 103109,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 109503, upper := 109518,
        witness := RowWitness.topPrime 109481
      },
      {
        lower := 148955, upper := 149020,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154592,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 20592, upper := 41184, M := 16
      },
      {
        lower := 41184, upper := 82368, M := 12
      },
      {
        lower := 82368, upper := 164736, M := 9
      },
      {
        lower := 164736, upper := 329472, M := 7
      },
      {
        lower := 329472, upper := 658944, M := 5
      },
      {
        lower := 658944, upper := 1317888, M := 4
      },
      {
        lower := 1317888, upper := 2635776, M := 3
      },
      {
        lower := 2635776, upper := 5271552, M := 3
      },
      {
        lower := 5271552, upper := 10543104, M := 2
      },
      {
        lower := 10543104, upper := 21086208, M := 2
      },
      {
        lower := 21086208, upper := 42172416, M := 1
      },
      {
        lower := 42172416, upper := 84344832, M := 1
      },
      {
        lower := 84344832, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 145, r := 48, s := 102,
      n0Power10 := 8
    },
    goods := [
      {
        lower := 292, upper := 427,
        witness := RowWitness.topPrime 283
      },
      {
        lower := 428, upper := 565,
        witness := RowWitness.topPrime 421
      },
      {
        lower := 566, upper := 707,
        witness := RowWitness.topPrime 563
      },
      {
        lower := 708, upper := 845,
        witness := RowWitness.topPrime 701
      },
      {
        lower := 846, upper := 983,
        witness := RowWitness.topPrime 839
      },
      {
        lower := 984, upper := 1127,
        witness := RowWitness.topPrime 983
      },
      {
        lower := 1128, upper := 1267,
        witness := RowWitness.topPrime 1123
      },
      {
        lower := 1268, upper := 1403,
        witness := RowWitness.topPrime 1259
      },
      {
        lower := 1404, upper := 1543,
        witness := RowWitness.topPrime 1399
      },
      {
        lower := 1544, upper := 1687,
        witness := RowWitness.topPrime 1543
      },
      {
        lower := 1688, upper := 1813,
        witness := RowWitness.topPrime 1669
      },
      {
        lower := 1814, upper := 1955,
        witness := RowWitness.topPrime 1811
      },
      {
        lower := 1956, upper := 2095,
        witness := RowWitness.topPrime 1951
      },
      {
        lower := 2096, upper := 2233,
        witness := RowWitness.topPrime 2089
      },
      {
        lower := 2234, upper := 2365,
        witness := RowWitness.topPrime 2221
      },
      {
        lower := 2366, upper := 2501,
        witness := RowWitness.topPrime 2357
      },
      {
        lower := 2502, upper := 2621,
        witness := RowWitness.topPrime 2477
      },
      {
        lower := 2622, upper := 2765,
        witness := RowWitness.topPrime 2621
      },
      {
        lower := 2766, upper := 2897,
        witness := RowWitness.topPrime 2753
      },
      {
        lower := 2898, upper := 3041,
        witness := RowWitness.topPrime 2897
      },
      {
        lower := 3042, upper := 3185,
        witness := RowWitness.topPrime 3041
      },
      {
        lower := 3186, upper := 3325,
        witness := RowWitness.topPrime 3181
      },
      {
        lower := 3326, upper := 3467,
        witness := RowWitness.topPrime 3323
      },
      {
        lower := 3468, upper := 3611,
        witness := RowWitness.topPrime 3467
      },
      {
        lower := 3612, upper := 3751,
        witness := RowWitness.topPrime 3607
      },
      {
        lower := 3752, upper := 3883,
        witness := RowWitness.topPrime 3739
      },
      {
        lower := 3884, upper := 4025,
        witness := RowWitness.topPrime 3881
      },
      {
        lower := 4026, upper := 4165,
        witness := RowWitness.topPrime 4021
      },
      {
        lower := 4166, upper := 4303,
        witness := RowWitness.topPrime 4159
      },
      {
        lower := 4304, upper := 4441,
        witness := RowWitness.topPrime 4297
      },
      {
        lower := 4442, upper := 4585,
        witness := RowWitness.topPrime 4441
      },
      {
        lower := 4586, upper := 4727,
        witness := RowWitness.topPrime 4583
      },
      {
        lower := 4728, upper := 4867,
        witness := RowWitness.topPrime 4723
      },
      {
        lower := 4868, upper := 5005,
        witness := RowWitness.topPrime 4861
      },
      {
        lower := 5006, upper := 5147,
        witness := RowWitness.topPrime 5003
      },
      {
        lower := 5148, upper := 5291,
        witness := RowWitness.topPrime 5147
      },
      {
        lower := 5292, upper := 5425,
        witness := RowWitness.topPrime 5281
      },
      {
        lower := 5426, upper := 5563,
        witness := RowWitness.topPrime 5419
      },
      {
        lower := 5564, upper := 5707,
        witness := RowWitness.topPrime 5563
      },
      {
        lower := 5708, upper := 5845,
        witness := RowWitness.topPrime 5701
      },
      {
        lower := 5846, upper := 5987,
        witness := RowWitness.topPrime 5843
      },
      {
        lower := 5988, upper := 6131,
        witness := RowWitness.topPrime 5987
      },
      {
        lower := 6132, upper := 6275,
        witness := RowWitness.topPrime 6131
      },
      {
        lower := 6276, upper := 6415,
        witness := RowWitness.topPrime 6271
      },
      {
        lower := 6416, upper := 6541,
        witness := RowWitness.topPrime 6397
      },
      {
        lower := 6542, upper := 6673,
        witness := RowWitness.topPrime 6529
      },
      {
        lower := 6674, upper := 6817,
        witness := RowWitness.topPrime 6673
      },
      {
        lower := 6818, upper := 6947,
        witness := RowWitness.topPrime 6803
      },
      {
        lower := 6948, upper := 7091,
        witness := RowWitness.topPrime 6947
      },
      {
        lower := 7092, upper := 7223,
        witness := RowWitness.topPrime 7079
      },
      {
        lower := 7224, upper := 7363,
        witness := RowWitness.topPrime 7219
      },
      {
        lower := 7364, upper := 7495,
        witness := RowWitness.topPrime 7351
      },
      {
        lower := 7496, upper := 7633,
        witness := RowWitness.topPrime 7489
      },
      {
        lower := 7634, upper := 7765,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7766, upper := 7903,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7904, upper := 8045,
        witness := RowWitness.topPrime 7901
      },
      {
        lower := 8046, upper := 8183,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8184, upper := 8323,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8324, upper := 8461,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8462, upper := 8605,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8606, upper := 8743,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8744, upper := 8885,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8886, upper := 9011,
        witness := RowWitness.topPrime 8867
      },
      {
        lower := 9012, upper := 9155,
        witness := RowWitness.topPrime 9011
      },
      {
        lower := 9156, upper := 9295,
        witness := RowWitness.topPrime 9151
      },
      {
        lower := 9296, upper := 9437,
        witness := RowWitness.topPrime 9293
      },
      {
        lower := 9438, upper := 9581,
        witness := RowWitness.topPrime 9437
      },
      {
        lower := 9582, upper := 9695,
        witness := RowWitness.topPrime 9551
      },
      {
        lower := 9696, upper := 9833,
        witness := RowWitness.topPrime 9689
      },
      {
        lower := 9834, upper := 9977,
        witness := RowWitness.topPrime 9833
      },
      {
        lower := 9978, upper := 10117,
        witness := RowWitness.topPrime 9973
      },
      {
        lower := 10118, upper := 10255,
        witness := RowWitness.topPrime 10111
      },
      {
        lower := 10256, upper := 10397,
        witness := RowWitness.topPrime 10253
      },
      {
        lower := 10398, upper := 10535,
        witness := RowWitness.topPrime 10391
      },
      {
        lower := 10536, upper := 10675,
        witness := RowWitness.topPrime 10531
      },
      {
        lower := 10676, upper := 10811,
        witness := RowWitness.topPrime 10667
      },
      {
        lower := 10812, upper := 10943,
        witness := RowWitness.topPrime 10799
      },
      {
        lower := 10944, upper := 11083,
        witness := RowWitness.topPrime 10939
      },
      {
        lower := 11084, upper := 11227,
        witness := RowWitness.topPrime 11083
      },
      {
        lower := 11228, upper := 11357,
        witness := RowWitness.topPrime 11213
      },
      {
        lower := 11358, upper := 11497,
        witness := RowWitness.topPrime 11353
      },
      {
        lower := 11498, upper := 11641,
        witness := RowWitness.topPrime 11497
      },
      {
        lower := 11642, upper := 11777,
        witness := RowWitness.topPrime 11633
      },
      {
        lower := 11778, upper := 11921,
        witness := RowWitness.topPrime 11777
      },
      {
        lower := 11922, upper := 12053,
        witness := RowWitness.topPrime 11909
      },
      {
        lower := 12054, upper := 12193,
        witness := RowWitness.topPrime 12049
      },
      {
        lower := 12194, upper := 12307,
        witness := RowWitness.topPrime 12163
      },
      {
        lower := 12308, upper := 12445,
        witness := RowWitness.topPrime 12301
      },
      {
        lower := 12446, upper := 12581,
        witness := RowWitness.topPrime 12437
      },
      {
        lower := 12582, upper := 12721,
        witness := RowWitness.topPrime 12577
      },
      {
        lower := 12722, upper := 12865,
        witness := RowWitness.topPrime 12721
      },
      {
        lower := 12866, upper := 12997,
        witness := RowWitness.topPrime 12853
      },
      {
        lower := 12998, upper := 13127,
        witness := RowWitness.topPrime 12983
      },
      {
        lower := 13128, upper := 13271,
        witness := RowWitness.topPrime 13127
      },
      {
        lower := 13272, upper := 13411,
        witness := RowWitness.topPrime 13267
      },
      {
        lower := 13412, upper := 13555,
        witness := RowWitness.topPrime 13411
      },
      {
        lower := 13556, upper := 13697,
        witness := RowWitness.topPrime 13553
      },
      {
        lower := 13698, upper := 13841,
        witness := RowWitness.topPrime 13697
      },
      {
        lower := 13842, upper := 13985,
        witness := RowWitness.topPrime 13841
      },
      {
        lower := 13986, upper := 14111,
        witness := RowWitness.topPrime 13967
      },
      {
        lower := 14112, upper := 14251,
        witness := RowWitness.topPrime 14107
      },
      {
        lower := 14252, upper := 14395,
        witness := RowWitness.topPrime 14251
      },
      {
        lower := 14396, upper := 14533,
        witness := RowWitness.topPrime 14389
      },
      {
        lower := 14534, upper := 14677,
        witness := RowWitness.topPrime 14533
      },
      {
        lower := 14678, upper := 14813,
        witness := RowWitness.topPrime 14669
      },
      {
        lower := 14814, upper := 14957,
        witness := RowWitness.topPrime 14813
      },
      {
        lower := 14958, upper := 15101,
        witness := RowWitness.topPrime 14957
      },
      {
        lower := 15102, upper := 15245,
        witness := RowWitness.topPrime 15101
      },
      {
        lower := 15246, upper := 15385,
        witness := RowWitness.topPrime 15241
      },
      {
        lower := 15386, upper := 15527,
        witness := RowWitness.topPrime 15383
      },
      {
        lower := 15528, upper := 15671,
        witness := RowWitness.topPrime 15527
      },
      {
        lower := 15672, upper := 15815,
        witness := RowWitness.topPrime 15671
      },
      {
        lower := 15816, upper := 15953,
        witness := RowWitness.topPrime 15809
      },
      {
        lower := 15954, upper := 16081,
        witness := RowWitness.topPrime 15937
      },
      {
        lower := 16082, upper := 16217,
        witness := RowWitness.topPrime 16073
      },
      {
        lower := 16218, upper := 16361,
        witness := RowWitness.topPrime 16217
      },
      {
        lower := 16362, upper := 16505,
        witness := RowWitness.topPrime 16361
      },
      {
        lower := 16506, upper := 16637,
        witness := RowWitness.topPrime 16493
      },
      {
        lower := 16638, upper := 16777,
        witness := RowWitness.topPrime 16633
      },
      {
        lower := 16778, upper := 16907,
        witness := RowWitness.topPrime 16763
      },
      {
        lower := 16908, upper := 17047,
        witness := RowWitness.topPrime 16903
      },
      {
        lower := 17048, upper := 17191,
        witness := RowWitness.topPrime 17047
      },
      {
        lower := 17192, upper := 17335,
        witness := RowWitness.topPrime 17191
      },
      {
        lower := 17336, upper := 17477,
        witness := RowWitness.topPrime 17333
      },
      {
        lower := 17478, upper := 17621,
        witness := RowWitness.topPrime 17477
      },
      {
        lower := 17622, upper := 17753,
        witness := RowWitness.topPrime 17609
      },
      {
        lower := 17754, upper := 17893,
        witness := RowWitness.topPrime 17749
      },
      {
        lower := 17894, upper := 18035,
        witness := RowWitness.topPrime 17891
      },
      {
        lower := 18036, upper := 18157,
        witness := RowWitness.topPrime 18013
      },
      {
        lower := 18158, upper := 18293,
        witness := RowWitness.topPrime 18149
      },
      {
        lower := 18294, upper := 18433,
        witness := RowWitness.topPrime 18289
      },
      {
        lower := 18434, upper := 18577,
        witness := RowWitness.topPrime 18433
      },
      {
        lower := 18578, upper := 18697,
        witness := RowWitness.topPrime 18553
      },
      {
        lower := 18698, upper := 18835,
        witness := RowWitness.topPrime 18691
      },
      {
        lower := 18836, upper := 18947,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18948, upper := 19091,
        witness := RowWitness.topPrime 18947
      },
      {
        lower := 19092, upper := 19231,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19232, upper := 19375,
        witness := RowWitness.topPrime 19231
      },
      {
        lower := 19376, upper := 19517,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19518, upper := 19651,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19652, upper := 19753,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19754, upper := 19897,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19898, upper := 20035,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20036, upper := 20173,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20174, upper := 20317,
        witness := RowWitness.topPrime 20173
      },
      {
        lower := 20318, upper := 20441,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20442, upper := 20585,
        witness := RowWitness.topPrime 20441
      },
      {
        lower := 20586, upper := 20707,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20708, upper := 20851,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 20852, upper := 20879,
        witness := RowWitness.topPrime 20849
      },
      {
        lower := 21316, upper := 21362,
        witness := RowWitness.topPrime 21313
      },
      {
        lower := 21870, upper := 22007,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22008, upper := 22014,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22114,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22234,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22332,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22470,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22472, upper := 22613,
        witness := RowWitness.topPrime 22469
      },
      {
        lower := 22614, upper := 22616,
        witness := RowWitness.topPrime 22613
      },
      {
        lower := 23763, upper := 23905,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23906, upper := 23906,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24173,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24174, upper := 24201,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24299, upper := 24311,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24473,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24474, upper := 24478,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24709,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25215, upper := 25333,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25334, upper := 25359,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26388,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26551,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26552, upper := 26555,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 26624, upper := 26741,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26742, upper := 26768,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27580,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27879,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28227, upper := 28234,
        witness := RowWitness.topPrime 28219
      },
      {
        lower := 28561, upper := 28575,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28705,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28855,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28856, upper := 28861,
        witness := RowWitness.topPrime 28843
      },
      {
        lower := 29791, upper := 29912,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30737,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30738, upper := 30864,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30899, upper := 30902,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31043,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31337,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31338, upper := 31394,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31473,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31828,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 32805, upper := 32912,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33633,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33758,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34463,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34464, upper := 34535,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36015, upper := 36056,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36641,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36642, upper := 36645,
        witness := RowWitness.topPrime 36637
      },
      {
        lower := 37303, upper := 37354,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37447,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37538, upper := 37590,
        witness := RowWitness.topPrime 37537
      },
      {
        lower := 37636, upper := 37682,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38435,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39467,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39468, upper := 39470,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40472,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40948,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41075,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45927, upper := 45940,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47665,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47666, upper := 47668,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48105,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 49152, upper := 49274,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50554,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51149,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55585,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55586, upper := 55591,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56313,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57266,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57389,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 58619, upper := 58708,
        witness := RowWitness.topPrime 58613
      },
      {
        lower := 59049, upper := 59100,
        witness := RowWitness.topPrime 59029
      },
      {
        lower := 63948, upper := 63989,
        witness := RowWitness.topPrime 63929
      },
      {
        lower := 65610, upper := 65680,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68783,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68784, upper := 68795,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69034,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71431,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71432, upper := 71433,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 85805, upper := 85827,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89517,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 98415, upper := 98448,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 103041, upper := 103110,
        witness := RowWitness.topPrime 103007
      },
      {
        lower := 137842, upper := 137925,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149021,
        witness := RowWitness.topPrime 148949
      },
      {
        lower := 154568, upper := 154593,
        witness := RowWitness.topPrime 154543
      }
    ],
    layers := [
      {
        lower := 20880, upper := 41760, M := 15
      },
      {
        lower := 41760, upper := 83520, M := 12
      },
      {
        lower := 83520, upper := 167040, M := 9
      },
      {
        lower := 167040, upper := 334080, M := 7
      },
      {
        lower := 334080, upper := 668160, M := 5
      },
      {
        lower := 668160, upper := 1336320, M := 4
      },
      {
        lower := 1336320, upper := 2672640, M := 3
      },
      {
        lower := 2672640, upper := 5345280, M := 2
      },
      {
        lower := 5345280, upper := 10690560, M := 2
      },
      {
        lower := 10690560, upper := 21381120, M := 2
      },
      {
        lower := 21381120, upper := 42762240, M := 1
      },
      {
        lower := 42762240, upper := 85524480, M := 1
      },
      {
        lower := 85524480, upper := 100000000, M := 1
      }
    ]
  },
  {
    height := {
      i := 146, r := 48, s := 103,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 294, upper := 438,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 439, upper := 584,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 585, upper := 722,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 723, upper := 864,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 865, upper := 1008,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1009, upper := 1154,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1155, upper := 1298,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1299, upper := 1442,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1443, upper := 1584,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1585, upper := 1728,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1729, upper := 1868,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1869, upper := 2012,
        witness := RowWitness.topPrime 1867
      },
      {
        lower := 2013, upper := 2156,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2157, upper := 2298,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2299, upper := 2442,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2443, upper := 2586,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2587, upper := 2724,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2725, upper := 2864,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2865, upper := 3006,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 3007, upper := 3146,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3147, upper := 3282,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3283, upper := 3416,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3417, upper := 3558,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3559, upper := 3704,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3705, upper := 3846,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3847, upper := 3992,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3993, upper := 4134,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4135, upper := 4278,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4279, upper := 4418,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4419, upper := 4554,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4555, upper := 4694,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4695, upper := 4836,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4837, upper := 4976,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4977, upper := 5118,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5119, upper := 5264,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5265, upper := 5406,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5407, upper := 5552,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5553, upper := 5676,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5677, upper := 5814,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5815, upper := 5958,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5959, upper := 6098,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6099, upper := 6236,
        witness := RowWitness.topPrime 6091
      },
      {
        lower := 6237, upper := 6374,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6375, upper := 6518,
        witness := RowWitness.topPrime 6373
      },
      {
        lower := 6519, upper := 6636,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6637, upper := 6782,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6783, upper := 6926,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6927, upper := 7062,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7063, upper := 7202,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7203, upper := 7338,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7339, upper := 7478,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7479, upper := 7622,
        witness := RowWitness.topPrime 7477
      },
      {
        lower := 7623, upper := 7766,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7767, upper := 7904,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7905, upper := 8046,
        witness := RowWitness.topPrime 7901
      },
      {
        lower := 8047, upper := 8184,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8185, upper := 8324,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8325, upper := 8462,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8463, upper := 8606,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8607, upper := 8744,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8745, upper := 8886,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8887, upper := 9032,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 9033, upper := 9174,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9175, upper := 9318,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9319, upper := 9464,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9465, upper := 9608,
        witness := RowWitness.topPrime 9463
      },
      {
        lower := 9609, upper := 9746,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9747, upper := 9888,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 9889, upper := 10032,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 10033, upper := 10154,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10155, upper := 10296,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10297, upper := 10434,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10435, upper := 10578,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10579, upper := 10712,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10713, upper := 10856,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10857, upper := 10998,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 10999, upper := 11138,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11139, upper := 11276,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11277, upper := 11418,
        witness := RowWitness.topPrime 11273
      },
      {
        lower := 11419, upper := 11556,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11557, upper := 11696,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11697, upper := 11834,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11835, upper := 11978,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11979, upper := 12116,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12117, upper := 12258,
        witness := RowWitness.topPrime 12113
      },
      {
        lower := 12259, upper := 12398,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12399, upper := 12536,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12537, upper := 12672,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12673, upper := 12816,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12817, upper := 12954,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12955, upper := 13098,
        witness := RowWitness.topPrime 12953
      },
      {
        lower := 13099, upper := 13244,
        witness := RowWitness.topPrime 13099
      },
      {
        lower := 13245, upper := 13386,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13387, upper := 13526,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13527, upper := 13668,
        witness := RowWitness.topPrime 13523
      },
      {
        lower := 13669, upper := 13814,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13815, upper := 13952,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13953, upper := 14078,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14079, upper := 14216,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14217, upper := 14352,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14353, upper := 14492,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14493, upper := 14634,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14635, upper := 14778,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14779, upper := 14924,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14925, upper := 15068,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15069, upper := 15206,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15207, upper := 15344,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15345, upper := 15476,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15477, upper := 15618,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15619, upper := 15764,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15765, upper := 15906,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15907, upper := 16052,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16053, upper := 16178,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16179, upper := 16286,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16287, upper := 16418,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16419, upper := 16562,
        witness := RowWitness.topPrime 16417
      },
      {
        lower := 16563, upper := 16706,
        witness := RowWitness.topPrime 16561
      },
      {
        lower := 16707, upper := 16848,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16849, upper := 16988,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16989, upper := 17132,
        witness := RowWitness.topPrime 16987
      },
      {
        lower := 17133, upper := 17268,
        witness := RowWitness.topPrime 17123
      },
      {
        lower := 17269, upper := 17402,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17403, upper := 17546,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17547, upper := 17684,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17685, upper := 17828,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17829, upper := 17972,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17973, upper := 18116,
        witness := RowWitness.topPrime 17971
      },
      {
        lower := 18117, upper := 18242,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18243, upper := 18378,
        witness := RowWitness.topPrime 18233
      },
      {
        lower := 18379, upper := 18524,
        witness := RowWitness.topPrime 18379
      },
      {
        lower := 18525, upper := 18668,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18669, upper := 18806,
        witness := RowWitness.topPrime 18661
      },
      {
        lower := 18807, upper := 18948,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18949, upper := 19092,
        witness := RowWitness.topPrime 18947
      },
      {
        lower := 19093, upper := 19232,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19233, upper := 19376,
        witness := RowWitness.topPrime 19231
      },
      {
        lower := 19377, upper := 19518,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19519, upper := 19652,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19653, upper := 19754,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19755, upper := 19898,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19899, upper := 20036,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20037, upper := 20174,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20175, upper := 20318,
        witness := RowWitness.topPrime 20173
      },
      {
        lower := 20319, upper := 20442,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20443, upper := 20588,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20589, upper := 20708,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20709, upper := 20852,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 20853, upper := 20994,
        witness := RowWitness.topPrime 20849
      },
      {
        lower := 20995, upper := 21128,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21129, upper := 21169,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21870, upper := 22008,
        witness := RowWitness.topPrime 21863
      },
      {
        lower := 22009, upper := 22020,
        witness := RowWitness.topPrime 22003
      },
      {
        lower := 22090, upper := 22115,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22235,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22333,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22586,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22587, upper := 22590,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23906,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23907, upper := 23907,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24037, upper := 24174,
        witness := RowWitness.topPrime 24029
      },
      {
        lower := 24175, upper := 24202,
        witness := RowWitness.topPrime 24169
      },
      {
        lower := 24299, upper := 24312,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24474,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24475, upper := 24512,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24710,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25109,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25215, upper := 25334,
        witness := RowWitness.topPrime 25189
      },
      {
        lower := 25335, upper := 25360,
        witness := RowWitness.topPrime 25321
      },
      {
        lower := 26364, upper := 26389,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26411, upper := 26552,
        witness := RowWitness.topPrime 26407
      },
      {
        lower := 26553, upper := 26556,
        witness := RowWitness.topPrime 26539
      },
      {
        lower := 27556, upper := 27581,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 27848, upper := 27880,
        witness := RowWitness.topPrime 27847
      },
      {
        lower := 28125, upper := 28268,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28269, upper := 28270,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28561, upper := 28576,
        witness := RowWitness.topPrime 28559
      },
      {
        lower := 28672, upper := 28706,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28856,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 28857, upper := 28862,
        witness := RowWitness.topPrime 28843
      },
      {
        lower := 29791, upper := 29913,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30618, upper := 30738,
        witness := RowWitness.topPrime 30593
      },
      {
        lower := 30739, upper := 30748,
        witness := RowWitness.topPrime 30727
      },
      {
        lower := 30758, upper := 30763,
        witness := RowWitness.topPrime 30757
      },
      {
        lower := 30899, upper := 30903,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31044,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31213, upper := 31338,
        witness := RowWitness.topPrime 31193
      },
      {
        lower := 31339, upper := 31395,
        witness := RowWitness.topPrime 31337
      },
      {
        lower := 31423, upper := 31474,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31829,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 32805, upper := 32913,
        witness := RowWitness.topPrime 32803
      },
      {
        lower := 33614, upper := 33634,
        witness := RowWitness.topPrime 33613
      },
      {
        lower := 33708, upper := 33759,
        witness := RowWitness.topPrime 33703
      },
      {
        lower := 34322, upper := 34464,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34465, upper := 34536,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36015, upper := 36057,
        witness := RowWitness.topPrime 36013
      },
      {
        lower := 36517, upper := 36642,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36643, upper := 36646,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37500, upper := 37638,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37639, upper := 37683,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38436,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39468,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39469, upper := 39471,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40473,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40949,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41076,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 45927, upper := 45941,
        witness := RowWitness.topPrime 45893
      },
      {
        lower := 47526, upper := 47666,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47667, upper := 47669,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48778, upper := 48813,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49275,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 50421, upper := 50555,
        witness := RowWitness.topPrime 50417
      },
      {
        lower := 51076, upper := 51150,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 55451, upper := 55586,
        witness := RowWitness.topPrime 55441
      },
      {
        lower := 55587, upper := 55592,
        witness := RowWitness.topPrime 55579
      },
      {
        lower := 56307, upper := 56314,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57267,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 62500, upper := 62555,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 65610, upper := 65681,
        witness := RowWitness.topPrime 65609
      },
      {
        lower := 68644, upper := 68784,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68785, upper := 68796,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69035,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71432,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71433, upper := 71434,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73312,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85828,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89518,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93895,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 98415, upper := 98449,
        witness := RowWitness.topPrime 98411
      },
      {
        lower := 137842, upper := 137926,
        witness := RowWitness.topPrime 137831
      },
      {
        lower := 148955, upper := 149022,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 21170, upper := 42340, M := 15
      },
      {
        lower := 42340, upper := 84680, M := 11
      },
      {
        lower := 84680, upper := 169360, M := 8
      },
      {
        lower := 169360, upper := 338720, M := 6
      },
      {
        lower := 338720, upper := 677440, M := 5
      },
      {
        lower := 677440, upper := 1354880, M := 4
      },
      {
        lower := 1354880, upper := 2709760, M := 3
      },
      {
        lower := 2709760, upper := 5419520, M := 2
      },
      {
        lower := 5419520, upper := 10000000, M := 2
      }
    ]
  },
  {
    height := {
      i := 147, r := 48, s := 104,
      n0Power10 := 7
    },
    goods := [
      {
        lower := 296, upper := 439,
        witness := RowWitness.topPrime 293
      },
      {
        lower := 440, upper := 585,
        witness := RowWitness.topPrime 439
      },
      {
        lower := 586, upper := 723,
        witness := RowWitness.topPrime 577
      },
      {
        lower := 724, upper := 865,
        witness := RowWitness.topPrime 719
      },
      {
        lower := 866, upper := 1009,
        witness := RowWitness.topPrime 863
      },
      {
        lower := 1010, upper := 1155,
        witness := RowWitness.topPrime 1009
      },
      {
        lower := 1156, upper := 1299,
        witness := RowWitness.topPrime 1153
      },
      {
        lower := 1300, upper := 1443,
        witness := RowWitness.topPrime 1297
      },
      {
        lower := 1444, upper := 1585,
        witness := RowWitness.topPrime 1439
      },
      {
        lower := 1586, upper := 1729,
        witness := RowWitness.topPrime 1583
      },
      {
        lower := 1730, upper := 1869,
        witness := RowWitness.topPrime 1723
      },
      {
        lower := 1870, upper := 2013,
        witness := RowWitness.topPrime 1867
      },
      {
        lower := 2014, upper := 2157,
        witness := RowWitness.topPrime 2011
      },
      {
        lower := 2158, upper := 2299,
        witness := RowWitness.topPrime 2153
      },
      {
        lower := 2300, upper := 2443,
        witness := RowWitness.topPrime 2297
      },
      {
        lower := 2444, upper := 2587,
        witness := RowWitness.topPrime 2441
      },
      {
        lower := 2588, upper := 2725,
        witness := RowWitness.topPrime 2579
      },
      {
        lower := 2726, upper := 2865,
        witness := RowWitness.topPrime 2719
      },
      {
        lower := 2866, upper := 3007,
        witness := RowWitness.topPrime 2861
      },
      {
        lower := 3008, upper := 3147,
        witness := RowWitness.topPrime 3001
      },
      {
        lower := 3148, upper := 3283,
        witness := RowWitness.topPrime 3137
      },
      {
        lower := 3284, upper := 3417,
        witness := RowWitness.topPrime 3271
      },
      {
        lower := 3418, upper := 3559,
        witness := RowWitness.topPrime 3413
      },
      {
        lower := 3560, upper := 3705,
        witness := RowWitness.topPrime 3559
      },
      {
        lower := 3706, upper := 3847,
        witness := RowWitness.topPrime 3701
      },
      {
        lower := 3848, upper := 3993,
        witness := RowWitness.topPrime 3847
      },
      {
        lower := 3994, upper := 4135,
        witness := RowWitness.topPrime 3989
      },
      {
        lower := 4136, upper := 4279,
        witness := RowWitness.topPrime 4133
      },
      {
        lower := 4280, upper := 4419,
        witness := RowWitness.topPrime 4273
      },
      {
        lower := 4420, upper := 4555,
        witness := RowWitness.topPrime 4409
      },
      {
        lower := 4556, upper := 4695,
        witness := RowWitness.topPrime 4549
      },
      {
        lower := 4696, upper := 4837,
        witness := RowWitness.topPrime 4691
      },
      {
        lower := 4838, upper := 4977,
        witness := RowWitness.topPrime 4831
      },
      {
        lower := 4978, upper := 5119,
        witness := RowWitness.topPrime 4973
      },
      {
        lower := 5120, upper := 5265,
        witness := RowWitness.topPrime 5119
      },
      {
        lower := 5266, upper := 5407,
        witness := RowWitness.topPrime 5261
      },
      {
        lower := 5408, upper := 5553,
        witness := RowWitness.topPrime 5407
      },
      {
        lower := 5554, upper := 5677,
        witness := RowWitness.topPrime 5531
      },
      {
        lower := 5678, upper := 5815,
        witness := RowWitness.topPrime 5669
      },
      {
        lower := 5816, upper := 5959,
        witness := RowWitness.topPrime 5813
      },
      {
        lower := 5960, upper := 6099,
        witness := RowWitness.topPrime 5953
      },
      {
        lower := 6100, upper := 6237,
        witness := RowWitness.topPrime 6091
      },
      {
        lower := 6238, upper := 6375,
        witness := RowWitness.topPrime 6229
      },
      {
        lower := 6376, upper := 6519,
        witness := RowWitness.topPrime 6373
      },
      {
        lower := 6520, upper := 6637,
        witness := RowWitness.topPrime 6491
      },
      {
        lower := 6638, upper := 6783,
        witness := RowWitness.topPrime 6637
      },
      {
        lower := 6784, upper := 6927,
        witness := RowWitness.topPrime 6781
      },
      {
        lower := 6928, upper := 7063,
        witness := RowWitness.topPrime 6917
      },
      {
        lower := 7064, upper := 7203,
        witness := RowWitness.topPrime 7057
      },
      {
        lower := 7204, upper := 7339,
        witness := RowWitness.topPrime 7193
      },
      {
        lower := 7340, upper := 7479,
        witness := RowWitness.topPrime 7333
      },
      {
        lower := 7480, upper := 7623,
        witness := RowWitness.topPrime 7477
      },
      {
        lower := 7624, upper := 7767,
        witness := RowWitness.topPrime 7621
      },
      {
        lower := 7768, upper := 7905,
        witness := RowWitness.topPrime 7759
      },
      {
        lower := 7906, upper := 8047,
        witness := RowWitness.topPrime 7901
      },
      {
        lower := 8048, upper := 8185,
        witness := RowWitness.topPrime 8039
      },
      {
        lower := 8186, upper := 8325,
        witness := RowWitness.topPrime 8179
      },
      {
        lower := 8326, upper := 8463,
        witness := RowWitness.topPrime 8317
      },
      {
        lower := 8464, upper := 8607,
        witness := RowWitness.topPrime 8461
      },
      {
        lower := 8608, upper := 8745,
        witness := RowWitness.topPrime 8599
      },
      {
        lower := 8746, upper := 8887,
        witness := RowWitness.topPrime 8741
      },
      {
        lower := 8888, upper := 9033,
        witness := RowWitness.topPrime 8887
      },
      {
        lower := 9034, upper := 9175,
        witness := RowWitness.topPrime 9029
      },
      {
        lower := 9176, upper := 9319,
        witness := RowWitness.topPrime 9173
      },
      {
        lower := 9320, upper := 9465,
        witness := RowWitness.topPrime 9319
      },
      {
        lower := 9466, upper := 9609,
        witness := RowWitness.topPrime 9463
      },
      {
        lower := 9610, upper := 9747,
        witness := RowWitness.topPrime 9601
      },
      {
        lower := 9748, upper := 9889,
        witness := RowWitness.topPrime 9743
      },
      {
        lower := 9890, upper := 10033,
        witness := RowWitness.topPrime 9887
      },
      {
        lower := 10034, upper := 10155,
        witness := RowWitness.topPrime 10009
      },
      {
        lower := 10156, upper := 10297,
        witness := RowWitness.topPrime 10151
      },
      {
        lower := 10298, upper := 10435,
        witness := RowWitness.topPrime 10289
      },
      {
        lower := 10436, upper := 10579,
        witness := RowWitness.topPrime 10433
      },
      {
        lower := 10580, upper := 10713,
        witness := RowWitness.topPrime 10567
      },
      {
        lower := 10714, upper := 10857,
        witness := RowWitness.topPrime 10711
      },
      {
        lower := 10858, upper := 10999,
        witness := RowWitness.topPrime 10853
      },
      {
        lower := 11000, upper := 11139,
        witness := RowWitness.topPrime 10993
      },
      {
        lower := 11140, upper := 11277,
        witness := RowWitness.topPrime 11131
      },
      {
        lower := 11278, upper := 11419,
        witness := RowWitness.topPrime 11273
      },
      {
        lower := 11420, upper := 11557,
        witness := RowWitness.topPrime 11411
      },
      {
        lower := 11558, upper := 11697,
        witness := RowWitness.topPrime 11551
      },
      {
        lower := 11698, upper := 11835,
        witness := RowWitness.topPrime 11689
      },
      {
        lower := 11836, upper := 11979,
        witness := RowWitness.topPrime 11833
      },
      {
        lower := 11980, upper := 12117,
        witness := RowWitness.topPrime 11971
      },
      {
        lower := 12118, upper := 12259,
        witness := RowWitness.topPrime 12113
      },
      {
        lower := 12260, upper := 12399,
        witness := RowWitness.topPrime 12253
      },
      {
        lower := 12400, upper := 12537,
        witness := RowWitness.topPrime 12391
      },
      {
        lower := 12538, upper := 12673,
        witness := RowWitness.topPrime 12527
      },
      {
        lower := 12674, upper := 12817,
        witness := RowWitness.topPrime 12671
      },
      {
        lower := 12818, upper := 12955,
        witness := RowWitness.topPrime 12809
      },
      {
        lower := 12956, upper := 13099,
        witness := RowWitness.topPrime 12953
      },
      {
        lower := 13100, upper := 13245,
        witness := RowWitness.topPrime 13099
      },
      {
        lower := 13246, upper := 13387,
        witness := RowWitness.topPrime 13241
      },
      {
        lower := 13388, upper := 13527,
        witness := RowWitness.topPrime 13381
      },
      {
        lower := 13528, upper := 13669,
        witness := RowWitness.topPrime 13523
      },
      {
        lower := 13670, upper := 13815,
        witness := RowWitness.topPrime 13669
      },
      {
        lower := 13816, upper := 13953,
        witness := RowWitness.topPrime 13807
      },
      {
        lower := 13954, upper := 14079,
        witness := RowWitness.topPrime 13933
      },
      {
        lower := 14080, upper := 14217,
        witness := RowWitness.topPrime 14071
      },
      {
        lower := 14218, upper := 14353,
        witness := RowWitness.topPrime 14207
      },
      {
        lower := 14354, upper := 14493,
        witness := RowWitness.topPrime 14347
      },
      {
        lower := 14494, upper := 14635,
        witness := RowWitness.topPrime 14489
      },
      {
        lower := 14636, upper := 14779,
        witness := RowWitness.topPrime 14633
      },
      {
        lower := 14780, upper := 14925,
        witness := RowWitness.topPrime 14779
      },
      {
        lower := 14926, upper := 15069,
        witness := RowWitness.topPrime 14923
      },
      {
        lower := 15070, upper := 15207,
        witness := RowWitness.topPrime 15061
      },
      {
        lower := 15208, upper := 15345,
        witness := RowWitness.topPrime 15199
      },
      {
        lower := 15346, upper := 15477,
        witness := RowWitness.topPrime 15331
      },
      {
        lower := 15478, upper := 15619,
        witness := RowWitness.topPrime 15473
      },
      {
        lower := 15620, upper := 15765,
        witness := RowWitness.topPrime 15619
      },
      {
        lower := 15766, upper := 15907,
        witness := RowWitness.topPrime 15761
      },
      {
        lower := 15908, upper := 16053,
        witness := RowWitness.topPrime 15907
      },
      {
        lower := 16054, upper := 16179,
        witness := RowWitness.topPrime 16033
      },
      {
        lower := 16180, upper := 16287,
        witness := RowWitness.topPrime 16141
      },
      {
        lower := 16288, upper := 16419,
        witness := RowWitness.topPrime 16273
      },
      {
        lower := 16420, upper := 16563,
        witness := RowWitness.topPrime 16417
      },
      {
        lower := 16564, upper := 16707,
        witness := RowWitness.topPrime 16561
      },
      {
        lower := 16708, upper := 16849,
        witness := RowWitness.topPrime 16703
      },
      {
        lower := 16850, upper := 16989,
        witness := RowWitness.topPrime 16843
      },
      {
        lower := 16990, upper := 17133,
        witness := RowWitness.topPrime 16987
      },
      {
        lower := 17134, upper := 17269,
        witness := RowWitness.topPrime 17123
      },
      {
        lower := 17270, upper := 17403,
        witness := RowWitness.topPrime 17257
      },
      {
        lower := 17404, upper := 17547,
        witness := RowWitness.topPrime 17401
      },
      {
        lower := 17548, upper := 17685,
        witness := RowWitness.topPrime 17539
      },
      {
        lower := 17686, upper := 17829,
        witness := RowWitness.topPrime 17683
      },
      {
        lower := 17830, upper := 17973,
        witness := RowWitness.topPrime 17827
      },
      {
        lower := 17974, upper := 18117,
        witness := RowWitness.topPrime 17971
      },
      {
        lower := 18118, upper := 18243,
        witness := RowWitness.topPrime 18097
      },
      {
        lower := 18244, upper := 18379,
        witness := RowWitness.topPrime 18233
      },
      {
        lower := 18380, upper := 18525,
        witness := RowWitness.topPrime 18379
      },
      {
        lower := 18526, upper := 18669,
        witness := RowWitness.topPrime 18523
      },
      {
        lower := 18670, upper := 18807,
        witness := RowWitness.topPrime 18661
      },
      {
        lower := 18808, upper := 18949,
        witness := RowWitness.topPrime 18803
      },
      {
        lower := 18950, upper := 19093,
        witness := RowWitness.topPrime 18947
      },
      {
        lower := 19094, upper := 19233,
        witness := RowWitness.topPrime 19087
      },
      {
        lower := 19234, upper := 19377,
        witness := RowWitness.topPrime 19231
      },
      {
        lower := 19378, upper := 19519,
        witness := RowWitness.topPrime 19373
      },
      {
        lower := 19520, upper := 19653,
        witness := RowWitness.topPrime 19507
      },
      {
        lower := 19654, upper := 19755,
        witness := RowWitness.topPrime 19609
      },
      {
        lower := 19756, upper := 19899,
        witness := RowWitness.topPrime 19753
      },
      {
        lower := 19900, upper := 20037,
        witness := RowWitness.topPrime 19891
      },
      {
        lower := 20038, upper := 20175,
        witness := RowWitness.topPrime 20029
      },
      {
        lower := 20176, upper := 20319,
        witness := RowWitness.topPrime 20173
      },
      {
        lower := 20320, upper := 20443,
        witness := RowWitness.topPrime 20297
      },
      {
        lower := 20444, upper := 20589,
        witness := RowWitness.topPrime 20443
      },
      {
        lower := 20590, upper := 20709,
        witness := RowWitness.topPrime 20563
      },
      {
        lower := 20710, upper := 20853,
        witness := RowWitness.topPrime 20707
      },
      {
        lower := 20854, upper := 20995,
        witness := RowWitness.topPrime 20849
      },
      {
        lower := 20996, upper := 21129,
        witness := RowWitness.topPrime 20983
      },
      {
        lower := 21130, upper := 21267,
        witness := RowWitness.topPrime 21121
      },
      {
        lower := 21268, upper := 21393,
        witness := RowWitness.topPrime 21247
      },
      {
        lower := 21394, upper := 21461,
        witness := RowWitness.topPrime 21391
      },
      {
        lower := 21875, upper := 22017,
        witness := RowWitness.topPrime 21871
      },
      {
        lower := 22018, upper := 22021,
        witness := RowWitness.topPrime 22013
      },
      {
        lower := 22090, upper := 22116,
        witness := RowWitness.topPrime 22079
      },
      {
        lower := 22188, upper := 22236,
        witness := RowWitness.topPrime 22171
      },
      {
        lower := 22326, upper := 22334,
        witness := RowWitness.topPrime 22307
      },
      {
        lower := 22445, upper := 22587,
        witness := RowWitness.topPrime 22441
      },
      {
        lower := 22588, upper := 22618,
        witness := RowWitness.topPrime 22573
      },
      {
        lower := 23763, upper := 23907,
        witness := RowWitness.topPrime 23761
      },
      {
        lower := 23908, upper := 23908,
        witness := RowWitness.topPrime 23899
      },
      {
        lower := 24167, upper := 24183,
        witness := RowWitness.topPrime 24151
      },
      {
        lower := 24299, upper := 24313,
        witness := RowWitness.topPrime 24281
      },
      {
        lower := 24334, upper := 24475,
        witness := RowWitness.topPrime 24329
      },
      {
        lower := 24476, upper := 24513,
        witness := RowWitness.topPrime 24473
      },
      {
        lower := 24576, upper := 24711,
        witness := RowWitness.topPrime 24571
      },
      {
        lower := 25000, upper := 25110,
        witness := RowWitness.topPrime 24989
      },
      {
        lower := 25281, upper := 25351,
        witness := RowWitness.topPrime 25261
      },
      {
        lower := 26364, upper := 26390,
        witness := RowWitness.topPrime 26357
      },
      {
        lower := 26508, upper := 26510,
        witness := RowWitness.topPrime 26501
      },
      {
        lower := 26624, upper := 26743,
        witness := RowWitness.topPrime 26597
      },
      {
        lower := 26744, upper := 26770,
        witness := RowWitness.topPrime 26737
      },
      {
        lower := 27556, upper := 27582,
        witness := RowWitness.topPrime 27551
      },
      {
        lower := 28125, upper := 28269,
        witness := RowWitness.topPrime 28123
      },
      {
        lower := 28270, upper := 28271,
        witness := RowWitness.topPrime 28229
      },
      {
        lower := 28672, upper := 28707,
        witness := RowWitness.topPrime 28669
      },
      {
        lower := 28717, upper := 28818,
        witness := RowWitness.topPrime 28711
      },
      {
        lower := 29791, upper := 29914,
        witness := RowWitness.topPrime 29789
      },
      {
        lower := 30899, upper := 30904,
        witness := RowWitness.topPrime 30893
      },
      {
        lower := 30926, upper := 31045,
        witness := RowWitness.topPrime 30911
      },
      {
        lower := 31250, upper := 31395,
        witness := RowWitness.topPrime 31249
      },
      {
        lower := 31396, upper := 31396,
        witness := RowWitness.topPrime 31393
      },
      {
        lower := 31423, upper := 31475,
        witness := RowWitness.topPrime 31397
      },
      {
        lower := 31827, upper := 31830,
        witness := RowWitness.topPrime 31817
      },
      {
        lower := 34322, upper := 34465,
        witness := RowWitness.topPrime 34319
      },
      {
        lower := 34466, upper := 34537,
        witness := RowWitness.topPrime 34457
      },
      {
        lower := 36517, upper := 36643,
        witness := RowWitness.topPrime 36497
      },
      {
        lower := 36644, upper := 36647,
        witness := RowWitness.topPrime 36643
      },
      {
        lower := 37303, upper := 37356,
        witness := RowWitness.topPrime 37277
      },
      {
        lower := 37446, upper := 37449,
        witness := RowWitness.topPrime 37441
      },
      {
        lower := 37500, upper := 37639,
        witness := RowWitness.topPrime 37493
      },
      {
        lower := 37640, upper := 37684,
        witness := RowWitness.topPrime 37633
      },
      {
        lower := 38307, upper := 38437,
        witness := RowWitness.topPrime 38303
      },
      {
        lower := 39326, upper := 39469,
        witness := RowWitness.topPrime 39323
      },
      {
        lower := 39470, upper := 39472,
        witness := RowWitness.topPrime 39461
      },
      {
        lower := 40401, upper := 40474,
        witness := RowWitness.topPrime 40387
      },
      {
        lower := 40931, upper := 40950,
        witness := RowWitness.topPrime 40927
      },
      {
        lower := 40960, upper := 41077,
        witness := RowWitness.topPrime 40949
      },
      {
        lower := 47526, upper := 47667,
        witness := RowWitness.topPrime 47521
      },
      {
        lower := 47668, upper := 47670,
        witness := RowWitness.topPrime 47659
      },
      {
        lower := 48013, upper := 48107,
        witness := RowWitness.topPrime 47981
      },
      {
        lower := 48778, upper := 48814,
        witness := RowWitness.topPrime 48767
      },
      {
        lower := 49152, upper := 49276,
        witness := RowWitness.topPrime 49139
      },
      {
        lower := 51076, upper := 51151,
        witness := RowWitness.topPrime 51071
      },
      {
        lower := 56307, upper := 56315,
        witness := RowWitness.topPrime 56299
      },
      {
        lower := 57245, upper := 57268,
        witness := RowWitness.topPrime 57241
      },
      {
        lower := 57344, upper := 57391,
        witness := RowWitness.topPrime 57331
      },
      {
        lower := 62500, upper := 62556,
        witness := RowWitness.topPrime 62497
      },
      {
        lower := 68644, upper := 68785,
        witness := RowWitness.topPrime 68639
      },
      {
        lower := 68786, upper := 68790,
        witness := RowWitness.topPrime 68777
      },
      {
        lower := 68921, upper := 69036,
        witness := RowWitness.topPrime 68917
      },
      {
        lower := 71289, upper := 71433,
        witness := RowWitness.topPrime 71287
      },
      {
        lower := 71434, upper := 71435,
        witness := RowWitness.topPrime 71429
      },
      {
        lower := 73205, upper := 73313,
        witness := RowWitness.topPrime 73189
      },
      {
        lower := 85805, upper := 85829,
        witness := RowWitness.topPrime 85793
      },
      {
        lower := 89383, upper := 89519,
        witness := RowWitness.topPrime 89381
      },
      {
        lower := 93845, upper := 93896,
        witness := RowWitness.topPrime 93827
      },
      {
        lower := 148955, upper := 149023,
        witness := RowWitness.topPrime 148949
      }
    ],
    layers := [
      {
        lower := 21462, upper := 42924, M := 14
      },
      {
        lower := 42924, upper := 85848, M := 10
      },
      {
        lower := 85848, upper := 171696, M := 8
      },
      {
        lower := 171696, upper := 343392, M := 6
      },
      {
        lower := 343392, upper := 686784, M := 4
      },
      {
        lower := 686784, upper := 1373568, M := 3
      },
      {
        lower := 1373568, upper := 2747136, M := 3
      },
      {
        lower := 2747136, upper := 5494272, M := 2
      },
      {
        lower := 5494272, upper := 10000000, M := 2
      }
    ]
  }
]

theorem coverRows05_checked :
    coverRows05.all finiteCoverRowCheck = true := by
  decide

#print axioms B699LowIndex.coverRows05_checked

end B699LowIndex
