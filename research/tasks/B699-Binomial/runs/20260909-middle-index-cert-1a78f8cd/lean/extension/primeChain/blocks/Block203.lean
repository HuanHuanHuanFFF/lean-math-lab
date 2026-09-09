import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block203

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17828917, 17829101, 17829271, 17829451, 17829613, 17829797, 17829979, 17830147, 17830327, 17830511, 17830693, 17830877, 17831057, 17831237, 17831389, 17831573]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17828737 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17828737 17831573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17828737) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17831731, 17831911, 17832091, 17832263, 17832403, 17832587, 17832733, 17832911, 17833093, 17833273, 17833447, 17833597, 17833771, 17833939, 17834123, 17834279]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17831573 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17831573 17834279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17831573) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17834437, 17834599, 17834771, 17834953, 17835131, 17835313, 17835473, 17835637, 17835821, 17836001, 17836141, 17836321, 17836409, 17836591, 17836771, 17836933]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17834279 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17834279 17836933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17834279) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17837093, 17837269, 17837429, 17837609, 17837791, 17837933, 17838109, 17838269, 17838449, 17838631, 17838787, 17838959, 17839139, 17839313, 17839489, 17839639]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17836933 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17836933 17839639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17836933) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17839823, 17839981, 17840149, 17840323, 17840461, 17840629, 17840773, 17840941, 17841079, 17841253, 17841433, 17841617, 17841799, 17841983, 17842157, 17842313]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17839639 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17839639 17842313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17839639) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17842493, 17842663, 17842841, 17842967, 17843143, 17843327, 17843479, 17843663, 17843843, 17843989, 17844163, 17844347, 17844523, 17844707, 17844887, 17845027]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17842313 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17842313 17845027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17842313) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17845207, 17845391, 17845573, 17845753, 17845931, 17846093, 17846273, 17846449, 17846623, 17846791, 17846971, 17847139, 17847317, 17847497, 17847659, 17847829]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17845027 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17845027 17847829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17845027) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17848007, 17848177, 17848339, 17848517, 17848687, 17848871, 17849053, 17849231, 17849411, 17849567, 17849749, 17849933, 17850113, 17850269, 17850433, 17850601]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17847829 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17847829 17850601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17847829) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17850769, 17850953, 17851123, 17851307, 17851489, 17851643, 17851817, 17851927, 17852111, 17852293, 17852473, 17852651, 17852827, 17852977, 17853151, 17853317]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17850601 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17850601 17853317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17850601) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17853463, 17853637, 17853811, 17853991, 17854153, 17854327, 17854483, 17854663, 17854817, 17854999, 17855179, 17855353, 17855483, 17855657, 17855837, 17855993]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17853317 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17853317 17855993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17853317) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17856127, 17856263, 17856427, 17856611, 17856793, 17856973, 17857153, 17857331, 17857493, 17857657, 17857793, 17857969, 17858153, 17858273, 17858453, 17858627]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17855993 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17855993 17858627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17855993) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17858807, 17858969, 17859151, 17859307, 17859461, 17859637, 17859817, 17859997, 17860169, 17860343, 17860519, 17860697, 17860823, 17861003, 17861183, 17861359]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17858627 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17858627 17861359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17858627) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17861521, 17861687, 17861867, 17862049, 17862227, 17862409, 17862583, 17862739, 17862883, 17863063, 17863231, 17863399, 17863579, 17863751, 17863919, 17864101]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17861359 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17861359 17864101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17861359) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17864279, 17864461, 17864641, 17864797, 17864939, 17865121, 17865277, 17865461, 17865637, 17865797, 17865971, 17866151, 17866309, 17866493, 17866657, 17866831]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17864101 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17864101 17866831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17864101) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17866997, 17867177, 17867347, 17867453, 17867623, 17867807, 17867977, 17868161, 17868293, 17868469, 17868647, 17868827, 17869001, 17869171, 17869339, 17869517]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17866831 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17866831 17869517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17866831) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17869699, 17869883, 17870059, 17870243, 17870357, 17870537, 17870719, 17870903, 17871083, 17871263, 17871431, 17871611, 17871773, 17871883, 17872067, 17872247]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17869517 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17869517 17872247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17869517) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17872397, 17872579, 17872753, 17872937, 17873087, 17873269, 17873437, 17873617, 17873797, 17873963, 17874139, 17874313, 17874433, 17874613, 17874751, 17874919]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17872247 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17872247 17874919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17872247) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17875097, 17875271, 17875453, 17875621, 17875799, 17875961, 17876141, 17876323, 17876501, 17876669, 17876851, 17877029, 17877203, 17877367, 17877547, 17877721]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17874919 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17874919 17877721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17874919) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17877901, 17878043, 17878207, 17878387, 17878541, 17878709, 17878879, 17879047, 17879227, 17879401, 17879581, 17879761, 17879909, 17880067, 17880241, 17880419]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17877721 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17877721 17880419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17877721) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17880593, 17880763, 17880943, 17881117, 17881301, 17881481, 17881627, 17881789, 17881973, 17882141, 17882311, 17882483, 17882659, 17882791, 17882957, 17883119]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17880419 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17880419 17883119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17880419) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17883293, 17883461, 17883623, 17883799, 17883973, 17884151, 17884331, 17884499, 17884679, 17884859, 17885041, 17885209, 17885359, 17885531, 17885711, 17885891]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17883119 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17883119 17885891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17883119) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17886073, 17886257, 17886439, 17886623, 17886787, 17886901, 17887069, 17887241, 17887423, 17887601, 17887781, 17887921, 17888081, 17888261, 17888441, 17888617]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17885891 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17885891 17888617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17885891) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17888789, 17888957, 17889133, 17889301, 17889467, 17889647, 17889829, 17890009, 17890177, 17890339, 17890519, 17890703, 17890867, 17891023, 17891147, 17891299]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17888617 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17888617 17891299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17888617) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17891477, 17891659, 17891843, 17892013, 17892187, 17892331, 17892503, 17892683, 17892863, 17893039, 17893189, 17893363, 17893543, 17893723, 17893907, 17894089]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17891299 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17891299 17894089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17891299) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17894267, 17894449, 17894623, 17894801, 17894959, 17895139, 17895313, 17895487, 17895671, 17895851, 17896009, 17896187, 17896357, 17896511, 17896673, 17896849]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17894089 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17894089 17896849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17894089) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17897029, 17897161, 17897329, 17897513, 17897683, 17897863, 17898043, 17898197, 17898379, 17898557, 17898733, 17898911, 17899093, 17899241, 17899423, 17899579]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17896849 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17896849 17899579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17896849) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17899753, 17899933, 17900117, 17900297, 17900431, 17900611, 17900789, 17900963, 17901137, 17901319, 17901491, 17901647, 17901827, 17901991, 17902151, 17902331]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17899579 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17899579 17902331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17899579) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17902501, 17902681, 17902861, 17903033, 17903203, 17903383, 17903551, 17903707, 17903887, 17904067, 17904233, 17904389, 17904533, 17904713, 17904889, 17905067]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17902331 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17902331 17905067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17902331) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17905213, 17905343, 17905483, 17905651, 17905819, 17905991, 17906173, 17906327, 17906509, 17906689, 17906869, 17907011, 17907193, 17907377, 17907541, 17907713]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17905067 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17905067 17907713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17905067) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17907887, 17908067, 17908249, 17908427, 17908609, 17908763, 17908937, 17909119, 17909261, 17909431, 17909597, 17909777, 17909953, 17910127, 17910301, 17910463]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17907713 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17907713 17910463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17907713) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17910647, 17910829, 17911007, 17911163, 17911343, 17911519, 17911703, 17911877, 17912057, 17912221, 17912399, 17912581, 17912753, 17912933, 17913109, 17913283]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17910463 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17910463 17913283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17910463) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17913463, 17913613, 17913769, 17913953, 17914129, 17914301, 17914483, 17914657, 17914829, 17914987, 17915171, 17915341, 17915503, 17915663, 17915837, 17916013]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17913283 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17913283 17916013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17913283) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17828737 17834279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17828737)
    (mid := 17831573) (hi := 17834279) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17834279 17839639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17834279)
    (mid := 17836933) (hi := 17839639) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17839639 17845027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17839639)
    (mid := 17842313) (hi := 17845027) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17845027 17850601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17845027)
    (mid := 17847829) (hi := 17850601) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17850601 17855993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17850601)
    (mid := 17853317) (hi := 17855993) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17855993 17861359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17855993)
    (mid := 17858627) (hi := 17861359) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17861359 17866831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17861359)
    (mid := 17864101) (hi := 17866831) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17866831 17872247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17866831)
    (mid := 17869517) (hi := 17872247) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17872247 17877721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17872247)
    (mid := 17874919) (hi := 17877721) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17877721 17883119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17877721)
    (mid := 17880419) (hi := 17883119) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17883119 17888617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17883119)
    (mid := 17885891) (hi := 17888617) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17888617 17894089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17888617)
    (mid := 17891299) (hi := 17894089) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17894089 17899579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17894089)
    (mid := 17896849) (hi := 17899579) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17899579 17905067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17899579)
    (mid := 17902331) (hi := 17905067) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17905067 17910463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17905067)
    (mid := 17907713) (hi := 17910463) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17910463 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17910463)
    (mid := 17913283) (hi := 17916013) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17828737 17839639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17828737)
    (mid := 17834279) (hi := 17839639) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17839639 17850601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17839639)
    (mid := 17845027) (hi := 17850601) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17850601 17861359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17850601)
    (mid := 17855993) (hi := 17861359) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17861359 17872247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17861359)
    (mid := 17866831) (hi := 17872247) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17872247 17883119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17872247)
    (mid := 17877721) (hi := 17883119) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17883119 17894089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17883119)
    (mid := 17888617) (hi := 17894089) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17894089 17905067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17894089)
    (mid := 17899579) (hi := 17905067) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17905067 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17905067)
    (mid := 17910463) (hi := 17916013) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17828737 17850601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17828737)
    (mid := 17839639) (hi := 17850601) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17850601 17872247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17850601)
    (mid := 17861359) (hi := 17872247) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17872247 17894089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17872247)
    (mid := 17883119) (hi := 17894089) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17894089 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17894089)
    (mid := 17905067) (hi := 17916013) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17828737 17872247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17828737)
    (mid := 17850601) (hi := 17872247) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17872247 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17872247)
    (mid := 17894089) (hi := 17916013) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17828737 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17828737)
    (mid := 17872247) (hi := 17916013) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17828737 17916013 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block203

#print axioms B699MiddleExtension.PrimorialBlocks.Block203.joined
