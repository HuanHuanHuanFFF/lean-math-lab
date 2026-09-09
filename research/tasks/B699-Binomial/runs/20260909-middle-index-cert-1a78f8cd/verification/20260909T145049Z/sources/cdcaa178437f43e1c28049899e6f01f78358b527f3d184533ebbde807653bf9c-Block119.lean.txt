import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block119

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10481381, 10481563, 10481743, 10481921, 10482097, 10482229, 10482403, 10482587, 10482767, 10482947, 10483097, 10483279, 10483463, 10483639, 10483807, 10483981]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10481221 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10481221 10483981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10481221) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10484161, 10484317, 10484501, 10484651, 10484821, 10484989, 10485151, 10485331, 10485499, 10485667, 10485817, 10486001, 10486181, 10486363, 10486547, 10486717]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10483981 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10483981 10486717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10483981) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10486891, 10487053, 10487233, 10487387, 10487567, 10487749, 10487933, 10488109, 10488293, 10488469, 10488641, 10488809, 10488967, 10489123, 10489307, 10489487]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10486717 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10486717 10489487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10486717) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10489667, 10489837, 10490009, 10490189, 10490371, 10490551, 10490723, 10490891, 10491067, 10491251, 10491421, 10491571, 10491739, 10491917, 10492091, 10492253]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10489487 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10489487 10492253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10489487) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10492429, 10492607, 10492771, 10492931, 10493081, 10493261, 10493423, 10493569, 10493753, 10493927, 10494109, 10494293, 10494443, 10494619, 10494787, 10494971]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10492253 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10492253 10494971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10492253) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10495141, 10495321, 10495493, 10495649, 10495813, 10495997, 10496179, 10496363, 10496537, 10496713, 10496897, 10497079, 10497257, 10497433, 10497611, 10497749]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10494971 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10494971 10497749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10494971) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10497931, 10498079, 10498247, 10498409, 10498591, 10498711, 10498889, 10499033, 10499171, 10499351, 10499521, 10499683, 10499857, 10500037, 10500187, 10500367]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10497749 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10497749 10500367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10497749) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10500547, 10500703, 10500851, 10501027, 10501201, 10501373, 10501553, 10501723, 10501891, 10502071, 10502251, 10502419, 10502603, 10502771, 10502951, 10503089]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10500367 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10500367 10503089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10500367) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10503221, 10503397, 10503553, 10503721, 10503877, 10504057, 10504217, 10504391, 10504573, 10504751, 10504933, 10505113, 10505291, 10505449, 10505623, 10505797]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10503089 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10503089 10505797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10503089) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10505981, 10506079, 10506263, 10506421, 10506599, 10506767, 10506949, 10507103, 10507271, 10507451, 10507633, 10507813, 10507993, 10508161, 10508339, 10508521]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10505797 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10505797 10508521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10505797) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10508699, 10508863, 10509029, 10509203, 10509371, 10509539, 10509703, 10509871, 10510043, 10510177, 10510307, 10510463, 10510639, 10510817, 10510999, 10511183]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10508521 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10508521 10511183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10508521) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10511363, 10511521, 10511681, 10511863, 10512043, 10512221, 10512401, 10512581, 10512743, 10512917, 10513079, 10513219, 10513379, 10513561, 10513739, 10513903]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10511183 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10511183 10513903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10511183) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10514083, 10514261, 10514437, 10514593, 10514743, 10514927, 10515101, 10515277, 10515457, 10515641, 10515821, 10516003, 10516171, 10516343, 10516501, 10516669]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10513903 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10513903 10516669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10513903) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10516841, 10517011, 10517173, 10517347, 10517527, 10517699, 10517873, 10518043, 10518217, 10518401, 10518581, 10518757, 10518931, 10519111, 10519273, 10519429]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10516669 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10516669 10519429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10516669) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10519609, 10519771, 10519933, 10520117, 10520291, 10520449, 10520599, 10520777, 10520953, 10521107, 10521289, 10521451, 10521629, 10521779, 10521947, 10522123]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10519429 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10519429 10522123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10519429) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10522307, 10522489, 10522669, 10522843, 10523021, 10523197, 10523377, 10523533, 10523713, 10523881, 10524053, 10524211, 10524389, 10524541, 10524697, 10524863]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10522123 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10522123 10524863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10522123) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10525043, 10525199, 10525357, 10525517, 10525663, 10525831, 10525997, 10526161, 10526317, 10526501, 10526657, 10526837, 10527017, 10527149, 10527281, 10527431]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10524863 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10524863 10527431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10524863) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10527613, 10527793, 10527971, 10528123, 10528307, 10528471, 10528649, 10528811, 10528961, 10529143, 10529303, 10529479, 10529657, 10529839, 10530019, 10530197]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10527431 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10527431 10530197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10527431) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10530367, 10530551, 10530721, 10530899, 10531069, 10531249, 10531429, 10531583, 10531751, 10531933, 10532113, 10532293, 10532453, 10532633, 10532803, 10532981]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10530197 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10530197 10532981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10530197) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10533157, 10533337, 10533487, 10533661, 10533833, 10534003, 10534177, 10534361, 10534507, 10534661, 10534837, 10535011, 10535183, 10535351, 10535509, 10535687]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10532981 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10532981 10535687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10532981) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10535867, 10536041, 10536223, 10536403, 10536587, 10536739, 10536919, 10537103, 10537273, 10537441, 10537601, 10537777, 10537957, 10538131, 10538291, 10538471]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10535687 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10535687 10538471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10535687) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10538617, 10538779, 10538959, 10539143, 10539323, 10539493, 10539671, 10539833, 10540001, 10540169, 10540337, 10540513, 10540669, 10540843, 10541021, 10541203]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10538471 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10538471 10541203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10538471) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10541359, 10541543, 10541723, 10541897, 10542067, 10542229, 10542407, 10542583, 10542761, 10542937, 10543121, 10543259, 10543433, 10543583, 10543763, 10543943]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10541203 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10541203 10543943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10541203) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10544119, 10544293, 10544477, 10544647, 10544813, 10544969, 10545137, 10545313, 10545467, 10545643, 10545827, 10546009, 10546187, 10546363, 10546531, 10546709]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10543943 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10543943 10546709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10543943) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10546867, 10547029, 10547177, 10547359, 10547539, 10547711, 10547879, 10548061, 10548233, 10548397, 10548563, 10548701, 10548883, 10549043, 10549219, 10549397]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10546709 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10546709 10549397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10546709) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10549531, 10549711, 10549871, 10550027, 10550207, 10550389, 10550563, 10550747, 10550929, 10551071, 10551241, 10551421, 10551589, 10551769, 10551953, 10552133]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10549397 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10549397 10552133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10549397) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10552271, 10552417, 10552579, 10552757, 10552933, 10553111, 10553281, 10553461, 10553633, 10553813, 10553993, 10554157, 10554319, 10554491, 10554629, 10554809]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10552133 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10552133 10554809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10552133) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10554989, 10555169, 10555343, 10555483, 10555627, 10555771, 10555949, 10556129, 10556309, 10556489, 10556669, 10556851, 10557031, 10557193, 10557373, 10557557]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10554809 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10554809 10557557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10554809) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10557737, 10557893, 10558069, 10558231, 10558397, 10558577, 10558747, 10558931, 10559113, 10559293, 10559477, 10559657, 10559833, 10559993, 10560169, 10560353]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10557557 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10557557 10560353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10557557) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10560527, 10560707, 10560889, 10561043, 10561219, 10561387, 10561571, 10561753, 10561937, 10562107, 10562281, 10562459, 10562623, 10562807, 10562983, 10563151]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10560353 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10560353 10563151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10560353) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10563323, 10563491, 10563671, 10563827, 10563997, 10564181, 10564357, 10564537, 10564693, 10564877, 10565053, 10565231, 10565411, 10565587, 10565771, 10565909]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10563151 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10563151 10565909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10563151) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10566079, 10566263, 10566427, 10566607, 10566779, 10566953, 10567111, 10567279, 10567429, 10567597, 10567763, 10567939, 10568087, 10568269, 10568449, 10568609]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10565909 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10565909 10568609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10565909) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10481221 10486717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10481221)
    (mid := 10483981) (hi := 10486717) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10486717 10492253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10486717)
    (mid := 10489487) (hi := 10492253) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10492253 10497749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10492253)
    (mid := 10494971) (hi := 10497749) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10497749 10503089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10497749)
    (mid := 10500367) (hi := 10503089) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10503089 10508521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10503089)
    (mid := 10505797) (hi := 10508521) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10508521 10513903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10508521)
    (mid := 10511183) (hi := 10513903) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10513903 10519429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10513903)
    (mid := 10516669) (hi := 10519429) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10519429 10524863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10519429)
    (mid := 10522123) (hi := 10524863) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10524863 10530197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10524863)
    (mid := 10527431) (hi := 10530197) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10530197 10535687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10530197)
    (mid := 10532981) (hi := 10535687) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10535687 10541203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10535687)
    (mid := 10538471) (hi := 10541203) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10541203 10546709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10541203)
    (mid := 10543943) (hi := 10546709) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10546709 10552133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10546709)
    (mid := 10549397) (hi := 10552133) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10552133 10557557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10552133)
    (mid := 10554809) (hi := 10557557) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10557557 10563151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10557557)
    (mid := 10560353) (hi := 10563151) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10563151 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10563151)
    (mid := 10565909) (hi := 10568609) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10481221 10492253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10481221)
    (mid := 10486717) (hi := 10492253) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10492253 10503089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10492253)
    (mid := 10497749) (hi := 10503089) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10503089 10513903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10503089)
    (mid := 10508521) (hi := 10513903) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10513903 10524863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10513903)
    (mid := 10519429) (hi := 10524863) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10524863 10535687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10524863)
    (mid := 10530197) (hi := 10535687) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10535687 10546709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10535687)
    (mid := 10541203) (hi := 10546709) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10546709 10557557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10546709)
    (mid := 10552133) (hi := 10557557) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10557557 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10557557)
    (mid := 10563151) (hi := 10568609) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10481221 10503089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10481221)
    (mid := 10492253) (hi := 10503089) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10503089 10524863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10503089)
    (mid := 10513903) (hi := 10524863) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10524863 10546709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10524863)
    (mid := 10535687) (hi := 10546709) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10546709 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10546709)
    (mid := 10557557) (hi := 10568609) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10481221 10524863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10481221)
    (mid := 10503089) (hi := 10524863) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10524863 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10524863)
    (mid := 10546709) (hi := 10568609) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10481221 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10481221)
    (mid := 10524863) (hi := 10568609) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10481221 10568609 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block119

#print axioms B699MiddleExtension.PrimorialBlocks.Block119.joined
