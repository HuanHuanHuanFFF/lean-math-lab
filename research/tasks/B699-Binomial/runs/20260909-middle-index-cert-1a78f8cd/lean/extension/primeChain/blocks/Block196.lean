import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block196

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17216093, 17216267, 17216447, 17216623, 17216779, 17216963, 17217143, 17217323, 17217491, 17217653, 17217833, 17218013, 17218183, 17218367, 17218549, 17218703]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17215921 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17215921 17218703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17215921) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17218871, 17219047, 17219219, 17219401, 17219569, 17219749, 17219933, 17220109, 17220241, 17220421, 17220587, 17220737, 17220913, 17221081, 17221231, 17221403]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17218703 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17218703 17221403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17218703) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17221571, 17221741, 17221913, 17222077, 17222243, 17222389, 17222573, 17222753, 17222917, 17223083, 17223233, 17223407, 17223589, 17223769, 17223931, 17224093]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17221403 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17221403 17224093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17221403) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17224267, 17224429, 17224609, 17224783, 17224957, 17225129, 17225293, 17225473, 17225657, 17225839, 17226019, 17226199, 17226383, 17226529, 17226709, 17226889]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17224093 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17224093 17226889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17224093) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17227057, 17227229, 17227393, 17227571, 17227739, 17227901, 17228063, 17228243, 17228417, 17228597, 17228759, 17228941, 17229097, 17229269, 17229437, 17229617]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17226889 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17226889 17229617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17226889) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17229763, 17229937, 17230111, 17230277, 17230429, 17230613, 17230771, 17230931, 17231113, 17231293, 17231441, 17231581, 17231729, 17231911, 17232079, 17232263]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17229617 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17229617 17232263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17229617) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17232443, 17232571, 17232749, 17232899, 17233063, 17233211, 17233343, 17233507, 17233691, 17233873, 17234057, 17234237, 17234411, 17234587, 17234747, 17234929]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17232263 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17232263 17234929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17232263) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17235107, 17235289, 17235461, 17235629, 17235797, 17235979, 17236157, 17236333, 17236493, 17236649, 17236829, 17236993, 17237159, 17237323, 17237489, 17237669]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17234929 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17234929 17237669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17234929) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17237851, 17238031, 17238211, 17238373, 17238553, 17238721, 17238889, 17239073, 17239231, 17239367, 17239531, 17239711, 17239879, 17240063, 17240221, 17240401]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17237669 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17237669 17240401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17237669) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17240563, 17240747, 17240911, 17241083, 17241241, 17241403, 17241577, 17241751, 17241929, 17242109, 17242283, 17242457, 17242639, 17242793, 17242969, 17243119]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17240401 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17240401 17243119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17240401) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17243267, 17243441, 17243623, 17243803, 17243977, 17244131, 17244301, 17244481, 17244659, 17244839, 17245013, 17245181, 17245357, 17245541, 17245717, 17245897]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17243119 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17243119 17245897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17243119) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17246081, 17246263, 17246443, 17246627, 17246809, 17246989, 17247173, 17247331, 17247509, 17247691, 17247851, 17248027, 17248199, 17248349, 17248531, 17248667]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17245897 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17245897 17248667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17245897) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17248849, 17249027, 17249209, 17249387, 17249569, 17249741, 17249909, 17250083, 17250263, 17250421, 17250593, 17250763, 17250923, 17251079, 17251261, 17251441]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17248667 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17248667 17251441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17248667) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17251613, 17251789, 17251951, 17252111, 17252293, 17252449, 17252617, 17252801, 17252971, 17253149, 17253323, 17253503, 17253671, 17253853, 17254009, 17254177]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17251441 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17251441 17254177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17251441) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17254361, 17254529, 17254709, 17254889, 17255057, 17255207, 17255389, 17255573, 17255753, 17255897, 17256079, 17256263, 17256439, 17256623, 17256791, 17256971]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17254177 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17254177 17256971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17254177) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17257151, 17257321, 17257501, 17257673, 17257853, 17258029, 17258209, 17258389, 17258561, 17258743, 17258921, 17259091, 17259259, 17259419, 17259551, 17259731]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17256971 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17256971 17259731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17256971) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17259881, 17260043, 17260223, 17260387, 17260561, 17260687, 17260871, 17261047, 17261227, 17261401, 17261581, 17261701, 17261879, 17262059, 17262233, 17262407]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17259731 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17259731 17262407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17259731) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17262571, 17262733, 17262907, 17263079, 17263261, 17263417, 17263591, 17263759, 17263943, 17264123, 17264297, 17264473, 17264641, 17264783, 17264941, 17265113]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17262407 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17262407 17265113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17262407) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17265289, 17265473, 17265649, 17265823, 17266001, 17266159, 17266321, 17266493, 17266663, 17266819, 17266993, 17267177, 17267357, 17267539, 17267711, 17267893]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17265113 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17265113 17267893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17265113) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17268049, 17268227, 17268401, 17268569, 17268743, 17268919, 17269073, 17269253, 17269429, 17269607, 17269781, 17269963, 17270117, 17270261, 17270377, 17270551]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17267893 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17267893 17270551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17267893) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17270713, 17270887, 17271047, 17271223, 17271407, 17271547, 17271697, 17271851, 17272033, 17272207, 17272373, 17272543, 17272721, 17272891, 17273063, 17273239]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17270551 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17270551 17273239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17270551) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17273419, 17273591, 17273761, 17273911, 17274077, 17274221, 17274391, 17274557, 17274731, 17274913, 17275087, 17275267, 17275441, 17275597, 17275771, 17275939]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17273239 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17273239 17275939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17273239) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17276117, 17276297, 17276461, 17276629, 17276813, 17276989, 17277173, 17277329, 17277503, 17277679, 17277863, 17278043, 17278211, 17278369, 17278537, 17278669]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17275939 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17275939 17278669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17275939) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17278853, 17279011, 17279179, 17279359, 17279539, 17279723, 17279893, 17280077, 17280257, 17280437, 17280611, 17280793, 17280973, 17281157, 17281321, 17281501]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17278669 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17278669 17281501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17278669) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17281681, 17281837, 17281987, 17282147, 17282327, 17282501, 17282641, 17282813, 17282983, 17283163, 17283323, 17283499, 17283683, 17283859, 17284039, 17284213]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17281501 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17281501 17284213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17281501) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17284369, 17284549, 17284717, 17284901, 17285063, 17285239, 17285419, 17285603, 17285783, 17285963, 17286131, 17286307, 17286487, 17286667, 17286847, 17287003]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17284213 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17284213 17287003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17284213) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17287187, 17287357, 17287519, 17287703, 17287871, 17288053, 17288231, 17288399, 17288573, 17288749, 17288933, 17289089, 17289269, 17289451, 17289611, 17289787]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17287003 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17287003 17289787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17287003) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17289967, 17290111, 17290289, 17290439, 17290621, 17290799, 17290981, 17291143, 17291327, 17291507, 17291683, 17291863, 17292047, 17292229, 17292409, 17292593]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17289787 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17289787 17292593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17289787) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17292763, 17292943, 17293127, 17293307, 17293489, 17293651, 17293807, 17293961, 17294143, 17294327, 17294507, 17294681, 17294861, 17295041, 17295217, 17295401]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17292593 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17292593 17295401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17292593) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17295569, 17295739, 17295913, 17296087, 17296271, 17296451, 17296627, 17296801, 17296967, 17297149, 17297333, 17297479, 17297647, 17297827, 17297983, 17298161]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17295401 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17295401 17298161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17295401) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17298343, 17298517, 17298661, 17298823, 17299003, 17299187, 17299361, 17299543, 17299699, 17299883, 17300057, 17300219, 17300399, 17300581, 17300741, 17300923]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17298161 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17298161 17300923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17298161) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17301107, 17301289, 17301463, 17301643, 17301787, 17301967, 17302151, 17302321, 17302489, 17302669, 17302853, 17303023, 17303207, 17303389, 17303537, 17303677]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17300923 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17300923 17303677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17300923) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17215921 17221403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17218703) (hi := 17221403) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17221403 17226889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17221403)
    (mid := 17224093) (hi := 17226889) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17226889 17232263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17226889)
    (mid := 17229617) (hi := 17232263) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17232263 17237669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17232263)
    (mid := 17234929) (hi := 17237669) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17237669 17243119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17237669)
    (mid := 17240401) (hi := 17243119) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17243119 17248667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17243119)
    (mid := 17245897) (hi := 17248667) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17248667 17254177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17248667)
    (mid := 17251441) (hi := 17254177) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17254177 17259731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17254177)
    (mid := 17256971) (hi := 17259731) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17259731 17265113 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17259731)
    (mid := 17262407) (hi := 17265113) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17265113 17270551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17265113)
    (mid := 17267893) (hi := 17270551) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17270551 17275939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17270551)
    (mid := 17273239) (hi := 17275939) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17275939 17281501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17275939)
    (mid := 17278669) (hi := 17281501) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17281501 17287003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17281501)
    (mid := 17284213) (hi := 17287003) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17287003 17292593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17287003)
    (mid := 17289787) (hi := 17292593) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17292593 17298161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17292593)
    (mid := 17295401) (hi := 17298161) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17298161 17303677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17298161)
    (mid := 17300923) (hi := 17303677) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17215921 17226889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17221403) (hi := 17226889) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17226889 17237669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17226889)
    (mid := 17232263) (hi := 17237669) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17237669 17248667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17237669)
    (mid := 17243119) (hi := 17248667) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17248667 17259731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17248667)
    (mid := 17254177) (hi := 17259731) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17259731 17270551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17259731)
    (mid := 17265113) (hi := 17270551) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17270551 17281501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17270551)
    (mid := 17275939) (hi := 17281501) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17281501 17292593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17281501)
    (mid := 17287003) (hi := 17292593) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17292593 17303677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17292593)
    (mid := 17298161) (hi := 17303677) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17215921 17237669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17226889) (hi := 17237669) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17237669 17259731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17237669)
    (mid := 17248667) (hi := 17259731) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17259731 17281501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17259731)
    (mid := 17270551) (hi := 17281501) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17281501 17303677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17281501)
    (mid := 17292593) (hi := 17303677) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17215921 17259731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17237669) (hi := 17259731) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17259731 17303677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17259731)
    (mid := 17281501) (hi := 17303677) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17215921 17303677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17259731) (hi := 17303677) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17215921 17303677 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block196

#print axioms B699MiddleExtension.PrimorialBlocks.Block196.joined
