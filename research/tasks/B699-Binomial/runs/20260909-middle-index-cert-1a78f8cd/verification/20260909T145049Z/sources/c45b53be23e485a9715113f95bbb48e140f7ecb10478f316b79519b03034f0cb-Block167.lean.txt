import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block167

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14684213, 14684393, 14684567, 14684743, 14684909, 14685091, 14685241, 14685373, 14685553, 14685733, 14685911, 14686073, 14686237, 14686393, 14686577, 14686747]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14684029 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14684029 14686747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14684029) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14686921, 14687093, 14687251, 14687429, 14687587, 14687747, 14687909, 14688073, 14688253, 14688397, 14688571, 14688749, 14688931, 14689099, 14689271, 14689447]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14686747 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14686747 14689447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14686747) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14689579, 14689729, 14689903, 14690083, 14690267, 14690441, 14690609, 14690789, 14690969, 14691151, 14691317, 14691493, 14691671, 14691851, 14692019, 14692169]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14689447 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14689447 14692169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14689447) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14692351, 14692523, 14692703, 14692877, 14693059, 14693233, 14693417, 14693599, 14693779, 14693953, 14694133, 14694299, 14694469, 14694643, 14694811, 14694991]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14692169 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14692169 14694991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14692169) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14695171, 14695337, 14695481, 14695657, 14695841, 14695991, 14696173, 14696351, 14696527, 14696711, 14696873, 14697043, 14697227, 14697373, 14697533, 14697703]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14694991 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14694991 14697703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14694991) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14697863, 14698037, 14698193, 14698351, 14698529, 14698711, 14698889, 14699057, 14699227, 14699381, 14699561, 14699743, 14699899, 14700079, 14700221, 14700401]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14697703 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14697703 14700401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14697703) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14700583, 14700761, 14700943, 14701103, 14701279, 14701457, 14701597, 14701777, 14701961, 14702141, 14702309, 14702491, 14702669, 14702851, 14702993, 14703167]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14700401 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14700401 14703167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14700401) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14703347, 14703523, 14703697, 14703881, 14704057, 14704223, 14704387, 14704559, 14704741, 14704913, 14705083, 14705239, 14705419, 14705599, 14705767, 14705893]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14703167 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14703167 14705893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14703167) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14706077, 14706259, 14706421, 14706583, 14706763, 14706941, 14707123, 14707291, 14707457, 14707633, 14707813, 14707969, 14708153, 14708333, 14708467, 14708581]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14705893 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14705893 14708581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14705893) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14708761, 14708923, 14709077, 14709217, 14709389, 14709571, 14709701, 14709847, 14710019, 14710193, 14710369, 14710499, 14710667, 14710849, 14711029, 14711209]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14708581 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14708581 14711209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14708581) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14711383, 14711563, 14711731, 14711911, 14712083, 14712253, 14712437, 14712589, 14712767, 14712937, 14713093, 14713273, 14713423, 14713607, 14713739, 14713889]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14711209 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14711209 14713889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14711209) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14714059, 14714239, 14714407, 14714573, 14714743, 14714923, 14715083, 14715263, 14715427, 14715593, 14715737, 14715913, 14716087, 14716267, 14716447, 14716627]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14713889 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14713889 14716627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14713889) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14716777, 14716957, 14717119, 14717299, 14717473, 14717657, 14717831, 14718013, 14718173, 14718349, 14718527, 14718703, 14718887, 14719069, 14719247, 14719403]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14716627 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14716627 14719403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14716627) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14719583, 14719763, 14719921, 14720099, 14720281, 14720417, 14720597, 14720773, 14720941, 14721101, 14721281, 14721463, 14721611, 14721767, 14721919, 14722087]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14719403 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14719403 14722087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14719403) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14722271, 14722439, 14722607, 14722753, 14722933, 14723113, 14723281, 14723389, 14723573, 14723741, 14723923, 14724097, 14724277, 14724443, 14724613, 14724769]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14722087 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14722087 14724769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14722087) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14724949, 14725091, 14725253, 14725433, 14725609, 14725783, 14725951, 14726123, 14726297, 14726477, 14726659, 14726827, 14727007, 14727191, 14727359, 14727541]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14724769 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14724769 14727541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14724769) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14727709, 14727893, 14728039, 14728213, 14728397, 14728573, 14728757, 14728913, 14729093, 14729261, 14729443, 14729623, 14729801, 14729983, 14730139, 14730319]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14727541 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14727541 14730319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14727541) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14730461, 14730641, 14730817, 14731001, 14731147, 14731331, 14731511, 14731693, 14731823, 14731993, 14732173, 14732329, 14732513, 14732671, 14732849, 14733007]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14730319 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14730319 14733007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14730319) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14733181, 14733347, 14733529, 14733709, 14733877, 14734061, 14734229, 14734411, 14734571, 14734739, 14734919, 14735093, 14735267, 14735437, 14735603, 14735783]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14733007 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14733007 14735783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14733007) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14735947, 14736119, 14736287, 14736431, 14736599, 14736781, 14736949, 14737117, 14737301, 14737477, 14737643, 14737823, 14737993, 14738159, 14738341, 14738519]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14735783 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14735783 14738519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14735783) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14738701, 14738879, 14739037, 14739199, 14739371, 14739551, 14739733, 14739889, 14740073, 14740237, 14740403, 14740577, 14740757, 14740937, 14741107, 14741267]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14738519 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14738519 14741267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14738519) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14741437, 14741603, 14741767, 14741927, 14742097, 14742257, 14742439, 14742617, 14742799, 14742967, 14743147, 14743331, 14743499, 14743669, 14743847, 14744021]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14741267 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14741267 14744021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14741267) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14744201, 14744381, 14744563, 14744713, 14744881, 14745053, 14745223, 14745407, 14745559, 14745727, 14745901, 14746063, 14746229, 14746409, 14746553, 14746733]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14744021 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14744021 14746733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14744021) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14746903, 14747087, 14747267, 14747441, 14747611, 14747779, 14747951, 14748133, 14748301, 14748473, 14748619, 14748779, 14748931, 14749109, 14749289, 14749457]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14746733 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14746733 14749457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14746733) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14749633, 14749811, 14749979, 14750149, 14750317, 14750501, 14750663, 14750833, 14751017, 14751181, 14751361, 14751509, 14751689, 14751833, 14752013, 14752181]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14749457 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14749457 14752181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14749457) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14752357, 14752541, 14752723, 14752897, 14753069, 14753251, 14753423, 14753597, 14753759, 14753929, 14754097, 14754269, 14754451, 14754631, 14754809, 14754991]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14752181 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14752181 14754991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14752181) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14755129, 14755313, 14755483, 14755661, 14755831, 14756011, 14756191, 14756333, 14756509, 14756689, 14756873, 14757049, 14757221, 14757397, 14757571, 14757749]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14754991 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14754991 14757749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14754991) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14757907, 14758087, 14758267, 14758451, 14758631, 14758813, 14758993, 14759167, 14759351, 14759531, 14759711, 14759887, 14760071, 14760211, 14760379, 14760547]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14757749 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14757749 14760547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14757749) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14760721, 14760901, 14761079, 14761247, 14761421, 14761603, 14761781, 14761961, 14762141, 14762323, 14762507, 14762689, 14762843, 14763017, 14763197, 14763379]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14760547 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14760547 14763379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14760547) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14763559, 14763743, 14763911, 14764069, 14764249, 14764433, 14764613, 14764759, 14764943, 14765117, 14765293, 14765459, 14765593, 14765759, 14765939, 14766077]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14763379 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14763379 14766077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14763379) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14766259, 14766431, 14766569, 14766751, 14766919, 14767099, 14767273, 14767457, 14767589, 14767733, 14767903, 14768081, 14768261, 14768443, 14768623, 14768791]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14766077 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14766077 14768791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14766077) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14768953, 14769127, 14769263, 14769431, 14769607, 14769791, 14769971, 14770153, 14770333, 14770513, 14770687, 14770843, 14771023, 14771201, 14771381, 14771563]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14768791 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14768791 14771563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14768791) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14684029 14689447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14684029)
    (mid := 14686747) (hi := 14689447) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14689447 14694991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14689447)
    (mid := 14692169) (hi := 14694991) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14694991 14700401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14694991)
    (mid := 14697703) (hi := 14700401) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14700401 14705893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14700401)
    (mid := 14703167) (hi := 14705893) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14705893 14711209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14705893)
    (mid := 14708581) (hi := 14711209) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14711209 14716627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14711209)
    (mid := 14713889) (hi := 14716627) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14716627 14722087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14716627)
    (mid := 14719403) (hi := 14722087) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14722087 14727541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14722087)
    (mid := 14724769) (hi := 14727541) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14727541 14733007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14727541)
    (mid := 14730319) (hi := 14733007) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14733007 14738519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14733007)
    (mid := 14735783) (hi := 14738519) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14738519 14744021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14738519)
    (mid := 14741267) (hi := 14744021) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14744021 14749457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14744021)
    (mid := 14746733) (hi := 14749457) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14749457 14754991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14749457)
    (mid := 14752181) (hi := 14754991) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14754991 14760547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14754991)
    (mid := 14757749) (hi := 14760547) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14760547 14766077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14760547)
    (mid := 14763379) (hi := 14766077) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14766077 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14766077)
    (mid := 14768791) (hi := 14771563) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14684029 14694991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14684029)
    (mid := 14689447) (hi := 14694991) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14694991 14705893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14694991)
    (mid := 14700401) (hi := 14705893) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14705893 14716627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14705893)
    (mid := 14711209) (hi := 14716627) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14716627 14727541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14716627)
    (mid := 14722087) (hi := 14727541) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14727541 14738519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14727541)
    (mid := 14733007) (hi := 14738519) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14738519 14749457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14738519)
    (mid := 14744021) (hi := 14749457) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14749457 14760547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14749457)
    (mid := 14754991) (hi := 14760547) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14760547 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14760547)
    (mid := 14766077) (hi := 14771563) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14684029 14705893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14684029)
    (mid := 14694991) (hi := 14705893) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14705893 14727541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14705893)
    (mid := 14716627) (hi := 14727541) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14727541 14749457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14727541)
    (mid := 14738519) (hi := 14749457) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14749457 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14749457)
    (mid := 14760547) (hi := 14771563) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14684029 14727541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14684029)
    (mid := 14705893) (hi := 14727541) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14727541 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14727541)
    (mid := 14749457) (hi := 14771563) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14684029 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14684029)
    (mid := 14727541) (hi := 14771563) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14684029 14771563 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block167

#print axioms B699MiddleExtension.PrimorialBlocks.Block167.joined
