import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block109

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9605117, 9605273, 9605447, 9605627, 9605809, 9605993, 9606161, 9606319, 9606491, 9606671, 9606811, 9606991, 9607163, 9607337, 9607519, 9607699]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9604943 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9604943 9607699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9604943) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9607883, 9608057, 9608219, 9608399, 9608581, 9608761, 9608941, 9609107, 9609283, 9609461, 9609629, 9609799, 9609959, 9610141, 9610319, 9610463]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9607699 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9607699 9610463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9607699) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9610613, 9610793, 9610957, 9611141, 9611299, 9611431, 9611611, 9611779, 9611957, 9612107, 9612287, 9612469, 9612653, 9612829, 9613013, 9613159]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9610463 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9610463 9613159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9610463) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9613343, 9613507, 9613663, 9613847, 9614029, 9614201, 9614369, 9614519, 9614687, 9614861, 9615041, 9615223, 9615391, 9615569, 9615751, 9615929]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9613159 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9613159 9615929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9613159) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9616111, 9616291, 9616471, 9616637, 9616819, 9616991, 9617171, 9617339, 9617507, 9617683, 9617851, 9618019, 9618137, 9618307, 9618491, 9618667]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9615929 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9615929 9618667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9615929) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9618827, 9619007, 9619177, 9619327, 9619507, 9619691, 9619873, 9620057, 9620203, 9620341, 9620497, 9620671, 9620833, 9620993, 9621169, 9621349]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9618667 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9618667 9621349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9618667) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9621509, 9621683, 9621863, 9622033, 9622163, 9622297, 9622471, 9622637, 9622817, 9622979, 9623161, 9623323, 9623507, 9623689, 9623869, 9624047]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9621349 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9621349 9624047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9621349) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9624211, 9624379, 9624541, 9624721, 9624899, 9625081, 9625243, 9625423, 9625607, 9625789, 9625969, 9626147, 9626303, 9626479, 9626651, 9626803]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9624047 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9624047 9626803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9624047) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9626909, 9627077, 9627259, 9627439, 9627613, 9627791, 9627973, 9628147, 9628331, 9628469, 9628639, 9628813, 9628981, 9629159, 9629339, 9629513]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9626803 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9626803 9629513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9626803) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9629693, 9629861, 9630013, 9630167, 9630331, 9630503, 9630661, 9630833, 9630991, 9631169, 9631331, 9631493, 9631667, 9631829, 9631997, 9632179]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9629513 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9629513 9632179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9629513) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9632347, 9632531, 9632687, 9632851, 9633031, 9633187, 9633367, 9633541, 9633721, 9633889, 9634039, 9634199, 9634379, 9634553, 9634727, 9634909]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9632179 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9632179 9634909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9632179) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9635089, 9635267, 9635449, 9635609, 9635777, 9635953, 9636131, 9636311, 9636493, 9636673, 9636829, 9637013, 9637183, 9637363, 9637531, 9637703]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9634909 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9634909 9637703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9634909) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9637879, 9638059, 9638231, 9638401, 9638557, 9638659, 9638831, 9639011, 9639169, 9639349, 9639533, 9639701, 9639881, 9640061, 9640237, 9640417]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9637703 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9637703 9640417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9637703) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9640591, 9640739, 9640919, 9641087, 9641267, 9641447, 9641617, 9641789, 9641971, 9642151, 9642323, 9642499, 9642683, 9642863, 9643043, 9643213]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9640417 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9640417 9643213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9640417) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9643391, 9643559, 9643729, 9643903, 9644057, 9644227, 9644387, 9644561, 9644743, 9644911, 9645091, 9645263, 9645437, 9645611, 9645791, 9645959]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9643213 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9643213 9645959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9643213) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9646141, 9646321, 9646501, 9646649, 9646817, 9646997, 9647171, 9647317, 9647501, 9647683, 9647849, 9648031, 9648209, 9648377, 9648559, 9648739]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9645959 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9645959 9648739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9645959) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9648923, 9649099, 9649271, 9649447, 9649609, 9649793, 9649973, 9650149, 9650321, 9650503, 9650681, 9650843, 9651011, 9651181, 9651361, 9651541]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9648739 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9648739 9651541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9648739) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9651689, 9651871, 9652051, 9652231, 9652411, 9652561, 9652739, 9652921, 9653099, 9653243, 9653419, 9653599, 9653747, 9653923, 9654107, 9654263]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9651541 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9651541 9654263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9651541) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9654443, 9654577, 9654751, 9654923, 9655073, 9655253, 9655421, 9655603, 9655777, 9655907, 9656089, 9656203, 9656377, 9656557, 9656671, 9656851]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9654263 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9654263 9656851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9654263) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9657023, 9657191, 9657367, 9657521, 9657691, 9657863, 9658043, 9658219, 9658399, 9658573, 9658751, 9658927, 9659099, 9659269, 9659453, 9659633]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9656851 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9656851 9659633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9656851) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9659803, 9659983, 9660139, 9660323, 9660487, 9660661, 9660841, 9661019, 9661189, 9661373, 9661537, 9661711, 9661889, 9662071, 9662243, 9662407]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9659633 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9659633 9662407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9659633) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9662581, 9662761, 9662927, 9663107, 9663271, 9663449, 9663629, 9663793, 9663977, 9664153, 9664321, 9664477, 9664661, 9664843, 9664997, 9665143]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9662407 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9662407 9665143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9662407) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9665309, 9665479, 9665657, 9665837, 9666001, 9666169, 9666347, 9666491, 9666661, 9666821, 9667003, 9667187, 9667331, 9667501, 9667673, 9667837]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9665143 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9665143 9667837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9665143) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9668011, 9668177, 9668353, 9668537, 9668719, 9668899, 9669083, 9669259, 9669433, 9669607, 9669773, 9669953, 9670123, 9670307, 9670483, 9670663]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9667837 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9667837 9670663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9667837) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9670831, 9670993, 9671161, 9671303, 9671479, 9671663, 9671821, 9671971, 9672149, 9672331, 9672511, 9672683, 9672853, 9673003, 9673177, 9673361]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9670663 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9670663 9673361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9670663) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9673541, 9673723, 9673883, 9674039, 9674221, 9674383, 9674557, 9674741, 9674911, 9675089, 9675257, 9675361, 9675539, 9675707, 9675889, 9676027]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9673361 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9673361 9676027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9673361) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9676201, 9676363, 9676543, 9676717, 9676889, 9677071, 9677249, 9677417, 9677587, 9677761, 9677929, 9678079, 9678259, 9678439, 9678623, 9678787]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9676027 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9676027 9678787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9676027) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9678971, 9679147, 9679331, 9679513, 9679679, 9679861, 9680023, 9680201, 9680369, 9680549, 9680689, 9680843, 9681019, 9681193, 9681361, 9681533]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9678787 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9678787 9681533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9678787) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9681709, 9681883, 9682067, 9682243, 9682427, 9682597, 9682763, 9682919, 9683099, 9683279, 9683461, 9683633, 9683813, 9683983, 9684149, 9684317]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9681533 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9681533 9684317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9681533) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9684469, 9684641, 9684823, 9685007, 9685177, 9685349, 9685513, 9685693, 9685861, 9686041, 9686221, 9686401, 9686581, 9686759, 9686921, 9687091]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9684317 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9684317 9687091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9684317) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9687257, 9687401, 9687583, 9687751, 9687919, 9688103, 9688279, 9688463, 9688619, 9688799, 9688981, 9689149, 9689327, 9689483, 9689651, 9689767]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9687091 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9687091 9689767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9687091) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9689929, 9690103, 9690287, 9690469, 9690641, 9690803, 9690907, 9691091, 9691267, 9691439, 9691609, 9691789, 9691963, 9692141, 9692323, 9692503]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9689767 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9689767 9692503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9689767) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9604943 9610463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9604943)
    (mid := 9607699) (hi := 9610463) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9610463 9615929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9610463)
    (mid := 9613159) (hi := 9615929) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9615929 9621349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9615929)
    (mid := 9618667) (hi := 9621349) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9621349 9626803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9621349)
    (mid := 9624047) (hi := 9626803) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9626803 9632179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9626803)
    (mid := 9629513) (hi := 9632179) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9632179 9637703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9632179)
    (mid := 9634909) (hi := 9637703) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9637703 9643213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9637703)
    (mid := 9640417) (hi := 9643213) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9643213 9648739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9643213)
    (mid := 9645959) (hi := 9648739) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9648739 9654263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9648739)
    (mid := 9651541) (hi := 9654263) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9654263 9659633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9654263)
    (mid := 9656851) (hi := 9659633) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9659633 9665143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9659633)
    (mid := 9662407) (hi := 9665143) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9665143 9670663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9665143)
    (mid := 9667837) (hi := 9670663) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9670663 9676027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9670663)
    (mid := 9673361) (hi := 9676027) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9676027 9681533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9676027)
    (mid := 9678787) (hi := 9681533) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9681533 9687091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9681533)
    (mid := 9684317) (hi := 9687091) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9687091 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9687091)
    (mid := 9689767) (hi := 9692503) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9604943 9615929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9604943)
    (mid := 9610463) (hi := 9615929) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9615929 9626803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9615929)
    (mid := 9621349) (hi := 9626803) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9626803 9637703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9626803)
    (mid := 9632179) (hi := 9637703) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9637703 9648739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9637703)
    (mid := 9643213) (hi := 9648739) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9648739 9659633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9648739)
    (mid := 9654263) (hi := 9659633) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9659633 9670663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9659633)
    (mid := 9665143) (hi := 9670663) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9670663 9681533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9670663)
    (mid := 9676027) (hi := 9681533) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9681533 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9681533)
    (mid := 9687091) (hi := 9692503) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9604943 9626803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9604943)
    (mid := 9615929) (hi := 9626803) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9626803 9648739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9626803)
    (mid := 9637703) (hi := 9648739) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9648739 9670663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9648739)
    (mid := 9659633) (hi := 9670663) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9670663 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9670663)
    (mid := 9681533) (hi := 9692503) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9604943 9648739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9604943)
    (mid := 9626803) (hi := 9648739) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9648739 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9648739)
    (mid := 9670663) (hi := 9692503) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9604943 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9604943)
    (mid := 9648739) (hi := 9692503) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9604943 9692503 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block109

#print axioms B699MiddleExtension.PrimorialBlocks.Block109.joined
