import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block192

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16867457, 16867637, 16867793, 16867969, 16868129, 16868311, 16868491, 16868669, 16868851, 16868993, 16869161, 16869319, 16869499, 16869679, 16869857, 16870037]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16867283 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16867283 16870037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16867283) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16870219, 16870379, 16870559, 16870741, 16870901, 16871083, 16871263, 16871447, 16871629, 16871809, 16871993, 16872161, 16872343, 16872523, 16872697, 16872847]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16870037 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16870037 16872847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16870037) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16873019, 16873189, 16873361, 16873543, 16873723, 16873907, 16874069, 16874237, 16874381, 16874537, 16874719, 16874887, 16875029, 16875167, 16875349, 16875527]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16872847 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16872847 16875527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16872847) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16875689, 16875869, 16876049, 16876229, 16876397, 16876571, 16876751, 16876919, 16877083, 16877227, 16877407, 16877591, 16877771, 16877951, 16878119, 16878293]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16875527 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16875527 16878293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16875527) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16878473, 16878649, 16878809, 16878971, 16879123, 16879301, 16879477, 16879613, 16879787, 16879969, 16880153, 16880333, 16880491, 16880629, 16880803, 16880959]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16878293 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16878293 16880959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16878293) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16881097, 16881281, 16881461, 16881643, 16881827, 16882007, 16882181, 16882361, 16882493, 16882651, 16882813, 16882993, 16883177, 16883353, 16883527, 16883707]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16880959 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16880959 16883707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16880959) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16883869, 16884053, 16884229, 16884403, 16884563, 16884727, 16884911, 16885093, 16885261, 16885441, 16885621, 16885789, 16885963, 16886123, 16886299, 16886431]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16883707 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16883707 16886431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16883707) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16886609, 16886791, 16886951, 16887131, 16887287, 16887469, 16887649, 16887833, 16888007, 16888171, 16888349, 16888523, 16888681, 16888847, 16889023, 16889189]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16886431 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16886431 16889189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16886431) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16889371, 16889527, 16889711, 16889893, 16890053, 16890233, 16890413, 16890581, 16890737, 16890917, 16891097, 16891267, 16891439, 16891619, 16891799, 16891961]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16889189 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16889189 16891961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16889189) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16892137, 16892321, 16892503, 16892677, 16892803, 16892983, 16893143, 16893319, 16893493, 16893677, 16893857, 16894027, 16894201, 16894373, 16894543, 16894727]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16891961 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16891961 16894727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16891961) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16894879, 16895003, 16895183, 16895309, 16895479, 16895663, 16895839, 16895999, 16896167, 16896343, 16896499, 16896683, 16896863, 16897037, 16897211, 16897381]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16894727 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16894727 16897381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16894727) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16897553, 16897703, 16897861, 16898029, 16898207, 16898383, 16898533, 16898711, 16898879, 16899041, 16899221, 16899397, 16899577, 16899761, 16899889, 16900067]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16897381 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16897381 16900067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16897381) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16900249, 16900427, 16900603, 16900787, 16900969, 16901147, 16901323, 16901501, 16901683, 16901837, 16901981, 16902133, 16902317, 16902491, 16902671, 16902841]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16900067 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16900067 16902841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16900067) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16903013, 16903189, 16903349, 16903529, 16903703, 16903877, 16904059, 16904221, 16904359, 16904539, 16904711, 16904879, 16905061, 16905233, 16905403, 16905563]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16902841 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16902841 16905563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16902841) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16905737, 16905913, 16906093, 16906261, 16906427, 16906609, 16906781, 16906961, 16907123, 16907287, 16907467, 16907633, 16907789, 16907959, 16908139, 16908323]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16905563 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16905563 16908323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16905563) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16908497, 16908679, 16908833, 16908977, 16909133, 16909313, 16909493, 16909667, 16909847, 16910027, 16910207, 16910389, 16910557, 16910731, 16910909, 16911067]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16908323 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16908323 16911067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16908323) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16911227, 16911409, 16911593, 16911773, 16911953, 16912123, 16912303, 16912439, 16912619, 16912801, 16912967, 16913131, 16913311, 16913489, 16913669, 16913851]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16911067 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16911067 16913851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16911067) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16913977, 16914151, 16914323, 16914479, 16914647, 16914823, 16914977, 16915147, 16915319, 16915501, 16915673, 16915837, 16916021, 16916203, 16916387, 16916561]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16913851 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16913851 16916561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16913851) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16916743, 16916927, 16917107, 16917287, 16917451, 16917631, 16917799, 16917983, 16918141, 16918301, 16918481, 16918619, 16918799, 16918981, 16919159, 16919327]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16916561 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16916561 16919327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16916561) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16919503, 16919687, 16919863, 16920041, 16920221, 16920403, 16920587, 16920751, 16920901, 16921067, 16921187, 16921369, 16921549, 16921733, 16921907, 16922083]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16919327 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16919327 16922083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16919327) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16922267, 16922447, 16922603, 16922777, 16922959, 16923139, 16923323, 16923481, 16923659, 16923821, 16924001, 16924169, 16924339, 16924519, 16924697, 16924879]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16922083 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16922083 16924879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16922083) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16925053, 16925221, 16925399, 16925569, 16925747, 16925929, 16926113, 16926289, 16926467, 16926601, 16926779, 16926913, 16927091, 16927259, 16927441, 16927579]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16924879 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16924879 16927579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16924879) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16927753, 16927919, 16928059, 16928239, 16928419, 16928591, 16928767, 16928939, 16929109, 16929293, 16929443, 16929623, 16929799, 16929971, 16930141, 16930307]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16927579 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16927579 16930307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16927579) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16930471, 16930651, 16930807, 16930943, 16931113, 16931279, 16931443, 16931597, 16931777, 16931947, 16932127, 16932283, 16932457, 16932593, 16932767, 16932931]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16930307 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16930307 16932931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16930307) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16933073, 16933249, 16933421, 16933603, 16933757, 16933919, 16934101, 16934257, 16934441, 16934611, 16934791, 16934963, 16935131, 16935313, 16935473, 16935647]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16932931 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16932931 16935647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16932931) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16935823, 16936001, 16936169, 16936331, 16936499, 16936669, 16936853, 16937033, 16937209, 16937381, 16937549, 16937707, 16937891, 16938067, 16938211, 16938379]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16935647 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16935647 16938379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16935647) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16938553, 16938707, 16938881, 16939061, 16939243, 16939427, 16939591, 16939771, 16939933, 16940113, 16940293, 16940471, 16940639, 16940773, 16940947, 16941109]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16938379 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16938379 16941109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16938379) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16941277, 16941443, 16941619, 16941763, 16941943, 16942127, 16942309, 16942483, 16942637, 16942819, 16942997, 16943167, 16943347, 16943513, 16943681, 16943851]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16941109 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16941109 16943851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16941109) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16944001, 16944133, 16944311, 16944493, 16944667, 16944847, 16945021, 16945163, 16945343, 16945517, 16945699, 16945847, 16946023, 16946203, 16946387, 16946549]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16943851 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16943851 16946549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16943851) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16946711, 16946893, 16947071, 16947241, 16947377, 16947559, 16947737, 16947911, 16948081, 16948259, 16948433, 16948597, 16948781, 16948937, 16949111, 16949279]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16946549 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16946549 16949279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16946549) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16949447, 16949627, 16949809, 16949993, 16950137, 16950293, 16950467, 16950631, 16950811, 16950979, 16951157, 16951313, 16951489, 16951673, 16951853, 16952029]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16949279 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16949279 16952029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16949279) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16952207, 16952387, 16952569, 16952713, 16952891, 16953043, 16953221, 16953397, 16953581, 16953763, 16953929, 16954097, 16954229, 16954397, 16954577, 16954759]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16952029 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16952029 16954759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16952029) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16867283 16872847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16870037) (hi := 16872847) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16872847 16878293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16872847)
    (mid := 16875527) (hi := 16878293) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16878293 16883707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16878293)
    (mid := 16880959) (hi := 16883707) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16883707 16889189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16883707)
    (mid := 16886431) (hi := 16889189) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16889189 16894727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16889189)
    (mid := 16891961) (hi := 16894727) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16894727 16900067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16894727)
    (mid := 16897381) (hi := 16900067) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16900067 16905563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16900067)
    (mid := 16902841) (hi := 16905563) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16905563 16911067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16905563)
    (mid := 16908323) (hi := 16911067) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16911067 16916561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16911067)
    (mid := 16913851) (hi := 16916561) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16916561 16922083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16916561)
    (mid := 16919327) (hi := 16922083) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16922083 16927579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16922083)
    (mid := 16924879) (hi := 16927579) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16927579 16932931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16927579)
    (mid := 16930307) (hi := 16932931) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16932931 16938379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16932931)
    (mid := 16935647) (hi := 16938379) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16938379 16943851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16938379)
    (mid := 16941109) (hi := 16943851) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16943851 16949279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16943851)
    (mid := 16946549) (hi := 16949279) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16949279 16954759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16949279)
    (mid := 16952029) (hi := 16954759) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16867283 16878293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16872847) (hi := 16878293) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16878293 16889189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16878293)
    (mid := 16883707) (hi := 16889189) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16889189 16900067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16889189)
    (mid := 16894727) (hi := 16900067) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16900067 16911067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16900067)
    (mid := 16905563) (hi := 16911067) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16911067 16922083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16911067)
    (mid := 16916561) (hi := 16922083) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16922083 16932931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16922083)
    (mid := 16927579) (hi := 16932931) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16932931 16943851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16932931)
    (mid := 16938379) (hi := 16943851) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16943851 16954759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16943851)
    (mid := 16949279) (hi := 16954759) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16867283 16889189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16878293) (hi := 16889189) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16889189 16911067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16889189)
    (mid := 16900067) (hi := 16911067) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16911067 16932931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16911067)
    (mid := 16922083) (hi := 16932931) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16932931 16954759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16932931)
    (mid := 16943851) (hi := 16954759) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16867283 16911067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16889189) (hi := 16911067) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16911067 16954759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16911067)
    (mid := 16932931) (hi := 16954759) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16867283 16954759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16911067) (hi := 16954759) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16867283 16954759 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block192

#print axioms B699MiddleExtension.PrimorialBlocks.Block192.joined
