import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block103

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9080107, 9080273, 9080441, 9080623, 9080801, 9080977, 9081161, 9081341, 9081517, 9081661, 9081833, 9081991, 9082153, 9082313, 9082483, 9082657]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9079943 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9079943 9082657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9079943) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9082841, 9083023, 9083203, 9083383, 9083563, 9083747, 9083911, 9084079, 9084233, 9084401, 9084557, 9084727, 9084899, 9085081, 9085261, 9085423]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9082657 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9082657 9085423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9082657) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9085607, 9085777, 9085957, 9086117, 9086299, 9086477, 9086647, 9086827, 9086983, 9087161, 9087343, 9087511, 9087671, 9087853, 9088033, 9088193]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9085423 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9085423 9088193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9085423) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9088369, 9088543, 9088711, 9088883, 9089057, 9089233, 9089389, 9089573, 9089737, 9089921, 9090061, 9090241, 9090407, 9090583, 9090751, 9090919]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9088193 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9088193 9090919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9088193) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9091099, 9091273, 9091451, 9091631, 9091813, 9091997, 9092179, 9092353, 9092533, 9092717, 9092893, 9093061, 9093239, 9093421, 9093599, 9093739]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9090919 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9090919 9093739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9090919) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9093919, 9094093, 9094247, 9094417, 9094601, 9094769, 9094927, 9095089, 9095269, 9095453, 9095627, 9095791, 9095939, 9096107, 9096289, 9096433]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9093739 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9093739 9096433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9093739) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9096589, 9096743, 9096917, 9097093, 9097267, 9097427, 9097591, 9097769, 9097939, 9098113, 9098293, 9098477, 9098659, 9098833, 9099017, 9099197]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9096433 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9096433 9099197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9096433) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9099379, 9099547, 9099731, 9099907, 9100079, 9100211, 9100381, 9100561, 9100739, 9100919, 9101093, 9101269, 9101453, 9101633, 9101803, 9101977]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9099197 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9099197 9101977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9099197) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9102139, 9102323, 9102449, 9102593, 9102773, 9102953, 9103117, 9103301, 9103481, 9103657, 9103841, 9103981, 9104153, 9104327, 9104509, 9104687]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9101977 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9101977 9104687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9101977) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9104833, 9105001, 9105181, 9105361, 9105521, 9105689, 9105853, 9106007, 9106189, 9106351, 9106523, 9106693, 9106859, 9107027, 9107209, 9107389]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9104687 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9104687 9107389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9104687) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9107531, 9107689, 9107843, 9107999, 9108167, 9108331, 9108511, 9108691, 9108859, 9109039, 9109223, 9109369, 9109553, 9109729, 9109883, 9110051]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9107389 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9107389 9110051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9107389) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9110221, 9110371, 9110551, 9110723, 9110873, 9111043, 9111199, 9111341, 9111523, 9111691, 9111871, 9112049, 9112231, 9112403, 9112559, 9112721]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9110051 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9110051 9112721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9110051) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9112889, 9113059, 9113243, 9113413, 9113593, 9113771, 9113941, 9114121, 9114293, 9114461, 9114643, 9114817, 9114991, 9115159, 9115339, 9115511]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9112721 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9112721 9115511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9112721) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9115693, 9115861, 9116039, 9116213, 9116383, 9116557, 9116729, 9116881, 9117061, 9117221, 9117403, 9117569, 9117743, 9117923, 9118091, 9118253]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9115511 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9115511 9118253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9115511) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9118427, 9118609, 9118793, 9118931, 9119113, 9119287, 9119471, 9119653, 9119819, 9119989, 9120151, 9120329, 9120511, 9120691, 9120871, 9121043]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9118253 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9118253 9121043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9118253) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9121213, 9121397, 9121561, 9121733, 9121909, 9122083, 9122263, 9122429, 9122599, 9122759, 9122933, 9123109, 9123293, 9123469, 9123643, 9123823]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9121043 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9121043 9123823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9121043) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9124007, 9124187, 9124361, 9124523, 9124691, 9124861, 9125033, 9125203, 9125387, 9125561, 9125729, 9125899, 9126083, 9126233, 9126407, 9126587]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9123823 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9123823 9126587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9123823) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9126757, 9126919, 9127103, 9127267, 9127367, 9127537, 9127717, 9127901, 9128057, 9128239, 9128419, 9128597, 9128747, 9128929, 9129073, 9129257]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9126587 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9126587 9129257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9126587) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9129437, 9129619, 9129773, 9129947, 9130123, 9130301, 9130483, 9130661, 9130841, 9131021, 9131189, 9131359, 9131543, 9131687, 9131849, 9132031]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9129257 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9129257 9132031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9129257) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9132209, 9132391, 9132527, 9132691, 9132857, 9133031, 9133213, 9133393, 9133571, 9133739, 9133907, 9134089, 9134261, 9134441, 9134617, 9134767]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9132031 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9132031 9134767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9132031) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9134947, 9135127, 9135311, 9135461, 9135631, 9135811, 9135977, 9136159, 9136319, 9136499, 9136679, 9136861, 9137021, 9137201, 9137353, 9137533]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9134767 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9134767 9137533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9134767) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9137707, 9137873, 9138049, 9138229, 9138413, 9138589, 9138757, 9138931, 9139099, 9139283, 9139463, 9139639, 9139811, 9139987, 9140167, 9140347]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9137533 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9137533 9140347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9137533) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9140519, 9140671, 9140851, 9141031, 9141199, 9141367, 9141541, 9141707, 9141883, 9142061, 9142229, 9142411, 9142577, 9142747, 9142927, 9143081]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9140347 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9140347 9143081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9140347) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9143221, 9143383, 9143567, 9143749, 9143933, 9144067, 9144229, 9144413, 9144581, 9144761, 9144917, 9145069, 9145249, 9145379, 9145561, 9145739]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9143081 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9143081 9145739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9143081) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9145921, 9146101, 9146273, 9146447, 9146611, 9146789, 9146971, 9147137, 9147311, 9147487, 9147667, 9147839, 9148019, 9148199, 9148351, 9148523]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9145739 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9145739 9148523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9145739) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9148693, 9148849, 9149029, 9149177, 9149359, 9149533, 9149717, 9149873, 9150041, 9150209, 9150377, 9150523, 9150703, 9150887, 9151067, 9151243]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9148523 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9148523 9151243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9148523) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9151411, 9151589, 9151771, 9151949, 9152131, 9152303, 9152461, 9152641, 9152809, 9152993, 9153173, 9153349, 9153527, 9153691, 9153869, 9154043]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9151243 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9151243 9154043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9151243) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9154163, 9154309, 9154493, 9154631, 9154793, 9154969, 9155143, 9155309, 9155477, 9155659, 9155837, 9155999, 9156167, 9156341, 9156487, 9156661]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9154043 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9154043 9156661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9154043) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9156839, 9157021, 9157201, 9157321, 9157483, 9157663, 9157847, 9158027, 9158207, 9158389, 9158543, 9158717, 9158873, 9159053, 9159233, 9159377]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9156661 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9156661 9159377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9156661) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9159551, 9159659, 9159833, 9160009, 9160189, 9160369, 9160537, 9160721, 9160889, 9161057, 9161239, 9161413, 9161597, 9161753, 9161923, 9162091]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9159377 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9159377 9162091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9159377) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9162247, 9162367, 9162547, 9162709, 9162893, 9163069, 9163249, 9163423, 9163589, 9163771, 9163943, 9164083, 9164249, 9164431, 9164591, 9164773]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9162091 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9162091 9164773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9162091) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9164951, 9165097, 9165271, 9165451, 9165631, 9165811, 9165977, 9166159, 9166327, 9166511, 9166693, 9166867, 9167051, 9167203, 9167383, 9167551]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9164773 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9164773 9167551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9164773) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9079943 9085423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9079943)
    (mid := 9082657) (hi := 9085423) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9085423 9090919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9085423)
    (mid := 9088193) (hi := 9090919) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9090919 9096433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9090919)
    (mid := 9093739) (hi := 9096433) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9096433 9101977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9096433)
    (mid := 9099197) (hi := 9101977) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9101977 9107389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9101977)
    (mid := 9104687) (hi := 9107389) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9107389 9112721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9107389)
    (mid := 9110051) (hi := 9112721) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9112721 9118253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9112721)
    (mid := 9115511) (hi := 9118253) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9118253 9123823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9118253)
    (mid := 9121043) (hi := 9123823) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9123823 9129257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9123823)
    (mid := 9126587) (hi := 9129257) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9129257 9134767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9129257)
    (mid := 9132031) (hi := 9134767) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9134767 9140347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9134767)
    (mid := 9137533) (hi := 9140347) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9140347 9145739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9140347)
    (mid := 9143081) (hi := 9145739) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9145739 9151243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9145739)
    (mid := 9148523) (hi := 9151243) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9151243 9156661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9151243)
    (mid := 9154043) (hi := 9156661) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9156661 9162091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9156661)
    (mid := 9159377) (hi := 9162091) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9162091 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9162091)
    (mid := 9164773) (hi := 9167551) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9079943 9090919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9079943)
    (mid := 9085423) (hi := 9090919) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9090919 9101977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9090919)
    (mid := 9096433) (hi := 9101977) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9101977 9112721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9101977)
    (mid := 9107389) (hi := 9112721) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9112721 9123823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9112721)
    (mid := 9118253) (hi := 9123823) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9123823 9134767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9123823)
    (mid := 9129257) (hi := 9134767) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9134767 9145739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9134767)
    (mid := 9140347) (hi := 9145739) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9145739 9156661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9145739)
    (mid := 9151243) (hi := 9156661) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9156661 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9156661)
    (mid := 9162091) (hi := 9167551) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9079943 9101977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9079943)
    (mid := 9090919) (hi := 9101977) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9101977 9123823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9101977)
    (mid := 9112721) (hi := 9123823) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9123823 9145739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9123823)
    (mid := 9134767) (hi := 9145739) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9145739 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9145739)
    (mid := 9156661) (hi := 9167551) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9079943 9123823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9079943)
    (mid := 9101977) (hi := 9123823) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9123823 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9123823)
    (mid := 9145739) (hi := 9167551) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9079943 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9079943)
    (mid := 9123823) (hi := 9167551) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9079943 9167551 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block103

#print axioms B699MiddleExtension.PrimorialBlocks.Block103.joined
