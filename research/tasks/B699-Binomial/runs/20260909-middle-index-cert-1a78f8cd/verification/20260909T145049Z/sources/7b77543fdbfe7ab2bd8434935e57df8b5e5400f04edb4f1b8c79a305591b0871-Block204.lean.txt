import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block204

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17916193, 17916359, 17916539, 17916721, 17916893, 17917051, 17917231, 17917397, 17917577, 17917751, 17917919, 17918077, 17918239, 17918419, 17918597, 17918779]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17916013 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17916013 17918779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17916013) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17918963, 17919133, 17919311, 17919493, 17919677, 17919851, 17920033, 17920181, 17920351, 17920517, 17920699, 17920879, 17921063, 17921231, 17921399, 17921569]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17918779 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17918779 17921569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17918779) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17921753, 17921933, 17922101, 17922269, 17922431, 17922613, 17922797, 17922977, 17923159, 17923343, 17923523, 17923687, 17923861, 17924033, 17924209, 17924363]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17921569 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17921569 17924363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17921569) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17924537, 17924717, 17924899, 17925053, 17925233, 17925359, 17925527, 17925703, 17925881, 17926057, 17926231, 17926373, 17926547, 17926703, 17926837, 17927011]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17924363 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17924363 17927011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17924363) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17927183, 17927363, 17927543, 17927699, 17927873, 17928049, 17928227, 17928401, 17928563, 17928739, 17928923, 17929099, 17929283, 17929463, 17929643, 17929799]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17927011 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17927011 17929799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17927011) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17929981, 17930153, 17930327, 17930491, 17930669, 17930821, 17930999, 17931161, 17931337, 17931509, 17931629, 17931803, 17931971, 17932153, 17932279, 17932463]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17929799 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17929799 17932463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17929799) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17932639, 17932823, 17932997, 17933171, 17933327, 17933497, 17933653, 17933833, 17934013, 17934187, 17934361, 17934491, 17934667, 17934821, 17935003, 17935139]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17932463 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17932463 17935139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17932463) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17935319, 17935501, 17935679, 17935849, 17936029, 17936201, 17936381, 17936539, 17936701, 17936873, 17937043, 17937211, 17937391, 17937571, 17937719, 17937901]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17935139 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17935139 17937901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17935139) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17938069, 17938241, 17938423, 17938601, 17938777, 17938939, 17939123, 17939303, 17939473, 17939657, 17939821, 17939989, 17940163, 17940317, 17940499, 17940679]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17937901 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17937901 17940679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17937901) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17940863, 17941039, 17941213, 17941397, 17941571, 17941751, 17941907, 17942083, 17942261, 17942443, 17942627, 17942797, 17942971, 17943131, 17943311, 17943491]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17940679 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17940679 17943491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17940679) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17943661, 17943829, 17943971, 17944103, 17944279, 17944453, 17944637, 17944813, 17944967, 17945143, 17945309, 17945483, 17945657, 17945831, 17946001, 17946163]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17943491 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17943491 17946163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17943491) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17946347, 17946529, 17946703, 17946833, 17946991, 17947157, 17947333, 17947483, 17947639, 17947823, 17947987, 17948171, 17948353, 17948537, 17948713, 17948893]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17946163 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17946163 17948893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17946163) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17949077, 17949257, 17949427, 17949593, 17949761, 17949931, 17950111, 17950279, 17950463, 17950637, 17950817, 17950987, 17951161, 17951341, 17951501, 17951671]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17948893 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17948893 17951671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17948893) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17951839, 17951981, 17952163, 17952329, 17952509, 17952691, 17952859, 17953009, 17953193, 17953373, 17953549, 17953729, 17953913, 17954089, 17954257, 17954441]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17951671 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17951671 17954441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17951671) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17954617, 17954773, 17954929, 17955109, 17955277, 17955449, 17955629, 17955809, 17955967, 17956129, 17956297, 17956459, 17956637, 17956819, 17956999, 17957183]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17954441 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17954441 17957183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17954441) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17957353, 17957519, 17957701, 17957881, 17958053, 17958233, 17958407, 17958587, 17958769, 17958947, 17959127, 17959273, 17959433, 17959609, 17959793, 17959967]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17957183 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17957183 17959967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17957183) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17960147, 17960297, 17960477, 17960647, 17960827, 17960983, 17961131, 17961301, 17961481, 17961653, 17961833, 17961967, 17962129, 17962303, 17962463, 17962643]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17959967 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17959967 17962643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17959967) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17962817, 17962969, 17963147, 17963321, 17963503, 17963677, 17963837, 17964013, 17964197, 17964377, 17964547, 17964731, 17964901, 17965069, 17965253, 17965427]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17962643 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17962643 17965427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17962643) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17965601, 17965741, 17965907, 17966089, 17966261, 17966411, 17966581, 17966731, 17966899, 17967083, 17967251, 17967401, 17967541, 17967707, 17967883, 17968063]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17965427 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17965427 17968063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17965427) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17968231, 17968411, 17968591, 17968771, 17968903, 17969069, 17969249, 17969423, 17969593, 17969771, 17969951, 17970133, 17970311, 17970481, 17970653, 17970817]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17968063 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17968063 17970817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17968063) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17971001, 17971183, 17971367, 17971517, 17971697, 17971871, 17972023, 17972203, 17972387, 17972569, 17972743, 17972891, 17973073, 17973247, 17973427, 17973611]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17970817 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17970817 17973611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17970817) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17973793, 17973973, 17974111, 17974273, 17974447, 17974631, 17974813, 17974993, 17975173, 17975357, 17975537, 17975693, 17975873, 17976037, 17976221, 17976397]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17973611 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17973611 17976397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17973611) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17976577, 17976757, 17976929, 17977093, 17977273, 17977457, 17977633, 17977811, 17977991, 17978167, 17978339, 17978509, 17978689, 17978839, 17979001, 17979179]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17976397 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17976397 17979179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17976397) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17979337, 17979509, 17979683, 17979809, 17979937, 17980103, 17980283, 17980463, 17980643, 17980819, 17981003, 17981177, 17981357, 17981521, 17981693, 17981857]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17979179 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17979179 17981857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17979179) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17982031, 17982203, 17982359, 17982541, 17982709, 17982859, 17983037, 17983211, 17983391, 17983573, 17983717, 17983883, 17984059, 17984243, 17984411, 17984591]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17981857 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17981857 17984591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17981857) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17984761, 17984909, 17985089, 17985271, 17985329, 17985493, 17985637, 17985809, 17985991, 17986159, 17986343, 17986523, 17986679, 17986841, 17986999, 17987183]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17984591 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17984591 17987183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17984591) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17987351, 17987527, 17987693, 17987869, 17988043, 17988211, 17988391, 17988563, 17988743, 17988913, 17989091, 17989273, 17989453, 17989627, 17989759, 17989943]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17987183 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17987183 17989943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17987183) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17990113, 17990293, 17990461, 17990627, 17990809, 17990983, 17991167, 17991349, 17991517, 17991691, 17991871, 17992019, 17992193, 17992333, 17992517, 17992697]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17989943 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17989943 17992697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17989943) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17992853, 17993011, 17993177, 17993357, 17993539, 17993713, 17993897, 17994079, 17994259, 17994437, 17994607, 17994791, 17994961, 17995141, 17995319, 17995493]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17992697 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17992697 17995493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17992697) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17995669, 17995853, 17995997, 17996177, 17996351, 17996533, 17996707, 17996873, 17997053, 17997233, 17997403, 17997587, 17997767, 17997943, 17998109, 17998289]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17995493 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17995493 17998289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17995493) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17998471, 17998619, 17998793, 17998973, 17999119, 17999291, 17999473, 17999609, 17999789, 17999959, 18000139, 18000319, 18000473, 18000649, 18000821, 18000989]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17998289 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17998289 18000989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17998289) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18001153, 18001307, 18001471, 18001639, 18001817, 18001999, 18002161, 18002293, 18002477, 18002659, 18002843, 18003023, 18003191, 18003373, 18003539, 18003703]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18000989 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18000989 18003703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18000989) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17916013 17921569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 17918779) (hi := 17921569) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17921569 17927011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17921569)
    (mid := 17924363) (hi := 17927011) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17927011 17932463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17927011)
    (mid := 17929799) (hi := 17932463) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17932463 17937901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17932463)
    (mid := 17935139) (hi := 17937901) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17937901 17943491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17937901)
    (mid := 17940679) (hi := 17943491) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17943491 17948893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17943491)
    (mid := 17946163) (hi := 17948893) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17948893 17954441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17948893)
    (mid := 17951671) (hi := 17954441) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17954441 17959967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17954441)
    (mid := 17957183) (hi := 17959967) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17959967 17965427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17959967)
    (mid := 17962643) (hi := 17965427) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17965427 17970817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17965427)
    (mid := 17968063) (hi := 17970817) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17970817 17976397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17970817)
    (mid := 17973611) (hi := 17976397) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17976397 17981857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17976397)
    (mid := 17979179) (hi := 17981857) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17981857 17987183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17981857)
    (mid := 17984591) (hi := 17987183) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17987183 17992697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17987183)
    (mid := 17989943) (hi := 17992697) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17992697 17998289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17992697)
    (mid := 17995493) (hi := 17998289) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17998289 18003703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17998289)
    (mid := 18000989) (hi := 18003703) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17916013 17927011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 17921569) (hi := 17927011) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17927011 17937901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17927011)
    (mid := 17932463) (hi := 17937901) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17937901 17948893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17937901)
    (mid := 17943491) (hi := 17948893) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17948893 17959967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17948893)
    (mid := 17954441) (hi := 17959967) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17959967 17970817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17959967)
    (mid := 17965427) (hi := 17970817) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17970817 17981857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17970817)
    (mid := 17976397) (hi := 17981857) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17981857 17992697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17981857)
    (mid := 17987183) (hi := 17992697) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17992697 18003703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17992697)
    (mid := 17998289) (hi := 18003703) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17916013 17937901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 17927011) (hi := 17937901) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17937901 17959967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17937901)
    (mid := 17948893) (hi := 17959967) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17959967 17981857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17959967)
    (mid := 17970817) (hi := 17981857) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17981857 18003703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17981857)
    (mid := 17992697) (hi := 18003703) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17916013 17959967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 17937901) (hi := 17959967) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17959967 18003703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17959967)
    (mid := 17981857) (hi := 18003703) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17916013 18003703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 17959967) (hi := 18003703) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17916013 18003703 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block204

#print axioms B699MiddleExtension.PrimorialBlocks.Block204.joined
