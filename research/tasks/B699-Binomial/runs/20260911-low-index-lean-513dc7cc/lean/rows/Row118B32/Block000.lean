import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good000_checked :
    goodSegmentCheck 118 39 82
      { lower := 238, upper := 350, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good001_checked :
    goodSegmentCheck 118 39 82
      { lower := 351, upper := 466, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good002_checked :
    goodSegmentCheck 118 39 82
      { lower := 467, upper := 584, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good003_checked :
    goodSegmentCheck 118 39 82
      { lower := 585, upper := 694, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good004_checked :
    goodSegmentCheck 118 39 82
      { lower := 695, upper := 808, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good005_checked :
    goodSegmentCheck 118 39 82
      { lower := 809, upper := 926, witness := RowWitness.topPrime 809 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good006_checked :
    goodSegmentCheck 118 39 82
      { lower := 927, upper := 1036, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good007_checked :
    goodSegmentCheck 118 39 82
      { lower := 1037, upper := 1150, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good008_checked :
    goodSegmentCheck 118 39 82
      { lower := 1151, upper := 1268, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good009_checked :
    goodSegmentCheck 118 39 82
      { lower := 1269, upper := 1376, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good010_checked :
    goodSegmentCheck 118 39 82
      { lower := 1377, upper := 1490, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good011_checked :
    goodSegmentCheck 118 39 82
      { lower := 1491, upper := 1606, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good012_checked :
    goodSegmentCheck 118 39 82
      { lower := 1607, upper := 1724, witness := RowWitness.topPrime 1607 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good013_checked :
    goodSegmentCheck 118 39 82
      { lower := 1725, upper := 1840, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good014_checked :
    goodSegmentCheck 118 39 82
      { lower := 1841, upper := 1948, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good015_checked :
    goodSegmentCheck 118 39 82
      { lower := 1949, upper := 2066, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good016_checked :
    goodSegmentCheck 118 39 82
      { lower := 2067, upper := 2180, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good017_checked :
    goodSegmentCheck 118 39 82
      { lower := 2181, upper := 2296, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good018_checked :
    goodSegmentCheck 118 39 82
      { lower := 2297, upper := 2414, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good019_checked :
    goodSegmentCheck 118 39 82
      { lower := 2415, upper := 2528, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good020_checked :
    goodSegmentCheck 118 39 82
      { lower := 2529, upper := 2638, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good021_checked :
    goodSegmentCheck 118 39 82
      { lower := 2639, upper := 2750, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good022_checked :
    goodSegmentCheck 118 39 82
      { lower := 2751, upper := 2866, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good023_checked :
    goodSegmentCheck 118 39 82
      { lower := 2867, upper := 2978, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good024_checked :
    goodSegmentCheck 118 39 82
      { lower := 2979, upper := 3088, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good025_checked :
    goodSegmentCheck 118 39 82
      { lower := 3089, upper := 3206, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good026_checked :
    goodSegmentCheck 118 39 82
      { lower := 3207, upper := 3320, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good027_checked :
    goodSegmentCheck 118 39 82
      { lower := 3321, upper := 3436, witness := RowWitness.topPrime 3319 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good028_checked :
    goodSegmentCheck 118 39 82
      { lower := 3437, upper := 3550, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good029_checked :
    goodSegmentCheck 118 39 82
      { lower := 3551, upper := 3664, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good030_checked :
    goodSegmentCheck 118 39 82
      { lower := 3665, upper := 3776, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good031_checked :
    goodSegmentCheck 118 39 82
      { lower := 3777, upper := 3886, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good032_checked :
    goodSegmentCheck 118 39 82
      { lower := 3887, upper := 3998, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good033_checked :
    goodSegmentCheck 118 39 82
      { lower := 3999, upper := 4106, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good034_checked :
    goodSegmentCheck 118 39 82
      { lower := 4107, upper := 4216, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good035_checked :
    goodSegmentCheck 118 39 82
      { lower := 4217, upper := 4334, witness := RowWitness.topPrime 4217 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good036_checked :
    goodSegmentCheck 118 39 82
      { lower := 4335, upper := 4444, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good037_checked :
    goodSegmentCheck 118 39 82
      { lower := 4445, upper := 4558, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good038_checked :
    goodSegmentCheck 118 39 82
      { lower := 4559, upper := 4666, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good039_checked :
    goodSegmentCheck 118 39 82
      { lower := 4667, upper := 4780, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good040_checked :
    goodSegmentCheck 118 39 82
      { lower := 4781, upper := 4876, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good041_checked :
    goodSegmentCheck 118 39 82
      { lower := 4877, upper := 4994, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good042_checked :
    goodSegmentCheck 118 39 82
      { lower := 4995, upper := 5110, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good043_checked :
    goodSegmentCheck 118 39 82
      { lower := 5111, upper := 5224, witness := RowWitness.topPrime 5107 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good044_checked :
    goodSegmentCheck 118 39 82
      { lower := 5225, upper := 5326, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good045_checked :
    goodSegmentCheck 118 39 82
      { lower := 5327, upper := 5440, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good046_checked :
    goodSegmentCheck 118 39 82
      { lower := 5441, upper := 5558, witness := RowWitness.topPrime 5441 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good047_checked :
    goodSegmentCheck 118 39 82
      { lower := 5559, upper := 5674, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good048_checked :
    goodSegmentCheck 118 39 82
      { lower := 5675, upper := 5786, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good049_checked :
    goodSegmentCheck 118 39 82
      { lower := 5787, upper := 5900, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good050_checked :
    goodSegmentCheck 118 39 82
      { lower := 5901, upper := 6014, witness := RowWitness.topPrime 5897 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good051_checked :
    goodSegmentCheck 118 39 82
      { lower := 6015, upper := 6128, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good052_checked :
    goodSegmentCheck 118 39 82
      { lower := 6129, upper := 6238, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good053_checked :
    goodSegmentCheck 118 39 82
      { lower := 6239, upper := 6346, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good054_checked :
    goodSegmentCheck 118 39 82
      { lower := 6347, upper := 6460, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good055_checked :
    goodSegmentCheck 118 39 82
      { lower := 6461, upper := 6568, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good056_checked :
    goodSegmentCheck 118 39 82
      { lower := 6569, upper := 6686, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good057_checked :
    goodSegmentCheck 118 39 82
      { lower := 6687, upper := 6796, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good058_checked :
    goodSegmentCheck 118 39 82
      { lower := 6797, upper := 6910, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good059_checked :
    goodSegmentCheck 118 39 82
      { lower := 6911, upper := 7028, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good060_checked :
    goodSegmentCheck 118 39 82
      { lower := 7029, upper := 7144, witness := RowWitness.topPrime 7027 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good061_checked :
    goodSegmentCheck 118 39 82
      { lower := 7145, upper := 7246, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good062_checked :
    goodSegmentCheck 118 39 82
      { lower := 7247, upper := 7364, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good063_checked :
    goodSegmentCheck 118 39 82
      { lower := 7365, upper := 7468, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good064_checked :
    goodSegmentCheck 118 39 82
      { lower := 7469, upper := 7576, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good065_checked :
    goodSegmentCheck 118 39 82
      { lower := 7577, upper := 7694, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good066_checked :
    goodSegmentCheck 118 39 82
      { lower := 7695, upper := 7808, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good067_checked :
    goodSegmentCheck 118 39 82
      { lower := 7809, upper := 7910, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good068_checked :
    goodSegmentCheck 118 39 82
      { lower := 7911, upper := 8024, witness := RowWitness.topPrime 7907 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good069_checked :
    goodSegmentCheck 118 39 82
      { lower := 8025, upper := 8134, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good070_checked :
    goodSegmentCheck 118 39 82
      { lower := 8135, upper := 8240, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good071_checked :
    goodSegmentCheck 118 39 82
      { lower := 8241, upper := 8354, witness := RowWitness.topPrime 8237 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good072_checked :
    goodSegmentCheck 118 39 82
      { lower := 8355, upper := 8470, witness := RowWitness.topPrime 8353 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good073_checked :
    goodSegmentCheck 118 39 82
      { lower := 8471, upper := 8584, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good074_checked :
    goodSegmentCheck 118 39 82
      { lower := 8585, upper := 8698, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good075_checked :
    goodSegmentCheck 118 39 82
      { lower := 8699, upper := 8816, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good076_checked :
    goodSegmentCheck 118 39 82
      { lower := 8817, upper := 8924, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good077_checked :
    goodSegmentCheck 118 39 82
      { lower := 8925, upper := 9040, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good078_checked :
    goodSegmentCheck 118 39 82
      { lower := 9041, upper := 9158, witness := RowWitness.topPrime 9041 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good079_checked :
    goodSegmentCheck 118 39 82
      { lower := 9159, upper := 9274, witness := RowWitness.topPrime 9157 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good080_checked :
    goodSegmentCheck 118 39 82
      { lower := 9275, upper := 9374, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good081_checked :
    goodSegmentCheck 118 39 82
      { lower := 9375, upper := 9488, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good082_checked :
    goodSegmentCheck 118 39 82
      { lower := 9489, upper := 9596, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good083_checked :
    goodSegmentCheck 118 39 82
      { lower := 9597, upper := 9704, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good084_checked :
    goodSegmentCheck 118 39 82
      { lower := 9705, upper := 9814, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good085_checked :
    goodSegmentCheck 118 39 82
      { lower := 9815, upper := 9928, witness := RowWitness.topPrime 9811 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good086_checked :
    goodSegmentCheck 118 39 82
      { lower := 9929, upper := 10046, witness := RowWitness.topPrime 9929 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good087_checked :
    goodSegmentCheck 118 39 82
      { lower := 10047, upper := 10156, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good088_checked :
    goodSegmentCheck 118 39 82
      { lower := 10157, upper := 10268, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good089_checked :
    goodSegmentCheck 118 39 82
      { lower := 10269, upper := 10384, witness := RowWitness.topPrime 10267 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good090_checked :
    goodSegmentCheck 118 39 82
      { lower := 10385, upper := 10486, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good091_checked :
    goodSegmentCheck 118 39 82
      { lower := 10487, upper := 10604, witness := RowWitness.topPrime 10487 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good092_checked :
    goodSegmentCheck 118 39 82
      { lower := 10605, upper := 10718, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good093_checked :
    goodSegmentCheck 118 39 82
      { lower := 10719, upper := 10828, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good094_checked :
    goodSegmentCheck 118 39 82
      { lower := 10829, upper := 10916, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good095_checked :
    goodSegmentCheck 118 39 82
      { lower := 10917, upper := 11026, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good096_checked :
    goodSegmentCheck 118 39 82
      { lower := 11027, upper := 11144, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good097_checked :
    goodSegmentCheck 118 39 82
      { lower := 11145, upper := 11248, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good098_checked :
    goodSegmentCheck 118 39 82
      { lower := 11249, upper := 11360, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good099_checked :
    goodSegmentCheck 118 39 82
      { lower := 11361, upper := 11470, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good100_checked :
    goodSegmentCheck 118 39 82
      { lower := 11471, upper := 11588, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good101_checked :
    goodSegmentCheck 118 39 82
      { lower := 11589, upper := 11704, witness := RowWitness.topPrime 11587 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good102_checked :
    goodSegmentCheck 118 39 82
      { lower := 11705, upper := 11818, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good103_checked :
    goodSegmentCheck 118 39 82
      { lower := 11819, upper := 11930, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good104_checked :
    goodSegmentCheck 118 39 82
      { lower := 11931, upper := 12044, witness := RowWitness.topPrime 11927 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good105_checked :
    goodSegmentCheck 118 39 82
      { lower := 12045, upper := 12160, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good106_checked :
    goodSegmentCheck 118 39 82
      { lower := 12161, upper := 12278, witness := RowWitness.topPrime 12161 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good107_checked :
    goodSegmentCheck 118 39 82
      { lower := 12279, upper := 12394, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good108_checked :
    goodSegmentCheck 118 39 82
      { lower := 12395, upper := 12508, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good109_checked :
    goodSegmentCheck 118 39 82
      { lower := 12509, upper := 12620, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good110_checked :
    goodSegmentCheck 118 39 82
      { lower := 12621, upper := 12736, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good111_checked :
    goodSegmentCheck 118 39 82
      { lower := 12737, upper := 12838, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good112_checked :
    goodSegmentCheck 118 39 82
      { lower := 12839, upper := 12946, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good113_checked :
    goodSegmentCheck 118 39 82
      { lower := 12947, upper := 13058, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good114_checked :
    goodSegmentCheck 118 39 82
      { lower := 13059, upper := 13166, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good115_checked :
    goodSegmentCheck 118 39 82
      { lower := 13167, upper := 13280, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good116_checked :
    goodSegmentCheck 118 39 82
      { lower := 13281, upper := 13384, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good117_checked :
    goodSegmentCheck 118 39 82
      { lower := 13385, upper := 13498, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good118_checked :
    goodSegmentCheck 118 39 82
      { lower := 13499, upper := 13616, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good119_checked :
    goodSegmentCheck 118 39 82
      { lower := 13617, upper := 13730, witness := RowWitness.topPrime 13613 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good120_checked :
    goodSegmentCheck 118 39 82
      { lower := 13731, upper := 13846, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good121_checked :
    goodSegmentCheck 118 39 82
      { lower := 13847, upper := 13895, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good122_checked :
    goodSegmentCheck 118 39 82
      { lower := 14336, upper := 14444, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good123_checked :
    goodSegmentCheck 118 39 82
      { lower := 14445, upper := 14523, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good124_checked :
    goodSegmentCheck 118 39 82
      { lower := 14641, upper := 14697, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good125_checked :
    goodSegmentCheck 118 39 82
      { lower := 14739, upper := 14758, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good126_checked :
    goodSegmentCheck 118 39 82
      { lower := 14792, upper := 14856, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good127_checked :
    goodSegmentCheck 118 39 82
      { lower := 14884, upper := 14909, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good128_checked :
    goodSegmentCheck 118 39 82
      { lower := 15000, upper := 15001, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good129_checked :
    goodSegmentCheck 118 39 82
      { lower := 15059, upper := 15117, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good130_checked :
    goodSegmentCheck 118 39 82
      { lower := 15123, upper := 15238, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good131_checked :
    goodSegmentCheck 118 39 82
      { lower := 15239, upper := 15246, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good132_checked :
    goodSegmentCheck 118 39 82
      { lower := 15376, upper := 15490, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good133_checked :
    goodSegmentCheck 118 39 82
      { lower := 15491, upper := 15496, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good134_checked :
    goodSegmentCheck 118 39 82
      { lower := 15979, upper := 16090, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good135_checked :
    goodSegmentCheck 118 39 82
      { lower := 16091, upper := 16104, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good136_checked :
    goodSegmentCheck 118 39 82
      { lower := 16384, upper := 16498, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good137_checked :
    goodSegmentCheck 118 39 82
      { lower := 16499, upper := 16501, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good138_checked :
    goodSegmentCheck 118 39 82
      { lower := 16807, upper := 16904, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good139_checked :
    goodSegmentCheck 118 39 82
      { lower := 16905, upper := 16937, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good140_checked :
    goodSegmentCheck 118 39 82
      { lower := 17303, upper := 17415, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good141_checked :
    goodSegmentCheck 118 39 82
      { lower := 17576, upper := 17613, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good142_checked :
    goodSegmentCheck 118 39 82
      { lower := 17661, upper := 17776, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good143_checked :
    goodSegmentCheck 118 39 82
      { lower := 17777, upper := 17778, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good144_checked :
    goodSegmentCheck 118 39 82
      { lower := 18490, upper := 18598, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good145_checked :
    goodSegmentCheck 118 39 82
      { lower := 18599, upper := 18619, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good146_checked :
    goodSegmentCheck 118 39 82
      { lower := 18634, upper := 18734, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good147_checked :
    goodSegmentCheck 118 39 82
      { lower := 18735, upper := 18848, witness := RowWitness.topPrime 18731 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good148_checked :
    goodSegmentCheck 118 39 82
      { lower := 18849, upper := 18867, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good149_checked :
    goodSegmentCheck 118 39 82
      { lower := 19208, upper := 19324, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good150_checked :
    goodSegmentCheck 118 39 82
      { lower := 19325, upper := 19325, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good151_checked :
    goodSegmentCheck 118 39 82
      { lower := 19663, upper := 19778, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good152_checked :
    goodSegmentCheck 118 39 82
      { lower := 19779, upper := 19800, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good153_checked :
    goodSegmentCheck 118 39 82
      { lower := 19881, upper := 19890, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good154_checked :
    goodSegmentCheck 118 39 82
      { lower := 19965, upper := 19998, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good155_checked :
    goodSegmentCheck 118 39 82
      { lower := 20172, upper := 20278, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good156_checked :
    goodSegmentCheck 118 39 82
      { lower := 20279, upper := 20298, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good157_checked :
    goodSegmentCheck 118 39 82
      { lower := 20402, upper := 20456, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good158_checked :
    goodSegmentCheck 118 39 82
      { lower := 20480, upper := 20519, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good159_checked :
    goodSegmentCheck 118 39 82
      { lower := 20535, upper := 20650, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good160_checked :
    goodSegmentCheck 118 39 82
      { lower := 20651, upper := 20652, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good161_checked :
    goodSegmentCheck 118 39 82
      { lower := 20667, upper := 20694, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good162_checked :
    goodSegmentCheck 118 39 82
      { lower := 21218, upper := 21259, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good163_checked :
    goodSegmentCheck 118 39 82
      { lower := 21296, upper := 21400, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good164_checked :
    goodSegmentCheck 118 39 82
      { lower := 21401, upper := 21413, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good165_checked :
    goodSegmentCheck 118 39 82
      { lower := 21870, upper := 21980, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good166_checked :
    goodSegmentCheck 118 39 82
      { lower := 21981, upper := 22021, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good167_checked :
    goodSegmentCheck 118 39 82
      { lower := 22103, upper := 22210, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good168_checked :
    goodSegmentCheck 118 39 82
      { lower := 22211, upper := 22220, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good169_checked :
    goodSegmentCheck 118 39 82
      { lower := 22472, upper := 22586, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good170_checked :
    goodSegmentCheck 118 39 82
      { lower := 22587, upper := 22589, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good171_checked :
    goodSegmentCheck 118 39 82
      { lower := 22627, upper := 22645, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good172_checked :
    goodSegmentCheck 118 39 82
      { lower := 23763, upper := 23878, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good173_checked :
    goodSegmentCheck 118 39 82
      { lower := 23879, upper := 23879, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good174_checked :
    goodSegmentCheck 118 39 82
      { lower := 24010, upper := 24124, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good175_checked :
    goodSegmentCheck 118 39 82
      { lower := 24125, upper := 24154, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good176_checked :
    goodSegmentCheck 118 39 82
      { lower := 24167, upper := 24174, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good177_checked :
    goodSegmentCheck 118 39 82
      { lower := 24334, upper := 24446, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good178_checked :
    goodSegmentCheck 118 39 82
      { lower := 24447, upper := 24451, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good179_checked :
    goodSegmentCheck 118 39 82
      { lower := 24576, upper := 24688, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good180_checked :
    goodSegmentCheck 118 39 82
      { lower := 24689, upper := 24693, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good181_checked :
    goodSegmentCheck 118 39 82
      { lower := 25000, upper := 25081, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good182_checked :
    goodSegmentCheck 118 39 82
      { lower := 25215, upper := 25306, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good183_checked :
    goodSegmentCheck 118 39 82
      { lower := 25307, upper := 25398, witness := RowWitness.topPrime 25307 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good184_checked :
    goodSegmentCheck 118 39 82
      { lower := 26047, upper := 26128, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good185_checked :
    goodSegmentCheck 118 39 82
      { lower := 26411, upper := 26481, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good186_checked :
    goodSegmentCheck 118 39 82
      { lower := 26508, upper := 26528, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good187_checked :
    goodSegmentCheck 118 39 82
      { lower := 26620, upper := 26625, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good188_checked :
    goodSegmentCheck 118 39 82
      { lower := 26645, upper := 26737, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good189_checked :
    goodSegmentCheck 118 39 82
      { lower := 26934, upper := 27013, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good190_checked :
    goodSegmentCheck 118 39 82
      { lower := 27436, upper := 27497, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good191_checked :
    goodSegmentCheck 118 39 82
      { lower := 28125, upper := 28207, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good192_checked :
    goodSegmentCheck 118 39 82
      { lower := 28227, upper := 28242, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good193_checked :
    goodSegmentCheck 118 39 82
      { lower := 28577, upper := 28690, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good194_checked :
    goodSegmentCheck 118 39 82
      { lower := 28691, upper := 28694, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good195_checked :
    goodSegmentCheck 118 39 82
      { lower := 28717, upper := 28789, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good196_checked :
    goodSegmentCheck 118 39 82
      { lower := 28812, upper := 28834, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good197_checked :
    goodSegmentCheck 118 39 82
      { lower := 29584, upper := 29595, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good198_checked :
    goodSegmentCheck 118 39 82
      { lower := 29791, upper := 29885, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good199_checked :
    goodSegmentCheck 118 39 82
      { lower := 30258, upper := 30363, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good200_checked :
    goodSegmentCheck 118 39 82
      { lower := 30618, upper := 30710, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good201_checked :
    goodSegmentCheck 118 39 82
      { lower := 30711, upper := 30720, witness := RowWitness.topPrime 30707 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good202_checked :
    goodSegmentCheck 118 39 82
      { lower := 30926, upper := 31016, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good203_checked :
    goodSegmentCheck 118 39 82
      { lower := 31213, upper := 31310, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good204_checked :
    goodSegmentCheck 118 39 82
      { lower := 31311, upper := 31330, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good205_checked :
    goodSegmentCheck 118 39 82
      { lower := 31433, upper := 31514, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good206_checked :
    goodSegmentCheck 118 39 82
      { lower := 31515, upper := 31540, witness := RowWitness.topPrime 31513 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good207_checked :
    goodSegmentCheck 118 39 82
      { lower := 31939, upper := 31944, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good208_checked :
    goodSegmentCheck 118 39 82
      { lower := 31974, upper := 32056, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good209_checked :
    goodSegmentCheck 118 39 82
      { lower := 32805, upper := 32885, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good210_checked :
    goodSegmentCheck 118 39 82
      { lower := 33620, upper := 33736, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good211_checked :
    goodSegmentCheck 118 39 82
      { lower := 33737, upper := 33737, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good212_checked :
    goodSegmentCheck 118 39 82
      { lower := 34347, upper := 34454, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good213_checked :
    goodSegmentCheck 118 39 82
      { lower := 34455, upper := 34508, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good214_checked :
    goodSegmentCheck 118 39 82
      { lower := 35152, upper := 35248, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good215_checked :
    goodSegmentCheck 118 39 82
      { lower := 35344, upper := 35404, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good216_checked :
    goodSegmentCheck 118 39 82
      { lower := 36015, upper := 36029, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good217_checked :
    goodSegmentCheck 118 39 82
      { lower := 36517, upper := 36614, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good218_checked :
    goodSegmentCheck 118 39 82
      { lower := 36615, upper := 36618, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good219_checked :
    goodSegmentCheck 118 39 82
      { lower := 36980, upper := 36981, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good220_checked :
    goodSegmentCheck 118 39 82
      { lower := 37210, upper := 37296, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good221_checked :
    goodSegmentCheck 118 39 82
      { lower := 37303, upper := 37327, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good222_checked :
    goodSegmentCheck 118 39 82
      { lower := 37349, upper := 37420, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good223_checked :
    goodSegmentCheck 118 39 82
      { lower := 37446, upper := 37466, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good224_checked :
    goodSegmentCheck 118 39 82
      { lower := 37500, upper := 37610, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good225_checked :
    goodSegmentCheck 118 39 82
      { lower := 37611, upper := 37617, witness := RowWitness.topPrime 37607 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good226_checked :
    goodSegmentCheck 118 39 82
      { lower := 37636, upper := 37670, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good227_checked :
    goodSegmentCheck 118 39 82
      { lower := 38416, upper := 38424, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good228_checked :
    goodSegmentCheck 118 39 82
      { lower := 39326, upper := 39440, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good229_checked :
    goodSegmentCheck 118 39 82
      { lower := 39441, upper := 39443, witness := RowWitness.topPrime 39439 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good230_checked :
    goodSegmentCheck 118 39 82
      { lower := 39605, upper := 39663, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good231_checked :
    goodSegmentCheck 118 39 82
      { lower := 40401, upper := 40445, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good232_checked :
    goodSegmentCheck 118 39 82
      { lower := 40817, upper := 40921, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good233_checked :
    goodSegmentCheck 118 39 82
      { lower := 40931, upper := 40934, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good234_checked :
    goodSegmentCheck 118 39 82
      { lower := 40960, upper := 41048, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good235_checked :
    goodSegmentCheck 118 39 82
      { lower := 43740, upper := 43838, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good236_checked :
    goodSegmentCheck 118 39 82
      { lower := 43839, upper := 43857, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good237_checked :
    goodSegmentCheck 118 39 82
      { lower := 43940, upper := 44040, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good238_checked :
    goodSegmentCheck 118 39 82
      { lower := 44217, upper := 44297, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good239_checked :
    goodSegmentCheck 118 39 82
      { lower := 44944, upper := 45007, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good240_checked :
    goodSegmentCheck 118 39 82
      { lower := 47526, upper := 47638, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good241_checked :
    goodSegmentCheck 118 39 82
      { lower := 47639, upper := 47641, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good242_checked :
    goodSegmentCheck 118 39 82
      { lower := 48013, upper := 48098, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good243_checked :
    goodSegmentCheck 118 39 82
      { lower := 48099, upper := 48130, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good244_checked :
    goodSegmentCheck 118 39 82
      { lower := 48778, upper := 48785, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good245_checked :
    goodSegmentCheck 118 39 82
      { lower := 49152, upper := 49247, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good246_checked :
    goodSegmentCheck 118 39 82
      { lower := 50000, upper := 50045, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good247_checked :
    goodSegmentCheck 118 39 82
      { lower := 50421, upper := 50527, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good248_checked :
    goodSegmentCheck 118 39 82
      { lower := 50653, upper := 50679, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good249_checked :
    goodSegmentCheck 118 39 82
      { lower := 51076, upper := 51122, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good250_checked :
    goodSegmentCheck 118 39 82
      { lower := 53125, upper := 53162, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good251_checked :
    goodSegmentCheck 118 39 82
      { lower := 53371, upper := 53407, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good252_checked :
    goodSegmentCheck 118 39 82
      { lower := 55451, upper := 55558, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good253_checked :
    goodSegmentCheck 118 39 82
      { lower := 55559, upper := 55564, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good254_checked :
    goodSegmentCheck 118 39 82
      { lower := 57344, upper := 57362, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good255_checked :
    goodSegmentCheck 118 39 82
      { lower := 58619, upper := 58681, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good256_checked :
    goodSegmentCheck 118 39 82
      { lower := 59049, upper := 59073, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good257_checked :
    goodSegmentCheck 118 39 82
      { lower := 59582, upper := 59653, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good258_checked :
    goodSegmentCheck 118 39 82
      { lower := 62500, upper := 62527, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good259_checked :
    goodSegmentCheck 118 39 82
      { lower := 63869, upper := 63980, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good260_checked :
    goodSegmentCheck 118 39 82
      { lower := 63981, upper := 63986, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good261_checked :
    goodSegmentCheck 118 39 82
      { lower := 65536, upper := 65638, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good262_checked :
    goodSegmentCheck 118 39 82
      { lower := 65639, upper := 65653, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good263_checked :
    goodSegmentCheck 118 39 82
      { lower := 67335, upper := 67345, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good264_checked :
    goodSegmentCheck 118 39 82
      { lower := 68651, upper := 68756, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good265_checked :
    goodSegmentCheck 118 39 82
      { lower := 68757, upper := 68768, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good266_checked :
    goodSegmentCheck 118 39 82
      { lower := 68782, upper := 68811, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good267_checked :
    goodSegmentCheck 118 39 82
      { lower := 68890, upper := 68899, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good268_checked :
    goodSegmentCheck 118 39 82
      { lower := 68921, upper := 69007, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good269_checked :
    goodSegmentCheck 118 39 82
      { lower := 71289, upper := 71403, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good270_checked :
    goodSegmentCheck 118 39 82
      { lower := 73205, upper := 73284, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good271_checked :
    goodSegmentCheck 118 39 82
      { lower := 85264, upper := 85286, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_good272_checked :
    goodSegmentCheck 118 39 82
      { lower := 85293, upper := 85376, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good273_checked :
    goodSegmentCheck 118 39 82
      { lower := 85377, upper := 85381, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good274_checked :
    goodSegmentCheck 118 39 82
      { lower := 89383, upper := 89490, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good275_checked :
    goodSegmentCheck 118 39 82
      { lower := 91854, upper := 91926, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good276_checked :
    goodSegmentCheck 118 39 82
      { lower := 95052, upper := 95144, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good277_checked :
    goodSegmentCheck 118 39 82
      { lower := 95145, upper := 95165, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good278_checked :
    goodSegmentCheck 118 39 82
      { lower := 98415, upper := 98421, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good279_checked :
    goodSegmentCheck 118 39 82
      { lower := 102973, upper := 103002, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good280_checked :
    goodSegmentCheck 118 39 82
      { lower := 103041, upper := 103090, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good281_checked :
    goodSegmentCheck 118 39 82
      { lower := 122412, upper := 122434, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good282_checked :
    goodSegmentCheck 118 39 82
      { lower := 137842, upper := 137898, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good283_checked :
    goodSegmentCheck 118 39 82
      { lower := 137917, upper := 137959, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good284_checked :
    goodSegmentCheck 118 39 82
      { lower := 146410, upper := 146451, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good285_checked :
    goodSegmentCheck 118 39 82
      { lower := 148877, upper := 148990, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good286_checked :
    goodSegmentCheck 118 39 82
      { lower := 148991, upper := 148994, witness := RowWitness.topPrime 148991 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row118_good287_checked :
    goodSegmentCheck 118 39 82
      { lower := 327701, upper := 327797, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 118) (r := 39) (s := 82) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_goods_checked :
    row118.goods.all (goodSegmentCheck row118.height.i row118.height.r row118.height.s) = true := by
  change row118_goods.all (goodSegmentCheck 118 39 82) = true
  simp only [row118_goods, List.all_cons, List.all_nil,
    row118_good000_checked,
    row118_good001_checked,
    row118_good002_checked,
    row118_good003_checked,
    row118_good004_checked,
    row118_good005_checked,
    row118_good006_checked,
    row118_good007_checked,
    row118_good008_checked,
    row118_good009_checked,
    row118_good010_checked,
    row118_good011_checked,
    row118_good012_checked,
    row118_good013_checked,
    row118_good014_checked,
    row118_good015_checked,
    row118_good016_checked,
    row118_good017_checked,
    row118_good018_checked,
    row118_good019_checked,
    row118_good020_checked,
    row118_good021_checked,
    row118_good022_checked,
    row118_good023_checked,
    row118_good024_checked,
    row118_good025_checked,
    row118_good026_checked,
    row118_good027_checked,
    row118_good028_checked,
    row118_good029_checked,
    row118_good030_checked,
    row118_good031_checked,
    row118_good032_checked,
    row118_good033_checked,
    row118_good034_checked,
    row118_good035_checked,
    row118_good036_checked,
    row118_good037_checked,
    row118_good038_checked,
    row118_good039_checked,
    row118_good040_checked,
    row118_good041_checked,
    row118_good042_checked,
    row118_good043_checked,
    row118_good044_checked,
    row118_good045_checked,
    row118_good046_checked,
    row118_good047_checked,
    row118_good048_checked,
    row118_good049_checked,
    row118_good050_checked,
    row118_good051_checked,
    row118_good052_checked,
    row118_good053_checked,
    row118_good054_checked,
    row118_good055_checked,
    row118_good056_checked,
    row118_good057_checked,
    row118_good058_checked,
    row118_good059_checked,
    row118_good060_checked,
    row118_good061_checked,
    row118_good062_checked,
    row118_good063_checked,
    row118_good064_checked,
    row118_good065_checked,
    row118_good066_checked,
    row118_good067_checked,
    row118_good068_checked,
    row118_good069_checked,
    row118_good070_checked,
    row118_good071_checked,
    row118_good072_checked,
    row118_good073_checked,
    row118_good074_checked,
    row118_good075_checked,
    row118_good076_checked,
    row118_good077_checked,
    row118_good078_checked,
    row118_good079_checked,
    row118_good080_checked,
    row118_good081_checked,
    row118_good082_checked,
    row118_good083_checked,
    row118_good084_checked,
    row118_good085_checked,
    row118_good086_checked,
    row118_good087_checked,
    row118_good088_checked,
    row118_good089_checked,
    row118_good090_checked,
    row118_good091_checked,
    row118_good092_checked,
    row118_good093_checked,
    row118_good094_checked,
    row118_good095_checked,
    row118_good096_checked,
    row118_good097_checked,
    row118_good098_checked,
    row118_good099_checked,
    row118_good100_checked,
    row118_good101_checked,
    row118_good102_checked,
    row118_good103_checked,
    row118_good104_checked,
    row118_good105_checked,
    row118_good106_checked,
    row118_good107_checked,
    row118_good108_checked,
    row118_good109_checked,
    row118_good110_checked,
    row118_good111_checked,
    row118_good112_checked,
    row118_good113_checked,
    row118_good114_checked,
    row118_good115_checked,
    row118_good116_checked,
    row118_good117_checked,
    row118_good118_checked,
    row118_good119_checked,
    row118_good120_checked,
    row118_good121_checked,
    row118_good122_checked,
    row118_good123_checked,
    row118_good124_checked,
    row118_good125_checked,
    row118_good126_checked,
    row118_good127_checked,
    row118_good128_checked,
    row118_good129_checked,
    row118_good130_checked,
    row118_good131_checked,
    row118_good132_checked,
    row118_good133_checked,
    row118_good134_checked,
    row118_good135_checked,
    row118_good136_checked,
    row118_good137_checked,
    row118_good138_checked,
    row118_good139_checked,
    row118_good140_checked,
    row118_good141_checked,
    row118_good142_checked,
    row118_good143_checked,
    row118_good144_checked,
    row118_good145_checked,
    row118_good146_checked,
    row118_good147_checked,
    row118_good148_checked,
    row118_good149_checked,
    row118_good150_checked,
    row118_good151_checked,
    row118_good152_checked,
    row118_good153_checked,
    row118_good154_checked,
    row118_good155_checked,
    row118_good156_checked,
    row118_good157_checked,
    row118_good158_checked,
    row118_good159_checked,
    row118_good160_checked,
    row118_good161_checked,
    row118_good162_checked,
    row118_good163_checked,
    row118_good164_checked,
    row118_good165_checked,
    row118_good166_checked,
    row118_good167_checked,
    row118_good168_checked,
    row118_good169_checked,
    row118_good170_checked,
    row118_good171_checked,
    row118_good172_checked,
    row118_good173_checked,
    row118_good174_checked,
    row118_good175_checked,
    row118_good176_checked,
    row118_good177_checked,
    row118_good178_checked,
    row118_good179_checked,
    row118_good180_checked,
    row118_good181_checked,
    row118_good182_checked,
    row118_good183_checked,
    row118_good184_checked,
    row118_good185_checked,
    row118_good186_checked,
    row118_good187_checked,
    row118_good188_checked,
    row118_good189_checked,
    row118_good190_checked,
    row118_good191_checked,
    row118_good192_checked,
    row118_good193_checked,
    row118_good194_checked,
    row118_good195_checked,
    row118_good196_checked,
    row118_good197_checked,
    row118_good198_checked,
    row118_good199_checked,
    row118_good200_checked,
    row118_good201_checked,
    row118_good202_checked,
    row118_good203_checked,
    row118_good204_checked,
    row118_good205_checked,
    row118_good206_checked,
    row118_good207_checked,
    row118_good208_checked,
    row118_good209_checked,
    row118_good210_checked,
    row118_good211_checked,
    row118_good212_checked,
    row118_good213_checked,
    row118_good214_checked,
    row118_good215_checked,
    row118_good216_checked,
    row118_good217_checked,
    row118_good218_checked,
    row118_good219_checked,
    row118_good220_checked,
    row118_good221_checked,
    row118_good222_checked,
    row118_good223_checked,
    row118_good224_checked,
    row118_good225_checked,
    row118_good226_checked,
    row118_good227_checked,
    row118_good228_checked,
    row118_good229_checked,
    row118_good230_checked,
    row118_good231_checked,
    row118_good232_checked,
    row118_good233_checked,
    row118_good234_checked,
    row118_good235_checked,
    row118_good236_checked,
    row118_good237_checked,
    row118_good238_checked,
    row118_good239_checked,
    row118_good240_checked,
    row118_good241_checked,
    row118_good242_checked,
    row118_good243_checked,
    row118_good244_checked,
    row118_good245_checked,
    row118_good246_checked,
    row118_good247_checked,
    row118_good248_checked,
    row118_good249_checked,
    row118_good250_checked,
    row118_good251_checked,
    row118_good252_checked,
    row118_good253_checked,
    row118_good254_checked,
    row118_good255_checked,
    row118_good256_checked,
    row118_good257_checked,
    row118_good258_checked,
    row118_good259_checked,
    row118_good260_checked,
    row118_good261_checked,
    row118_good262_checked,
    row118_good263_checked,
    row118_good264_checked,
    row118_good265_checked,
    row118_good266_checked,
    row118_good267_checked,
    row118_good268_checked,
    row118_good269_checked,
    row118_good270_checked,
    row118_good271_checked,
    row118_good272_checked,
    row118_good273_checked,
    row118_good274_checked,
    row118_good275_checked,
    row118_good276_checked,
    row118_good277_checked,
    row118_good278_checked,
    row118_good279_checked,
    row118_good280_checked,
    row118_good281_checked,
    row118_good282_checked,
    row118_good283_checked,
    row118_good284_checked,
    row118_good285_checked,
    row118_good286_checked,
    row118_good287_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_registered :
    decide (row118.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row118_small_checked :
    coverCheck (2 * row118.height.i + 2) (row118.height.i * (row118.height.i - 1) - 1)
      (row118.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row118_layerCover_checked :
    coverCheck (row118.height.i * (row118.height.i - 1)) (row118.height.n0 - 1)
      (row118.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row118_bounds : List NatInterval :=
  [(238, 350), (351, 466), (467, 584), (585, 694), (695, 808), (809, 926), (927, 1036), (1037, 1150), (1151, 1268), (1269, 1376), (1377, 1490), (1491, 1606), (1607, 1724), (1725, 1840), (1841, 1948), (1949, 2066), (2067, 2180), (2181, 2296), (2297, 2414), (2415, 2528), (2529, 2638), (2639, 2750), (2751, 2866), (2867, 2978), (2979, 3088), (3089, 3206), (3207, 3320), (3321, 3436), (3437, 3550), (3551, 3664), (3665, 3776), (3777, 3886), (3887, 3998), (3999, 4106), (4107, 4216), (4217, 4334), (4335, 4444), (4445, 4558), (4559, 4666), (4667, 4780), (4781, 4876), (4877, 4994), (4995, 5110), (5111, 5224), (5225, 5326), (5327, 5440), (5441, 5558), (5559, 5674), (5675, 5786), (5787, 5900), (5901, 6014), (6015, 6128), (6129, 6238), (6239, 6346), (6347, 6460), (6461, 6568), (6569, 6686), (6687, 6796), (6797, 6910), (6911, 7028), (7029, 7144), (7145, 7246), (7247, 7364), (7365, 7468), (7469, 7576), (7577, 7694), (7695, 7808), (7809, 7910), (7911, 8024), (8025, 8134), (8135, 8240), (8241, 8354), (8355, 8470), (8471, 8584), (8585, 8698), (8699, 8816), (8817, 8924), (8925, 9040), (9041, 9158), (9159, 9274), (9275, 9374), (9375, 9488), (9489, 9596), (9597, 9704), (9705, 9814), (9815, 9928), (9929, 10046), (10047, 10156), (10157, 10268), (10269, 10384), (10385, 10486), (10487, 10604), (10605, 10718), (10719, 10828), (10829, 10916), (10917, 11026), (11027, 11144), (11145, 11248), (11249, 11360), (11361, 11470), (11471, 11588), (11589, 11704), (11705, 11818), (11819, 11930), (11931, 12044), (12045, 12160), (12161, 12278), (12279, 12394), (12395, 12508), (12509, 12620), (12621, 12736), (12737, 12838), (12839, 12946), (12947, 13058), (13059, 13166), (13167, 13280), (13281, 13384), (13385, 13498), (13499, 13616), (13617, 13730), (13731, 13846), (13847, 13895), (14336, 14444), (14445, 14523), (14641, 14697), (14739, 14758), (14792, 14856), (14884, 14909), (15000, 15001), (15059, 15117), (15123, 15238), (15239, 15246), (15376, 15490), (15491, 15496), (15979, 16090), (16091, 16104), (16384, 16498), (16499, 16501), (16807, 16904), (16905, 16937), (17303, 17415), (17576, 17613), (17661, 17776), (17777, 17778), (18490, 18598), (18599, 18619), (18634, 18734), (18735, 18848), (18849, 18867), (19208, 19324), (19325, 19325), (19663, 19778), (19779, 19800), (19881, 19890), (19965, 19998), (20172, 20278), (20279, 20298), (20402, 20456), (20480, 20519), (20535, 20650), (20651, 20652), (20667, 20694), (21218, 21259), (21296, 21400), (21401, 21413), (21870, 21980), (21981, 22021), (22103, 22210), (22211, 22220), (22472, 22586), (22587, 22589), (22627, 22645), (23763, 23878), (23879, 23879), (24010, 24124), (24125, 24154), (24167, 24174), (24334, 24446), (24447, 24451), (24576, 24688), (24689, 24693), (25000, 25081), (25215, 25306), (25307, 25398), (26047, 26128), (26411, 26481), (26508, 26528), (26620, 26625), (26645, 26737), (26934, 27013), (27436, 27497), (28125, 28207), (28227, 28242), (28577, 28690), (28691, 28694), (28717, 28789), (28812, 28834), (29584, 29595), (29791, 29885), (30258, 30363), (30618, 30710), (30711, 30720), (30926, 31016), (31213, 31310), (31311, 31330), (31433, 31514), (31515, 31540), (31939, 31944), (31974, 32056), (32805, 32885), (33620, 33736), (33737, 33737), (34347, 34454), (34455, 34508), (35152, 35248), (35344, 35404), (36015, 36029), (36517, 36614), (36615, 36618), (36980, 36981), (37210, 37296), (37303, 37327), (37349, 37420), (37446, 37466), (37500, 37610), (37611, 37617), (37636, 37670), (38416, 38424), (39326, 39440), (39441, 39443), (39605, 39663), (40401, 40445), (40817, 40921), (40931, 40934), (40960, 41048), (43740, 43838), (43839, 43857), (43940, 44040), (44217, 44297), (44944, 45007), (47526, 47638), (47639, 47641), (48013, 48098), (48099, 48130), (48778, 48785), (49152, 49247), (50000, 50045), (50421, 50527), (50653, 50679), (51076, 51122), (53125, 53162), (53371, 53407), (55451, 55558), (55559, 55564), (57344, 57362), (58619, 58681), (59049, 59073), (59582, 59653), (62500, 62527), (63869, 63980), (63981, 63986), (65536, 65638), (65639, 65653), (67335, 67345), (68651, 68756), (68757, 68768), (68782, 68811), (68890, 68899), (68921, 69007), (71289, 71403), (73205, 73284), (85264, 85286), (85293, 85376), (85377, 85381), (89383, 89490), (91854, 91926), (95052, 95144), (95145, 95165), (98415, 98421), (102973, 103002), (103041, 103090), (122412, 122434), (137842, 137898), (137917, 137959), (146410, 146451), (148877, 148990), (148991, 148994), (327701, 327797)]

theorem row118_bounds_eq : row118.goods.map goodSegmentBounds = row118_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row118_layer000_intervals : List ColouredInterval :=
  [(2, 14336, 14453), (2, 16384, 16501), (2, 18432, 18549), (2, 20480, 20597), (2, 22528, 22645), (2, 24576, 24693), (2, 16384, 16501), (2, 20480, 20597), (2, 24576, 24693), (2, 16384, 16501), (2, 24576, 24693), (2, 16384, 16501), (3, 13851, 13968), (3, 14580, 14697), (3, 15309, 15426), (3, 16038, 16155), (3, 16767, 16884), (3, 17496, 17613), (3, 15309, 15426), (3, 17496, 17613), (3, 19683, 19800), (3, 21870, 21987), (3, 24057, 24174), (3, 26244, 26361), (3, 19683, 19800), (3, 26244, 26361), (3, 19683, 19800), (5, 13806, 13867), (5, 14375, 14492), (5, 15000, 15117), (5, 15625, 15742), (5, 18750, 18867), (5, 21875, 21992), (5, 25000, 25117), (5, 15625, 15742), (7, 14406, 14523), (7, 16807, 16924), (7, 19208, 19325), (7, 21609, 21726), (7, 24010, 24127), (7, 26411, 26528), (7, 16807, 16924), (11, 14641, 14758), (11, 15972, 16089), (11, 17303, 17420), (11, 18634, 18751), (11, 19965, 20082), (11, 21296, 21413), (11, 22627, 22744), (11, 23958, 24075), (11, 25289, 25406), (11, 26620, 26737), (11, 14641, 14758), (13, 15379, 15496), (13, 17576, 17693), (13, 19773, 19890), (13, 21970, 22087), (13, 24167, 24284), (13, 26364, 26481), (17, 14739, 14856), (17, 19652, 19769), (17, 24565, 24682), (19, 13806, 13835), (19, 20577, 20694), (19, 27436, 27553), (23, 24334, 24451), (29, 14297, 14414), (29, 15138, 15255), (29, 15979, 16096), (29, 16820, 16937), (29, 17661, 17778), (29, 18502, 18619), (29, 19343, 19460), (29, 20184, 20301), (29, 24389, 24506), (31, 14415, 14532), (31, 15376, 15493), (31, 16337, 16454), (31, 17298, 17415), (31, 18259, 18376), (31, 19220, 19337), (31, 20181, 20298), (31, 21142, 21259), (31, 22103, 22220), (31, 23064, 23181), (37, 13806, 13807), (37, 15059, 15176), (37, 16428, 16545), (37, 17797, 17914), (37, 19166, 19283), (37, 20535, 20652), (37, 21904, 22021), (37, 23273, 23390), (37, 24642, 24759), (37, 26011, 26128), (37, 27380, 27497), (41, 15129, 15246), (41, 16810, 16927), (41, 18491, 18608), (41, 20172, 20289), (41, 21853, 21970), (41, 23534, 23651), (41, 25215, 25332), (41, 26896, 27013), (43, 14792, 14909), (43, 16641, 16758), (43, 18490, 18607), (43, 20339, 20456), (43, 22188, 22305), (43, 24037, 24154), (43, 25886, 26003), (47, 15463, 15580), (47, 17672, 17789), (47, 19881, 19998), (47, 22090, 22207), (47, 24299, 24416), (47, 26508, 26625), (53, 14045, 14162), (53, 16854, 16971), (53, 19663, 19780), (53, 22472, 22589), (53, 25281, 25398), (61, 14884, 15001), (61, 18605, 18722), (61, 22326, 22443), (61, 26047, 26164), (67, 17956, 18073), (67, 22445, 22562), (67, 26934, 27051), (71, 15123, 15240), (71, 20164, 20281), (71, 25205, 25322), (73, 15987, 16104), (73, 21316, 21433), (73, 26645, 26762), (79, 18723, 18840), (79, 24964, 25081), (83, 13806, 13895), (83, 20667, 20784), (83, 27556, 27611), (89, 15842, 15959), (89, 23763, 23880), (97, 18818, 18935), (101, 20402, 20519), (103, 21218, 21335), (107, 22898, 23015), (109, 23762, 23879), (113, 25538, 25655)]

def row118_layer000_block000 : List ColouredInterval :=
  [(2, 14336, 14453), (2, 16384, 16501), (2, 18432, 18549), (2, 20480, 20597), (2, 22528, 22645), (2, 24576, 24693), (2, 16384, 16501), (2, 20480, 20597), (2, 24576, 24693), (2, 16384, 16501), (2, 24576, 24693), (2, 16384, 16501), (3, 13851, 13968)]

def row118_layer000_block001 : List ColouredInterval :=
  [(3, 14580, 14697), (3, 15309, 15426), (3, 16038, 16155), (3, 16767, 16884), (3, 17496, 17613), (3, 15309, 15426), (3, 17496, 17613), (3, 19683, 19800), (3, 21870, 21987), (3, 24057, 24174), (3, 26244, 26361), (3, 19683, 19800), (3, 26244, 26361)]

def row118_layer000_block002 : List ColouredInterval :=
  [(3, 19683, 19800), (5, 13806, 13867), (5, 14375, 14492), (5, 15000, 15117), (5, 15625, 15742), (5, 18750, 18867), (5, 21875, 21992), (5, 25000, 25117), (5, 15625, 15742), (7, 14406, 14523), (7, 16807, 16924), (7, 19208, 19325), (7, 21609, 21726)]

def row118_layer000_block003 : List ColouredInterval :=
  [(7, 24010, 24127), (7, 26411, 26528), (7, 16807, 16924), (11, 14641, 14758), (11, 15972, 16089), (11, 17303, 17420), (11, 18634, 18751), (11, 19965, 20082), (11, 21296, 21413), (11, 22627, 22744), (11, 23958, 24075), (11, 25289, 25406), (11, 26620, 26737)]

def row118_layer000_block004 : List ColouredInterval :=
  [(11, 14641, 14758), (13, 15379, 15496), (13, 17576, 17693), (13, 19773, 19890), (13, 21970, 22087), (13, 24167, 24284), (13, 26364, 26481), (17, 14739, 14856), (17, 19652, 19769), (17, 24565, 24682), (19, 13806, 13835), (19, 20577, 20694), (19, 27436, 27553)]

def row118_layer000_block005 : List ColouredInterval :=
  [(23, 24334, 24451), (29, 14297, 14414), (29, 15138, 15255), (29, 15979, 16096), (29, 16820, 16937), (29, 17661, 17778), (29, 18502, 18619), (29, 19343, 19460), (29, 20184, 20301), (29, 24389, 24506), (31, 14415, 14532), (31, 15376, 15493), (31, 16337, 16454)]

def row118_layer000_block006 : List ColouredInterval :=
  [(31, 17298, 17415), (31, 18259, 18376), (31, 19220, 19337), (31, 20181, 20298), (31, 21142, 21259), (31, 22103, 22220), (31, 23064, 23181), (37, 13806, 13807), (37, 15059, 15176), (37, 16428, 16545), (37, 17797, 17914), (37, 19166, 19283), (37, 20535, 20652)]

def row118_layer000_block007 : List ColouredInterval :=
  [(37, 21904, 22021), (37, 23273, 23390), (37, 24642, 24759), (37, 26011, 26128), (37, 27380, 27497), (41, 15129, 15246), (41, 16810, 16927), (41, 18491, 18608), (41, 20172, 20289), (41, 21853, 21970), (41, 23534, 23651), (41, 25215, 25332), (41, 26896, 27013)]

def row118_layer000_block008 : List ColouredInterval :=
  [(43, 14792, 14909), (43, 16641, 16758), (43, 18490, 18607), (43, 20339, 20456), (43, 22188, 22305), (43, 24037, 24154), (43, 25886, 26003), (47, 15463, 15580), (47, 17672, 17789), (47, 19881, 19998), (47, 22090, 22207), (47, 24299, 24416), (47, 26508, 26625)]

def row118_layer000_block009 : List ColouredInterval :=
  [(53, 14045, 14162), (53, 16854, 16971), (53, 19663, 19780), (53, 22472, 22589), (53, 25281, 25398), (61, 14884, 15001), (61, 18605, 18722), (61, 22326, 22443), (61, 26047, 26164), (67, 17956, 18073), (67, 22445, 22562), (67, 26934, 27051), (71, 15123, 15240)]

def row118_layer000_block010 : List ColouredInterval :=
  [(71, 20164, 20281), (71, 25205, 25322), (73, 15987, 16104), (73, 21316, 21433), (73, 26645, 26762), (79, 18723, 18840), (79, 24964, 25081), (83, 13806, 13895), (83, 20667, 20784), (83, 27556, 27611), (89, 15842, 15959), (89, 23763, 23880), (97, 18818, 18935)]

def row118_layer000_block011 : List ColouredInterval :=
  [(101, 20402, 20519), (103, 21218, 21335), (107, 22898, 23015), (109, 23762, 23879), (113, 25538, 25655)]

def row118_layer000_chunks : List (List ColouredInterval) :=
  [row118_layer000_block000, row118_layer000_block001, row118_layer000_block002, row118_layer000_block003, row118_layer000_block004, row118_layer000_block005, row118_layer000_block006, row118_layer000_block007, row118_layer000_block008, row118_layer000_block009, row118_layer000_block010, row118_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_arithmetic : LayerArithmeticValid row118.height { lower := 13806, upper := 27612, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_enumeration :
    activePowerIntervalList 118 24 13806 27612 = row118_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs000 :
    row118_layer000_block000.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs001 :
    row118_layer000_block001.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs002 :
    row118_layer000_block002.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs003 :
    row118_layer000_block003.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs004 :
    row118_layer000_block004.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs005 :
    row118_layer000_block005.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs006 :
    row118_layer000_block006.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs006
