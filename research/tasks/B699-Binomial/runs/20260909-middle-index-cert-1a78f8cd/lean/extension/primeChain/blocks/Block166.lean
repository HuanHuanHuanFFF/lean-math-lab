import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block166

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14596409, 14596583, 14596739, 14596919, 14597087, 14597269, 14597449, 14597633, 14597809, 14597981, 14598163, 14598347, 14598527, 14598679, 14598863, 14599037]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14596247 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14596247 14599037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14596247) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14599219, 14599381, 14599553, 14599709, 14599891, 14600051, 14600233, 14600401, 14600563, 14600743, 14600923, 14601107, 14601281, 14601449, 14601611, 14601739]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14599037 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14599037 14601739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14599037) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14601919, 14602103, 14602267, 14602451, 14602633, 14602817, 14602969, 14603117, 14603299, 14603453, 14603593, 14603753, 14603917, 14604101, 14604283, 14604463]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14601739 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14601739 14604463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14601739) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14604647, 14604829, 14605013, 14605187, 14605351, 14605501, 14605663, 14605847, 14606029, 14606203, 14606387, 14606567, 14606741, 14606903, 14607079, 14607259]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14604463 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14604463 14607259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14604463) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14607443, 14607617, 14607787, 14607953, 14608091, 14608271, 14608453, 14608637, 14608819, 14608999, 14609183, 14609363, 14609519, 14609671, 14609839, 14610019]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14607259 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14607259 14610019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14607259) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14610203, 14610377, 14610551, 14610733, 14610901, 14611081, 14611249, 14611433, 14611613, 14611759, 14611939, 14612111, 14612293, 14612459, 14612641, 14612813]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14610019 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14610019 14612813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14610019) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14612971, 14613139, 14613323, 14613503, 14613673, 14613827, 14614007, 14614181, 14614357, 14614507, 14614687, 14614871, 14615021, 14615201, 14615383, 14615561]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14612813 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14612813 14615561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14612813) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14615737, 14615837, 14615947, 14616079, 14616253, 14616419, 14616599, 14616769, 14616929, 14617091, 14617261, 14617439, 14617621, 14617787, 14617969, 14618141]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14615561 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14615561 14618141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14615561) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14618321, 14618503, 14618677, 14618803, 14618983, 14619127, 14619299, 14619461, 14619641, 14619811, 14619991, 14620171, 14620343, 14620511, 14620691, 14620873]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14618141 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14618141 14620873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14618141) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14621053, 14621231, 14621407, 14621573, 14621753, 14621917, 14622079, 14622263, 14622427, 14622599, 14622763, 14622943, 14623127, 14623309, 14623493, 14623667]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14620873 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14620873 14623667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14620873) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14623831, 14624009, 14624179, 14624359, 14624537, 14624719, 14624899, 14625067, 14625239, 14625419, 14625587, 14625749, 14625931, 14626111, 14626253, 14626427]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14623667 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14623667 14626427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14623667) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14626609, 14626757, 14626901, 14627077, 14627237, 14627411, 14627593, 14627771, 14627953, 14628137, 14628319, 14628469, 14628631, 14628811, 14628979, 14629157]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14626427 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14626427 14629157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14626427) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14629339, 14629519, 14629697, 14629873, 14630051, 14630227, 14630401, 14630579, 14630731, 14630909, 14631091, 14631269, 14631451, 14631623, 14631803, 14631977]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14629157 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14629157 14631977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14629157) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14632157, 14632333, 14632507, 14632687, 14632847, 14633011, 14633189, 14633369, 14633533, 14633713, 14633887, 14634071, 14634251, 14634421, 14634583, 14634757]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14631977 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14631977 14634757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14631977) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14634931, 14635097, 14635273, 14635433, 14635603, 14635771, 14635939, 14636107, 14636291, 14636459, 14636603, 14636771, 14636939, 14637121, 14637263, 14637443]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14634757 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14634757 14637443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14634757) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14637599, 14637781, 14637941, 14638081, 14638259, 14638439, 14638601, 14638783, 14638957, 14639129, 14639279, 14639459, 14639627, 14639803, 14639971, 14640151]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14637443 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14637443 14640151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14637443) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14640323, 14640503, 14640677, 14640851, 14641031, 14641213, 14641397, 14641531, 14641699, 14641883, 14642063, 14642233, 14642387, 14642569, 14642741, 14642911]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14640151 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14640151 14642911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14640151) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14643077, 14643257, 14643389, 14643569, 14643703, 14643887, 14644061, 14644237, 14644411, 14644579, 14644759, 14644937, 14645047, 14645231, 14645401, 14645539]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14642911 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14642911 14645539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14642911) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14645699, 14645863, 14646029, 14646211, 14646371, 14646509, 14646689, 14646871, 14647051, 14647211, 14647393, 14647561, 14647729, 14647909, 14648093, 14648273]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14645539 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14645539 14648273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14645539) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14648453, 14648629, 14648801, 14648971, 14649149, 14649331, 14649493, 14649673, 14649857, 14650037, 14650217, 14650399, 14650567, 14650721, 14650903, 14651081]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14648273 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14648273 14651081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14648273) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14651249, 14651431, 14651599, 14651783, 14651951, 14652133, 14652307, 14652461, 14652643, 14652821, 14652983, 14653159, 14653339, 14653511, 14653679, 14653861]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14651081 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14651081 14653861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14651081) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14654033, 14654209, 14654383, 14654557, 14654713, 14654881, 14655059, 14655233, 14655413, 14655569, 14655731, 14655913, 14656097, 14656259, 14656441, 14656597]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14653861 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14653861 14656597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14653861) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14656777, 14656927, 14657087, 14657261, 14657437, 14657593, 14657777, 14657933, 14658113, 14658289, 14658439, 14658599, 14658781, 14658961, 14659133, 14659291]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14656597 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14656597 14659291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14656597) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14659451, 14659633, 14659769, 14659949, 14660123, 14660297, 14660467, 14660651, 14660831, 14661013, 14661193, 14661377, 14661553, 14661727, 14661893, 14662061]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14659291 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14659291 14662061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14659291) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14662231, 14662393, 14662573, 14662757, 14662939, 14663081, 14663263, 14663431, 14663591, 14663767, 14663941, 14664121, 14664301, 14664467, 14664649, 14664833]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14662061 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14662061 14664833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14662061) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14665009, 14665181, 14665351, 14665531, 14665711, 14665879, 14666063, 14666237, 14666417, 14666599, 14666777, 14666959, 14667143, 14667293, 14667469, 14667647]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14664833 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14664833 14667647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14664833) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14667733, 14667911, 14668081, 14668261, 14668441, 14668583, 14668763, 14668933, 14669093, 14669261, 14669443, 14669617, 14669779, 14669939, 14670121, 14670301]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14667647 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14667647 14670301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14667647) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14670457, 14670631, 14670811, 14670979, 14671157, 14671297, 14671457, 14671637, 14671817, 14671991, 14672171, 14672353, 14672527, 14672699, 14672863, 14673047]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14670301 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14670301 14673047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14670301) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14673229, 14673409, 14673587, 14673751, 14673899, 14674081, 14674259, 14674397, 14674579, 14674753, 14674931, 14675107, 14675281, 14675461, 14675623, 14675789]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14673047 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14673047 14675789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14673047) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14675957, 14676133, 14676317, 14676469, 14676619, 14676799, 14676983, 14677163, 14677337, 14677513, 14677679, 14677847, 14678029, 14678207, 14678387, 14678569]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14675789 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14675789 14678569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14675789) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14678749, 14678897, 14679079, 14679263, 14679443, 14679607, 14679779, 14679949, 14680123, 14680307, 14680489, 14680667, 14680801, 14680951, 14681131, 14681287]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14678569 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14678569 14681287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14678569) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14681441, 14681617, 14681773, 14681957, 14682131, 14682299, 14682467, 14682641, 14682803, 14682979, 14683157, 14683321, 14683489, 14683673, 14683853, 14684029]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14681287 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14681287 14684029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14681287) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14596247 14601739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14599037) (hi := 14601739) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14601739 14607259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14601739)
    (mid := 14604463) (hi := 14607259) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14607259 14612813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14607259)
    (mid := 14610019) (hi := 14612813) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14612813 14618141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14612813)
    (mid := 14615561) (hi := 14618141) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14618141 14623667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14618141)
    (mid := 14620873) (hi := 14623667) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14623667 14629157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14623667)
    (mid := 14626427) (hi := 14629157) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14629157 14634757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14629157)
    (mid := 14631977) (hi := 14634757) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14634757 14640151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14634757)
    (mid := 14637443) (hi := 14640151) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14640151 14645539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14640151)
    (mid := 14642911) (hi := 14645539) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14645539 14651081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14645539)
    (mid := 14648273) (hi := 14651081) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14651081 14656597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14651081)
    (mid := 14653861) (hi := 14656597) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14656597 14662061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14656597)
    (mid := 14659291) (hi := 14662061) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14662061 14667647 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14662061)
    (mid := 14664833) (hi := 14667647) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14667647 14673047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14667647)
    (mid := 14670301) (hi := 14673047) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14673047 14678569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14673047)
    (mid := 14675789) (hi := 14678569) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14678569 14684029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14678569)
    (mid := 14681287) (hi := 14684029) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14596247 14607259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14601739) (hi := 14607259) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14607259 14618141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14607259)
    (mid := 14612813) (hi := 14618141) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14618141 14629157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14618141)
    (mid := 14623667) (hi := 14629157) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14629157 14640151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14629157)
    (mid := 14634757) (hi := 14640151) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14640151 14651081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14640151)
    (mid := 14645539) (hi := 14651081) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14651081 14662061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14651081)
    (mid := 14656597) (hi := 14662061) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14662061 14673047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14662061)
    (mid := 14667647) (hi := 14673047) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14673047 14684029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14673047)
    (mid := 14678569) (hi := 14684029) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14596247 14618141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14607259) (hi := 14618141) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14618141 14640151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14618141)
    (mid := 14629157) (hi := 14640151) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14640151 14662061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14640151)
    (mid := 14651081) (hi := 14662061) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14662061 14684029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14662061)
    (mid := 14673047) (hi := 14684029) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14596247 14640151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14618141) (hi := 14640151) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14640151 14684029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14640151)
    (mid := 14662061) (hi := 14684029) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14596247 14684029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14640151) (hi := 14684029) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14596247 14684029 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block166

#print axioms B699MiddleExtension.PrimorialBlocks.Block166.joined
