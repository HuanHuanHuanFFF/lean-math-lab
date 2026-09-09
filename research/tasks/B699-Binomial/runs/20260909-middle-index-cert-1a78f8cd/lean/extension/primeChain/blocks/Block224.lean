import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block224

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19662301, 19662479, 19662611, 19662793, 19662961, 19663129, 19663307, 19663487, 19663669, 19663823, 19664003, 19664179, 19664357, 19664539, 19664719, 19664899]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19662127 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19662127 19664899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19662127) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19665077, 19665257, 19665427, 19665601, 19665781, 19665949, 19666123, 19666301, 19666483, 19666663, 19666837, 19666993, 19667177, 19667357, 19667533, 19667699]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19664899 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19664899 19667699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19664899) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19667881, 19668049, 19668223, 19668403, 19668577, 19668751, 19668923, 19669087, 19669259, 19669417, 19669553, 19669733, 19669913, 19670041, 19670197, 19670369]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19667699 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19667699 19670369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19667699) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19670549, 19670723, 19670881, 19671059, 19671241, 19671413, 19671571, 19671749, 19671931, 19672109, 19672249, 19672403, 19672573, 19672747, 19672883, 19673057]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19670369 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19670369 19673057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19670369) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19673237, 19673419, 19673597, 19673779, 19673959, 19674113, 19674293, 19674467, 19674649, 19674829, 19674997, 19675133, 19675309, 19675457, 19675631, 19675813]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19673057 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19673057 19675813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19673057) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19675993, 19676161, 19676317, 19676483, 19676651, 19676821, 19676977, 19677137, 19677311, 19677491, 19677659, 19677829, 19678013, 19678181, 19678349, 19678531]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19675813 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19675813 19678531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19675813) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19678693, 19678873, 19678991, 19679171, 19679351, 19679533, 19679701, 19679861, 19680043, 19680223, 19680389, 19680547, 19680721, 19680889, 19681069, 19681253]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19678531 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19678531 19681253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19678531) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19681433, 19681609, 19681789, 19681969, 19682153, 19682293, 19682473, 19682647, 19682827, 19683007, 19683179, 19683361, 19683527, 19683701, 19683869, 19684013]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19681253 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19681253 19684013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19681253) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19684177, 19684337, 19684519, 19684699, 19684877, 19685059, 19685233, 19685411, 19685593, 19685747, 19685929, 19686097, 19686259, 19686427, 19686607, 19686791]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19684013 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19684013 19686791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19684013) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19686967, 19687133, 19687301, 19687469, 19687639, 19687813, 19687991, 19688167, 19688311, 19688479, 19688653, 19688833, 19689017, 19689167, 19689337, 19689517]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19686791 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19686791 19689517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19686791) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19689697, 19689877, 19690057, 19690241, 19690421, 19690577, 19690751, 19690933, 19691053, 19691213, 19691369, 19691513, 19691689, 19691863, 19692047, 19692221]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19689517 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19689517 19692221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19689517) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19692403, 19692583, 19692737, 19692913, 19693067, 19693249, 19693417, 19693601, 19693783, 19693967, 19694119, 19694291, 19694461, 19694639, 19694813, 19694981]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19692221 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19692221 19694981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19692221) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19695149, 19695331, 19695463, 19695631, 19695791, 19695953, 19696097, 19696273, 19696447, 19696609, 19696741, 19696909, 19697087, 19697267, 19697443, 19697627]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19694981 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19694981 19697627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19694981) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19697789, 19697969, 19698137, 19698317, 19698493, 19698673, 19698851, 19699027, 19699187, 19699363, 19699529, 19699711, 19699879, 19700033, 19700209, 19700363]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19697627 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19697627 19700363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19697627) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19700543, 19700713, 19700897, 19701061, 19701229, 19701403, 19701587, 19701769, 19701947, 19702129, 19702301, 19702469, 19702649, 19702831, 19703009, 19703191]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19700363 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19700363 19703191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19700363) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19703363, 19703543, 19703689, 19703861, 19704043, 19704221, 19704389, 19704571, 19704743, 19704899, 19705069, 19705187, 19705339, 19705513, 19705667, 19705843]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19703191 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19703191 19705843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19703191) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19706003, 19706171, 19706353, 19706521, 19706663, 19706839, 19707013, 19707197, 19707377, 19707557, 19707703, 19707887, 19708069, 19708189, 19708373, 19708553]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19705843 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19705843 19708553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19705843) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19708709, 19708889, 19709071, 19709243, 19709423, 19709603, 19709777, 19709959, 19710139, 19710323, 19710499, 19710683, 19710863, 19711031, 19711187, 19711361]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19708553 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19708553 19711361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19708553) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19711537, 19711717, 19711889, 19712057, 19712233, 19712389, 19712543, 19712713, 19712879, 19713041, 19713223, 19713389, 19713541, 19713719, 19713899, 19714061]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19711361 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19711361 19714061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19711361) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19714241, 19714423, 19714589, 19714763, 19714943, 19715119, 19715299, 19715429, 19715611, 19715791, 19715963, 19716113, 19716293, 19716439, 19716517, 19716701]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19714061 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19714061 19716701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19714061) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19716863, 19717043, 19717183, 19717343, 19717513, 19717697, 19717879, 19718059, 19718221, 19718399, 19718551, 19718723, 19718899, 19719079, 19719229, 19719383]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19716701 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19716701 19719383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19716701) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19719523, 19719697, 19719871, 19720049, 19720231, 19720403, 19720583, 19720733, 19720891, 19721057, 19721237, 19721417, 19721591, 19721771, 19721953, 19722119]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19719383 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19719383 19722119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19719383) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19722301, 19722473, 19722653, 19722823, 19723001, 19723157, 19723339, 19723493, 19723643, 19723813, 19723969, 19724137, 19724311, 19724479, 19724657, 19724839]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19722119 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19722119 19724839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19722119) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19725011, 19725193, 19725361, 19725533, 19725701, 19725877, 19726037, 19726193, 19726367, 19726543, 19726703, 19726879, 19727051, 19727231, 19727387, 19727551]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19724839 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19724839 19727551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19724839) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19727731, 19727887, 19728017, 19728197, 19728377, 19728547, 19728727, 19728911, 19729079, 19729261, 19729427, 19729597, 19729757, 19729933, 19730111, 19730279]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19727551 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19727551 19730279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19727551) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19730449, 19730609, 19730779, 19730947, 19731091, 19731251, 19731427, 19731599, 19731773, 19731949, 19732133, 19732303, 19732487, 19732667, 19732841, 19733017]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19730279 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19730279 19733017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19730279) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19733201, 19733383, 19733551, 19733731, 19733911, 19734089, 19734271, 19734427, 19734607, 19734791, 19734961, 19735123, 19735291, 19735459, 19735643, 19735811]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19733017 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19733017 19735811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19733017) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19735993, 19736173, 19736347, 19736531, 19736707, 19736891, 19737073, 19737251, 19737413, 19737593, 19737737, 19737911, 19738091, 19738259, 19738421, 19738603]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19735811 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19735811 19738603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19735811) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19738783, 19738963, 19739141, 19739311, 19739477, 19739647, 19739831, 19740013, 19740197, 19740361, 19740493, 19740667, 19740841, 19741013, 19741193, 19741367]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19738603 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19738603 19741367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19738603) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19741543, 19741723, 19741877, 19742059, 19742227, 19742377, 19742557, 19742741, 19742911, 19743079, 19743257, 19743439, 19743623, 19743803, 19743949, 19744133]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19741367 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19741367 19744133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19741367) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19744313, 19744471, 19744639, 19744807, 19744981, 19745153, 19745329, 19745513, 19745689, 19745867, 19746037, 19746217, 19746373, 19746541, 19746691, 19746869]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19744133 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19744133 19746869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19744133) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19747033, 19747207, 19747391, 19747573, 19747699, 19747883, 19748039, 19748221, 19748401, 19748563, 19748737, 19748899, 19749073, 19749251, 19749409, 19749593]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19746869 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19746869 19749593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19746869) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19662127 19667699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19664899) (hi := 19667699) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19667699 19673057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19667699)
    (mid := 19670369) (hi := 19673057) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19673057 19678531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19673057)
    (mid := 19675813) (hi := 19678531) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19678531 19684013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19678531)
    (mid := 19681253) (hi := 19684013) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19684013 19689517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19684013)
    (mid := 19686791) (hi := 19689517) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19689517 19694981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19689517)
    (mid := 19692221) (hi := 19694981) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19694981 19700363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19694981)
    (mid := 19697627) (hi := 19700363) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19700363 19705843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19700363)
    (mid := 19703191) (hi := 19705843) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19705843 19711361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19705843)
    (mid := 19708553) (hi := 19711361) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19711361 19716701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19711361)
    (mid := 19714061) (hi := 19716701) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19716701 19722119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19716701)
    (mid := 19719383) (hi := 19722119) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19722119 19727551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19722119)
    (mid := 19724839) (hi := 19727551) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19727551 19733017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19727551)
    (mid := 19730279) (hi := 19733017) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19733017 19738603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19733017)
    (mid := 19735811) (hi := 19738603) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19738603 19744133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19738603)
    (mid := 19741367) (hi := 19744133) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19744133 19749593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19744133)
    (mid := 19746869) (hi := 19749593) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19662127 19673057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19667699) (hi := 19673057) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19673057 19684013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19673057)
    (mid := 19678531) (hi := 19684013) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19684013 19694981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19684013)
    (mid := 19689517) (hi := 19694981) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19694981 19705843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19694981)
    (mid := 19700363) (hi := 19705843) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19705843 19716701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19705843)
    (mid := 19711361) (hi := 19716701) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19716701 19727551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19716701)
    (mid := 19722119) (hi := 19727551) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19727551 19738603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19727551)
    (mid := 19733017) (hi := 19738603) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19738603 19749593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19738603)
    (mid := 19744133) (hi := 19749593) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19662127 19684013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19673057) (hi := 19684013) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19684013 19705843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19684013)
    (mid := 19694981) (hi := 19705843) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19705843 19727551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19705843)
    (mid := 19716701) (hi := 19727551) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19727551 19749593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19727551)
    (mid := 19738603) (hi := 19749593) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19662127 19705843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19684013) (hi := 19705843) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19705843 19749593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19705843)
    (mid := 19727551) (hi := 19749593) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19662127 19749593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19705843) (hi := 19749593) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19662127 19749593 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block224

#print axioms B699MiddleExtension.PrimorialBlocks.Block224.joined
