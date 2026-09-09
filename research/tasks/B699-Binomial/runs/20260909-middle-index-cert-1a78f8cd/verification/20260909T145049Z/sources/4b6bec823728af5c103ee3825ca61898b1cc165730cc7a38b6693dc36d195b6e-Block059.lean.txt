import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block059

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5218487, 5218669, 5218853, 5219009, 5219143, 5219327, 5219503, 5219657, 5219807, 5219959, 5220113, 5220283, 5220463, 5220647, 5220823, 5221003]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5218321 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5218321 5221003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5218321) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5221187, 5221369, 5221549, 5221729, 5221891, 5222071, 5222251, 5222429, 5222597, 5222761, 5222933, 5223109, 5223293, 5223473, 5223649, 5223793]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5221003 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5221003 5223793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5221003) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5223971, 5224133, 5224309, 5224481, 5224663, 5224847, 5225027, 5225201, 5225383, 5225567, 5225743, 5225921, 5226101, 5226283, 5226461, 5226643]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5223793 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5223793 5226643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5223793) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5226811, 5226983, 5227153, 5227333, 5227513, 5227697, 5227853, 5228029, 5228213, 5228393, 5228543, 5228723, 5228893, 5229071, 5229253, 5229437]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5226643 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5226643 5229437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5226643) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5229613, 5229797, 5229971, 5230129, 5230297, 5230471, 5230651, 5230831, 5231011, 5231173, 5231341, 5231521, 5231701, 5231881, 5232047, 5232229]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5229437 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5229437 5232229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5229437) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5232401, 5232571, 5232749, 5232869, 5233051, 5233231, 5233411, 5233577, 5233751, 5233927, 5234111, 5234287, 5234447, 5234627, 5234809, 5234989]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5232229 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5232229 5234989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5232229) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5235151, 5235323, 5235481, 5235661, 5235827, 5235947, 5236123, 5236291, 5236447, 5236631, 5236811, 5236991, 5237143, 5237327, 5237509, 5237693]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5234989 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5234989 5237693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5234989) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5237867, 5238049, 5238229, 5238403, 5238581, 5238731, 5238913, 5239097, 5239277, 5239447, 5239631, 5239813, 5239987, 5240141, 5240317, 5240491]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5237693 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5237693 5240491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5237693) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5240663, 5240843, 5240993, 5241167, 5241349, 5241529, 5241707, 5241889, 5242067, 5242249, 5242421, 5242583, 5242763, 5242931, 5243101, 5243281]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5240491 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5240491 5243281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5240491) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5243453, 5243629, 5243813, 5243993, 5244167, 5244341, 5244511, 5244691, 5244809, 5244947, 5245111, 5245283, 5245459, 5245619, 5245783, 5245967]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5243281 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5243281 5245967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5243281) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5246113, 5246287, 5246459, 5246623, 5246789, 5246957, 5247131, 5247311, 5247491, 5247661, 5247793, 5247967, 5248151, 5248303, 5248471, 5248637]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5245967 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5245967 5248637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5245967) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5248811, 5248987, 5249161, 5249341, 5249513, 5249693, 5249873, 5250043, 5250227, 5250409, 5250571, 5250743, 5250919, 5251097, 5251273, 5251457]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5248637 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5248637 5251457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5248637) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5251627, 5251789, 5251951, 5252129, 5252311, 5252491, 5252669, 5252839, 5253023, 5253203, 5253383, 5253529, 5253713, 5253893, 5254069, 5254253]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5251457 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5251457 5254253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5251457) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5254429, 5254607, 5254789, 5254943, 5255123, 5255303, 5255479, 5255659, 5255843, 5256001, 5256137, 5256319, 5256481, 5256661, 5256829, 5257013]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5254253 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5254253 5257013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5254253) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5257171, 5257349, 5257531, 5257711, 5257883, 5258063, 5258233, 5258413, 5258579, 5258761, 5258917, 5259091, 5259269, 5259427, 5259601, 5259763]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5257013 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5257013 5259763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5257013) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5259929, 5260081, 5260247, 5260417, 5260597, 5260763, 5260943, 5261117, 5261261, 5261429, 5261611, 5261783, 5261957, 5262133, 5262289, 5262463]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5259763 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5259763 5262463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5259763) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5262619, 5262799, 5262931, 5263109, 5263267, 5263451, 5263631, 5263813, 5263997, 5264179, 5264353, 5264537, 5264711, 5264891, 5265067, 5265241]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5262463 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5262463 5265241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5262463) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5265419, 5265593, 5265773, 5265943, 5266127, 5266307, 5266483, 5266649, 5266831, 5266997, 5267177, 5267359, 5267539, 5267719, 5267891, 5268031]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5265241 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5265241 5268031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5265241) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5268209, 5268299, 5268457, 5268619, 5268803, 5268979, 5269151, 5269309, 5269493, 5269673, 5269841, 5270009, 5270183, 5270359, 5270537, 5270719]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5268031 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5268031 5270719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5268031) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5270873, 5271053, 5271223, 5271401, 5271557, 5271733, 5271913, 5272097, 5272259, 5272441, 5272621, 5272801, 5272979, 5273137, 5273309, 5273491]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5270719 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5270719 5273491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5270719) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5273669, 5273839, 5274023, 5274197, 5274359, 5274463, 5274631, 5274739, 5274923, 5275099, 5275279, 5275451, 5275583, 5275759, 5275909, 5276093]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5273491 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5273491 5276093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5273491) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5276263, 5276441, 5276617, 5276797, 5276969, 5277131, 5277313, 5277487, 5277661, 5277799, 5277983, 5278151, 5278331, 5278499, 5278681, 5278843]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5276093 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5276093 5278843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5276093) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5279011, 5279191, 5279357, 5279539, 5279689, 5279873, 5280049, 5280229, 5280413, 5280589, 5280773, 5280949, 5281123, 5281273, 5281457, 5281631]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5278843 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5278843 5281631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5278843) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5281763, 5281937, 5282119, 5282297, 5282477, 5282657, 5282833, 5283011, 5283167, 5283347, 5283527, 5283701, 5283877, 5284031, 5284193, 5284373]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5281631 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5281631 5284373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5281631) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5284541, 5284709, 5284891, 5285057, 5285237, 5285417, 5285587, 5285771, 5285953, 5286109, 5286293, 5286469, 5286653, 5286823, 5286971, 5287147]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5284373 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5284373 5287147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5284373) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5287327, 5287507, 5287691, 5287859, 5288033, 5288203, 5288369, 5288539, 5288687, 5288869, 5289017, 5289199, 5289373, 5289547, 5289727, 5289901]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5287147 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5287147 5289901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5287147) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5290081, 5290231, 5290409, 5290577, 5290729, 5290913, 5291093, 5291269, 5291453, 5291621, 5291801, 5291971, 5292149, 5292293, 5292473, 5292653]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5289901 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5289901 5292653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5289901) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5292823, 5292997, 5293181, 5293361, 5293517, 5293699, 5293877, 5294059, 5294231, 5294411, 5294591, 5294771, 5294953, 5295137, 5295307, 5295491]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5292653 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5292653 5295491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5292653) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5295673, 5295853, 5296037, 5296219, 5296399, 5296553, 5296727, 5296909, 5297059, 5297233, 5297389, 5297563, 5297737, 5297917, 5298089, 5298269]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5295491 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5295491 5298269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5295491) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5298443, 5298617, 5298779, 5298949, 5299117, 5299267, 5299447, 5299627, 5299787, 5299951, 5300123, 5300299, 5300479, 5300641, 5300809, 5300993]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5298269 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5298269 5300993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5298269) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5301167, 5301349, 5301533, 5301697, 5301871, 5302027, 5302207, 5302391, 5302573, 5302747, 5302907, 5303083, 5303239, 5303399, 5303581, 5303761]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5300993 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5300993 5303761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5300993) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5303941, 5304109, 5304263, 5304427, 5304601, 5304773, 5304913, 5305093, 5305273, 5305453, 5305627, 5305799, 5305981, 5306153, 5306321, 5306479]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5303761 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5303761 5306479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5303761) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5218321 5223793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5218321)
    (mid := 5221003) (hi := 5223793) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5223793 5229437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5223793)
    (mid := 5226643) (hi := 5229437) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5229437 5234989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5229437)
    (mid := 5232229) (hi := 5234989) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5234989 5240491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5234989)
    (mid := 5237693) (hi := 5240491) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5240491 5245967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5240491)
    (mid := 5243281) (hi := 5245967) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5245967 5251457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5245967)
    (mid := 5248637) (hi := 5251457) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5251457 5257013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5251457)
    (mid := 5254253) (hi := 5257013) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5257013 5262463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5257013)
    (mid := 5259763) (hi := 5262463) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5262463 5268031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5262463)
    (mid := 5265241) (hi := 5268031) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5268031 5273491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5268031)
    (mid := 5270719) (hi := 5273491) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5273491 5278843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5273491)
    (mid := 5276093) (hi := 5278843) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5278843 5284373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5278843)
    (mid := 5281631) (hi := 5284373) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5284373 5289901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5284373)
    (mid := 5287147) (hi := 5289901) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5289901 5295491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5289901)
    (mid := 5292653) (hi := 5295491) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5295491 5300993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5295491)
    (mid := 5298269) (hi := 5300993) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5300993 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5300993)
    (mid := 5303761) (hi := 5306479) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5218321 5229437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5218321)
    (mid := 5223793) (hi := 5229437) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5229437 5240491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5229437)
    (mid := 5234989) (hi := 5240491) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5240491 5251457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5240491)
    (mid := 5245967) (hi := 5251457) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5251457 5262463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5251457)
    (mid := 5257013) (hi := 5262463) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5262463 5273491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5262463)
    (mid := 5268031) (hi := 5273491) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5273491 5284373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5273491)
    (mid := 5278843) (hi := 5284373) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5284373 5295491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5284373)
    (mid := 5289901) (hi := 5295491) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5295491 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5295491)
    (mid := 5300993) (hi := 5306479) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5218321 5240491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5218321)
    (mid := 5229437) (hi := 5240491) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5240491 5262463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5240491)
    (mid := 5251457) (hi := 5262463) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5262463 5284373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5262463)
    (mid := 5273491) (hi := 5284373) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5284373 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5284373)
    (mid := 5295491) (hi := 5306479) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5218321 5262463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5218321)
    (mid := 5240491) (hi := 5262463) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5262463 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5262463)
    (mid := 5284373) (hi := 5306479) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5218321 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5218321)
    (mid := 5262463) (hi := 5306479) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5218321 5306479 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block059

#print axioms B699MiddleExtension.PrimorialBlocks.Block059.joined
