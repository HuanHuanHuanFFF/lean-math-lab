import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row118_height : HeightCertificateDatum := { i := 118, r := 39, s := 82, n0Power10 := 9 }

def row118_goods : List GoodSegment := [
  { lower := 238, upper := 350, witness := RowWitness.topPrime 233 },
  { lower := 351, upper := 466, witness := RowWitness.topPrime 349 },
  { lower := 467, upper := 584, witness := RowWitness.topPrime 467 },
  { lower := 585, upper := 694, witness := RowWitness.topPrime 577 },
  { lower := 695, upper := 808, witness := RowWitness.topPrime 691 },
  { lower := 809, upper := 926, witness := RowWitness.topPrime 809 },
  { lower := 927, upper := 1036, witness := RowWitness.topPrime 919 },
  { lower := 1037, upper := 1150, witness := RowWitness.topPrime 1033 },
  { lower := 1151, upper := 1268, witness := RowWitness.topPrime 1151 },
  { lower := 1269, upper := 1376, witness := RowWitness.topPrime 1259 },
  { lower := 1377, upper := 1490, witness := RowWitness.topPrime 1373 },
  { lower := 1491, upper := 1606, witness := RowWitness.topPrime 1489 },
  { lower := 1607, upper := 1724, witness := RowWitness.topPrime 1607 },
  { lower := 1725, upper := 1840, witness := RowWitness.topPrime 1723 },
  { lower := 1841, upper := 1948, witness := RowWitness.topPrime 1831 },
  { lower := 1949, upper := 2066, witness := RowWitness.topPrime 1949 },
  { lower := 2067, upper := 2180, witness := RowWitness.topPrime 2063 },
  { lower := 2181, upper := 2296, witness := RowWitness.topPrime 2179 },
  { lower := 2297, upper := 2414, witness := RowWitness.topPrime 2297 },
  { lower := 2415, upper := 2528, witness := RowWitness.topPrime 2411 },
  { lower := 2529, upper := 2638, witness := RowWitness.topPrime 2521 },
  { lower := 2639, upper := 2750, witness := RowWitness.topPrime 2633 },
  { lower := 2751, upper := 2866, witness := RowWitness.topPrime 2749 },
  { lower := 2867, upper := 2978, witness := RowWitness.topPrime 2861 },
  { lower := 2979, upper := 3088, witness := RowWitness.topPrime 2971 },
  { lower := 3089, upper := 3206, witness := RowWitness.topPrime 3089 },
  { lower := 3207, upper := 3320, witness := RowWitness.topPrime 3203 },
  { lower := 3321, upper := 3436, witness := RowWitness.topPrime 3319 },
  { lower := 3437, upper := 3550, witness := RowWitness.topPrime 3433 },
  { lower := 3551, upper := 3664, witness := RowWitness.topPrime 3547 },
  { lower := 3665, upper := 3776, witness := RowWitness.topPrime 3659 },
  { lower := 3777, upper := 3886, witness := RowWitness.topPrime 3769 },
  { lower := 3887, upper := 3998, witness := RowWitness.topPrime 3881 },
  { lower := 3999, upper := 4106, witness := RowWitness.topPrime 3989 },
  { lower := 4107, upper := 4216, witness := RowWitness.topPrime 4099 },
  { lower := 4217, upper := 4334, witness := RowWitness.topPrime 4217 },
  { lower := 4335, upper := 4444, witness := RowWitness.topPrime 4327 },
  { lower := 4445, upper := 4558, witness := RowWitness.topPrime 4441 },
  { lower := 4559, upper := 4666, witness := RowWitness.topPrime 4549 },
  { lower := 4667, upper := 4780, witness := RowWitness.topPrime 4663 },
  { lower := 4781, upper := 4876, witness := RowWitness.topPrime 4759 },
  { lower := 4877, upper := 4994, witness := RowWitness.topPrime 4877 },
  { lower := 4995, upper := 5110, witness := RowWitness.topPrime 4993 },
  { lower := 5111, upper := 5224, witness := RowWitness.topPrime 5107 },
  { lower := 5225, upper := 5326, witness := RowWitness.topPrime 5209 },
  { lower := 5327, upper := 5440, witness := RowWitness.topPrime 5323 },
  { lower := 5441, upper := 5558, witness := RowWitness.topPrime 5441 },
  { lower := 5559, upper := 5674, witness := RowWitness.topPrime 5557 },
  { lower := 5675, upper := 5786, witness := RowWitness.topPrime 5669 },
  { lower := 5787, upper := 5900, witness := RowWitness.topPrime 5783 },
  { lower := 5901, upper := 6014, witness := RowWitness.topPrime 5897 },
  { lower := 6015, upper := 6128, witness := RowWitness.topPrime 6011 },
  { lower := 6129, upper := 6238, witness := RowWitness.topPrime 6121 },
  { lower := 6239, upper := 6346, witness := RowWitness.topPrime 6229 },
  { lower := 6347, upper := 6460, witness := RowWitness.topPrime 6343 },
  { lower := 6461, upper := 6568, witness := RowWitness.topPrime 6451 },
  { lower := 6569, upper := 6686, witness := RowWitness.topPrime 6569 },
  { lower := 6687, upper := 6796, witness := RowWitness.topPrime 6679 },
  { lower := 6797, upper := 6910, witness := RowWitness.topPrime 6793 },
  { lower := 6911, upper := 7028, witness := RowWitness.topPrime 6911 },
  { lower := 7029, upper := 7144, witness := RowWitness.topPrime 7027 },
  { lower := 7145, upper := 7246, witness := RowWitness.topPrime 7129 },
  { lower := 7247, upper := 7364, witness := RowWitness.topPrime 7247 },
  { lower := 7365, upper := 7468, witness := RowWitness.topPrime 7351 },
  { lower := 7469, upper := 7576, witness := RowWitness.topPrime 7459 },
  { lower := 7577, upper := 7694, witness := RowWitness.topPrime 7577 },
  { lower := 7695, upper := 7808, witness := RowWitness.topPrime 7691 },
  { lower := 7809, upper := 7910, witness := RowWitness.topPrime 7793 },
  { lower := 7911, upper := 8024, witness := RowWitness.topPrime 7907 },
  { lower := 8025, upper := 8134, witness := RowWitness.topPrime 8017 },
  { lower := 8135, upper := 8240, witness := RowWitness.topPrime 8123 },
  { lower := 8241, upper := 8354, witness := RowWitness.topPrime 8237 },
  { lower := 8355, upper := 8470, witness := RowWitness.topPrime 8353 },
  { lower := 8471, upper := 8584, witness := RowWitness.topPrime 8467 },
  { lower := 8585, upper := 8698, witness := RowWitness.topPrime 8581 },
  { lower := 8699, upper := 8816, witness := RowWitness.topPrime 8699 },
  { lower := 8817, upper := 8924, witness := RowWitness.topPrime 8807 },
  { lower := 8925, upper := 9040, witness := RowWitness.topPrime 8923 },
  { lower := 9041, upper := 9158, witness := RowWitness.topPrime 9041 },
  { lower := 9159, upper := 9274, witness := RowWitness.topPrime 9157 },
  { lower := 9275, upper := 9374, witness := RowWitness.topPrime 9257 },
  { lower := 9375, upper := 9488, witness := RowWitness.topPrime 9371 },
  { lower := 9489, upper := 9596, witness := RowWitness.topPrime 9479 },
  { lower := 9597, upper := 9704, witness := RowWitness.topPrime 9587 },
  { lower := 9705, upper := 9814, witness := RowWitness.topPrime 9697 },
  { lower := 9815, upper := 9928, witness := RowWitness.topPrime 9811 },
  { lower := 9929, upper := 10046, witness := RowWitness.topPrime 9929 },
  { lower := 10047, upper := 10156, witness := RowWitness.topPrime 10039 },
  { lower := 10157, upper := 10268, witness := RowWitness.topPrime 10151 },
  { lower := 10269, upper := 10384, witness := RowWitness.topPrime 10267 },
  { lower := 10385, upper := 10486, witness := RowWitness.topPrime 10369 },
  { lower := 10487, upper := 10604, witness := RowWitness.topPrime 10487 },
  { lower := 10605, upper := 10718, witness := RowWitness.topPrime 10601 },
  { lower := 10719, upper := 10828, witness := RowWitness.topPrime 10711 },
  { lower := 10829, upper := 10916, witness := RowWitness.topPrime 10799 },
  { lower := 10917, upper := 11026, witness := RowWitness.topPrime 10909 },
  { lower := 11027, upper := 11144, witness := RowWitness.topPrime 11027 },
  { lower := 11145, upper := 11248, witness := RowWitness.topPrime 11131 },
  { lower := 11249, upper := 11360, witness := RowWitness.topPrime 11243 },
  { lower := 11361, upper := 11470, witness := RowWitness.topPrime 11353 },
  { lower := 11471, upper := 11588, witness := RowWitness.topPrime 11471 },
  { lower := 11589, upper := 11704, witness := RowWitness.topPrime 11587 },
  { lower := 11705, upper := 11818, witness := RowWitness.topPrime 11701 },
  { lower := 11819, upper := 11930, witness := RowWitness.topPrime 11813 },
  { lower := 11931, upper := 12044, witness := RowWitness.topPrime 11927 },
  { lower := 12045, upper := 12160, witness := RowWitness.topPrime 12043 },
  { lower := 12161, upper := 12278, witness := RowWitness.topPrime 12161 },
  { lower := 12279, upper := 12394, witness := RowWitness.topPrime 12277 },
  { lower := 12395, upper := 12508, witness := RowWitness.topPrime 12391 },
  { lower := 12509, upper := 12620, witness := RowWitness.topPrime 12503 },
  { lower := 12621, upper := 12736, witness := RowWitness.topPrime 12619 },
  { lower := 12737, upper := 12838, witness := RowWitness.topPrime 12721 },
  { lower := 12839, upper := 12946, witness := RowWitness.topPrime 12829 },
  { lower := 12947, upper := 13058, witness := RowWitness.topPrime 12941 },
  { lower := 13059, upper := 13166, witness := RowWitness.topPrime 13049 },
  { lower := 13167, upper := 13280, witness := RowWitness.topPrime 13163 },
  { lower := 13281, upper := 13384, witness := RowWitness.topPrime 13267 },
  { lower := 13385, upper := 13498, witness := RowWitness.topPrime 13381 },
  { lower := 13499, upper := 13616, witness := RowWitness.topPrime 13499 },
  { lower := 13617, upper := 13730, witness := RowWitness.topPrime 13613 },
  { lower := 13731, upper := 13846, witness := RowWitness.topPrime 13729 },
  { lower := 13847, upper := 13895, witness := RowWitness.topPrime 13841 },
  { lower := 14336, upper := 14444, witness := RowWitness.topPrime 14327 },
  { lower := 14445, upper := 14523, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14697, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14758, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14856, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14909, witness := RowWitness.topPrime 14879 },
  { lower := 15000, upper := 15001, witness := RowWitness.topPrime 14983 },
  { lower := 15059, upper := 15117, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15238, witness := RowWitness.topPrime 15121 },
  { lower := 15239, upper := 15246, witness := RowWitness.topPrime 15233 },
  { lower := 15376, upper := 15490, witness := RowWitness.topPrime 15373 },
  { lower := 15491, upper := 15496, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16090, witness := RowWitness.topPrime 15973 },
  { lower := 16091, upper := 16104, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16498, witness := RowWitness.topPrime 16381 },
  { lower := 16499, upper := 16501, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16904, witness := RowWitness.topPrime 16787 },
  { lower := 16905, upper := 16937, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17415, witness := RowWitness.topPrime 17299 },
  { lower := 17576, upper := 17613, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17776, witness := RowWitness.topPrime 17659 },
  { lower := 17777, upper := 17778, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18598, witness := RowWitness.topPrime 18481 },
  { lower := 18599, upper := 18619, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18734, witness := RowWitness.topPrime 18617 },
  { lower := 18735, upper := 18848, witness := RowWitness.topPrime 18731 },
  { lower := 18849, upper := 18867, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19324, witness := RowWitness.topPrime 19207 },
  { lower := 19325, upper := 19325, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19778, witness := RowWitness.topPrime 19661 },
  { lower := 19779, upper := 19800, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19890, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19998, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20278, witness := RowWitness.topPrime 20161 },
  { lower := 20279, upper := 20298, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20456, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20519, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20650, witness := RowWitness.topPrime 20533 },
  { lower := 20651, upper := 20652, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20694, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21259, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21400, witness := RowWitness.topPrime 21283 },
  { lower := 21401, upper := 21413, witness := RowWitness.topPrime 21401 },
  { lower := 21870, upper := 21980, witness := RowWitness.topPrime 21863 },
  { lower := 21981, upper := 22021, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22210, witness := RowWitness.topPrime 22093 },
  { lower := 22211, upper := 22220, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22586, witness := RowWitness.topPrime 22469 },
  { lower := 22587, upper := 22589, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22645, witness := RowWitness.topPrime 22621 },
  { lower := 23763, upper := 23878, witness := RowWitness.topPrime 23761 },
  { lower := 23879, upper := 23879, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24124, witness := RowWitness.topPrime 24007 },
  { lower := 24125, upper := 24154, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24174, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24446, witness := RowWitness.topPrime 24329 },
  { lower := 24447, upper := 24451, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24688, witness := RowWitness.topPrime 24571 },
  { lower := 24689, upper := 24693, witness := RowWitness.topPrime 24683 },
  { lower := 25000, upper := 25081, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25306, witness := RowWitness.topPrime 25189 },
  { lower := 25307, upper := 25398, witness := RowWitness.topPrime 25307 },
  { lower := 26047, upper := 26128, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26481, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26528, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26625, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26737, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27013, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27497, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28207, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28242, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28690, witness := RowWitness.topPrime 28573 },
  { lower := 28691, upper := 28694, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28789, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28834, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29595, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29885, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30363, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30710, witness := RowWitness.topPrime 30593 },
  { lower := 30711, upper := 30720, witness := RowWitness.topPrime 30707 },
  { lower := 30926, upper := 31016, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31310, witness := RowWitness.topPrime 31193 },
  { lower := 31311, upper := 31330, witness := RowWitness.topPrime 31307 },
  { lower := 31433, upper := 31514, witness := RowWitness.topPrime 31397 },
  { lower := 31515, upper := 31540, witness := RowWitness.topPrime 31513 },
  { lower := 31939, upper := 31944, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32056, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32885, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33736, witness := RowWitness.topPrime 33619 },
  { lower := 33737, upper := 33737, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34454, witness := RowWitness.topPrime 34337 },
  { lower := 34455, upper := 34508, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35248, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35404, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36029, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36614, witness := RowWitness.topPrime 36497 },
  { lower := 36615, upper := 36618, witness := RowWitness.topPrime 36607 },
  { lower := 36980, upper := 36981, witness := RowWitness.topPrime 36979 },
  { lower := 37210, upper := 37296, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37327, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37420, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37466, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37610, witness := RowWitness.topPrime 37493 },
  { lower := 37611, upper := 37617, witness := RowWitness.topPrime 37607 },
  { lower := 37636, upper := 37670, witness := RowWitness.topPrime 37633 },
  { lower := 38416, upper := 38424, witness := RowWitness.topPrime 38393 },
  { lower := 39326, upper := 39440, witness := RowWitness.topPrime 39323 },
  { lower := 39441, upper := 39443, witness := RowWitness.topPrime 39439 },
  { lower := 39605, upper := 39663, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40445, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40921, witness := RowWitness.topPrime 40813 },
  { lower := 40931, upper := 40934, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41048, witness := RowWitness.topPrime 40949 },
  { lower := 43740, upper := 43838, witness := RowWitness.topPrime 43721 },
  { lower := 43839, upper := 43857, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44040, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44297, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45007, witness := RowWitness.topPrime 44939 },
  { lower := 47526, upper := 47638, witness := RowWitness.topPrime 47521 },
  { lower := 47639, upper := 47641, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48098, witness := RowWitness.topPrime 47981 },
  { lower := 48099, upper := 48130, witness := RowWitness.topPrime 48091 },
  { lower := 48778, upper := 48785, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49247, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50045, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50527, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50679, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51122, witness := RowWitness.topPrime 51071 },
  { lower := 53125, upper := 53162, witness := RowWitness.topPrime 53117 },
  { lower := 53371, upper := 53407, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55558, witness := RowWitness.topPrime 55441 },
  { lower := 55559, upper := 55564, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57362, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58681, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59073, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59653, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62527, witness := RowWitness.topPrime 62497 },
  { lower := 63869, upper := 63980, witness := RowWitness.topPrime 63863 },
  { lower := 63981, upper := 63986, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65638, witness := RowWitness.topPrime 65521 },
  { lower := 65639, upper := 65653, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67345, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68756, witness := RowWitness.topPrime 68639 },
  { lower := 68757, upper := 68768, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68811, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68899, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69007, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71403, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73284, witness := RowWitness.topPrime 73189 },
  { lower := 85264, upper := 85286, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85376, witness := RowWitness.topPrime 85259 },
  { lower := 85377, upper := 85381, witness := RowWitness.topPrime 85369 },
  { lower := 89383, upper := 89490, witness := RowWitness.topPrime 89381 },
  { lower := 91854, upper := 91926, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95144, witness := RowWitness.topPrime 95027 },
  { lower := 95145, upper := 95165, witness := RowWitness.topPrime 95143 },
  { lower := 98415, upper := 98421, witness := RowWitness.topPrime 98411 },
  { lower := 102973, upper := 103002, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103090, witness := RowWitness.topPrime 103007 },
  { lower := 122412, upper := 122434, witness := RowWitness.topPrime 122401 },
  { lower := 137842, upper := 137898, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137959, witness := RowWitness.topPrime 137911 },
  { lower := 146410, upper := 146451, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148990, witness := RowWitness.topPrime 148873 },
  { lower := 148991, upper := 148994, witness := RowWitness.topPrime 148991 },
  { lower := 327701, upper := 327797, witness := RowWitness.topPrime 327689 }
]

def row118_layers : List CoverLayer := [
  { lower := 13806, upper := 27612, M := 24 },
  { lower := 27612, upper := 55224, M := 20 },
  { lower := 55224, upper := 110448, M := 16 },
  { lower := 110448, upper := 220896, M := 13 },
  { lower := 220896, upper := 441792, M := 11 },
  { lower := 441792, upper := 883584, M := 9 },
  { lower := 883584, upper := 1767168, M := 7 },
  { lower := 1767168, upper := 3534336, M := 6 },
  { lower := 3534336, upper := 7068672, M := 5 },
  { lower := 7068672, upper := 14137344, M := 4 },
  { lower := 14137344, upper := 28274688, M := 3 },
  { lower := 28274688, upper := 56549376, M := 3 },
  { lower := 56549376, upper := 113098752, M := 2 },
  { lower := 113098752, upper := 226197504, M := 2 },
  { lower := 226197504, upper := 452395008, M := 2 },
  { lower := 452395008, upper := 904790016, M := 1 },
  { lower := 904790016, upper := 1000000000, M := 1 }
]

def row118 : FiniteCoverRow := {
  height := row118_height,
  goods := row118_goods,
  layers := row118_layers
}

theorem row118_registered :
    decide (row118.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row118_goods_checked :
    row118.goods.all (goodSegmentCheck row118.height.i row118.height.r row118.height.s) = true := by
  decide +kernel

theorem row118_small_checked :
    coverCheck (2 * row118.height.i + 2) (row118.height.i * (row118.height.i - 1) - 1)
      (row118.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row118_layerCover_checked :
    coverCheck (row118.height.i * (row118.height.i - 1)) (row118.height.n0 - 1)
      (row118.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row118_layer000_checked :
    coverLayerCheck row118.height row118.goods { lower := 13806, upper := 27612, M := 24 } = true := by
  decide +kernel

theorem row118_layer001_checked :
    coverLayerCheck row118.height row118.goods { lower := 27612, upper := 55224, M := 20 } = true := by
  decide +kernel

theorem row118_layer002_checked :
    coverLayerCheck row118.height row118.goods { lower := 55224, upper := 110448, M := 16 } = true := by
  decide +kernel

theorem row118_layer003_checked :
    coverLayerCheck row118.height row118.goods { lower := 110448, upper := 220896, M := 13 } = true := by
  decide +kernel

theorem row118_layer004_checked :
    coverLayerCheck row118.height row118.goods { lower := 220896, upper := 441792, M := 11 } = true := by
  decide +kernel

theorem row118_layer005_checked :
    coverLayerCheck row118.height row118.goods { lower := 441792, upper := 883584, M := 9 } = true := by
  decide +kernel

theorem row118_layer006_checked :
    coverLayerCheck row118.height row118.goods { lower := 883584, upper := 1767168, M := 7 } = true := by
  decide +kernel

theorem row118_layer007_checked :
    coverLayerCheck row118.height row118.goods { lower := 1767168, upper := 3534336, M := 6 } = true := by
  decide +kernel

theorem row118_layer008_checked :
    coverLayerCheck row118.height row118.goods { lower := 3534336, upper := 7068672, M := 5 } = true := by
  decide +kernel

theorem row118_layer009_checked :
    coverLayerCheck row118.height row118.goods { lower := 7068672, upper := 14137344, M := 4 } = true := by
  decide +kernel

theorem row118_layer010_checked :
    coverLayerCheck row118.height row118.goods { lower := 14137344, upper := 28274688, M := 3 } = true := by
  decide +kernel

theorem row118_layer011_checked :
    coverLayerCheck row118.height row118.goods { lower := 28274688, upper := 56549376, M := 3 } = true := by
  decide +kernel

theorem row118_layer012_checked :
    coverLayerCheck row118.height row118.goods { lower := 56549376, upper := 113098752, M := 2 } = true := by
  decide +kernel

theorem row118_layer013_checked :
    coverLayerCheck row118.height row118.goods { lower := 113098752, upper := 226197504, M := 2 } = true := by
  decide +kernel

theorem row118_layer014_checked :
    coverLayerCheck row118.height row118.goods { lower := 226197504, upper := 452395008, M := 2 } = true := by
  decide +kernel

theorem row118_layer015_checked :
    coverLayerCheck row118.height row118.goods { lower := 452395008, upper := 904790016, M := 1 } = true := by
  decide +kernel

theorem row118_layer016_checked :
    coverLayerCheck row118.height row118.goods { lower := 904790016, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row118_layers_checked :
    row118.layers.all (coverLayerCheck row118.height row118.goods) = true := by
  change List.all [
    { lower := 13806, upper := 27612, M := 24 },
    { lower := 27612, upper := 55224, M := 20 },
    { lower := 55224, upper := 110448, M := 16 },
    { lower := 110448, upper := 220896, M := 13 },
    { lower := 220896, upper := 441792, M := 11 },
    { lower := 441792, upper := 883584, M := 9 },
    { lower := 883584, upper := 1767168, M := 7 },
    { lower := 1767168, upper := 3534336, M := 6 },
    { lower := 3534336, upper := 7068672, M := 5 },
    { lower := 7068672, upper := 14137344, M := 4 },
    { lower := 14137344, upper := 28274688, M := 3 },
    { lower := 28274688, upper := 56549376, M := 3 },
    { lower := 56549376, upper := 113098752, M := 2 },
    { lower := 113098752, upper := 226197504, M := 2 },
    { lower := 226197504, upper := 452395008, M := 2 },
    { lower := 452395008, upper := 904790016, M := 1 },
    { lower := 904790016, upper := 1000000000, M := 1 }
  ] (coverLayerCheck row118.height row118.goods) = true
  simp only [List.all_cons, List.all_nil,
    row118_layer000_checked,
    row118_layer001_checked,
    row118_layer002_checked,
    row118_layer003_checked,
    row118_layer004_checked,
    row118_layer005_checked,
    row118_layer006_checked,
    row118_layer007_checked,
    row118_layer008_checked,
    row118_layer009_checked,
    row118_layer010_checked,
    row118_layer011_checked,
    row118_layer012_checked,
    row118_layer013_checked,
    row118_layer014_checked,
    row118_layer015_checked,
    row118_layer016_checked,
    Bool.true_and]

theorem row118_checked : finiteCoverRowCheck row118 = true := by
  simp only [finiteCoverRowCheck, row118_registered, row118_goods_checked,
    row118_small_checked, row118_layerCover_checked, row118_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row118_checked

end B699LowIndex
