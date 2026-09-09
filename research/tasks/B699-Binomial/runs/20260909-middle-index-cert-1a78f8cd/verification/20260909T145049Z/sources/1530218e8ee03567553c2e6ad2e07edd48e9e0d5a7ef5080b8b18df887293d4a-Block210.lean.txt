import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block210

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18440011, 18440179, 18440363, 18440537, 18440707, 18440867, 18441029, 18441169, 18441341, 18441517, 18441697, 18441881, 18442013, 18442187, 18442367, 18442547]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18439831 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18439831 18442547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18439831) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18442717, 18442891, 18443063, 18443239, 18443423, 18443597, 18443773, 18443951, 18444121, 18444289, 18444469, 18444623, 18444791, 18444967, 18445139, 18445319]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18442547 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18442547 18445319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18442547) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18445501, 18445681, 18445853, 18446027, 18446203, 18446371, 18446537, 18446711, 18446893, 18447061, 18447239, 18447421, 18447599, 18447773, 18447929, 18448109]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18445319 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18445319 18448109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18445319) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18448279, 18448453, 18448637, 18448799, 18448973, 18449147, 18449311, 18449491, 18449663, 18449839, 18450011, 18450193, 18450373, 18450547, 18450727, 18450907]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18448109 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18448109 18450907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18448109) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18451091, 18451259, 18451441, 18451597, 18451757, 18451933, 18452113, 18452243, 18452411, 18452587, 18452771, 18452947, 18453103, 18453287, 18453467, 18453637]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18450907 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18450907 18453637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18450907) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18453793, 18453949, 18454087, 18454253, 18454427, 18454609, 18454781, 18454963, 18455093, 18455263, 18455431, 18455609, 18455791, 18455971, 18456121, 18456299]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18453637 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18453637 18456299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18453637) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18456469, 18456631, 18456799, 18456973, 18457157, 18457331, 18457499, 18457651, 18457823, 18457991, 18458149, 18458317, 18458497, 18458669, 18458851, 18459031]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18456299 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18456299 18459031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18456299) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18459209, 18459373, 18459541, 18459719, 18459839, 18459997, 18460157, 18460319, 18460499, 18460667, 18460829, 18461011, 18461171, 18461353, 18461519, 18461701]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18459031 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18459031 18461701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18459031) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18461879, 18462061, 18462229, 18462413, 18462571, 18462727, 18462907, 18463091, 18463253, 18463429, 18463603, 18463747, 18463919, 18464093, 18464267, 18464417]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18461701 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18461701 18464417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18461701) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18464573, 18464717, 18464893, 18465061, 18465233, 18465413, 18465589, 18465773, 18465947, 18466109, 18466291, 18466457, 18466633, 18466801, 18466969, 18467153]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18464417 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18464417 18467153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18464417) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18467327, 18467473, 18467629, 18467789, 18467963, 18468127, 18468311, 18468487, 18468631, 18468811, 18468971, 18469151, 18469309, 18469471, 18469613, 18469777]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18467153 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18467153 18469777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18467153) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18469933, 18470113, 18470267, 18470423, 18470597, 18470759, 18470939, 18471119, 18471281, 18471457, 18471641, 18471821, 18471953, 18472109, 18472291, 18472471]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18469777 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18469777 18472471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18469777) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18472639, 18472823, 18473003, 18473183, 18473341, 18473513, 18473671, 18473813, 18473971, 18474143, 18474311, 18474487, 18474671, 18474823, 18474991, 18475169]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18472471 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18472471 18475169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18472471) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18475339, 18475519, 18475663, 18475837, 18476009, 18476179, 18476347, 18476503, 18476681, 18476831, 18477007, 18477187, 18477359, 18477539, 18477707, 18477887]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18475169 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18475169 18477887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18475169) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18478069, 18478237, 18478409, 18478589, 18478769, 18478951, 18479117, 18479297, 18479477, 18479653, 18479831, 18480001, 18480181, 18480361, 18480503, 18480647]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18477887 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18477887 18480647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18477887) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18480829, 18481009, 18481189, 18481369, 18481553, 18481721, 18481901, 18482071, 18482239, 18482371, 18482549, 18482729, 18482911, 18483083, 18483263, 18483419]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18480647 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18480647 18483419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18480647) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18483601, 18483779, 18483943, 18484099, 18484273, 18484447, 18484621, 18484783, 18484951, 18485111, 18485293, 18485473, 18485653, 18485837, 18486011, 18486161]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18483419 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18483419 18486161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18483419) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18486331, 18486499, 18486679, 18486863, 18487039, 18487223, 18487397, 18487559, 18487727, 18487879, 18488033, 18488213, 18488381, 18488557, 18488713, 18488887]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18486161 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18486161 18488887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18486161) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18489059, 18489241, 18489409, 18489571, 18489743, 18489917, 18490099, 18490279, 18490447, 18490627, 18490807, 18490987, 18491147, 18491323, 18491507, 18491687]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18488887 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18488887 18491687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18488887) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18491857, 18492041, 18492223, 18492407, 18492581, 18492751, 18492913, 18493073, 18493253, 18493421, 18493589, 18493759, 18493927, 18494057, 18494233, 18494401]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18491687 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18491687 18494401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18491687) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18494579, 18494743, 18494909, 18495091, 18495263, 18495431, 18495613, 18495787, 18495947, 18496129, 18496307, 18496487, 18496649, 18496831, 18496999, 18497177]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18494401 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18494401 18497177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18494401) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18497321, 18497491, 18497663, 18497833, 18498017, 18498199, 18498373, 18498539, 18498713, 18498863, 18499031, 18499207, 18499379, 18499561, 18499739, 18499919]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18497177 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18497177 18499919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18497177) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18500089, 18500249, 18500431, 18500611, 18500771, 18500941, 18501121, 18501289, 18501467, 18501647, 18501817, 18501937, 18502079, 18502243, 18502417, 18502597]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18499919 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18499919 18502597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18499919) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18502747, 18502901, 18503059, 18503227, 18503399, 18503581, 18503761, 18503911, 18504077, 18504223, 18504391, 18504569, 18504713, 18504883, 18505057, 18505229]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18502597 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18502597 18505229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18502597) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18505397, 18505579, 18505759, 18505939, 18506087, 18506269, 18506447, 18506617, 18506791, 18506953, 18507131, 18507301, 18507473, 18507647, 18507821, 18508001]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18505229 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18505229 18508001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18505229) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18508181, 18508363, 18508541, 18508703, 18508871, 18509053, 18509207, 18509389, 18509551, 18509717, 18509899, 18510077, 18510259, 18510421, 18510587, 18510749]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18508001 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18508001 18510749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18508001) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18510917, 18511099, 18511271, 18511411, 18511553, 18511723, 18511907, 18512069, 18512243, 18512419, 18512597, 18512749, 18512891, 18513043, 18513217, 18513371]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18510749 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18510749 18513371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18510749) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18513511, 18513659, 18513841, 18514009, 18514163, 18514339, 18514511, 18514687, 18514841, 18515011, 18515171, 18515323, 18515507, 18515681, 18515863, 18516041]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18513371 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18513371 18516041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18513371) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18516193, 18516373, 18516551, 18516713, 18516881, 18517061, 18517211, 18517379, 18517559, 18517721, 18517883, 18518057, 18518239, 18518417, 18518573, 18518723]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18516041 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18516041 18518723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18516041) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18518881, 18519049, 18519233, 18519407, 18519583, 18519763, 18519937, 18520111, 18520291, 18520441, 18520613, 18520793, 18520969, 18521137, 18521317, 18521479]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18518723 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18518723 18521479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18518723) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18521621, 18521801, 18521957, 18522139, 18522313, 18522487, 18522661, 18522839, 18523009, 18523189, 18523369, 18523543, 18523697, 18523877, 18524059, 18524239]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18521479 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18521479 18524239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18521479) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18524423, 18524603, 18524777, 18524941, 18525119, 18525293, 18525449, 18525623, 18525803, 18525961, 18526139, 18526297, 18526457, 18526619, 18526777, 18526961]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18524239 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18524239 18526961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18524239) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18439831 18445319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18442547) (hi := 18445319) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18445319 18450907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18445319)
    (mid := 18448109) (hi := 18450907) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18450907 18456299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18450907)
    (mid := 18453637) (hi := 18456299) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18456299 18461701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18456299)
    (mid := 18459031) (hi := 18461701) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18461701 18467153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18461701)
    (mid := 18464417) (hi := 18467153) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18467153 18472471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18467153)
    (mid := 18469777) (hi := 18472471) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18472471 18477887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18472471)
    (mid := 18475169) (hi := 18477887) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18477887 18483419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18477887)
    (mid := 18480647) (hi := 18483419) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18483419 18488887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18483419)
    (mid := 18486161) (hi := 18488887) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18488887 18494401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18488887)
    (mid := 18491687) (hi := 18494401) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18494401 18499919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18494401)
    (mid := 18497177) (hi := 18499919) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18499919 18505229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18499919)
    (mid := 18502597) (hi := 18505229) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18505229 18510749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18505229)
    (mid := 18508001) (hi := 18510749) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18510749 18516041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18510749)
    (mid := 18513371) (hi := 18516041) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18516041 18521479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18516041)
    (mid := 18518723) (hi := 18521479) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18521479 18526961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18521479)
    (mid := 18524239) (hi := 18526961) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18439831 18450907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18445319) (hi := 18450907) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18450907 18461701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18450907)
    (mid := 18456299) (hi := 18461701) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18461701 18472471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18461701)
    (mid := 18467153) (hi := 18472471) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18472471 18483419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18472471)
    (mid := 18477887) (hi := 18483419) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18483419 18494401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18483419)
    (mid := 18488887) (hi := 18494401) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18494401 18505229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18494401)
    (mid := 18499919) (hi := 18505229) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18505229 18516041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18505229)
    (mid := 18510749) (hi := 18516041) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18516041 18526961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18516041)
    (mid := 18521479) (hi := 18526961) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18439831 18461701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18450907) (hi := 18461701) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18461701 18483419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18461701)
    (mid := 18472471) (hi := 18483419) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18483419 18505229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18483419)
    (mid := 18494401) (hi := 18505229) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18505229 18526961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18505229)
    (mid := 18516041) (hi := 18526961) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18439831 18483419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18461701) (hi := 18483419) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18483419 18526961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18483419)
    (mid := 18505229) (hi := 18526961) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18439831 18526961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18483419) (hi := 18526961) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18439831 18526961 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block210

#print axioms B699MiddleExtension.PrimorialBlocks.Block210.joined
