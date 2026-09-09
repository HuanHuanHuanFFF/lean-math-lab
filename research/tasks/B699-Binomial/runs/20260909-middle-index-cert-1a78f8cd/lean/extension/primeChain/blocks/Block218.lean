import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block218

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19137919, 19138099, 19138271, 19138433, 19138589, 19138733, 19138897, 19139063, 19139221, 19139383, 19139531, 19139711, 19139893, 19140061, 19140241, 19140383]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19137751 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19137751 19140383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19137751) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19140553, 19140707, 19140887, 19141069, 19141231, 19141393, 19141571, 19141747, 19141921, 19142099, 19142269, 19142437, 19142603, 19142759, 19142933, 19143109]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19140383 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19140383 19143109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19140383) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19143287, 19143457, 19143637, 19143809, 19143983, 19144163, 19144339, 19144519, 19144693, 19144877, 19145041, 19145209, 19145393, 19145551, 19145701, 19145869]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19143109 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19143109 19145869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19143109) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19146047, 19146227, 19146401, 19146581, 19146761, 19146943, 19147127, 19147301, 19147483, 19147657, 19147837, 19148021, 19148197, 19148347, 19148531, 19148699]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19145869 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19145869 19148699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19145869) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19148879, 19149037, 19149211, 19149391, 19149569, 19149751, 19149931, 19150097, 19150277, 19150459, 19150639, 19150771, 19150951, 19151131, 19151303, 19151453]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19148699 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19148699 19151453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19148699) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19151599, 19151779, 19151963, 19152139, 19152317, 19152487, 19152667, 19152851, 19152983, 19153139, 19153301, 19153481, 19153663, 19153837, 19154021, 19154203]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19151453 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19151453 19154203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19151453) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19154383, 19154539, 19154719, 19154873, 19155047, 19155229, 19155397, 19155557, 19155739, 19155919, 19156087, 19156259, 19156429, 19156609, 19156793, 19156961]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19154203 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19154203 19156961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19154203) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19157141, 19157311, 19157471, 19157651, 19157821, 19157989, 19158169, 19158353, 19158511, 19158691, 19158863, 19159009, 19159157, 19159337, 19159513, 19159649]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19156961 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19156961 19159649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19156961) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19159793, 19159967, 19160147, 19160321, 19160473, 19160657, 19160837, 19160971, 19161133, 19161293, 19161451, 19161631, 19161809, 19161959, 19162063, 19162237]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19159649 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19159649 19162237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19159649) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19162421, 19162597, 19162771, 19162937, 19163101, 19163269, 19163453, 19163629, 19163813, 19163987, 19164163, 19164337, 19164511, 19164683, 19164857, 19165033]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19162237 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19162237 19165033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19162237) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19165217, 19165397, 19165577, 19165759, 19165903, 19166053, 19166219, 19166377, 19166561, 19166723, 19166893, 19167077, 19167251, 19167431, 19167601, 19167781]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19165033 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19165033 19167781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19165033) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19167943, 19168069, 19168249, 19168423, 19168577, 19168733, 19168883, 19169057, 19169239, 19169417, 19169599, 19169771, 19169947, 19170119, 19170301, 19170469]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19167781 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19167781 19170469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19167781) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19170637, 19170797, 19170967, 19171151, 19171307, 19171469, 19171619, 19171781, 19171961, 19172129, 19172299, 19172479, 19172611, 19172779, 19172947, 19173131]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19170469 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19170469 19173131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19170469) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19173277, 19173443, 19173613, 19173787, 19173967, 19174139, 19174321, 19174501, 19174627, 19174807, 19174979, 19175137, 19175297, 19175477, 19175627, 19175801]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19173131 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19173131 19175801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19173131) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19175969, 19176103, 19176277, 19176431, 19176601, 19176749, 19176931, 19177057, 19177237, 19177409, 19177591, 19177759, 19177943, 19178123, 19178293, 19178459]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19175801 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19175801 19178459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19175801) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19178641, 19178821, 19178993, 19179169, 19179331, 19179473, 19179649, 19179821, 19180003, 19180181, 19180363, 19180547, 19180727, 19180897, 19181081, 19181263]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19178459 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19178459 19181263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19178459) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19181447, 19181629, 19181803, 19181971, 19182113, 19182277, 19182433, 19182607, 19182781, 19182931, 19183093, 19183273, 19183453, 19183631, 19183811, 19183991]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19181263 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19181263 19183991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19181263) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19184171, 19184353, 19184533, 19184717, 19184899, 19185083, 19185251, 19185431, 19185613, 19185767, 19185941, 19186121, 19186291, 19186459, 19186627, 19186801]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19183991 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19183991 19186801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19183991) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19186957, 19187141, 19187323, 19187507, 19187687, 19187869, 19188031, 19188209, 19188373, 19188553, 19188649, 19188833, 19189013, 19189169, 19189349, 19189531]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19186801 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19186801 19189531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19186801) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19189699, 19189883, 19190029, 19190203, 19190359, 19190527, 19190701, 19190879, 19191061, 19191241, 19191401, 19191583, 19191761, 19191923, 19192091, 19192249]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19189531 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19189531 19192249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19189531) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19192427, 19192601, 19192783, 19192931, 19193089, 19193267, 19193443, 19193623, 19193807, 19193921, 19194103, 19194281, 19194463, 19194631, 19194803, 19194979]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19192249 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19192249 19194979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19192249) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19195139, 19195273, 19195457, 19195619, 19195793, 19195963, 19196129, 19196293, 19196473, 19196641, 19196819, 19196993, 19197169, 19197313, 19197481, 19197611]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19194979 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19194979 19197611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19194979) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19197793, 19197973, 19198147, 19198297, 19198451, 19198633, 19198801, 19198969, 19199149, 19199333, 19199513, 19199683, 19199867, 19200037, 19200221, 19200383]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19197611 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19197611 19200383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19197611) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19200557, 19200739, 19200869, 19201037, 19201213, 19201379, 19201561, 19201733, 19201907, 19202087, 19202257, 19202387, 19202569, 19202747, 19202851, 19203007]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19200383 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19200383 19203007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19200383) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19203179, 19203361, 19203533, 19203707, 19203883, 19204049, 19204223, 19204403, 19204579, 19204753, 19204909, 19205063, 19205243, 19205411, 19205591, 19205773]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19203007 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19203007 19205773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19203007) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19205947, 19206119, 19206263, 19206437, 19206601, 19206773, 19206931, 19207109, 19207291, 19207469, 19207633, 19207813, 19207987, 19208171, 19208341, 19208503]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19205773 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19205773 19208503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19205773) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19208687, 19208863, 19209037, 19209193, 19209341, 19209499, 19209683, 19209859, 19210043, 19210211, 19210393, 19210571, 19210747, 19210927, 19211107, 19211287]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19208503 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19208503 19211287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19208503) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19211471, 19211653, 19211837, 19212019, 19212203, 19212379, 19212551, 19212727, 19212911, 19213093, 19213267, 19213429, 19213589, 19213759, 19213913, 19214093]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19211287 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19211287 19214093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19211287) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19214243, 19214413, 19214597, 19214771, 19214927, 19215089, 19215271, 19215451, 19215613, 19215761, 19215941, 19216111, 19216271, 19216453, 19216633, 19216781]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19214093 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19214093 19216781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19214093) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19216963, 19217129, 19217311, 19217483, 19217663, 19217833, 19218013, 19218181, 19218359, 19218541, 19218697, 19218877, 19219033, 19219217, 19219363, 19219531]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19216781 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19216781 19219531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19216781) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19219709, 19219891, 19220059, 19220239, 19220413, 19220573, 19220749, 19220921, 19221089, 19221269, 19221451, 19221623, 19221803, 19221971, 19222123, 19222303]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19219531 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19219531 19222303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19219531) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19222429, 19222603, 19222771, 19222921, 19223081, 19223261, 19223443, 19223597, 19223779, 19223947, 19224103, 19224287, 19224463, 19224629, 19224791, 19224967]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19222303 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19222303 19224967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19222303) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19137751 19143109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19140383) (hi := 19143109) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19143109 19148699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19143109)
    (mid := 19145869) (hi := 19148699) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19148699 19154203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19148699)
    (mid := 19151453) (hi := 19154203) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19154203 19159649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19154203)
    (mid := 19156961) (hi := 19159649) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19159649 19165033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19159649)
    (mid := 19162237) (hi := 19165033) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19165033 19170469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19165033)
    (mid := 19167781) (hi := 19170469) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19170469 19175801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19170469)
    (mid := 19173131) (hi := 19175801) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19175801 19181263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19175801)
    (mid := 19178459) (hi := 19181263) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19181263 19186801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19181263)
    (mid := 19183991) (hi := 19186801) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19186801 19192249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19186801)
    (mid := 19189531) (hi := 19192249) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19192249 19197611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19192249)
    (mid := 19194979) (hi := 19197611) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19197611 19203007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19197611)
    (mid := 19200383) (hi := 19203007) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19203007 19208503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19203007)
    (mid := 19205773) (hi := 19208503) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19208503 19214093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19208503)
    (mid := 19211287) (hi := 19214093) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19214093 19219531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19214093)
    (mid := 19216781) (hi := 19219531) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19219531 19224967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19219531)
    (mid := 19222303) (hi := 19224967) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19137751 19148699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19143109) (hi := 19148699) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19148699 19159649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19148699)
    (mid := 19154203) (hi := 19159649) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19159649 19170469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19159649)
    (mid := 19165033) (hi := 19170469) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19170469 19181263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19170469)
    (mid := 19175801) (hi := 19181263) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19181263 19192249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19181263)
    (mid := 19186801) (hi := 19192249) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19192249 19203007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19192249)
    (mid := 19197611) (hi := 19203007) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19203007 19214093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19203007)
    (mid := 19208503) (hi := 19214093) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19214093 19224967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19214093)
    (mid := 19219531) (hi := 19224967) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19137751 19159649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19148699) (hi := 19159649) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19159649 19181263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19159649)
    (mid := 19170469) (hi := 19181263) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19181263 19203007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19181263)
    (mid := 19192249) (hi := 19203007) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19203007 19224967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19203007)
    (mid := 19214093) (hi := 19224967) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19137751 19181263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19159649) (hi := 19181263) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19181263 19224967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19181263)
    (mid := 19203007) (hi := 19224967) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19137751 19224967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19181263) (hi := 19224967) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19137751 19224967 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block218

#print axioms B699MiddleExtension.PrimorialBlocks.Block218.joined
