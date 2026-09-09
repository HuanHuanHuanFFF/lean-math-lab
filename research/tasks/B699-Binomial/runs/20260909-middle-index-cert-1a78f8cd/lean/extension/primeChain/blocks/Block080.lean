import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block080

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7063543, 7063723, 7063897, 7064039, 7064221, 7064389, 7064569, 7064753, 7064927, 7065101, 7065277, 7065449, 7065629, 7065811, 7065983, 7066117]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7063367 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7063367 7066117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7063367) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7066277, 7066453, 7066573, 7066739, 7066909, 7067089, 7067251, 7067429, 7067611, 7067789, 7067959, 7068143, 7068301, 7068463, 7068637, 7068793]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7066117 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7066117 7068793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7066117) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7068959, 7069141, 7069313, 7069481, 7069663, 7069847, 7070027, 7070209, 7070389, 7070551, 7070731, 7070897, 7071079, 7071263, 7071443, 7071619]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7068793 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7068793 7071619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7068793) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7071797, 7071959, 7072133, 7072277, 7072447, 7072631, 7072811, 7072993, 7073159, 7073329, 7073503, 7073657, 7073839, 7074019, 7074203, 7074373]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7071619 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7071619 7074373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7071619) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7074539, 7074713, 7074887, 7075067, 7075241, 7075423, 7075603, 7075777, 7075949, 7076119, 7076281, 7076453, 7076621, 7076803, 7076963, 7077137]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7074373 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7074373 7077137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7074373) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7077313, 7077487, 7077667, 7077821, 7077971, 7078151, 7078333, 7078493, 7078667, 7078843, 7079003, 7079159, 7079329, 7079507, 7079671, 7079833]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7077137 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7077137 7079833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7077137) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7080011, 7080193, 7080329, 7080487, 7080613, 7080793, 7080947, 7081117, 7081279, 7081457, 7081637, 7081787, 7081961, 7082123, 7082249, 7082431]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7079833 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7079833 7082431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7079833) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7082599, 7082753, 7082927, 7083107, 7083289, 7083463, 7083641, 7083823, 7083971, 7084153, 7084333, 7084499, 7084643, 7084817, 7084993, 7085149]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7082431 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7082431 7085149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7082431) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7085293, 7085467, 7085629, 7085809, 7085983, 7086133, 7086307, 7086479, 7086661, 7086839, 7086997, 7087123, 7087307, 7087481, 7087631, 7087813]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7085149 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7085149 7087813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7085149) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7087987, 7088171, 7088353, 7088537, 7088717, 7088897, 7089073, 7089241, 7089419, 7089587, 7089769, 7089941, 7090121, 7090267, 7090451, 7090631]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7087813 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7087813 7090631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7087813) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7090813, 7090981, 7091143, 7091323, 7091507, 7091683, 7091857, 7091999, 7092167, 7092313, 7092497, 7092667, 7092851, 7093013, 7093181, 7093343]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7090631 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7090631 7093343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7090631) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7093501, 7093673, 7093841, 7094023, 7094203, 7094383, 7094551, 7094719, 7094897, 7095079, 7095241, 7095377, 7095551, 7095733, 7095917, 7096099]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7093343 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7093343 7096099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7093343) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7096283, 7096459, 7096643, 7096787, 7096961, 7097131, 7097297, 7097473, 7097647, 7097819, 7097999, 7098167, 7098337, 7098521, 7098691, 7098859]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7096099 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7096099 7098859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7096099) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7099039, 7099223, 7099399, 7099583, 7099739, 7099913, 7100089, 7100267, 7100419, 7100579, 7100761, 7100941, 7101097, 7101271, 7101443, 7101623]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7098859 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7098859 7101623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7098859) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7101797, 7101949, 7102127, 7102301, 7102463, 7102643, 7102819, 7102987, 7103171, 7103339, 7103513, 7103693, 7103851, 7104023, 7104199, 7104359]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7101623 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7101623 7104359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7101623) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7104533, 7104709, 7104893, 7105067, 7105247, 7105421, 7105589, 7105771, 7105933, 7106117, 7106299, 7106443, 7106621, 7106797, 7106959, 7107137]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7104359 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7104359 7107137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7104359) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7107281, 7107461, 7107643, 7107827, 7108009, 7108187, 7108349, 7108529, 7108711, 7108883, 7109057, 7109209, 7109387, 7109569, 7109747, 7109929]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7107137 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7107137 7109929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7107137) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7110101, 7110277, 7110457, 7110637, 7110809, 7110991, 7111157, 7111337, 7111519, 7111703, 7111877, 7112059, 7112233, 7112411, 7112563, 7112747]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7109929 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7109929 7112747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7109929) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7112927, 7113109, 7113221, 7113383, 7113563, 7113727, 7113907, 7114091, 7114241, 7114423, 7114579, 7114763, 7114937, 7115117, 7115281, 7115417]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7112747 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7112747 7115417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7112747) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7115593, 7115777, 7115959, 7116139, 7116323, 7116437, 7116619, 7116799, 7116983, 7117147, 7117303, 7117483, 7117667, 7117843, 7117987, 7118161]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7115417 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7115417 7118161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7115417) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7118341, 7118519, 7118701, 7118879, 7119061, 7119227, 7119407, 7119569, 7119751, 7119929, 7120097, 7120279, 7120447, 7120621, 7120783, 7120963]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7118161 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7118161 7120963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7118161) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7121141, 7121321, 7121503, 7121687, 7121867, 7122041, 7122209, 7122377, 7122559, 7122743, 7122887, 7123063, 7123231, 7123411, 7123591, 7123771]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7120963 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7120963 7123771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7120963) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7123903, 7124087, 7124269, 7124443, 7124603, 7124783, 7124911, 7125077, 7125203, 7125379, 7125553, 7125731, 7125901, 7126069, 7126253, 7126429]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7123771 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7123771 7126429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7123771) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7126601, 7126739, 7126901, 7127083, 7127257, 7127441, 7127623, 7127803, 7127987, 7128167, 7128347, 7128529, 7128707, 7128833, 7128997, 7129159]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7126429 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7126429 7129159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7126429) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7129337, 7129519, 7129687, 7129861, 7130029, 7130213, 7130393, 7130573, 7130749, 7130933, 7131053, 7131217, 7131379, 7131559, 7131727, 7131899]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7129159 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7129159 7131899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7129159) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7132063, 7132243, 7132427, 7132603, 7132781, 7132949, 7133129, 7133297, 7133479, 7133663, 7133843, 7133983, 7134157, 7134341, 7134511, 7134683]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7131899 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7131899 7134683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7131899) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7134859, 7135027, 7135207, 7135391, 7135573, 7135757, 7135939, 7136123, 7136249, 7136431, 7136611, 7136791, 7136971, 7137149, 7137313, 7137491]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7134683 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7134683 7137491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7134683) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7137653, 7137833, 7138009, 7138193, 7138367, 7138541, 7138723, 7138883, 7139023, 7139189, 7139357, 7139527, 7139701, 7139861, 7140041, 7140209]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7137491 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7137491 7140209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7137491) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7140383, 7140563, 7140733, 7140911, 7141051, 7141231, 7141391, 7141573, 7141733, 7141907, 7142053, 7142209, 7142383, 7142563, 7142743, 7142923]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7140209 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7140209 7142923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7140209) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7143089, 7143263, 7143443, 7143613, 7143797, 7143979, 7144153, 7144331, 7144507, 7144691, 7144873, 7145051, 7145233, 7145417, 7145599, 7145759]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7142923 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7142923 7145759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7142923) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7145923, 7146091, 7146263, 7146437, 7146619, 7146791, 7146973, 7147139, 7147321, 7147471, 7147643, 7147823, 7147997, 7148171, 7148341, 7148521]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7145759 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7145759 7148521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7145759) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7148683, 7148849, 7149019, 7149193, 7149361, 7149533, 7149713, 7149851, 7150027, 7150207, 7150379, 7150543, 7150691, 7150873, 7151057, 7151227]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7148521 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7148521 7151227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7148521) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7063367 7068793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7066117) (hi := 7068793) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7068793 7074373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7068793)
    (mid := 7071619) (hi := 7074373) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7074373 7079833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7074373)
    (mid := 7077137) (hi := 7079833) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7079833 7085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7079833)
    (mid := 7082431) (hi := 7085149) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7085149 7090631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7085149)
    (mid := 7087813) (hi := 7090631) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7090631 7096099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7090631)
    (mid := 7093343) (hi := 7096099) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7096099 7101623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7096099)
    (mid := 7098859) (hi := 7101623) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7101623 7107137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7101623)
    (mid := 7104359) (hi := 7107137) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7107137 7112747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7107137)
    (mid := 7109929) (hi := 7112747) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7112747 7118161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7112747)
    (mid := 7115417) (hi := 7118161) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7118161 7123771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7118161)
    (mid := 7120963) (hi := 7123771) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7123771 7129159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7123771)
    (mid := 7126429) (hi := 7129159) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7129159 7134683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7129159)
    (mid := 7131899) (hi := 7134683) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7134683 7140209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7134683)
    (mid := 7137491) (hi := 7140209) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7140209 7145759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7140209)
    (mid := 7142923) (hi := 7145759) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7145759 7151227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7145759)
    (mid := 7148521) (hi := 7151227) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7063367 7074373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7068793) (hi := 7074373) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7074373 7085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7074373)
    (mid := 7079833) (hi := 7085149) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7085149 7096099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7085149)
    (mid := 7090631) (hi := 7096099) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7096099 7107137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7096099)
    (mid := 7101623) (hi := 7107137) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7107137 7118161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7107137)
    (mid := 7112747) (hi := 7118161) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7118161 7129159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7118161)
    (mid := 7123771) (hi := 7129159) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7129159 7140209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7129159)
    (mid := 7134683) (hi := 7140209) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7140209 7151227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7140209)
    (mid := 7145759) (hi := 7151227) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7063367 7085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7074373) (hi := 7085149) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7085149 7107137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7085149)
    (mid := 7096099) (hi := 7107137) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7107137 7129159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7107137)
    (mid := 7118161) (hi := 7129159) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7129159 7151227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7129159)
    (mid := 7140209) (hi := 7151227) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7063367 7107137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7085149) (hi := 7107137) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7107137 7151227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7107137)
    (mid := 7129159) (hi := 7151227) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7063367 7151227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7107137) (hi := 7151227) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7063367 7151227 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block080

#print axioms B699MiddleExtension.PrimorialBlocks.Block080.joined
