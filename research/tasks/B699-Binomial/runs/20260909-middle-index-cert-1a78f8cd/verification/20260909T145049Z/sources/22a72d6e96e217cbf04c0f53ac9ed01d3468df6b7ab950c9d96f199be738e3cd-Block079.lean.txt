import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block079

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6975929, 6976111, 6976289, 6976471, 6976637, 6976787, 6976961, 6977141, 6977317, 6977491, 6977639, 6977813, 6977969, 6978133, 6978287, 6978469]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6975769 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6975769 6978469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6975769) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6978649, 6978809, 6978991, 6979153, 6979303, 6979487, 6979667, 6979831, 6979967, 6980137, 6980317, 6980497, 6980681, 6980849, 6981011, 6981181]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6978469 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6978469 6981181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6978469) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6981349, 6981503, 6981671, 6981853, 6982033, 6982207, 6982369, 6982553, 6982721, 6982901, 6983077, 6983261, 6983437, 6983609, 6983749, 6983843]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6981181 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6981181 6983843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6981181) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6984023, 6984193, 6984371, 6984547, 6984727, 6984907, 6985081, 6985247, 6985427, 6985609, 6985789, 6985973, 6986123, 6986299, 6986453, 6986627]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6983843 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6983843 6986627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6983843) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6986807, 6986981, 6987163, 6987293, 6987473, 6987619, 6987797, 6987979, 6988141, 6988321, 6988483, 6988643, 6988811, 6988991, 6989153, 6989327]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6986627 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6986627 6989327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6986627) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6989509, 6989687, 6989869, 6990041, 6990199, 6990371, 6990547, 6990721, 6990901, 6991043, 6991147, 6991319, 6991493, 6991667, 6991847, 6991997]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6989327 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6989327 6991997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6989327) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6992179, 6992353, 6992507, 6992681, 6992849, 6992983, 6993167, 6993323, 6993499, 6993677, 6993853, 6994027, 6994201, 6994373, 6994549, 6994727]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6991997 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6991997 6994727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6991997) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6994903, 6995077, 6995231, 6995411, 6995567, 6995719, 6995899, 6996083, 6996257, 6996433, 6996611, 6996739, 6996923, 6997097, 6997273, 6997457]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6994727 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6994727 6997457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6994727) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6997633, 6997817, 6997967, 6998113, 6998297, 6998473, 6998627, 6998779, 6998941, 6999103, 6999283, 6999463, 6999647, 6999829, 7000009, 7000181]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6997457 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6997457 7000181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6997457) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7000351, 7000523, 7000703, 7000849, 7001021, 7001123, 7001287, 7001437, 7001597, 7001779, 7001927, 7002109, 7002293, 7002451, 7002631, 7002803]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7000181 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7000181 7002803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7000181) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7002979, 7003163, 7003327, 7003487, 7003657, 7003811, 7003991, 7004159, 7004339, 7004513, 7004681, 7004843, 7005023, 7005203, 7005373, 7005541]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7002803 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7002803 7005541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7002803) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7005703, 7005877, 7005997, 7006177, 7006361, 7006541, 7006723, 7006903, 7007087, 7007267, 7007449, 7007633, 7007813, 7007993, 7008173, 7008341]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7005541 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7005541 7008341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7005541) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7008523, 7008707, 7008889, 7009031, 7009201, 7009363, 7009547, 7009711, 7009889, 7010051, 7010231, 7010359, 7010543, 7010719, 7010891, 7011073]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7008341 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7008341 7011073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7008341) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7011253, 7011379, 7011559, 7011743, 7011919, 7012099, 7012283, 7012429, 7012613, 7012793, 7012969, 7013143, 7013327, 7013491, 7013659, 7013807]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7011073 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7011073 7013807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7011073) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7013971, 7014151, 7014323, 7014503, 7014677, 7014859, 7015039, 7015213, 7015363, 7015537, 7015721, 7015891, 7016071, 7016237, 7016413, 7016561]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7013807 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7013807 7016561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7013807) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7016743, 7016923, 7017097, 7017281, 7017431, 7017613, 7017793, 7017977, 7018139, 7018321, 7018499, 7018673, 7018829, 7019003, 7019153, 7019329]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7016561 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7016561 7019329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7016561) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7019503, 7019641, 7019801, 7019953, 7020131, 7020311, 7020487, 7020667, 7020829, 7020991, 7021163, 7021331, 7021501, 7021657, 7021789, 7021951]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7019329 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7019329 7021951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7019329) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7022131, 7022297, 7022467, 7022651, 7022831, 7023011, 7023187, 7023371, 7023551, 7023721, 7023881, 7024057, 7024231, 7024411, 7024579, 7024763]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7021951 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7021951 7024763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7021951) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7024939, 7025113, 7025287, 7025467, 7025651, 7025831, 7026013, 7026197, 7026379, 7026541, 7026689, 7026871, 7027043, 7027219, 7027403, 7027577]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7024763 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7024763 7027577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7024763) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7027759, 7027939, 7028111, 7028279, 7028459, 7028627, 7028797, 7028977, 7029161, 7029331, 7029479, 7029661, 7029833, 7030013, 7030193, 7030363]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7027577 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7027577 7030363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7027577) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7030531, 7030697, 7030873, 7031051, 7031209, 7031393, 7031573, 7031753, 7031909, 7032083, 7032251, 7032409, 7032589, 7032749, 7032931, 7033111]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7030363 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7030363 7033111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7030363) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7033289, 7033451, 7033633, 7033813, 7033997, 7034173, 7034341, 7034519, 7034701, 7034857, 7035037, 7035221, 7035403, 7035577, 7035751, 7035913]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7033111 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7033111 7035913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7033111) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7036097, 7036261, 7036423, 7036591, 7036769, 7036933, 7037101, 7037267, 7037417, 7037593, 7037729, 7037909, 7038089, 7038263, 7038419, 7038599]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7035913 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7035913 7038599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7035913) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7038763, 7038947, 7039129, 7039283, 7039457, 7039607, 7039789, 7039973, 7040129, 7040287, 7040443, 7040623, 7040797, 7040981, 7041163, 7041341]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7038599 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7038599 7041341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7038599) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7041523, 7041707, 7041883, 7042051, 7042229, 7042391, 7042523, 7042681, 7042843, 7043017, 7043191, 7043369, 7043539, 7043717, 7043887, 7044061]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7041341 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7041341 7044061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7041341) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7044229, 7044413, 7044589, 7044769, 7044949, 7045127, 7045309, 7045487, 7045669, 7045849, 7046029, 7046213, 7046387, 7046561, 7046737, 7046917]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7044061 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7044061 7046917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7044061) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7047097, 7047277, 7047457, 7047629, 7047787, 7047967, 7048141, 7048309, 7048493, 7048673, 7048801, 7048973, 7049153, 7049333, 7049507, 7049687]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7046917 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7046917 7049687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7046917) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7049857, 7050037, 7050217, 7050391, 7050569, 7050737, 7050917, 7051091, 7051259, 7051433, 7051607, 7051771, 7051949, 7052113, 7052281, 7052431]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7049687 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7049687 7052431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7049687) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7052611, 7052753, 7052921, 7053049, 7053229, 7053407, 7053587, 7053733, 7053911, 7054093, 7054273, 7054447, 7054613, 7054787, 7054963, 7055143]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7052431 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7052431 7055143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7052431) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7055317, 7055491, 7055651, 7055819, 7055989, 7056167, 7056349, 7056523, 7056703, 7056857, 7057033, 7057201, 7057381, 7057559, 7057741, 7057903]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7055143 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7055143 7057903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7055143) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7058081, 7058257, 7058431, 7058609, 7058783, 7058963, 7059133, 7059313, 7059491, 7059631, 7059791, 7059953, 7060111, 7060279, 7060463, 7060639]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7057903 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7057903 7060639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7057903) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7060817, 7060973, 7061111, 7061281, 7061449, 7061633, 7061807, 7061983, 7062149, 7062329, 7062511, 7062691, 7062859, 7063039, 7063213, 7063367]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7060639 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7060639 7063367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7060639) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6975769 6981181 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6975769)
    (mid := 6978469) (hi := 6981181) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6981181 6986627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6981181)
    (mid := 6983843) (hi := 6986627) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6986627 6991997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6986627)
    (mid := 6989327) (hi := 6991997) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6991997 6997457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6991997)
    (mid := 6994727) (hi := 6997457) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6997457 7002803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6997457)
    (mid := 7000181) (hi := 7002803) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7002803 7008341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7002803)
    (mid := 7005541) (hi := 7008341) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7008341 7013807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7008341)
    (mid := 7011073) (hi := 7013807) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7013807 7019329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7013807)
    (mid := 7016561) (hi := 7019329) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7019329 7024763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7019329)
    (mid := 7021951) (hi := 7024763) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7024763 7030363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7024763)
    (mid := 7027577) (hi := 7030363) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7030363 7035913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7030363)
    (mid := 7033111) (hi := 7035913) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7035913 7041341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7035913)
    (mid := 7038599) (hi := 7041341) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7041341 7046917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7041341)
    (mid := 7044061) (hi := 7046917) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7046917 7052431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7046917)
    (mid := 7049687) (hi := 7052431) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7052431 7057903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7052431)
    (mid := 7055143) (hi := 7057903) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7057903 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7057903)
    (mid := 7060639) (hi := 7063367) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6975769 6986627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6975769)
    (mid := 6981181) (hi := 6986627) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6986627 6997457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6986627)
    (mid := 6991997) (hi := 6997457) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6997457 7008341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6997457)
    (mid := 7002803) (hi := 7008341) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7008341 7019329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7008341)
    (mid := 7013807) (hi := 7019329) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7019329 7030363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7019329)
    (mid := 7024763) (hi := 7030363) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7030363 7041341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7030363)
    (mid := 7035913) (hi := 7041341) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7041341 7052431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7041341)
    (mid := 7046917) (hi := 7052431) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7052431 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7052431)
    (mid := 7057903) (hi := 7063367) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6975769 6997457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6975769)
    (mid := 6986627) (hi := 6997457) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6997457 7019329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6997457)
    (mid := 7008341) (hi := 7019329) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7019329 7041341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7019329)
    (mid := 7030363) (hi := 7041341) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7041341 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7041341)
    (mid := 7052431) (hi := 7063367) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6975769 7019329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6975769)
    (mid := 6997457) (hi := 7019329) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7019329 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7019329)
    (mid := 7041341) (hi := 7063367) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6975769 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6975769)
    (mid := 7019329) (hi := 7063367) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6975769 7063367 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block079

#print axioms B699MiddleExtension.PrimorialBlocks.Block079.joined
