import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block227

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19924763, 19924921, 19925093, 19925261, 19925443, 19925627, 19925783, 19925953, 19926113, 19926293, 19926469, 19926619, 19926793, 19926967, 19927151, 19927331]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19924579 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19924579 19927331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19924579) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19927507, 19927679, 19927819, 19927997, 19928177, 19928353, 19928521, 19928693, 19928863, 19929037, 19929209, 19929391, 19929571, 19929743, 19929901, 19930081]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19927331 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19927331 19930081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19927331) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19930249, 19930433, 19930609, 19930787, 19930921, 19931101, 19931273, 19931447, 19931623, 19931801, 19931953, 19932131, 19932271, 19932443, 19932623, 19932799]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19930081 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19930081 19932799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19930081) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19932977, 19933159, 19933283, 19933457, 19933633, 19933789, 19933973, 19934143, 19934303, 19934483, 19934641, 19934821, 19935001, 19935133, 19935301, 19935469]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19932799 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19932799 19935469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19932799) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19935623, 19935803, 19935983, 19936157, 19936337, 19936487, 19936661, 19936843, 19937017, 19937173, 19937341, 19937507, 19937663, 19937843, 19938001, 19938181]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19935469 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19935469 19938181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19935469) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19938361, 19938533, 19938707, 19938883, 19939067, 19939237, 19939397, 19939553, 19939729, 19939901, 19940059, 19940237, 19940419, 19940593, 19940749, 19940933]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19938181 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19938181 19940933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19938181) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19941071, 19941247, 19941419, 19941601, 19941767, 19941931, 19942099, 19942283, 19942463, 19942621, 19942789, 19942969, 19943117, 19943299, 19943479, 19943659]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19940933 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19940933 19943659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19940933) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19943843, 19944007, 19944187, 19944371, 19944541, 19944719, 19944877, 19945039, 19945207, 19945381, 19945537, 19945711, 19945889, 19946063, 19946233, 19946417]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19943659 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19943659 19946417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19943659) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19946581, 19946761, 19946923, 19947101, 19947269, 19947439, 19947623, 19947797, 19947979, 19948141, 19948321, 19948501, 19948679, 19948849, 19949029, 19949207]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19946417 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19946417 19949207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19946417) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19949387, 19949561, 19949737, 19949921, 19950089, 19950239, 19950421, 19950587, 19950767, 19950947, 19951123, 19951303, 19951471, 19951637, 19951801, 19951961]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19949207 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19949207 19951961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19949207) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19952137, 19952321, 19952503, 19952677, 19952813, 19952981, 19953149, 19953331, 19953503, 19953683, 19953853, 19954027, 19954201, 19954369, 19954471, 19954643]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19951961 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19951961 19954643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19951961) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19954817, 19954981, 19955147, 19955303, 19955477, 19955653, 19955809, 19955989, 19956163, 19956331, 19956511, 19956679, 19956863, 19957039, 19957219, 19957387]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19954643 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19954643 19957387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19954643) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19957571, 19957741, 19957921, 19958101, 19958261, 19958443, 19958621, 19958803, 19958977, 19959157, 19959341, 19959517, 19959689, 19959857, 19960019, 19960201]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19957387 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19957387 19960201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19957387) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19960379, 19960553, 19960691, 19960859, 19961023, 19961203, 19961371, 19961527, 19961687, 19961857, 19962031, 19962211, 19962379, 19962541, 19962713, 19962893]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19960201 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19960201 19962893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19960201) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19963037, 19963217, 19963381, 19963561, 19963733, 19963913, 19964081, 19964261, 19964429, 19964603, 19964779, 19964947, 19965107, 19965277, 19965443, 19965613]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19962893 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19962893 19965613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19962893) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19965787, 19965961, 19966129, 19966253, 19966423, 19966601, 19966769, 19966951, 19967111, 19967281, 19967459, 19967603, 19967771, 19967947, 19968127, 19968293]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19965613 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19965613 19968293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19965613) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19968457, 19968631, 19968803, 19968973, 19969151, 19969321, 19969493, 19969669, 19969847, 19970011, 19970191, 19970351, 19970527, 19970711, 19970849, 19971031]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19968293 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19968293 19971031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19968293) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19971197, 19971373, 19971541, 19971683, 19971863, 19972037, 19972201, 19972369, 19972541, 19972723, 19972903, 19973087, 19973267, 19973423, 19973587, 19973771]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19971031 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19971031 19973771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19971031) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19973939, 19974121, 19974299, 19974469, 19974637, 19974821, 19975003, 19975183, 19975367, 19975547, 19975729, 19975913, 19976093, 19976237, 19976399, 19976569]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19973771 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19973771 19976569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19973771) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19976743, 19976917, 19977101, 19977277, 19977427, 19977611, 19977791, 19977959, 19978121, 19978289, 19978471, 19978649, 19978831, 19978997, 19979161, 19979339]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19976569 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19976569 19979339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19976569) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19979503, 19979657, 19979807, 19979987, 19980167, 19980347, 19980511, 19980689, 19980869, 19981021, 19981201, 19981373, 19981523, 19981697, 19981873, 19982029]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19979339 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19979339 19982029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19979339) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19982213, 19982393, 19982527, 19982707, 19982891, 19983043, 19983221, 19983377, 19983559, 19983727, 19983911, 19984091, 19984273, 19984427, 19984609, 19984747]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19982029 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19982029 19984747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19982029) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19984931, 19985113, 19985261, 19985443, 19985627, 19985803, 19985969, 19986137, 19986319, 19986503, 19986677, 19986817, 19987001, 19987171, 19987333, 19987501]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19984747 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19984747 19987501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19984747) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19987673, 19987853, 19988009, 19988183, 19988363, 19988543, 19988699, 19988873, 19989049, 19989227, 19989391, 19989559, 19989743, 19989917, 19990093, 19990253]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19987501 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19987501 19990253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19987501) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19990433, 19990613, 19990783, 19990937, 19991107, 19991267, 19991429, 19991611, 19991791, 19991963, 19992131, 19992311, 19992491, 19992659, 19992829, 19993013]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19990253 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19990253 19993013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19990253) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19993157, 19993327, 19993489, 19993669, 19993849, 19994033, 19994201, 19994371, 19994551, 19994731, 19994899, 19995083, 19995263, 19995439, 19995583, 19995721]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19993013 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19993013 19995721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19993013) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19995889, 19996073, 19996219, 19996393, 19996567, 19996751, 19996927, 19997099, 19997267, 19997441, 19997609, 19997779, 19997963, 19998047, 19998229, 19998413]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19995721 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19995721 19998413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19995721) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19998593, 19998757, 19998917, 19999069, 19999253, 19999423, 19999583, 19999739, 19999909, 20000093]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19998413 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19998413 20000093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19998413) (qs := tail27) basis4473_complete basis4473_prod_eq check27

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19924579 19930081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19924579)
    (mid := 19927331) (hi := 19930081) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19930081 19935469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19930081)
    (mid := 19932799) (hi := 19935469) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19935469 19940933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19935469)
    (mid := 19938181) (hi := 19940933) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19940933 19946417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19940933)
    (mid := 19943659) (hi := 19946417) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19946417 19951961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19946417)
    (mid := 19949207) (hi := 19951961) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19951961 19957387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19951961)
    (mid := 19954643) (hi := 19957387) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19957387 19962893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19957387)
    (mid := 19960201) (hi := 19962893) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19962893 19968293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19962893)
    (mid := 19965613) (hi := 19968293) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19968293 19973771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19968293)
    (mid := 19971031) (hi := 19973771) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19973771 19979339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19973771)
    (mid := 19976569) (hi := 19979339) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19979339 19984747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19979339)
    (mid := 19982029) (hi := 19984747) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19984747 19990253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19984747)
    (mid := 19987501) (hi := 19990253) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19990253 19995721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19990253)
    (mid := 19993013) (hi := 19995721) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19995721 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19995721)
    (mid := 19998413) (hi := 20000093) part26 part27

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19924579 19935469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19924579)
    (mid := 19930081) (hi := 19935469) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19935469 19946417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19935469)
    (mid := 19940933) (hi := 19946417) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19946417 19957387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19946417)
    (mid := 19951961) (hi := 19957387) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19957387 19968293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19957387)
    (mid := 19962893) (hi := 19968293) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19968293 19979339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19968293)
    (mid := 19973771) (hi := 19979339) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19979339 19990253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19979339)
    (mid := 19984747) (hi := 19990253) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19990253 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19990253)
    (mid := 19995721) (hi := 20000093) joinLevel0_12 joinLevel0_13

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19924579 19946417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19924579)
    (mid := 19935469) (hi := 19946417) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19946417 19968293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19946417)
    (mid := 19957387) (hi := 19968293) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19968293 19990253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19968293)
    (mid := 19979339) (hi := 19990253) joinLevel1_4 joinLevel1_5

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19924579 19968293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19924579)
    (mid := 19946417) (hi := 19968293) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19968293 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19968293)
    (mid := 19990253) (hi := 20000093) joinLevel2_2 joinLevel1_6

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19924579 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19924579)
    (mid := 19968293) (hi := 20000093) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19924579 20000093 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block227

#print axioms B699MiddleExtension.PrimorialBlocks.Block227.joined
