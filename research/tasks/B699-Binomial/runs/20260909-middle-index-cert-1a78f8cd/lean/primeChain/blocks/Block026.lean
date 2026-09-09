import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block026

def segment0Nodes : List Nat := [1204699, 1204883, 1205047, 1205231, 1205411, 1205731, 1205903, 1206071, 1206229, 1206407, 1206587, 1206769, 1206941, 1207123, 1207307, 1207489]
theorem segment0Check : trialChainCheck 322 1204519 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1204519 1207489 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1207769, 1207933, 1208117, 1208299, 1208591, 1208873, 1209053, 1209233, 1209379, 1209563, 1209739, 1209889, 1210067, 1210241, 1210549, 1210717]
theorem segment1Check : trialChainCheck 322 1207489 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1207489 1210717 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1210897, 1211081, 1211261, 1211443, 1211621, 1211933, 1212103, 1212283, 1212443, 1212613, 1212793, 1212973, 1213153, 1213327, 1213483, 1213661]
theorem segment2Check : trialChainCheck 322 1210717 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1210717 1213661 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1213841, 1214023, 1214197, 1214371, 1214533, 1214711, 1214891, 1215047, 1215229, 1215407, 1215587, 1215769, 1216091, 1216273, 1216451, 1216619]
theorem segment3Check : trialChainCheck 322 1213661 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1213661 1216619 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1216799, 1216973, 1217147, 1217329, 1217509, 1217687, 1217861, 1218043, 1218221, 1218401, 1218583, 1218761, 1218941, 1219123, 1219307, 1219489]
theorem segment4Check : trialChainCheck 322 1216619 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1216619 1219489 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1219663, 1219847, 1220029, 1220203, 1220507, 1220689, 1220839, 1221019, 1221197, 1221379, 1221559, 1221863, 1222037, 1222219, 1222393, 1222567]
theorem segment5Check : trialChainCheck 322 1219489 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1219489 1222567 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1222751, 1222931, 1223093, 1223263, 1223447, 1223603, 1223777, 1223953, 1224133, 1224299, 1224481, 1224637, 1224809, 1224991, 1225157, 1225331]
theorem segment6Check : trialChainCheck 322 1222567 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1222567 1225331 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1225507, 1225691, 1225871, 1226053, 1226237, 1226417, 1226593, 1226899, 1227181, 1227497, 1227659, 1227841, 1228021, 1228193, 1228373, 1228693]
theorem segment7Check : trialChainCheck 322 1225331 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1225331 1228693 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1228861, 1229023, 1229203, 1229381, 1229563, 1229743, 1229911, 1230071, 1230241, 1230401, 1230571, 1230751, 1230913, 1231093, 1231277, 1231459]
theorem segment8Check : trialChainCheck 322 1228693 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1228693 1231459 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1231631, 1231807, 1231987, 1232171, 1232353, 1232537, 1232719, 1232893, 1233073, 1233251, 1233433, 1233611, 1233781, 1233949, 1234133, 1234309]
theorem segment9Check : trialChainCheck 322 1231459 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1231459 1234309 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1234627, 1234799, 1234969, 1235149, 1235327, 1235503, 1235669, 1235833, 1236017, 1236337, 1236517, 1236701, 1236883, 1237063, 1237231, 1237403]
theorem segment10Check : trialChainCheck 322 1234309 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1234309 1237403 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1237571, 1237739, 1237919, 1238101, 1238273, 1238449, 1238621, 1238801, 1238947, 1239127, 1239311, 1239481, 1239661, 1239839, 1240021, 1240199]
theorem segment11Check : trialChainCheck 322 1237403 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1237403 1240199 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1240363, 1240543, 1240861, 1241039, 1241203, 1241381, 1241557, 1241741, 1241923, 1242107, 1242289, 1242457, 1242641, 1242823, 1243003, 1243181]
theorem segment12Check : trialChainCheck 322 1240199 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1240199 1243181 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1243349, 1243523, 1243691, 1243859, 1244041, 1244203, 1244381, 1244543, 1244713, 1244879, 1245037, 1245217, 1245401, 1245721, 1245883, 1246061]
theorem segment13Check : trialChainCheck 322 1243181 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1243181 1246061 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1246243, 1246397, 1246579, 1246757, 1246919, 1247101, 1247269, 1247453, 1247627, 1247801, 1247969, 1248151, 1248329, 1248503, 1248673, 1248857]
theorem segment14Check : trialChainCheck 322 1246061 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1246061 1248857 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1249037, 1249217, 1249397, 1249559, 1249741, 1249921, 1250099, 1250281, 1250461, 1250629, 1250813, 1250983, 1251161, 1251463, 1251641, 1251961]
theorem segment15Check : trialChainCheck 322 1248857 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1248857 1251961 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1204519 1210717 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1210717 1216619 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1216619 1222567 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1222567 1228693 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1228693 1234309 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1234309 1240199 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1240199 1246061 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1246061 1251961 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1204519 1216619 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1216619 1228693 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1228693 1240199 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1240199 1251961 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1204519 1228693 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1228693 1251961 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1204519 1251961 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1204519 1251961 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block026

#print axioms B699MiddleIndex.PrimeBlocks.Block026.joined
