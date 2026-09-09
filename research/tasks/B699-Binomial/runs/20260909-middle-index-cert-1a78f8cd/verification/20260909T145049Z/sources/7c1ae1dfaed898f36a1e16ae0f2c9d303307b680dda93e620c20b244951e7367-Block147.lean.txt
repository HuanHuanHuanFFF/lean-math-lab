import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block147

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12933133, 12933317, 12933493, 12933671, 12933853, 12934021, 12934189, 12934373, 12934549, 12934723, 12934903, 12935063, 12935239, 12935411, 12935579, 12935761]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12932957 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12932957 12935761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12932957) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12935939, 12936113, 12936247, 12936409, 12936577, 12936751, 12936919, 12937069, 12937241, 12937417, 12937601, 12937781, 12937963, 12938137, 12938293, 12938467]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12935761 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12935761 12938467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12935761) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12938623, 12938803, 12938987, 12939167, 12939347, 12939491, 12939671, 12939851, 12940001, 12940183, 12940363, 12940541, 12940717, 12940897, 12941077, 12941239]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12938467 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12938467 12941239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12938467) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12941419, 12941597, 12941771, 12941933, 12942109, 12942233, 12942409, 12942571, 12942751, 12942929, 12943111, 12943277, 12943433, 12943603, 12943781, 12943961]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12941239 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12941239 12943961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12941239) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12944119, 12944299, 12944473, 12944651, 12944831, 12945001, 12945173, 12945323, 12945469, 12945641, 12945811, 12945983, 12946147, 12946319, 12946487, 12946669]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12943961 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12943961 12946669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12943961) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12946841, 12946991, 12947167, 12947351, 12947527, 12947681, 12947861, 12948041, 12948223, 12948371, 12948541, 12948707, 12948869, 12949049, 12949229, 12949373]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12946669 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12946669 12949373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12946669) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12949553, 12949691, 12949841, 12950023, 12950183, 12950359, 12950519, 12950701, 12950867, 12951019, 12951199, 12951383, 12951563, 12951677, 12951853, 12952031]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12949373 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12949373 12952031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12949373) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12952207, 12952369, 12952549, 12952733, 12952853, 12952999, 12953183, 12953333, 12953513, 12953659, 12953821, 12953977, 12954157, 12954299, 12954463, 12954611]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12952031 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12952031 12954611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12952031) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12954791, 12954971, 12955153, 12955333, 12955517, 12955687, 12955829, 12956003, 12956183, 12956351, 12956509, 12956687, 12956863, 12957041, 12957223, 12957401]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12954611 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12954611 12957401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12954611) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12957557, 12957739, 12957913, 12958087, 12958271, 12958441, 12958601, 12958733, 12958859, 12959041, 12959183, 12959351, 12959533, 12959677, 12959861, 12960043]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12957401 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12957401 12960043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12957401) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12960217, 12960401, 12960583, 12960763, 12960947, 12961099, 12961279, 12961457, 12961621, 12961789, 12961969, 12962137, 12962311, 12962491, 12962671, 12962837]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12960043 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12960043 12962837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12960043) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12962981, 12963161, 12963343, 12963499, 12963679, 12963857, 12964037, 12964219, 12964397, 12964579, 12964753, 12964921, 12965081, 12965263, 12965423, 12965599]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12962837 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12962837 12965599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12962837) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12965783, 12965957, 12966139, 12966323, 12966497, 12966661, 12966817, 12967001, 12967183, 12967363, 12967547, 12967711, 12967891, 12968029, 12968213, 12968383]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12965599 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12965599 12968383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12965599) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12968567, 12968749, 12968927, 12969097, 12969269, 12969449, 12969611, 12969787, 12969949, 12970127, 12970297, 12970471, 12970651, 12970829, 12971009, 12971173]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12968383 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12968383 12971173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12968383) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12971351, 12971533, 12971683, 12971863, 12972007, 12972149, 12972331, 12972461, 12972637, 12972811, 12972959, 12973141, 12973319, 12973483, 12973661, 12973823]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12971173 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12971173 12973823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12971173) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12973981, 12974147, 12974329, 12974503, 12974683, 12974851, 12975031, 12975211, 12975377, 12975559, 12975719, 12975899, 12976081, 12976237, 12976417, 12976567]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12973823 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12973823 12976567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12973823) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12976727, 12976907, 12977087, 12977243, 12977411, 12977539, 12977717, 12977879, 12978059, 12978239, 12978419, 12978593, 12978773, 12978949, 12979129, 12979303]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12976567 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12976567 12979303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12976567) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12979453, 12979601, 12979783, 12979961, 12980137, 12980321, 12980489, 12980633, 12980783, 12980963, 12981113, 12981277, 12981439, 12981623, 12981803, 12981977]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12979303 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12979303 12981977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12979303) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12982157, 12982331, 12982507, 12982687, 12982859, 12982999, 12983171, 12983351, 12983533, 12983713, 12983879, 12984053, 12984233, 12984403, 12984571, 12984749]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12981977 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12981977 12984749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12981977) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12984931, 12985103, 12985283, 12985463, 12985633, 12985801, 12985981, 12986153, 12986333, 12986509, 12986689, 12986863, 12987017, 12987199, 12987379, 12987551]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12984749 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12984749 12987551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12984749) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12987713, 12987889, 12988069, 12988247, 12988429, 12988603, 12988769, 12988931, 12989111, 12989287, 12989453, 12989629, 12989807, 12989987, 12990169, 12990323]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12987551 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12987551 12990323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12987551) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12990503, 12990673, 12990853, 12991037, 12991189, 12991373, 12991543, 12991721, 12991879, 12992059, 12992209, 12992381, 12992549, 12992717, 12992867, 12993047]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12990323 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12990323 12993047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12990323) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12993221, 12993391, 12993571, 12993737, 12993917, 12994099, 12994249, 12994427, 12994601, 12994777, 12994951, 12995117, 12995291, 12995467, 12995561, 12995711]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12993047 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12993047 12995711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12993047) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12995887, 12996059, 12996241, 12996421, 12996559, 12996743, 12996923, 12997099, 12997279, 12997441, 12997609, 12997781, 12997961, 12998143, 12998327, 12998509]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12995711 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12995711 12998509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12995711) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12998683, 12998861, 12999043, 12999223, 12999397, 12999563, 12999737, 12999919, 13000081, 13000261, 13000411, 13000583, 13000753, 13000919, 13001101, 13001273]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12998509 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12998509 13001273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12998509) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13001407, 13001557, 13001731, 13001897, 13002079, 13002257, 13002439, 13002607, 13002791, 13002971, 13003129, 13003313, 13003493, 13003643, 13003807, 13003987]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13001273 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13001273 13003987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13001273) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13004161, 13004333, 13004513, 13004671, 13004851, 13005029, 13005211, 13005371, 13005539, 13005721, 13005893, 13006069, 13006249, 13006423, 13006589, 13006739]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13003987 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13003987 13006739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13003987) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13006919, 13007087, 13007257, 13007441, 13007611, 13007791, 13007971, 13008139, 13008319, 13008503, 13008679, 13008811, 13008979, 13009127, 13009309, 13009489]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13006739 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13006739 13009489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13006739) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13009663, 13009823, 13009967, 13010147, 13010317, 13010477, 13010659, 13010843, 13011007, 13011133, 13011311, 13011487, 13011641, 13011811, 13011967, 13012147]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13009489 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13009489 13012147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13009489) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13012309, 13012487, 13012669, 13012849, 13013027, 13013197, 13013369, 13013549, 13013731, 13013909, 13014077, 13014257, 13014427, 13014611, 13014779, 13014959]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13012147 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13012147 13014959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13012147) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13015129, 13015291, 13015469, 13015643, 13015789, 13015967, 13016149, 13016327, 13016477, 13016623, 13016797, 13016963, 13017127, 13017293, 13017469, 13017649]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13014959 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13014959 13017649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13014959) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13017833, 13018009, 13018183, 13018367, 13018547, 13018727, 13018909, 13019087, 13019261, 13019443, 13019599, 13019761, 13019933, 13020109, 13020251, 13020431]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13017649 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13017649 13020431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13017649) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12932957 12938467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12932957)
    (mid := 12935761) (hi := 12938467) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12938467 12943961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12938467)
    (mid := 12941239) (hi := 12943961) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12943961 12949373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12943961)
    (mid := 12946669) (hi := 12949373) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12949373 12954611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12949373)
    (mid := 12952031) (hi := 12954611) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12954611 12960043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12954611)
    (mid := 12957401) (hi := 12960043) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12960043 12965599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12960043)
    (mid := 12962837) (hi := 12965599) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12965599 12971173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12965599)
    (mid := 12968383) (hi := 12971173) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12971173 12976567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12971173)
    (mid := 12973823) (hi := 12976567) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12976567 12981977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12976567)
    (mid := 12979303) (hi := 12981977) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12981977 12987551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12981977)
    (mid := 12984749) (hi := 12987551) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12987551 12993047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12987551)
    (mid := 12990323) (hi := 12993047) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12993047 12998509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12993047)
    (mid := 12995711) (hi := 12998509) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12998509 13003987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12998509)
    (mid := 13001273) (hi := 13003987) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13003987 13009489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13003987)
    (mid := 13006739) (hi := 13009489) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13009489 13014959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13009489)
    (mid := 13012147) (hi := 13014959) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13014959 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13014959)
    (mid := 13017649) (hi := 13020431) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12932957 12943961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12932957)
    (mid := 12938467) (hi := 12943961) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12943961 12954611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12943961)
    (mid := 12949373) (hi := 12954611) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12954611 12965599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12954611)
    (mid := 12960043) (hi := 12965599) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12965599 12976567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12965599)
    (mid := 12971173) (hi := 12976567) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12976567 12987551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12976567)
    (mid := 12981977) (hi := 12987551) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12987551 12998509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12987551)
    (mid := 12993047) (hi := 12998509) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12998509 13009489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12998509)
    (mid := 13003987) (hi := 13009489) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13009489 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13009489)
    (mid := 13014959) (hi := 13020431) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12932957 12954611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12932957)
    (mid := 12943961) (hi := 12954611) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12954611 12976567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12954611)
    (mid := 12965599) (hi := 12976567) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12976567 12998509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12976567)
    (mid := 12987551) (hi := 12998509) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12998509 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12998509)
    (mid := 13009489) (hi := 13020431) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12932957 12976567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12932957)
    (mid := 12954611) (hi := 12976567) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12976567 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12976567)
    (mid := 12998509) (hi := 13020431) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12932957 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12932957)
    (mid := 12976567) (hi := 13020431) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12932957 13020431 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block147

#print axioms B699MiddleExtension.PrimorialBlocks.Block147.joined
