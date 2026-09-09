import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block159

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13984543, 13984723, 13984903, 13985087, 13985263, 13985437, 13985617, 13985761, 13985941, 13986113, 13986293, 13986463, 13986619, 13986769, 13986943, 13987111]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13984363 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13984363 13987111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13984363) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13987291, 13987459, 13987627, 13987807, 13987969, 13988141, 13988321, 13988477, 13988651, 13988827, 13989007, 13989179, 13989361, 13989541, 13989709, 13989869]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13987111 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13987111 13989869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13987111) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13990043, 13990219, 13990399, 13990583, 13990751, 13990927, 13991077, 13991251, 13991401, 13991573, 13991749, 13991933, 13992109, 13992281, 13992463, 13992637]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13989869 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13989869 13992637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13989869) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13992821, 13993003, 13993163, 13993337, 13993517, 13993699, 13993849, 13994021, 13994159, 13994339, 13994503, 13994641, 13994821, 13994987, 13995151, 13995323]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13992637 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13992637 13995323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13992637) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13995497, 13995679, 13995853, 13996019, 13996201, 13996379, 13996561, 13996739, 13996921, 13997099, 13997279, 13997413, 13997569, 13997741, 13997917, 13998077]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13995323 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13995323 13998077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13995323) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13998251, 13998427, 13998601, 13998773, 13998937, 13999121, 13999301, 13999481, 13999651, 13999831, 13999981, 14000153, 14000309, 14000477, 14000653, 14000827]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13998077 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13998077 14000827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13998077) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14001007, 14001179, 14001343, 14001527, 14001709, 14001769, 14001941, 14002117, 14002301, 14002427, 14002609, 14002789, 14002939, 14003107, 14003281, 14003453]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14000827 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14000827 14003453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14000827) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14003623, 14003807, 14003981, 14004149, 14004317, 14004499, 14004649, 14004829, 14005003, 14005181, 14005363, 14005529, 14005711, 14005889, 14006071, 14006233]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14003453 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14003453 14006233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14003453) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14006413, 14006569, 14006749, 14006921, 14007101, 14007283, 14007467, 14007599, 14007781, 14007923, 14008097, 14008273, 14008457, 14008619, 14008763, 14008933]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14006233 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14006233 14008933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14006233) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14009113, 14009297, 14009467, 14009651, 14009777, 14009953, 14010133, 14010307, 14010439, 14010617, 14010797, 14010947, 14011099, 14011267, 14011429, 14011609]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14008933 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14008933 14011609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14008933) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14011771, 14011909, 14012081, 14012239, 14012417, 14012563, 14012731, 14012897, 14013073, 14013229, 14013413, 14013577, 14013761, 14013941, 14014123, 14014271]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14011609 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14011609 14014271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14011609) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14014439, 14014607, 14014787, 14014969, 14015147, 14015321, 14015501, 14015681, 14015857, 14016029, 14016203, 14016349, 14016529, 14016713, 14016853, 14017009]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14014271 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14014271 14017009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14014271) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14017181, 14017337, 14017517, 14017697, 14017867, 14018051, 14018233, 14018413, 14018573, 14018749, 14018929, 14019107, 14019287, 14019469, 14019653, 14019833]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14017009 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14017009 14019833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14017009) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14020009, 14020187, 14020361, 14020541, 14020723, 14020901, 14021027, 14021197, 14021363, 14021537, 14021717, 14021897, 14022079, 14022221, 14022391, 14022563]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14019833 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14019833 14022563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14019833) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14022733, 14022913, 14023073, 14023241, 14023421, 14023579, 14023739, 14023921, 14024093, 14024251, 14024399, 14024581, 14024761, 14024903, 14025079, 14025259]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14022563 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14022563 14025259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14022563) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14025437, 14025619, 14025797, 14025967, 14026151, 14026333, 14026487, 14026669, 14026829, 14026993, 14027177, 14027353, 14027527, 14027687, 14027843, 14028013]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14025259 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14025259 14028013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14025259) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14028197, 14028379, 14028559, 14028739, 14028913, 14029073, 14029237, 14029381, 14029559, 14029727, 14029907, 14030087, 14030267, 14030449, 14030633, 14030813]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14028013 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14028013 14030813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14028013) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14030993, 14031169, 14031349, 14031533, 14031713, 14031893, 14032069, 14032253, 14032427, 14032609, 14032793, 14032933, 14033081, 14033251, 14033429, 14033597]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14030813 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14030813 14033597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14030813) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14033771, 14033947, 14034127, 14034311, 14034491, 14034667, 14034851, 14035031, 14035207, 14035381, 14035561, 14035729, 14035907, 14036089, 14036263, 14036437]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14033597 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14033597 14036437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14033597) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14036621, 14036779, 14036947, 14037119, 14037301, 14037473, 14037641, 14037809, 14037983, 14038159, 14038337, 14038501, 14038669, 14038823, 14038951, 14039107]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14036437 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14036437 14039107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14036437) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14039257, 14039437, 14039617, 14039797, 14039953, 14040133, 14040311, 14040493, 14040671, 14040841, 14041021, 14041151, 14041333, 14041499, 14041669, 14041849]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14039107 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14039107 14041849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14039107) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14042033, 14042201, 14042341, 14042503, 14042681, 14042851, 14043023, 14043203, 14043347, 14043529, 14043707, 14043889, 14044061, 14044241, 14044411, 14044577]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14041849 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14041849 14044577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14041849) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14044747, 14044909, 14045093, 14045261, 14045431, 14045611, 14045789, 14045923, 14046107, 14046283, 14046463, 14046619, 14046803, 14046971, 14047139, 14047307]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14044577 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14044577 14047307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14044577) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14047489, 14047673, 14047853, 14048003, 14048183, 14048327, 14048501, 14048621, 14048767, 14048941, 14049109, 14049289, 14049473, 14049649, 14049829, 14050013]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14047307 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14047307 14050013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14047307) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14050189, 14050363, 14050523, 14050693, 14050867, 14051041, 14051209, 14051377, 14051501, 14051683, 14051867, 14052043, 14052221, 14052397, 14052581, 14052751]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14050013 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14050013 14052751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14050013) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14052887, 14053063, 14053219, 14053399, 14053573, 14053751, 14053933, 14054113, 14054297, 14054459, 14054641, 14054819, 14054993, 14055163, 14055317, 14055479]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14052751 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14052751 14055479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14052751) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14055647, 14055809, 14055959, 14056139, 14056319, 14056459, 14056639, 14056811, 14056993, 14057177, 14057327, 14057509, 14057677, 14057851, 14058019, 14058199]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14055479 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14055479 14058199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14055479) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14058379, 14058547, 14058713, 14058887, 14059061, 14059231, 14059387, 14059567, 14059657, 14059841, 14060023, 14060203, 14060369, 14060537, 14060719, 14060897]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14058199 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14058199 14060897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14058199) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14061067, 14061247, 14061427, 14061599, 14061779, 14061953, 14062133, 14062297, 14062439, 14062619, 14062787, 14062957, 14063113, 14063263, 14063443, 14063627]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14060897 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14060897 14063627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14060897) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14063809, 14063969, 14064137, 14064317, 14064499, 14064683, 14064863, 14065031, 14065201, 14065357, 14065523, 14065703, 14065879, 14066027, 14066209, 14066389]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14063627 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14063627 14066389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14063627) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14066561, 14066699, 14066879, 14067029, 14067203, 14067377, 14067553, 14067731, 14067887, 14068031, 14068199, 14068381, 14068543, 14068723, 14068907, 14069087]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14066389 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14066389 14069087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14066389) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14069267, 14069449, 14069621, 14069791, 14069941, 14070103, 14070253, 14070391, 14070571, 14070751, 14070923, 14071093, 14071271, 14071451, 14071633, 14071807]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14069087 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14069087 14071807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14069087) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13984363 13989869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13984363)
    (mid := 13987111) (hi := 13989869) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13989869 13995323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13989869)
    (mid := 13992637) (hi := 13995323) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13995323 14000827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13995323)
    (mid := 13998077) (hi := 14000827) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14000827 14006233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14000827)
    (mid := 14003453) (hi := 14006233) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14006233 14011609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14006233)
    (mid := 14008933) (hi := 14011609) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14011609 14017009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14011609)
    (mid := 14014271) (hi := 14017009) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14017009 14022563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14017009)
    (mid := 14019833) (hi := 14022563) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14022563 14028013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14022563)
    (mid := 14025259) (hi := 14028013) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14028013 14033597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14028013)
    (mid := 14030813) (hi := 14033597) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14033597 14039107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14033597)
    (mid := 14036437) (hi := 14039107) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14039107 14044577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14039107)
    (mid := 14041849) (hi := 14044577) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14044577 14050013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14044577)
    (mid := 14047307) (hi := 14050013) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14050013 14055479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14050013)
    (mid := 14052751) (hi := 14055479) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14055479 14060897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14055479)
    (mid := 14058199) (hi := 14060897) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14060897 14066389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14060897)
    (mid := 14063627) (hi := 14066389) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14066389 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14066389)
    (mid := 14069087) (hi := 14071807) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13984363 13995323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13984363)
    (mid := 13989869) (hi := 13995323) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13995323 14006233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13995323)
    (mid := 14000827) (hi := 14006233) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14006233 14017009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14006233)
    (mid := 14011609) (hi := 14017009) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14017009 14028013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14017009)
    (mid := 14022563) (hi := 14028013) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14028013 14039107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14028013)
    (mid := 14033597) (hi := 14039107) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14039107 14050013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14039107)
    (mid := 14044577) (hi := 14050013) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14050013 14060897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14050013)
    (mid := 14055479) (hi := 14060897) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14060897 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14060897)
    (mid := 14066389) (hi := 14071807) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13984363 14006233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13984363)
    (mid := 13995323) (hi := 14006233) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14006233 14028013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14006233)
    (mid := 14017009) (hi := 14028013) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14028013 14050013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14028013)
    (mid := 14039107) (hi := 14050013) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14050013 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14050013)
    (mid := 14060897) (hi := 14071807) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13984363 14028013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13984363)
    (mid := 14006233) (hi := 14028013) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14028013 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14028013)
    (mid := 14050013) (hi := 14071807) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13984363 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13984363)
    (mid := 14028013) (hi := 14071807) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13984363 14071807 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block159

#print axioms B699MiddleExtension.PrimorialBlocks.Block159.joined
