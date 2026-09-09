import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block001

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [90533, 90709, 90887, 91033, 91199, 91381, 91541, 91711, 91873, 92051, 92233, 92413, 92593, 92767, 92951, 93133]
theorem check0 : primorialChainCheck 4473 primorial4473 184 90353 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 90353 93133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 90353) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [93307, 93491, 93637, 93811, 93983, 94153, 94331, 94513, 94693, 94873, 95027, 95203, 95383, 95561, 95737, 95917]
theorem check1 : primorialChainCheck 4473 primorial4473 184 93133 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 93133 95917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 93133) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [96097, 96281, 96461, 96643, 96827, 97007, 97187, 97369, 97553, 97729, 97883, 98057, 98227, 98411, 98573, 98737]
theorem check2 : primorialChainCheck 4473 primorial4473 184 95917 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 95917 98737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 95917) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [98911, 99089, 99259, 99439, 99623, 99793, 99971, 100153, 100333, 100517, 100699, 100853, 101027, 101209, 101383, 101561]
theorem check3 : primorialChainCheck 4473 primorial4473 184 98737 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 98737 101561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 98737) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [101741, 101921, 102103, 102259, 102437, 102611, 102793, 102967, 103141, 103319, 103483, 103657, 103841, 104021, 104183, 104347]
theorem check4 : primorialChainCheck 4473 primorial4473 184 101561 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 101561 104347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 101561) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [104527, 104711, 104891, 105071, 105253, 105437, 105619, 105769, 105953, 106129, 106307, 106487, 106669, 106853, 107033, 107209]
theorem check5 : primorialChainCheck 4473 primorial4473 184 104347 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 104347 107209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 104347) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [107377, 107509, 107693, 107873, 108041, 108223, 108401, 108571, 108751, 108929, 109111, 109279, 109453, 109621, 109793, 109961]
theorem check6 : primorialChainCheck 4473 primorial4473 184 107209 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 107209 109961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 107209) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [110129, 110311, 110491, 110651, 110821, 110989, 111149, 111323, 111497, 111667, 111847, 112031, 112213, 112397, 112577, 112759]
theorem check7 : primorialChainCheck 4473 primorial4473 184 109961 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 109961 112759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 109961) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [112939, 113123, 113287, 113467, 113647, 113819, 114001, 114167, 114343, 114493, 114671, 114847, 115021, 115201, 115363, 115547]
theorem check8 : primorialChainCheck 4473 primorial4473 184 112759 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 112759 115547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 112759) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [115727, 115903, 116047, 116201, 116381, 116549, 116731, 116911, 117071, 117251, 117431, 117577, 117757, 117937, 118093, 118277]
theorem check9 : primorialChainCheck 4473 primorial4473 184 115547 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 115547 118277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 115547) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [118457, 118633, 118801, 118973, 119131, 119311, 119489, 119671, 119851, 120017, 120199, 120383, 120563, 120739, 120919, 121081]
theorem check10 : primorialChainCheck 4473 primorial4473 184 118277 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 118277 121081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 118277) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [121259, 121441, 121621, 121789, 121967, 122149, 122327, 122509, 122693, 122869, 123049, 123229, 123407, 123583, 123757, 123941]
theorem check11 : primorialChainCheck 4473 primorial4473 184 121081 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 121081 123941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 121081) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [124123, 124303, 124477, 124643, 124823, 125003, 125183, 125353, 125527, 125711, 125887, 126067, 126241, 126421, 126601, 126781]
theorem check12 : primorialChainCheck 4473 primorial4473 184 123941 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 123941 126781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 123941) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [126961, 127139, 127321, 127493, 127669, 127849, 128033, 128213, 128393, 128563, 128747, 128923, 129097, 129281, 129461, 129643]
theorem check13 : primorialChainCheck 4473 primorial4473 184 126781 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 126781 129643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 126781) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [129803, 129971, 130147, 130307, 130489, 130657, 130841, 131023, 131203, 131381, 131561, 131743, 131927, 132109, 132287, 132469]
theorem check14 : primorialChainCheck 4473 primorial4473 184 129643 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 129643 132469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 129643) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [132647, 132817, 132989, 133169, 133351, 133519, 133697, 133877, 134059, 134243, 134417, 134597, 134777, 134951, 135131, 135301]
theorem check15 : primorialChainCheck 4473 primorial4473 184 132469 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 132469 135301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 132469) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [135479, 135661, 135841, 136013, 136193, 136373, 136547, 136727, 136897, 137077, 137251, 137413, 137597, 137777, 137957, 138139]
theorem check16 : primorialChainCheck 4473 primorial4473 184 135301 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 135301 138139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 135301) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [138323, 138497, 138679, 138863, 139033, 139201, 139369, 139547, 139729, 139907, 140071, 140249, 140423, 140603, 140779, 140939]
theorem check17 : primorialChainCheck 4473 primorial4473 184 138139 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 138139 140939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 138139) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [141121, 141301, 141481, 141653, 141833, 142007, 142189, 142369, 142553, 142733, 142907, 143063, 143243, 143419, 143593, 143743]
theorem check18 : primorialChainCheck 4473 primorial4473 184 140939 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 140939 143743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 140939) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [143909, 144073, 144253, 144427, 144611, 144791, 144973, 145139, 145307, 145487, 145661, 145829, 146011, 146191, 146369, 146543]
theorem check19 : primorialChainCheck 4473 primorial4473 184 143743 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 143743 146543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 143743) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [146719, 146893, 147073, 147253, 147419, 147583, 147761, 147937, 148091, 148249, 148429, 148609, 148793, 148961, 149143, 149323]
theorem check20 : primorialChainCheck 4473 primorial4473 184 146543 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 146543 149323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 146543) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [149503, 149629, 149803, 149971, 150151, 150329, 150503, 150659, 150833, 151013, 151189, 151357, 151537, 151717, 151901, 152083]
theorem check21 : primorialChainCheck 4473 primorial4473 184 149323 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 149323 152083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 149323) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [152267, 152443, 152623, 152791, 152959, 153137, 153319, 153499, 153649, 153817, 154001, 154183, 154351, 154523, 154699, 154883]
theorem check22 : primorialChainCheck 4473 primorial4473 184 152083 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 152083 154883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 152083) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [155047, 155231, 155413, 155593, 155777, 155921, 156089, 156269, 156437, 156619, 156799, 156979, 157163, 157327, 157489, 157669]
theorem check23 : primorialChainCheck 4473 primorial4473 184 154883 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 154883 157669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 154883) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [157841, 158017, 158201, 158371, 158551, 158731, 158909, 159079, 159233, 159407, 159589, 159773, 159937, 160117, 160253, 160423]
theorem check24 : primorialChainCheck 4473 primorial4473 184 157669 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 157669 160423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 157669) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [160603, 160781, 160933, 161093, 161267, 161411, 161591, 161773, 161957, 162119, 162293, 162473, 162649, 162829, 163003, 163181]
theorem check25 : primorialChainCheck 4473 primorial4473 184 160423 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 160423 163181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 160423) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [163363, 163543, 163697, 163871, 164051, 164233, 164413, 164587, 164771, 164953, 165133, 165317, 165479, 165653, 165833, 166013]
theorem check26 : primorialChainCheck 4473 primorial4473 184 163181 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 163181 166013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 163181) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [166189, 166363, 166541, 166723, 166871, 167051, 167221, 167393, 167543, 167711, 167891, 168071, 168253, 168433, 168617, 168781]
theorem check27 : primorialChainCheck 4473 primorial4473 184 166013 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 166013 168781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 166013) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [168943, 169111, 169283, 169457, 169639, 169823, 170003, 170179, 170363, 170539, 170711, 170887, 171053, 171233, 171403, 171583]
theorem check28 : primorialChainCheck 4473 primorial4473 184 168781 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 168781 171583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 168781) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [171763, 171947, 172127, 172307, 172489, 172673, 172853, 173023, 173207, 173359, 173543, 173713, 173897, 174079, 174263, 174443]
theorem check29 : primorialChainCheck 4473 primorial4473 184 171583 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 171583 174443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 171583) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [174617, 174799, 174959, 175141, 175309, 175493, 175673, 175853, 176023, 176207, 176389, 176573, 176753, 176933, 177113, 177283]
theorem check30 : primorialChainCheck 4473 primorial4473 184 174443 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 174443 177283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 174443) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [177467, 177647, 177823, 178001, 178183, 178361, 178537, 178697, 178877, 179057, 179233, 179411, 179593, 179749, 179923, 180097]
theorem check31 : primorialChainCheck 4473 primorial4473 184 177283 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 177283 180097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 177283) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 90353 95917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 90353)
    (mid := 93133) (hi := 95917) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 95917 101561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 95917)
    (mid := 98737) (hi := 101561) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 101561 107209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 101561)
    (mid := 104347) (hi := 107209) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 107209 112759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 107209)
    (mid := 109961) (hi := 112759) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 112759 118277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 112759)
    (mid := 115547) (hi := 118277) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 118277 123941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 118277)
    (mid := 121081) (hi := 123941) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 123941 129643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 123941)
    (mid := 126781) (hi := 129643) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 129643 135301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 129643)
    (mid := 132469) (hi := 135301) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 135301 140939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 135301)
    (mid := 138139) (hi := 140939) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 140939 146543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 140939)
    (mid := 143743) (hi := 146543) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 146543 152083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 146543)
    (mid := 149323) (hi := 152083) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 152083 157669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 152083)
    (mid := 154883) (hi := 157669) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 157669 163181 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 157669)
    (mid := 160423) (hi := 163181) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 163181 168781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 163181)
    (mid := 166013) (hi := 168781) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 168781 174443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 168781)
    (mid := 171583) (hi := 174443) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 174443 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 174443)
    (mid := 177283) (hi := 180097) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 90353 101561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 90353)
    (mid := 95917) (hi := 101561) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 101561 112759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 101561)
    (mid := 107209) (hi := 112759) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 112759 123941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 112759)
    (mid := 118277) (hi := 123941) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 123941 135301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 123941)
    (mid := 129643) (hi := 135301) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 135301 146543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 135301)
    (mid := 140939) (hi := 146543) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 146543 157669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 146543)
    (mid := 152083) (hi := 157669) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 157669 168781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 157669)
    (mid := 163181) (hi := 168781) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 168781 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 168781)
    (mid := 174443) (hi := 180097) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 90353 112759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 90353)
    (mid := 101561) (hi := 112759) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 112759 135301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 112759)
    (mid := 123941) (hi := 135301) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 135301 157669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 135301)
    (mid := 146543) (hi := 157669) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 157669 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 157669)
    (mid := 168781) (hi := 180097) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 90353 135301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 90353)
    (mid := 112759) (hi := 135301) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 135301 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 135301)
    (mid := 157669) (hi := 180097) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 90353 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 90353)
    (mid := 135301) (hi := 180097) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 90353 180097 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block001

#print axioms B699MiddleExtension.PrimorialBlocks.Block001.joined
