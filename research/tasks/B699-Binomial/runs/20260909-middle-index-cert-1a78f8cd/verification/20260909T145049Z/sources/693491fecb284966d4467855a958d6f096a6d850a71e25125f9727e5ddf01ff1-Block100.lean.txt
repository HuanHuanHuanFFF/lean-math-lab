import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block100

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8817689, 8817871, 8818037, 8818211, 8818379, 8818559, 8818727, 8818897, 8819023, 8819207, 8819389, 8819561, 8819737, 8819917, 8820083, 8820257]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8817511 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8817511 8820257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8817511) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8820421, 8820601, 8820767, 8820947, 8821129, 8821313, 8821457, 8821633, 8821817, 8821999, 8822183, 8822347, 8822459, 8822633, 8822797, 8822977]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8820257 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8820257 8822977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8820257) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8823161, 8823343, 8823523, 8823707, 8823883, 8824051, 8824229, 8824393, 8824577, 8824757, 8824901, 8825081, 8825263, 8825447, 8825623, 8825779]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8822977 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8822977 8825779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8822977) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8825963, 8826133, 8826283, 8826463, 8826637, 8826821, 8827003, 8827151, 8827327, 8827487, 8827667, 8827843, 8828009, 8828191, 8828371, 8828549]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8825779 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8825779 8828549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8825779) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8828723, 8828879, 8829049, 8829229, 8829413, 8829581, 8829757, 8829923, 8830103, 8830279, 8830441, 8830583, 8830741, 8830907, 8831089, 8831269]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8828549 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8828549 8831269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8828549) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8831429, 8831593, 8831773, 8831957, 8832137, 8832311, 8832493, 8832661, 8832839, 8833003, 8833169, 8833337, 8833519, 8833703, 8833871, 8834041]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8831269 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8831269 8834041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8831269) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8834219, 8834389, 8834561, 8834741, 8834911, 8835077, 8835241, 8835419, 8835571, 8835751, 8835901, 8836063, 8836211, 8836391, 8836573, 8836757]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8834041 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8834041 8836757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8834041) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8836907, 8837089, 8837251, 8837429, 8837597, 8837771, 8837951, 8838133, 8838299, 8838481, 8838653, 8838833, 8839007, 8839183, 8839367, 8839543]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8836757 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8836757 8839543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8836757) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8839703, 8839871, 8839967, 8840141, 8840317, 8840497, 8840659, 8840779, 8840963, 8841097, 8841263, 8841431, 8841529, 8841709, 8841881, 8842039]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8839543 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8839543 8842039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8839543) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8842217, 8842399, 8842579, 8842753, 8842937, 8843101, 8843273, 8843447, 8843623, 8843789, 8843917, 8844091, 8844271, 8844421, 8844593, 8844769]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8842039 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8842039 8844769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8842039) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8844943, 8845099, 8845267, 8845451, 8845619, 8845789, 8845951, 8846111, 8846291, 8846471, 8846641, 8846821, 8846983, 8847161, 8847301, 8847481]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8844769 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8844769 8847481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8844769) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8847659, 8847799, 8847967, 8848141, 8848309, 8848493, 8848667, 8848837, 8849021, 8849201, 8849381, 8849531, 8849681, 8849861, 8850031, 8850211]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8847481 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8847481 8850211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8847481) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8850379, 8850559, 8850671, 8850847, 8851009, 8851187, 8851363, 8851529, 8851697, 8851879, 8852059, 8852243, 8852413, 8852593, 8852737, 8852881]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8850211 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8850211 8852881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8850211) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8853017, 8853193, 8853371, 8853553, 8853737, 8853917, 8854081, 8854253, 8854423, 8854607, 8854789, 8854961, 8855137, 8855281, 8855461, 8855597]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8852881 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8852881 8855597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8852881) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8855779, 8855941, 8856121, 8856293, 8856457, 8856637, 8856787, 8856971, 8857133, 8857301, 8857483, 8857649, 8857831, 8857999, 8858153, 8858329]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8855597 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8855597 8858329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8855597) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8858489, 8858627, 8858797, 8858957, 8859131, 8859307, 8859481, 8859659, 8859841, 8860003, 8860183, 8860367, 8860547, 8860703, 8860883, 8861059]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8858329 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8858329 8861059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8858329) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8861243, 8861423, 8861597, 8861779, 8861929, 8862097, 8862247, 8862431, 8862611, 8862787, 8862923, 8863051, 8863219, 8863399, 8863577, 8863703]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8861059 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8861059 8863703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8861059) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8863837, 8864003, 8864179, 8864351, 8864521, 8864663, 8864813, 8864993, 8865167, 8865341, 8865499, 8865683, 8865859, 8866019, 8866189, 8866337]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8863703 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8863703 8866337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8863703) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8866513, 8866679, 8866861, 8867003, 8867179, 8867323, 8867501, 8867669, 8867843, 8868017, 8868173, 8868337, 8868521, 8868701, 8868859, 8869043]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8866337 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8866337 8869043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8866337) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8869213, 8869397, 8869579, 8869759, 8869919, 8870053, 8870179, 8870353, 8870509, 8870689, 8870863, 8871041, 8871223, 8871389, 8871571, 8871719]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8869043 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8869043 8871719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8869043) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8871899, 8872067, 8872223, 8872393, 8872573, 8872751, 8872909, 8873089, 8873273, 8873453, 8873629, 8873803, 8873951, 8874133, 8874317, 8874499]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8871719 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8871719 8874499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8871719) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8874673, 8874847, 8875001, 8875183, 8875351, 8875511, 8875667, 8875829, 8876003, 8876149, 8876327, 8876503, 8876687, 8876867, 8877013, 8877181]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8874499 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8874499 8877181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8874499) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8877347, 8877527, 8877707, 8877889, 8878061, 8878241, 8878423, 8878603, 8878711, 8878873, 8879021, 8879197, 8879369, 8879551, 8879723, 8879869]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8877181 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8877181 8879869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8877181) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8880029, 8880211, 8880379, 8880551, 8880719, 8880901, 8881069, 8881241, 8881403, 8881583, 8881753, 8881921, 8882057, 8882233, 8882417, 8882579]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8879869 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8879869 8882579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8879869) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8882749, 8882921, 8883103, 8883283, 8883439, 8883617, 8883793, 8883977, 8884151, 8884303, 8884483, 8884651, 8884807, 8884979, 8885161, 8885333]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8882579 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8882579 8885333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8882579) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8885507, 8885689, 8885869, 8886041, 8886193, 8886347, 8886523, 8886707, 8886883, 8887063, 8887247, 8887423, 8887597, 8887777, 8887961, 8888137]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8885333 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8885333 8888137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8885333) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8888309, 8888491, 8888669, 8888851, 8889031, 8889203, 8889337, 8889499, 8889679, 8889851, 8889977, 8890129, 8890307, 8890463, 8890639, 8890823]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8888137 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8888137 8890823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8888137) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8890997, 8891171, 8891347, 8891479, 8891657, 8891837, 8892011, 8892193, 8892347, 8892517, 8892677, 8892857, 8893039, 8893223, 8893403, 8893553]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8890823 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8890823 8893553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8890823) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8893697, 8893879, 8894063, 8894243, 8894423, 8894597, 8894777, 8894947, 8895113, 8895277, 8895451, 8895631, 8895769, 8895919, 8896093, 8896273]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8893553 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8893553 8896273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8893553) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8896453, 8896621, 8896801, 8896981, 8897153, 8897327, 8897509, 8897687, 8897869, 8898053, 8898233, 8898391, 8898569, 8898751, 8898931, 8899073]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8896273 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8896273 8899073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8896273) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8899249, 8899421, 8899603, 8899783, 8899949, 8900123, 8900293, 8900473, 8900641, 8900821, 8900981, 8901121, 8901293, 8901467, 8901649, 8901803]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8899073 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8899073 8901803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8899073) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8901953, 8902133, 8902297, 8902471, 8902651, 8902807, 8902991, 8903131, 8903309, 8903491, 8903663, 8903833, 8903959, 8904143, 8904317, 8904499]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8901803 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8901803 8904499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8901803) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8817511 8822977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8820257) (hi := 8822977) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8822977 8828549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8822977)
    (mid := 8825779) (hi := 8828549) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8828549 8834041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8828549)
    (mid := 8831269) (hi := 8834041) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8834041 8839543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8834041)
    (mid := 8836757) (hi := 8839543) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8839543 8844769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8839543)
    (mid := 8842039) (hi := 8844769) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8844769 8850211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8844769)
    (mid := 8847481) (hi := 8850211) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8850211 8855597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8850211)
    (mid := 8852881) (hi := 8855597) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8855597 8861059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8855597)
    (mid := 8858329) (hi := 8861059) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8861059 8866337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8861059)
    (mid := 8863703) (hi := 8866337) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8866337 8871719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8866337)
    (mid := 8869043) (hi := 8871719) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8871719 8877181 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8871719)
    (mid := 8874499) (hi := 8877181) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8877181 8882579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8877181)
    (mid := 8879869) (hi := 8882579) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8882579 8888137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8882579)
    (mid := 8885333) (hi := 8888137) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8888137 8893553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8888137)
    (mid := 8890823) (hi := 8893553) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8893553 8899073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8893553)
    (mid := 8896273) (hi := 8899073) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8899073 8904499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8899073)
    (mid := 8901803) (hi := 8904499) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8817511 8828549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8822977) (hi := 8828549) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8828549 8839543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8828549)
    (mid := 8834041) (hi := 8839543) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8839543 8850211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8839543)
    (mid := 8844769) (hi := 8850211) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8850211 8861059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8850211)
    (mid := 8855597) (hi := 8861059) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8861059 8871719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8861059)
    (mid := 8866337) (hi := 8871719) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8871719 8882579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8871719)
    (mid := 8877181) (hi := 8882579) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8882579 8893553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8882579)
    (mid := 8888137) (hi := 8893553) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8893553 8904499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8893553)
    (mid := 8899073) (hi := 8904499) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8817511 8839543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8828549) (hi := 8839543) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8839543 8861059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8839543)
    (mid := 8850211) (hi := 8861059) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8861059 8882579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8861059)
    (mid := 8871719) (hi := 8882579) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8882579 8904499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8882579)
    (mid := 8893553) (hi := 8904499) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8817511 8861059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8839543) (hi := 8861059) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8861059 8904499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8861059)
    (mid := 8882579) (hi := 8904499) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8817511 8904499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8861059) (hi := 8904499) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8817511 8904499 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block100

#print axioms B699MiddleExtension.PrimorialBlocks.Block100.joined
