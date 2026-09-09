import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block184

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16169581, 16169761, 16169939, 16170101, 16170283, 16170461, 16170631, 16170811, 16170991, 16171171, 16171339, 16171523, 16171699, 16171877, 16172047, 16172231]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16169423 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16169423 16172231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16169423) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16172407, 16172587, 16172759, 16172927, 16173061, 16173211, 16173359, 16173539, 16173709, 16173889, 16174051, 16174229, 16174409, 16174573, 16174747, 16174927]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16172231 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16172231 16174927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16172231) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16175077, 16175227, 16175407, 16175563, 16175737, 16175921, 16176103, 16176271, 16176449, 16176631, 16176791, 16176973, 16177153, 16177309, 16177477, 16177661]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16174927 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16174927 16177661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16174927) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16177817, 16177963, 16178137, 16178321, 16178431, 16178599, 16178783, 16178957, 16179041, 16179211, 16179391, 16179571, 16179749, 16179931, 16180091, 16180259]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16177661 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16177661 16180259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16177661) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16180441, 16180607, 16180789, 16180973, 16181153, 16181317, 16181497, 16181647, 16181821, 16181999, 16182161, 16182337, 16182511, 16182689, 16182863, 16183043]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16180259 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16180259 16183043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16180259) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16183207, 16183379, 16183549, 16183723, 16183901, 16184057, 16184227, 16184369, 16184551, 16184723, 16184897, 16185079, 16185259, 16185401, 16185571, 16185749]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16183043 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16183043 16185749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16183043) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16185919, 16186097, 16186259, 16186441, 16186607, 16186769, 16186939, 16187123, 16187273, 16187443, 16187627, 16187777, 16187959, 16188103, 16188283, 16188463]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16185749 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16185749 16188463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16185749) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16188643, 16188827, 16189001, 16189181, 16189363, 16189531, 16189709, 16189889, 16190011, 16190143, 16190327, 16190509, 16190687, 16190843, 16191001, 16191179]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16188463 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16188463 16191179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16188463) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16191353, 16191529, 16191713, 16191887, 16192027, 16192201, 16192369, 16192543, 16192723, 16192861, 16193011, 16193189, 16193369, 16193519, 16193689, 16193869]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16191179 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16191179 16193869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16191179) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16194041, 16194223, 16194391, 16194569, 16194719, 16194889, 16195061, 16195229, 16195409, 16195591, 16195763, 16195939, 16196119, 16196287, 16196459, 16196627]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16193869 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16193869 16196627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16193869) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16196783, 16196951, 16197119, 16197289, 16197421, 16197581, 16197761, 16197917, 16198099, 16198283, 16198459, 16198613, 16198783, 16198951, 16199123, 16199299]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16196627 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16196627 16199299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16196627) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16199483, 16199653, 16199803, 16199971, 16200143, 16200307, 16200491, 16200641, 16200799, 16200979, 16201139, 16201321, 16201501, 16201681, 16201837, 16202009]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16199299 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16199299 16202009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16199299) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16202177, 16202353, 16202489, 16202657, 16202807, 16202983, 16203163, 16203337, 16203511, 16203679, 16203851, 16204031, 16204211, 16204393, 16204577, 16204753]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16202009 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16202009 16204753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16202009) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16204933, 16205107, 16205279, 16205447, 16205627, 16205801, 16205977, 16206143, 16206299, 16206479, 16206653, 16206833, 16207003, 16207129, 16207313, 16207487]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16204753 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16204753 16207487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16204753) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16207661, 16207843, 16207999, 16208173, 16208347, 16208503, 16208683, 16208867, 16209049, 16209203, 16209359, 16209541, 16209707, 16209889, 16210069, 16210237]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16207487 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16207487 16210237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16207487) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16210409, 16210559, 16210709, 16210889, 16211071, 16211231, 16211411, 16211581, 16211747, 16211929, 16212107, 16212281, 16212451, 16212629, 16212811, 16212983]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16210237 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16210237 16212983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16210237) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16213159, 16213331, 16213513, 16213679, 16213853, 16214021, 16214179, 16214351, 16214533, 16214713, 16214897, 16215079, 16215259, 16215443, 16215557, 16215707]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16212983 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16212983 16215707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16212983) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16215887, 16216061, 16216241, 16216399, 16216583, 16216763, 16216943, 16217087, 16217251, 16217429, 16217611, 16217791, 16217969, 16218133, 16218299, 16218481]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16215707 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16215707 16218481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16215707) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16218637, 16218809, 16218991, 16219171, 16219349, 16219523, 16219633, 16219817, 16219981, 16220143, 16220287, 16220459, 16220641, 16220807, 16220977, 16221151]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16218481 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16218481 16221151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16218481) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16221323, 16221493, 16221677, 16221857, 16222039, 16222211, 16222387, 16222553, 16222733, 16222907, 16223089, 16223239, 16223411, 16223551, 16223719, 16223903]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16221151 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16221151 16223903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16221151) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16224073, 16224227, 16224391, 16224557, 16224737, 16224893, 16225063, 16225247, 16225427, 16225597, 16225777, 16225961, 16226141, 16226317, 16226501, 16226681]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16223903 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16223903 16226681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16223903) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16226809, 16226927, 16227109, 16227293, 16227473, 16227649, 16227821, 16228001, 16228129, 16228309, 16228493, 16228669, 16228853, 16229029, 16229137, 16229321]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16226681 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16226681 16229321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16226681) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16229503, 16229687, 16229869, 16230043, 16230217, 16230377, 16230553, 16230707, 16230889, 16231069, 16231217, 16231393, 16231573, 16231751, 16231933, 16232107]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16229321 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16229321 16232107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16229321) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16232219, 16232401, 16232551, 16232731, 16232911, 16233067, 16233247, 16233431, 16233599, 16233779, 16233911, 16234087, 16234261, 16234423, 16234591, 16234753]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16232107 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16232107 16234753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16232107) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16234937, 16235117, 16235281, 16235449, 16235627, 16235809, 16235977, 16236161, 16236307, 16236487, 16236637, 16236799, 16236953, 16237127, 16237307, 16237489]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16234753 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16234753 16237489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16234753) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16237673, 16237849, 16238029, 16238143, 16238311, 16238489, 16238659, 16238813, 16238987, 16239169, 16239341, 16239521, 16239631, 16239791, 16239967, 16240127]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16237489 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16237489 16240127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16237489) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16240303, 16240487, 16240657, 16240837, 16241011, 16241167, 16241339, 16241513, 16241669, 16241833, 16242007, 16242167, 16242329, 16242491, 16242671, 16242841]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16240127 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16240127 16242841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16240127) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16243021, 16243193, 16243363, 16243531, 16243699, 16243883, 16244047, 16244219, 16244399, 16244581, 16244749, 16244929, 16245091, 16245241, 16245407, 16245577]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16242841 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16242841 16245577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16242841) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16245739, 16245919, 16246103, 16246283, 16246457, 16246639, 16246799, 16246969, 16247149, 16247327, 16247509, 16247669, 16247837, 16248017, 16248181, 16248361]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16245577 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16245577 16248361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16245577) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16248527, 16248703, 16248877, 16249049, 16249223, 16249403, 16249567, 16249741, 16249901, 16250041, 16250209, 16250347, 16250501, 16250671, 16250831, 16251007]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16248361 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16248361 16251007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16248361) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16251173, 16251307, 16251451, 16251623, 16251799, 16251953, 16252133, 16252307, 16252487, 16252637, 16252813, 16252993, 16253147, 16253327, 16253491, 16253651]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16251007 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16251007 16253651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16251007) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16253821, 16254001, 16254179, 16254361, 16254503, 16254683, 16254841, 16254991, 16255171, 16255313, 16255493, 16255667, 16255847, 16256011, 16256179, 16256363]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16253651 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16253651 16256363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16253651) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16169423 16174927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16172231) (hi := 16174927) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16174927 16180259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16174927)
    (mid := 16177661) (hi := 16180259) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16180259 16185749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16180259)
    (mid := 16183043) (hi := 16185749) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16185749 16191179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16185749)
    (mid := 16188463) (hi := 16191179) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16191179 16196627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16191179)
    (mid := 16193869) (hi := 16196627) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16196627 16202009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16196627)
    (mid := 16199299) (hi := 16202009) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16202009 16207487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16202009)
    (mid := 16204753) (hi := 16207487) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16207487 16212983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16207487)
    (mid := 16210237) (hi := 16212983) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16212983 16218481 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16212983)
    (mid := 16215707) (hi := 16218481) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16218481 16223903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16218481)
    (mid := 16221151) (hi := 16223903) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16223903 16229321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16223903)
    (mid := 16226681) (hi := 16229321) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16229321 16234753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16229321)
    (mid := 16232107) (hi := 16234753) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16234753 16240127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16234753)
    (mid := 16237489) (hi := 16240127) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16240127 16245577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16240127)
    (mid := 16242841) (hi := 16245577) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16245577 16251007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16245577)
    (mid := 16248361) (hi := 16251007) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16251007 16256363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16251007)
    (mid := 16253651) (hi := 16256363) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16169423 16180259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16174927) (hi := 16180259) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16180259 16191179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16180259)
    (mid := 16185749) (hi := 16191179) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16191179 16202009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16191179)
    (mid := 16196627) (hi := 16202009) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16202009 16212983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16202009)
    (mid := 16207487) (hi := 16212983) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16212983 16223903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16212983)
    (mid := 16218481) (hi := 16223903) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16223903 16234753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16223903)
    (mid := 16229321) (hi := 16234753) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16234753 16245577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16234753)
    (mid := 16240127) (hi := 16245577) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16245577 16256363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16245577)
    (mid := 16251007) (hi := 16256363) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16169423 16191179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16180259) (hi := 16191179) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16191179 16212983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16191179)
    (mid := 16202009) (hi := 16212983) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16212983 16234753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16212983)
    (mid := 16223903) (hi := 16234753) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16234753 16256363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16234753)
    (mid := 16245577) (hi := 16256363) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16169423 16212983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16191179) (hi := 16212983) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16212983 16256363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16212983)
    (mid := 16234753) (hi := 16256363) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16169423 16256363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16212983) (hi := 16256363) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16169423 16256363 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block184

#print axioms B699MiddleExtension.PrimorialBlocks.Block184.joined
