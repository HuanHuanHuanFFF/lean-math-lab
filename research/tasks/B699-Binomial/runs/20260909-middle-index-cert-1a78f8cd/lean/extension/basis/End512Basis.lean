import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasis4473
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisChain

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.End512Basis

/-! Actual final 512 edges of the unchanged original 20m input.
Every kernel truth certificate covers 16 edges; the 32 short certificates
are combined by balanced trans. The accepted complete basis is reused. -/

def tail0 : List Nat := [19912691, 19912859, 19913041, 19913209, 19913393, 19913573, 19913737, 19913921, 19914101, 19914283, 19914467, 19914649, 19914827, 19915009, 19915193, 19915369]
theorem check0 : basisChainCheck 4473 basis4473 184 19912523 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19912523 19915369 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19912523) (qs := tail0) basis4473_complete check0

def tail1 : List Nat := [19915543, 19915703, 19915871, 19916053, 19916227, 19916399, 19916581, 19916761, 19916933, 19917067, 19917223, 19917389, 19917571, 19917749, 19917929, 19918103]
theorem check1 : basisChainCheck 4473 basis4473 184 19915369 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19915369 19918103 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19915369) (qs := tail1) basis4473_complete check1

def tail2 : List Nat := [19918279, 19918463, 19918637, 19918753, 19918919, 19919101, 19919281, 19919443, 19919623, 19919803, 19919983, 19920163, 19920293, 19920473, 19920643, 19920827]
theorem check2 : basisChainCheck 4473 basis4473 184 19918103 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19918103 19920827 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19918103) (qs := tail2) basis4473_complete check2

def tail3 : List Nat := [19920973, 19921147, 19921327, 19921483, 19921663, 19921831, 19921997, 19922179, 19922359, 19922543, 19922723, 19922891, 19923073, 19923227, 19923391, 19923559]
theorem check3 : basisChainCheck 4473 basis4473 184 19920827 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19920827 19923559 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19920827) (qs := tail3) basis4473_complete check3

def tail4 : List Nat := [19923719, 19923889, 19924057, 19924231, 19924397, 19924579, 19924763, 19924921, 19925093, 19925261, 19925443, 19925627, 19925783, 19925953, 19926113, 19926293]
theorem check4 : basisChainCheck 4473 basis4473 184 19923559 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19923559 19926293 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19923559) (qs := tail4) basis4473_complete check4

def tail5 : List Nat := [19926469, 19926619, 19926793, 19926967, 19927151, 19927331, 19927507, 19927679, 19927819, 19927997, 19928177, 19928353, 19928521, 19928693, 19928863, 19929037]
theorem check5 : basisChainCheck 4473 basis4473 184 19926293 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19926293 19929037 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19926293) (qs := tail5) basis4473_complete check5

def tail6 : List Nat := [19929209, 19929391, 19929571, 19929743, 19929901, 19930081, 19930249, 19930433, 19930609, 19930787, 19930921, 19931101, 19931273, 19931447, 19931623, 19931801]
theorem check6 : basisChainCheck 4473 basis4473 184 19929037 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19929037 19931801 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19929037) (qs := tail6) basis4473_complete check6

def tail7 : List Nat := [19931953, 19932131, 19932271, 19932443, 19932623, 19932799, 19932977, 19933159, 19933283, 19933457, 19933633, 19933789, 19933973, 19934143, 19934303, 19934483]
theorem check7 : basisChainCheck 4473 basis4473 184 19931801 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19931801 19934483 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19931801) (qs := tail7) basis4473_complete check7

def tail8 : List Nat := [19934641, 19934821, 19935001, 19935133, 19935301, 19935469, 19935623, 19935803, 19935983, 19936157, 19936337, 19936487, 19936661, 19936843, 19937017, 19937173]
theorem check8 : basisChainCheck 4473 basis4473 184 19934483 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19934483 19937173 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19934483) (qs := tail8) basis4473_complete check8

def tail9 : List Nat := [19937341, 19937507, 19937663, 19937843, 19938001, 19938181, 19938361, 19938533, 19938707, 19938883, 19939067, 19939237, 19939397, 19939553, 19939729, 19939901]
theorem check9 : basisChainCheck 4473 basis4473 184 19937173 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19937173 19939901 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19937173) (qs := tail9) basis4473_complete check9

def tail10 : List Nat := [19940059, 19940237, 19940419, 19940593, 19940749, 19940933, 19941071, 19941247, 19941419, 19941601, 19941767, 19941931, 19942099, 19942283, 19942463, 19942621]
theorem check10 : basisChainCheck 4473 basis4473 184 19939901 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19939901 19942621 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19939901) (qs := tail10) basis4473_complete check10

def tail11 : List Nat := [19942789, 19942969, 19943117, 19943299, 19943479, 19943659, 19943843, 19944007, 19944187, 19944371, 19944541, 19944719, 19944877, 19945039, 19945207, 19945381]
theorem check11 : basisChainCheck 4473 basis4473 184 19942621 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19942621 19945381 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19942621) (qs := tail11) basis4473_complete check11

def tail12 : List Nat := [19945537, 19945711, 19945889, 19946063, 19946233, 19946417, 19946581, 19946761, 19946923, 19947101, 19947269, 19947439, 19947623, 19947797, 19947979, 19948141]
theorem check12 : basisChainCheck 4473 basis4473 184 19945381 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19945381 19948141 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19945381) (qs := tail12) basis4473_complete check12

def tail13 : List Nat := [19948321, 19948501, 19948679, 19948849, 19949029, 19949207, 19949387, 19949561, 19949737, 19949921, 19950089, 19950239, 19950421, 19950587, 19950767, 19950947]
theorem check13 : basisChainCheck 4473 basis4473 184 19948141 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19948141 19950947 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19948141) (qs := tail13) basis4473_complete check13

def tail14 : List Nat := [19951123, 19951303, 19951471, 19951637, 19951801, 19951961, 19952137, 19952321, 19952503, 19952677, 19952813, 19952981, 19953149, 19953331, 19953503, 19953683]
theorem check14 : basisChainCheck 4473 basis4473 184 19950947 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19950947 19953683 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19950947) (qs := tail14) basis4473_complete check14

def tail15 : List Nat := [19953853, 19954027, 19954201, 19954369, 19954471, 19954643, 19954817, 19954981, 19955147, 19955303, 19955477, 19955653, 19955809, 19955989, 19956163, 19956331]
theorem check15 : basisChainCheck 4473 basis4473 184 19953683 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19953683 19956331 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19953683) (qs := tail15) basis4473_complete check15

def tail16 : List Nat := [19956511, 19956679, 19956863, 19957039, 19957219, 19957387, 19957571, 19957741, 19957921, 19958101, 19958261, 19958443, 19958621, 19958803, 19958977, 19959157]
theorem check16 : basisChainCheck 4473 basis4473 184 19956331 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19956331 19959157 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19956331) (qs := tail16) basis4473_complete check16

def tail17 : List Nat := [19959341, 19959517, 19959689, 19959857, 19960019, 19960201, 19960379, 19960553, 19960691, 19960859, 19961023, 19961203, 19961371, 19961527, 19961687, 19961857]
theorem check17 : basisChainCheck 4473 basis4473 184 19959157 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19959157 19961857 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19959157) (qs := tail17) basis4473_complete check17

def tail18 : List Nat := [19962031, 19962211, 19962379, 19962541, 19962713, 19962893, 19963037, 19963217, 19963381, 19963561, 19963733, 19963913, 19964081, 19964261, 19964429, 19964603]
theorem check18 : basisChainCheck 4473 basis4473 184 19961857 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19961857 19964603 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19961857) (qs := tail18) basis4473_complete check18

def tail19 : List Nat := [19964779, 19964947, 19965107, 19965277, 19965443, 19965613, 19965787, 19965961, 19966129, 19966253, 19966423, 19966601, 19966769, 19966951, 19967111, 19967281]
theorem check19 : basisChainCheck 4473 basis4473 184 19964603 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19964603 19967281 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19964603) (qs := tail19) basis4473_complete check19

def tail20 : List Nat := [19967459, 19967603, 19967771, 19967947, 19968127, 19968293, 19968457, 19968631, 19968803, 19968973, 19969151, 19969321, 19969493, 19969669, 19969847, 19970011]
theorem check20 : basisChainCheck 4473 basis4473 184 19967281 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19967281 19970011 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19967281) (qs := tail20) basis4473_complete check20

def tail21 : List Nat := [19970191, 19970351, 19970527, 19970711, 19970849, 19971031, 19971197, 19971373, 19971541, 19971683, 19971863, 19972037, 19972201, 19972369, 19972541, 19972723]
theorem check21 : basisChainCheck 4473 basis4473 184 19970011 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19970011 19972723 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19970011) (qs := tail21) basis4473_complete check21

def tail22 : List Nat := [19972903, 19973087, 19973267, 19973423, 19973587, 19973771, 19973939, 19974121, 19974299, 19974469, 19974637, 19974821, 19975003, 19975183, 19975367, 19975547]
theorem check22 : basisChainCheck 4473 basis4473 184 19972723 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19972723 19975547 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19972723) (qs := tail22) basis4473_complete check22

def tail23 : List Nat := [19975729, 19975913, 19976093, 19976237, 19976399, 19976569, 19976743, 19976917, 19977101, 19977277, 19977427, 19977611, 19977791, 19977959, 19978121, 19978289]
theorem check23 : basisChainCheck 4473 basis4473 184 19975547 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19975547 19978289 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19975547) (qs := tail23) basis4473_complete check23

def tail24 : List Nat := [19978471, 19978649, 19978831, 19978997, 19979161, 19979339, 19979503, 19979657, 19979807, 19979987, 19980167, 19980347, 19980511, 19980689, 19980869, 19981021]
theorem check24 : basisChainCheck 4473 basis4473 184 19978289 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19978289 19981021 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19978289) (qs := tail24) basis4473_complete check24

def tail25 : List Nat := [19981201, 19981373, 19981523, 19981697, 19981873, 19982029, 19982213, 19982393, 19982527, 19982707, 19982891, 19983043, 19983221, 19983377, 19983559, 19983727]
theorem check25 : basisChainCheck 4473 basis4473 184 19981021 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19981021 19983727 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19981021) (qs := tail25) basis4473_complete check25

def tail26 : List Nat := [19983911, 19984091, 19984273, 19984427, 19984609, 19984747, 19984931, 19985113, 19985261, 19985443, 19985627, 19985803, 19985969, 19986137, 19986319, 19986503]
theorem check26 : basisChainCheck 4473 basis4473 184 19983727 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19983727 19986503 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19983727) (qs := tail26) basis4473_complete check26

def tail27 : List Nat := [19986677, 19986817, 19987001, 19987171, 19987333, 19987501, 19987673, 19987853, 19988009, 19988183, 19988363, 19988543, 19988699, 19988873, 19989049, 19989227]
theorem check27 : basisChainCheck 4473 basis4473 184 19986503 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19986503 19989227 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19986503) (qs := tail27) basis4473_complete check27

def tail28 : List Nat := [19989391, 19989559, 19989743, 19989917, 19990093, 19990253, 19990433, 19990613, 19990783, 19990937, 19991107, 19991267, 19991429, 19991611, 19991791, 19991963]
theorem check28 : basisChainCheck 4473 basis4473 184 19989227 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19989227 19991963 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19989227) (qs := tail28) basis4473_complete check28

def tail29 : List Nat := [19992131, 19992311, 19992491, 19992659, 19992829, 19993013, 19993157, 19993327, 19993489, 19993669, 19993849, 19994033, 19994201, 19994371, 19994551, 19994731]
theorem check29 : basisChainCheck 4473 basis4473 184 19991963 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19991963 19994731 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19991963) (qs := tail29) basis4473_complete check29

def tail30 : List Nat := [19994899, 19995083, 19995263, 19995439, 19995583, 19995721, 19995889, 19996073, 19996219, 19996393, 19996567, 19996751, 19996927, 19997099, 19997267, 19997441]
theorem check30 : basisChainCheck 4473 basis4473 184 19994731 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19994731 19997441 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19994731) (qs := tail30) basis4473_complete check30

def tail31 : List Nat := [19997609, 19997779, 19997963, 19998047, 19998229, 19998413, 19998593, 19998757, 19998917, 19999069, 19999253, 19999423, 19999583, 19999739, 19999909, 20000093]
theorem check31 : basisChainCheck 4473 basis4473 184 19997441 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19997441 20000093 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19997441) (qs := tail31) basis4473_complete check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19912523 19918103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19912523)
    (mid := 19915369) (hi := 19918103) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19918103 19923559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19918103)
    (mid := 19920827) (hi := 19923559) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19923559 19929037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19923559)
    (mid := 19926293) (hi := 19929037) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19929037 19934483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19929037)
    (mid := 19931801) (hi := 19934483) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19934483 19939901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19934483)
    (mid := 19937173) (hi := 19939901) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19939901 19945381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19939901)
    (mid := 19942621) (hi := 19945381) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19945381 19950947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19945381)
    (mid := 19948141) (hi := 19950947) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19950947 19956331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19950947)
    (mid := 19953683) (hi := 19956331) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19956331 19961857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19956331)
    (mid := 19959157) (hi := 19961857) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19961857 19967281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19961857)
    (mid := 19964603) (hi := 19967281) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19967281 19972723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19967281)
    (mid := 19970011) (hi := 19972723) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19972723 19978289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19972723)
    (mid := 19975547) (hi := 19978289) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19978289 19983727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19978289)
    (mid := 19981021) (hi := 19983727) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19983727 19989227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19983727)
    (mid := 19986503) (hi := 19989227) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19989227 19994731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19989227)
    (mid := 19991963) (hi := 19994731) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19994731 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19994731)
    (mid := 19997441) (hi := 20000093) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19912523 19923559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19912523)
    (mid := 19918103) (hi := 19923559) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19923559 19934483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19923559)
    (mid := 19929037) (hi := 19934483) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19934483 19945381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19934483)
    (mid := 19939901) (hi := 19945381) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19945381 19956331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19945381)
    (mid := 19950947) (hi := 19956331) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19956331 19967281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19956331)
    (mid := 19961857) (hi := 19967281) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19967281 19978289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19967281)
    (mid := 19972723) (hi := 19978289) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19978289 19989227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19978289)
    (mid := 19983727) (hi := 19989227) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19989227 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19989227)
    (mid := 19994731) (hi := 20000093) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19912523 19934483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19912523)
    (mid := 19923559) (hi := 19934483) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19934483 19956331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19934483)
    (mid := 19945381) (hi := 19956331) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19956331 19978289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19956331)
    (mid := 19967281) (hi := 19978289) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19978289 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19978289)
    (mid := 19989227) (hi := 20000093) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19912523 19956331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19912523)
    (mid := 19934483) (hi := 19956331) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19956331 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19956331)
    (mid := 19978289) (hi := 20000093) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19912523 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19912523)
    (mid := 19956331) (hi := 20000093) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19912523 20000093 := joinLevel4_0

end B699MiddleExtension.End512Basis

#print axioms B699MiddleExtension.End512Basis.joined
