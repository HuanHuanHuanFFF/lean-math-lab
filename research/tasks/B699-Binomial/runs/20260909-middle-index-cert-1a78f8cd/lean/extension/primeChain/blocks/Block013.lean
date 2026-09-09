import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block013

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1160429, 1160611, 1160771, 1160953, 1161137, 1161317, 1161499, 1161683, 1161857, 1162037, 1162219, 1162373, 1162547, 1162729, 1162907, 1163083]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1160251 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1160251 1163083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1160251) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1163263, 1163441, 1163611, 1163791, 1163971, 1164101, 1164253, 1164433, 1164617, 1164799, 1164979, 1165147, 1165303, 1165471, 1165643, 1165823]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1163083 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1163083 1165823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1163083) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1165993, 1166153, 1166329, 1166507, 1166687, 1166861, 1167013, 1167193, 1167359, 1167539, 1167709, 1167889, 1168043, 1168187, 1168361, 1168537]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1165823 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1165823 1168537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1165823) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1168721, 1168897, 1169081, 1169261, 1169419, 1169603, 1169767, 1169939, 1170119, 1170277, 1170461, 1170641, 1170821, 1170979, 1171133, 1171301]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1168537 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1168537 1171301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1168537) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1171477, 1171661, 1171837, 1172021, 1172179, 1172351, 1172533, 1172713, 1172893, 1173059, 1173239, 1173407, 1173589, 1173749, 1173917, 1174099]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1171301 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1171301 1174099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1171301) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1174273, 1174451, 1174627, 1174801, 1174973, 1175149, 1175297, 1175479, 1175659, 1175833, 1175989, 1176173, 1176353, 1176533, 1176713, 1176881]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1174099 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1174099 1176881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1174099) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1177037, 1177219, 1177399, 1177571, 1177751, 1177933, 1178113, 1178297, 1178479, 1178659, 1178843, 1179019, 1179203, 1179383, 1179553, 1179733]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1176881 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1176881 1179733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1176881) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1179907, 1180087, 1180253, 1180427, 1180591, 1180771, 1180951, 1181099, 1181281, 1181461, 1181633, 1181777, 1181927, 1182073, 1182253, 1182437]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1179733 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1179733 1182437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1179733) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1182611, 1182791, 1182967, 1183151, 1183333, 1183477, 1183613, 1183781, 1183961, 1184143, 1184317, 1184489, 1184671, 1184839, 1185017, 1185181]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1182437 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1182437 1185181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1182437) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1185361, 1185523, 1185707, 1185889, 1186067, 1186249, 1186411, 1186589, 1186769, 1186937, 1187117, 1187287, 1187471, 1187639, 1187821, 1188001]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1185181 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1185181 1188001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1185181) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1188179, 1188361, 1188529, 1188689, 1188857, 1189033, 1189213, 1189387, 1189567, 1189751, 1189933, 1190081, 1190263, 1190447, 1190611, 1190789]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1188001 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1188001 1190789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1188001) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1190953, 1191131, 1191313, 1191481, 1191643, 1191821, 1191991, 1192171, 1192349, 1192517, 1192699, 1192883, 1193057, 1193239, 1193399, 1193573]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1190789 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1190789 1193573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1190789) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1193743, 1193911, 1194059, 1194241, 1194421, 1194601, 1194769, 1194923, 1195091, 1195247, 1195429, 1195589, 1195771, 1195937, 1196119, 1196287]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1193573 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1193573 1196287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1193573) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1196471, 1196653, 1196837, 1197017, 1197199, 1197367, 1197527, 1197709, 1197881, 1198063, 1198247, 1198427, 1198609, 1198793, 1198973, 1199137]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1196287 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1196287 1199137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1196287) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1199309, 1199491, 1199663, 1199839, 1200007, 1200191, 1200373, 1200527, 1200701, 1200883, 1201061, 1201241, 1201381, 1201559, 1201729, 1201909]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1199137 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1199137 1201909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1199137) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1202081, 1202261, 1202437, 1202609, 1202791, 1202963, 1203127, 1203287, 1203467, 1203641, 1203817, 1203971, 1204153, 1204337, 1204519, 1204699]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1201909 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1201909 1204699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1201909) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1204883, 1205047, 1205231, 1205411, 1205563, 1205731, 1205903, 1206071, 1206229, 1206407, 1206587, 1206769, 1206941, 1207123, 1207307, 1207489]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1204699 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1204699 1207489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1204699) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1207649, 1207769, 1207933, 1208117, 1208299, 1208461, 1208591, 1208741, 1208873, 1209053, 1209233, 1209379, 1209563, 1209739, 1209889, 1210067]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1207489 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1207489 1210067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1207489) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1210241, 1210411, 1210549, 1210717, 1210897, 1211081, 1211261, 1211443, 1211621, 1211797, 1211933, 1212103, 1212283, 1212443, 1212613, 1212793]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1210067 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1210067 1212793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1210067) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1212973, 1213153, 1213327, 1213483, 1213661, 1213841, 1214023, 1214197, 1214371, 1214533, 1214711, 1214891, 1215047, 1215229, 1215407, 1215587]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1212793 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1212793 1215587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1212793) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1215769, 1215923, 1216091, 1216273, 1216451, 1216619, 1216799, 1216973, 1217147, 1217329, 1217509, 1217687, 1217861, 1218043, 1218221, 1218401]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1215587 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1215587 1218401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1215587) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1218583, 1218761, 1218941, 1219123, 1219307, 1219489, 1219663, 1219847, 1220029, 1220203, 1220369, 1220507, 1220689, 1220839, 1221019, 1221197]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1218401 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1218401 1221197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1218401) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1221379, 1221559, 1221707, 1221863, 1222037, 1222219, 1222393, 1222567, 1222751, 1222931, 1223093, 1223263, 1223447, 1223603, 1223777, 1223953]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1221197 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1221197 1223953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1221197) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1224133, 1224299, 1224481, 1224637, 1224809, 1224991, 1225157, 1225331, 1225507, 1225691, 1225871, 1226053, 1226237, 1226417, 1226593, 1226767]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1223953 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1223953 1226767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1223953) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1226899, 1227053, 1227181, 1227353, 1227497, 1227659, 1227841, 1228021, 1228193, 1228373, 1228547, 1228693, 1228861, 1229023, 1229203, 1229381]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1226767 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1226767 1229381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1226767) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1229563, 1229743, 1229911, 1230071, 1230241, 1230401, 1230571, 1230751, 1230913, 1231093, 1231277, 1231459, 1231631, 1231807, 1231987, 1232171]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1229381 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1229381 1232171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1229381) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1232353, 1232537, 1232719, 1232893, 1233073, 1233251, 1233433, 1233611, 1233781, 1233949, 1234133, 1234309, 1234463, 1234627, 1234799, 1234969]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1232171 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1232171 1234969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1232171) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1235149, 1235327, 1235503, 1235669, 1235833, 1236017, 1236173, 1236337, 1236517, 1236701, 1236883, 1237063, 1237231, 1237403, 1237571, 1237739]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1234969 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1234969 1237739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1234969) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1237919, 1238101, 1238273, 1238449, 1238621, 1238801, 1238947, 1239127, 1239311, 1239481, 1239661, 1239839, 1240021, 1240199, 1240363, 1240543]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1237739 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1237739 1240543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1237739) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1240717, 1240861, 1241039, 1241203, 1241381, 1241557, 1241741, 1241923, 1242107, 1242289, 1242457, 1242641, 1242823, 1243003, 1243181, 1243349]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1240543 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1240543 1243349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1240543) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1243523, 1243691, 1243859, 1244041, 1244203, 1244381, 1244543, 1244713, 1244879, 1245037, 1245217, 1245401, 1245557, 1245721, 1245883, 1246061]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1243349 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1243349 1246061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1243349) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1246243, 1246397, 1246579, 1246757, 1246919, 1247101, 1247269, 1247453, 1247627, 1247801, 1247969, 1248151, 1248329, 1248503, 1248673, 1248857]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1246061 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1246061 1248857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1246061) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1160251 1165823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1160251)
    (mid := 1163083) (hi := 1165823) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1165823 1171301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1165823)
    (mid := 1168537) (hi := 1171301) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1171301 1176881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1171301)
    (mid := 1174099) (hi := 1176881) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1176881 1182437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1176881)
    (mid := 1179733) (hi := 1182437) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1182437 1188001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1182437)
    (mid := 1185181) (hi := 1188001) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1188001 1193573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1188001)
    (mid := 1190789) (hi := 1193573) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1193573 1199137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1193573)
    (mid := 1196287) (hi := 1199137) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1199137 1204699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1199137)
    (mid := 1201909) (hi := 1204699) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1204699 1210067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1204699)
    (mid := 1207489) (hi := 1210067) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1210067 1215587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1210067)
    (mid := 1212793) (hi := 1215587) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1215587 1221197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1215587)
    (mid := 1218401) (hi := 1221197) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1221197 1226767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1221197)
    (mid := 1223953) (hi := 1226767) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1226767 1232171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1226767)
    (mid := 1229381) (hi := 1232171) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1232171 1237739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1232171)
    (mid := 1234969) (hi := 1237739) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1237739 1243349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1237739)
    (mid := 1240543) (hi := 1243349) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1243349 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1243349)
    (mid := 1246061) (hi := 1248857) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1160251 1171301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1160251)
    (mid := 1165823) (hi := 1171301) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1171301 1182437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1171301)
    (mid := 1176881) (hi := 1182437) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1182437 1193573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1182437)
    (mid := 1188001) (hi := 1193573) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1193573 1204699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1193573)
    (mid := 1199137) (hi := 1204699) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1204699 1215587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1204699)
    (mid := 1210067) (hi := 1215587) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1215587 1226767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1215587)
    (mid := 1221197) (hi := 1226767) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1226767 1237739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1226767)
    (mid := 1232171) (hi := 1237739) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1237739 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1237739)
    (mid := 1243349) (hi := 1248857) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1160251 1182437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1160251)
    (mid := 1171301) (hi := 1182437) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1182437 1204699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1182437)
    (mid := 1193573) (hi := 1204699) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1204699 1226767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1204699)
    (mid := 1215587) (hi := 1226767) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1226767 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1226767)
    (mid := 1237739) (hi := 1248857) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1160251 1204699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1160251)
    (mid := 1182437) (hi := 1204699) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1204699 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1204699)
    (mid := 1226767) (hi := 1248857) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1160251 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1160251)
    (mid := 1204699) (hi := 1248857) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1160251 1248857 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block013

#print axioms B699MiddleExtension.PrimorialBlocks.Block013.joined
