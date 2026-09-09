import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block014

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1249037, 1249217, 1249397, 1249559, 1249741, 1249921, 1250099, 1250281, 1250461, 1250629, 1250813, 1250983, 1251161, 1251329, 1251463, 1251641]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1248857 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1248857 1251641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1248857) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1251797, 1251961, 1252129, 1252283, 1252457, 1252639, 1252819, 1252997, 1253171, 1253347, 1253521, 1253701, 1253851, 1254031, 1254203, 1254377]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1251641 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1251641 1254377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1251641) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1254557, 1254739, 1254907, 1255081, 1255259, 1255427, 1255609, 1255759, 1255939, 1256107, 1256279, 1256449, 1256621, 1256797, 1256953, 1257131]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1254377 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1254377 1257131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1254377) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1257313, 1257493, 1257653, 1257829, 1258013, 1258183, 1258349, 1258531, 1258711, 1258889, 1259057, 1259231, 1259413, 1259593, 1259777, 1259953]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1257131 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1257131 1259953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1257131) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1260131, 1260293, 1260473, 1260643, 1260827, 1260991, 1261171, 1261333, 1261489, 1261649, 1261831, 1262011, 1262147, 1262321, 1262491, 1262671]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1259953 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1259953 1262671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1259953) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1262851, 1263007, 1263191, 1263373, 1263547, 1263701, 1263863, 1264037, 1264213, 1264387, 1264561, 1264741, 1264909, 1265093, 1265273, 1265449]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1262671 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1262671 1265449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1262671) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1265623, 1265801, 1265981, 1266163, 1266341, 1266523, 1266677, 1266851, 1267009, 1267193, 1267349, 1267531, 1267711, 1267891, 1268053, 1268233]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1265449 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1265449 1268233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1265449) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1268413, 1268593, 1268777, 1268947, 1269131, 1269311, 1269493, 1269643, 1269797, 1269971, 1270151, 1270333, 1270513, 1270679, 1270861, 1271033]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1268233 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1268233 1271033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1268233) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1271213, 1271393, 1271561, 1271731, 1271903, 1272079, 1272253, 1272421, 1272589, 1272749, 1272919, 1273099, 1273267, 1273423, 1273567, 1273739]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1271033 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1271033 1273739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1271033) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1273919, 1274089, 1274267, 1274437, 1274621, 1274803, 1274941, 1275121, 1275293, 1275467, 1275643, 1275823, 1276007, 1276183, 1276361, 1276543]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1273739 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1273739 1276543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1273739) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1276721, 1276903, 1277083, 1277267, 1277449, 1277629, 1277813, 1277993, 1278163, 1278341, 1278493, 1278671, 1278839, 1279021, 1279193, 1279361]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1276543 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1276543 1279361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1276543) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1279541, 1279703, 1279877, 1280023, 1280183, 1280333, 1280473, 1280651, 1280833, 1280989, 1281167, 1281349, 1281523, 1281703, 1281883, 1282051]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1279361 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1279361 1282051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1279361) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1282231, 1282399, 1282577, 1282751, 1282933, 1283111, 1283237, 1283417, 1283591, 1283771, 1283941, 1284083, 1284263, 1284443, 1284623, 1284793]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1282051 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1282051 1284793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1282051) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1284977, 1285159, 1285301, 1285481, 1285649, 1285813, 1285993, 1286177, 1286359, 1286533, 1286711, 1286881, 1287061, 1287239, 1287401, 1287569]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1284793 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1284793 1287569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1284793) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1287751, 1287917, 1288099, 1288249, 1288429, 1288613, 1288783, 1288967, 1289149, 1289333, 1289513, 1289677, 1289851, 1290031, 1290209, 1290379]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1287569 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1287569 1290379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1287569) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1290563, 1290719, 1290901, 1291079, 1291249, 1291421, 1291603, 1291783, 1291967, 1292149, 1292329, 1292509, 1292693, 1292857, 1293031, 1293203]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1290379 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1290379 1293203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1290379) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1293373, 1293553, 1293701, 1293869, 1294039, 1294201, 1294369, 1294483, 1294651, 1294823, 1295003, 1295183, 1295347, 1295513, 1295681, 1295849]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1293203 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1293203 1295849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1293203) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1296023, 1296187, 1296371, 1296551, 1296727, 1296907, 1297091, 1297273, 1297451, 1297633, 1297799, 1297979, 1298161, 1298333, 1298491, 1298653]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1295849 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1295849 1298653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1295849) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1298831, 1299013, 1299187, 1299367, 1299541, 1299721, 1299899, 1300073, 1300253, 1300433, 1300613, 1300781, 1300963, 1301147, 1301323, 1301507]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1298653 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1298653 1301507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1298653) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1301669, 1301851, 1302029, 1302209, 1302391, 1302571, 1302739, 1302919, 1303097, 1303279, 1303453, 1303633, 1303807, 1303987, 1304167, 1304321]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1301507 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1301507 1304321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1301507) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1304503, 1304687, 1304867, 1305047, 1305229, 1305401, 1305581, 1305749, 1305919, 1306103, 1306273, 1306451, 1306633, 1306817, 1306997, 1307161]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1304321 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1304321 1307161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1304321) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1307311, 1307483, 1307651, 1307833, 1308011, 1308193, 1308367, 1308551, 1308731, 1308911, 1309093, 1309249, 1309421, 1309601, 1309769, 1309949]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1307161 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1307161 1309949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1307161) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1310123, 1310293, 1310473, 1310657, 1310809, 1310993, 1311173, 1311353, 1311523, 1311701, 1311857, 1312027, 1312211, 1312393, 1312567, 1312739]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1309949 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1309949 1312739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1309949) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1312921, 1313087, 1313239, 1313423, 1313597, 1313771, 1313953, 1314133, 1314317, 1314497, 1314673, 1314853, 1315037, 1315213, 1315397, 1315553]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1312739 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1312739 1315553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1312739) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1315729, 1315907, 1316071, 1316251, 1316431, 1316603, 1316779, 1316963, 1317131, 1317307, 1317487, 1317671, 1317853, 1318033, 1318211, 1318379]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1315553 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1315553 1318379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1315553) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1318553, 1318729, 1318913, 1319083, 1319261, 1319443, 1319623, 1319803, 1319963, 1320127, 1320307, 1320437, 1320617, 1320799, 1320983, 1321163]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1318379 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1318379 1321163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1318379) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1321319, 1321487, 1321669, 1321847, 1322021, 1322203, 1322369, 1322543, 1322693, 1322873, 1323053, 1323233, 1323409, 1323593, 1323743, 1323923]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1321163 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1321163 1323923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1321163) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1324097, 1324261, 1324441, 1324621, 1324783, 1324957, 1325123, 1325293, 1325449, 1325633, 1325803, 1325977, 1326161, 1326343, 1326511, 1326691]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1323923 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1323923 1326691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1323923) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1326869, 1327043, 1327217, 1327387, 1327561, 1327709, 1327889, 1328051, 1328231, 1328407, 1328573, 1328749, 1328927, 1329109, 1329287, 1329457]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1326691 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1326691 1329457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1326691) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1329637, 1329799, 1329971, 1330129, 1330313, 1330493, 1330649, 1330831, 1330997, 1331153, 1331333, 1331513, 1331683, 1331857, 1332017, 1332193]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1329457 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1329457 1332193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1329457) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1332371, 1332553, 1332733, 1332917, 1333091, 1333273, 1333457, 1333621, 1333799, 1333967, 1334141, 1334297, 1334477, 1334651, 1334833, 1335007]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1332193 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1332193 1335007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1332193) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1335167, 1335349, 1335533, 1335689, 1335869, 1336039, 1336211, 1336393, 1336567, 1336747, 1336927, 1337093, 1337269, 1337447, 1337629, 1337813]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1335007 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1335007 1337813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1335007) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1248857 1254377 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1251641) (hi := 1254377) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1254377 1259953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1254377)
    (mid := 1257131) (hi := 1259953) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1259953 1265449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1259953)
    (mid := 1262671) (hi := 1265449) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1265449 1271033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1265449)
    (mid := 1268233) (hi := 1271033) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1271033 1276543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1271033)
    (mid := 1273739) (hi := 1276543) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1276543 1282051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1276543)
    (mid := 1279361) (hi := 1282051) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1282051 1287569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1282051)
    (mid := 1284793) (hi := 1287569) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1287569 1293203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1287569)
    (mid := 1290379) (hi := 1293203) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1293203 1298653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1293203)
    (mid := 1295849) (hi := 1298653) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1298653 1304321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1298653)
    (mid := 1301507) (hi := 1304321) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1304321 1309949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1304321)
    (mid := 1307161) (hi := 1309949) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1309949 1315553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1309949)
    (mid := 1312739) (hi := 1315553) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1315553 1321163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1315553)
    (mid := 1318379) (hi := 1321163) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1321163 1326691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1321163)
    (mid := 1323923) (hi := 1326691) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1326691 1332193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1326691)
    (mid := 1329457) (hi := 1332193) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1332193 1337813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1332193)
    (mid := 1335007) (hi := 1337813) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1248857 1259953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1254377) (hi := 1259953) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1259953 1271033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1259953)
    (mid := 1265449) (hi := 1271033) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1271033 1282051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1271033)
    (mid := 1276543) (hi := 1282051) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1282051 1293203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1282051)
    (mid := 1287569) (hi := 1293203) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1293203 1304321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1293203)
    (mid := 1298653) (hi := 1304321) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1304321 1315553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1304321)
    (mid := 1309949) (hi := 1315553) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1315553 1326691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1315553)
    (mid := 1321163) (hi := 1326691) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1326691 1337813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1326691)
    (mid := 1332193) (hi := 1337813) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1248857 1271033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1259953) (hi := 1271033) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1271033 1293203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1271033)
    (mid := 1282051) (hi := 1293203) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1293203 1315553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1293203)
    (mid := 1304321) (hi := 1315553) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1315553 1337813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1315553)
    (mid := 1326691) (hi := 1337813) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1248857 1293203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1271033) (hi := 1293203) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1293203 1337813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1293203)
    (mid := 1315553) (hi := 1337813) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1248857 1337813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1293203) (hi := 1337813) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1248857 1337813 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block014

#print axioms B699MiddleExtension.PrimorialBlocks.Block014.joined
