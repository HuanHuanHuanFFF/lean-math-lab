import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block134

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11795089, 11795239, 11795419, 11795591, 11795743, 11795923, 11796101, 11796277, 11796443, 11796619, 11796803, 11796979, 11797139, 11797319, 11797493, 11797663]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11794907 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11794907 11797663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11794907) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11797837, 11798021, 11798191, 11798359, 11798543, 11798723, 11798903, 11799079, 11799257, 11799439, 11799617, 11799797, 11799979, 11800163, 11800343, 11800519]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11797663 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11797663 11800519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11797663) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11800673, 11800853, 11801017, 11801201, 11801353, 11801513, 11801693, 11801873, 11802017, 11802191, 11802367, 11802551, 11802731, 11802899, 11803067, 11803249]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11800519 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11800519 11803249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11800519) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11803411, 11803573, 11803751, 11803931, 11804113, 11804257, 11804423, 11804603, 11804759, 11804941, 11805119, 11805271, 11805439, 11805533, 11805713, 11805889]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11803249 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11803249 11805889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11803249) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11806063, 11806241, 11806423, 11806607, 11806783, 11806967, 11807141, 11807297, 11807473, 11807657, 11807833, 11808007, 11808169, 11808341, 11808521, 11808701]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11805889 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11805889 11808701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11805889) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11808871, 11809043, 11809211, 11809379, 11809561, 11809727, 11809871, 11810021, 11810203, 11810371, 11810551, 11810731, 11810879, 11811049, 11811227, 11811391]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11808701 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11808701 11811391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11808701) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11811539, 11811721, 11811887, 11812067, 11812249, 11812403, 11812561, 11812733, 11812903, 11813083, 11813251, 11813401, 11813567, 11813741, 11813917, 11814091]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11811391 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11811391 11814091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11811391) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11814259, 11814427, 11814589, 11814773, 11814947, 11815129, 11815313, 11815487, 11815649, 11815819, 11815961, 11816141, 11816303, 11816477, 11816657, 11816839]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11814091 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11814091 11816839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11814091) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11817019, 11817199, 11817383, 11817557, 11817739, 11817901, 11818073, 11818243, 11818393, 11818571, 11818739, 11818913, 11819089, 11819257, 11819429, 11819611]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11816839 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11816839 11819611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11816839) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11819789, 11819921, 11820103, 11820257, 11820439, 11820607, 11820791, 11820971, 11821151, 11821331, 11821507, 11821679, 11821853, 11822029, 11822201, 11822359]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11819611 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11819611 11822359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11819611) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11822533, 11822717, 11822857, 11823037, 11823209, 11823389, 11823547, 11823731, 11823907, 11824079, 11824261, 11824427, 11824577, 11824727, 11824909, 11825071]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11822359 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11822359 11825071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11822359) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11825249, 11825419, 11825599, 11825767, 11825941, 11826119, 11826293, 11826443, 11826589, 11826743, 11826923, 11827103, 11827271, 11827433, 11827609, 11827793]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11825071 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11825071 11827793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11825071) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11827943, 11828119, 11828303, 11828477, 11828633, 11828809, 11828989, 11829151, 11829329, 11829509, 11829691, 11829847, 11829997, 11830163, 11830339, 11830513]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11827793 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11827793 11830513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11827793) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11830697, 11830879, 11831033, 11831123, 11831299, 11831483, 11831663, 11831839, 11832011, 11832169, 11832349, 11832533, 11832707, 11832889, 11833069, 11833253]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11830513 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11830513 11833253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11830513) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11833433, 11833609, 11833793, 11833973, 11834153, 11834327, 11834509, 11834689, 11834863, 11835029, 11835199, 11835371, 11835541, 11835721, 11835881, 11836043]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11833253 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11833253 11836043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11833253) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11836217, 11836397, 11836541, 11836723, 11836859, 11837039, 11837207, 11837383, 11837557, 11837737, 11837911, 11838091, 11838263, 11838433, 11838571, 11838751]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11836043 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11836043 11838751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11836043) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11838929, 11839103, 11839277, 11839433, 11839609, 11839781, 11839957, 11840131, 11840303, 11840461, 11840641, 11840813, 11840987, 11841149, 11841311, 11841493]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11838751 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11838751 11841493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11838751) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11841671, 11841853, 11842037, 11842189, 11842349, 11842507, 11842687, 11842847, 11842993, 11843173, 11843357, 11843527, 11843693, 11843809, 11843983, 11844143]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11841493 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11841493 11844143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11841493) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11844319, 11844463, 11844643, 11844827, 11844979, 11845153, 11845331, 11845507, 11845663, 11845837, 11845993, 11846143, 11846323, 11846489, 11846657, 11846803]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11844143 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11844143 11846803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11844143) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11846987, 11847151, 11847299, 11847467, 11847643, 11847799, 11847977, 11848159, 11848339, 11848523, 11848691, 11848873, 11849053, 11849237, 11849417, 11849599]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11846803 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11846803 11849599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11846803) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11849771, 11849947, 11850127, 11850283, 11850427, 11850611, 11850791, 11850961, 11851139, 11851313, 11851493, 11851673, 11851841, 11852017, 11852177, 11852359]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11849599 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11849599 11852359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11849599) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11852539, 11852719, 11852891, 11853031, 11853203, 11853383, 11853557, 11853731, 11853899, 11854061, 11854211, 11854379, 11854529, 11854709, 11854891, 11855033]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11852359 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11852359 11855033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11852359) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11855213, 11855387, 11855567, 11855747, 11855911, 11856071, 11856239, 11856419, 11856583, 11856763, 11856947, 11857127, 11857303, 11857481, 11857661, 11857837]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11855033 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11855033 11857837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11855033) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11858017, 11858201, 11858381, 11858557, 11858729, 11858897, 11859079, 11859247, 11859427, 11859611, 11859791, 11859961, 11860133, 11860267, 11860411, 11860573]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11857837 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11857837 11860573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11857837) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11860753, 11860897, 11861081, 11861237, 11861413, 11861581, 11861749, 11861921, 11862083, 11862259, 11862439, 11862623, 11862803, 11862979, 11863153, 11863337]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11860573 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11860573 11863337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11860573) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11863519, 11863703, 11863879, 11864059, 11864243, 11864407, 11864581, 11864761, 11864903, 11865083, 11865257, 11865421, 11865593, 11865757, 11865941, 11866109]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11863337 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11863337 11866109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11863337) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11866271, 11866451, 11866633, 11866787, 11866961, 11867137, 11867321, 11867501, 11867677, 11867831, 11868013, 11868191, 11868371, 11868541, 11868719, 11868869]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11866109 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11866109 11868869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11866109) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11869021, 11869183, 11869339, 11869511, 11869691, 11869867, 11870017, 11870191, 11870371, 11870503, 11870671, 11870849, 11871019, 11871203, 11871373, 11871551]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11868869 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11868869 11871551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11868869) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11871731, 11871907, 11872057, 11872241, 11872391, 11872547, 11872723, 11872879, 11873027, 11873201, 11873339, 11873507, 11873663, 11873843, 11874019, 11874197]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11871551 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11871551 11874197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11871551) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11874377, 11874557, 11874719, 11874887, 11875069, 11875243, 11875427, 11875607, 11875789, 11875973, 11876153, 11876323, 11876507, 11876681, 11876861, 11877031]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11874197 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11874197 11877031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11874197) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11877209, 11877379, 11877539, 11877667, 11877841, 11878003, 11878187, 11878367, 11878507, 11878679, 11878861, 11879027, 11879207, 11879383, 11879563, 11879743]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11877031 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11877031 11879743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11877031) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11879909, 11880079, 11880251, 11880419, 11880601, 11880769, 11880937, 11881117, 11881301, 11881481, 11881591, 11881769, 11881931, 11882113, 11882293, 11882477]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11879743 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11879743 11882477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11879743) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11794907 11800519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11797663) (hi := 11800519) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11800519 11805889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11800519)
    (mid := 11803249) (hi := 11805889) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11805889 11811391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11805889)
    (mid := 11808701) (hi := 11811391) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11811391 11816839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11811391)
    (mid := 11814091) (hi := 11816839) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11816839 11822359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11816839)
    (mid := 11819611) (hi := 11822359) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11822359 11827793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11822359)
    (mid := 11825071) (hi := 11827793) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11827793 11833253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11827793)
    (mid := 11830513) (hi := 11833253) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11833253 11838751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11833253)
    (mid := 11836043) (hi := 11838751) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11838751 11844143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11838751)
    (mid := 11841493) (hi := 11844143) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11844143 11849599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11844143)
    (mid := 11846803) (hi := 11849599) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11849599 11855033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11849599)
    (mid := 11852359) (hi := 11855033) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11855033 11860573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11855033)
    (mid := 11857837) (hi := 11860573) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11860573 11866109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11860573)
    (mid := 11863337) (hi := 11866109) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11866109 11871551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11866109)
    (mid := 11868869) (hi := 11871551) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11871551 11877031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11871551)
    (mid := 11874197) (hi := 11877031) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11877031 11882477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11877031)
    (mid := 11879743) (hi := 11882477) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11794907 11805889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11800519) (hi := 11805889) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11805889 11816839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11805889)
    (mid := 11811391) (hi := 11816839) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11816839 11827793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11816839)
    (mid := 11822359) (hi := 11827793) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11827793 11838751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11827793)
    (mid := 11833253) (hi := 11838751) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11838751 11849599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11838751)
    (mid := 11844143) (hi := 11849599) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11849599 11860573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11849599)
    (mid := 11855033) (hi := 11860573) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11860573 11871551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11860573)
    (mid := 11866109) (hi := 11871551) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11871551 11882477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11871551)
    (mid := 11877031) (hi := 11882477) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11794907 11816839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11805889) (hi := 11816839) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11816839 11838751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11816839)
    (mid := 11827793) (hi := 11838751) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11838751 11860573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11838751)
    (mid := 11849599) (hi := 11860573) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11860573 11882477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11860573)
    (mid := 11871551) (hi := 11882477) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11794907 11838751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11816839) (hi := 11838751) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11838751 11882477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11838751)
    (mid := 11860573) (hi := 11882477) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11794907 11882477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11838751) (hi := 11882477) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11794907 11882477 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block134

#print axioms B699MiddleExtension.PrimorialBlocks.Block134.joined
