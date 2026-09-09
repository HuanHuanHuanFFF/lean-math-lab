import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block071

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6273233, 6273373, 6273539, 6273703, 6273881, 6274061, 6274231, 6274409, 6274577, 6274757, 6274937, 6275117, 6275279, 6275449, 6275627, 6275777]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6273053 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6273053 6275777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6273053) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6275953, 6276131, 6276311, 6276481, 6276637, 6276817, 6277001, 6277177, 6277361, 6277511, 6277669, 6277849, 6278029, 6278179, 6278353, 6278537]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6275777 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6275777 6278537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6275777) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6278717, 6278897, 6279067, 6279227, 6279397, 6279569, 6279743, 6279907, 6280091, 6280273, 6280457, 6280607, 6280789, 6280957, 6281141, 6281321]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6278537 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6278537 6281321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6278537) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6281501, 6281683, 6281839, 6282019, 6282203, 6282377, 6282557, 6282737, 6282893, 6283051, 6283223, 6283399, 6283583, 6283763, 6283943, 6284123]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6281321 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6281321 6284123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6281321) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6284297, 6284479, 6284633, 6284807, 6284963, 6285137, 6285317, 6285497, 6285667, 6285847, 6286019, 6286177, 6286361, 6286531, 6286711, 6286883]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6284123 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6284123 6286883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6284123) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6287051, 6287201, 6287381, 6287551, 6287731, 6287903, 6288077, 6288241, 6288391, 6288571, 6288749, 6288923, 6289091, 6289253, 6289429, 6289601]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6286883 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6286883 6289601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6286883) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6289783, 6289967, 6290149, 6290327, 6290497, 6290681, 6290839, 6291011, 6291191, 6291353, 6291533, 6291713, 6291893, 6292073, 6292241, 6292421]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6289601 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6289601 6292421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6289601) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6292589, 6292757, 6292927, 6293081, 6293251, 6293429, 6293603, 6293767, 6293939, 6294091, 6294269, 6294451, 6294599, 6294779, 6294941, 6295109]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6292421 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6292421 6295109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6292421) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6295283, 6295451, 6295579, 6295741, 6295909, 6296071, 6296233, 6296413, 6296597, 6296747, 6296921, 6297103, 6297283, 6297419, 6297593, 6297763]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6295109 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6295109 6297763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6295109) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6297947, 6298121, 6298283, 6298463, 6298639, 6298811, 6298973, 6299149, 6299303, 6299483, 6299663, 6299837, 6300017, 6300199, 6300383, 6300563]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6297763 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6297763 6300563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6297763) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6300739, 6300923, 6301073, 6301213, 6301397, 6301567, 6301739, 6301913, 6302081, 6302249, 6302431, 6302609, 6302789, 6302969, 6303151, 6303317]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6300563 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6300563 6303317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6300563) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6303491, 6303667, 6303841, 6304013, 6304189, 6304357, 6304517, 6304699, 6304867, 6305041, 6305203, 6305363, 6305527, 6305711, 6305869, 6306049]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6303317 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6303317 6306049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6303317) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6306211, 6306383, 6306563, 6306739, 6306913, 6307039, 6307219, 6307397, 6307577, 6307739, 6307921, 6308089, 6308273, 6308429, 6308569, 6308737]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6306049 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6306049 6308737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6306049) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6308891, 6309073, 6309239, 6309389, 6309551, 6309731, 6309913, 6310097, 6310279, 6310459, 6310627, 6310807, 6310963, 6311147, 6311329, 6311509]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6308737 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6308737 6311509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6308737) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6311689, 6311873, 6312043, 6312221, 6312379, 6312547, 6312727, 6312869, 6313033, 6313189, 6313361, 6313513, 6313693, 6313861, 6314039, 6314221]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6311509 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6311509 6314221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6311509) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6314393, 6314569, 6314717, 6314899, 6315083, 6315259, 6315433, 6315613, 6315791, 6315973, 6316153, 6316319, 6316483, 6316663, 6316837, 6317021]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6314221 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6314221 6317021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6314221) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6317197, 6317371, 6317537, 6317719, 6317887, 6318071, 6318253, 6318427, 6318593, 6318757, 6318937, 6319111, 6319279, 6319463, 6319633, 6319813]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6317021 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6317021 6319813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6317021) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6319993, 6320159, 6320333, 6320507, 6320689, 6320849, 6321023, 6321193, 6321377, 6321521, 6321703, 6321883, 6322067, 6322163, 6322343, 6322513]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6319813 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6319813 6322513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6319813) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6322681, 6322859, 6323033, 6323209, 6323357, 6323519, 6323699, 6323879, 6324061, 6324239, 6324413, 6324559, 6324737, 6324919, 6325097, 6325279]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6322513 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6322513 6325279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6322513) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6325453, 6325633, 6325817, 6325999, 6326179, 6326351, 6326527, 6326707, 6326869, 6327029, 6327203, 6327371, 6327533, 6327709, 6327889, 6328067]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6325279 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6325279 6328067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6325279) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6328249, 6328411, 6328541, 6328723, 6328897, 6329077, 6329233, 6329417, 6329597, 6329777, 6329927, 6330109, 6330283, 6330461, 6330631, 6330809]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6328067 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6328067 6330809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6328067) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6330967, 6331151, 6331333, 6331517, 6331691, 6331873, 6332047, 6332219, 6332399, 6332563, 6332747, 6332927, 6333101, 6333277, 6333461, 6333643]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6330809 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6330809 6333643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6330809) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6333799, 6333961, 6334127, 6334309, 6334481, 6334663, 6334841, 6335011, 6335183, 6335359, 6335533, 6335711, 6335893, 6336073, 6336241, 6336419]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6333643 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6333643 6336419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6333643) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6336599, 6336773, 6336949, 6337129, 6337273, 6337453, 6337637, 6337819, 6337993, 6338147, 6338309, 6338483, 6338653, 6338833, 6338999, 6339167]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6336419 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6336419 6339167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6336419) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6339349, 6339511, 6339679, 6339847, 6340021, 6340193, 6340361, 6340519, 6340687, 6340871, 6341039, 6341219, 6341369, 6341551, 6341723, 6341903]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6339167 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6339167 6341903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6339167) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6342079, 6342251, 6342419, 6342593, 6342773, 6342949, 6343133, 6343291, 6343459, 6343639, 6343819, 6344003, 6344171, 6344341, 6344509, 6344687]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6341903 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6341903 6344687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6341903) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6344857, 6345041, 6345197, 6345377, 6345551, 6345721, 6345887, 6346037, 6346213, 6346397, 6346579, 6346751, 6346897, 6347059, 6347221, 6347381]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6344687 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6344687 6347381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6344687) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6347527, 6347707, 6347879, 6348061, 6348241, 6348401, 6348569, 6348751, 6348917, 6349099, 6349283, 6349433, 6349589, 6349751, 6349921, 6350083]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6347381 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6347381 6350083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6347381) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6350263, 6350441, 6350621, 6350801, 6350983, 6351139, 6351313, 6351481, 6351649, 6351809, 6351973, 6352147, 6352331, 6352487, 6352657, 6352837]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6350083 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6350083 6352837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6350083) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6353021, 6353173, 6353351, 6353531, 6353713, 6353873, 6354043, 6354217, 6354391, 6354559, 6354743, 6354913, 6355087, 6355259, 6355381, 6355561]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6352837 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6352837 6355561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6352837) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6355733, 6355913, 6356093, 6356263, 6356443, 6356617, 6356789, 6356971, 6357121, 6357301, 6357479, 6357661, 6357839, 6358021, 6358181, 6358361]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6355561 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6355561 6358361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6355561) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6358537, 6358721, 6358897, 6359057, 6359239, 6359407, 6359537, 6359693, 6359839, 6359987, 6360169, 6360349, 6360509, 6360659, 6360841, 6361013]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6358361 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6358361 6361013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6358361) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6273053 6278537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6273053)
    (mid := 6275777) (hi := 6278537) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6278537 6284123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6278537)
    (mid := 6281321) (hi := 6284123) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6284123 6289601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6284123)
    (mid := 6286883) (hi := 6289601) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6289601 6295109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6289601)
    (mid := 6292421) (hi := 6295109) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6295109 6300563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6295109)
    (mid := 6297763) (hi := 6300563) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6300563 6306049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6300563)
    (mid := 6303317) (hi := 6306049) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6306049 6311509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6306049)
    (mid := 6308737) (hi := 6311509) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6311509 6317021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6311509)
    (mid := 6314221) (hi := 6317021) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6317021 6322513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6317021)
    (mid := 6319813) (hi := 6322513) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6322513 6328067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6322513)
    (mid := 6325279) (hi := 6328067) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6328067 6333643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6328067)
    (mid := 6330809) (hi := 6333643) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6333643 6339167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6333643)
    (mid := 6336419) (hi := 6339167) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6339167 6344687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6339167)
    (mid := 6341903) (hi := 6344687) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6344687 6350083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6344687)
    (mid := 6347381) (hi := 6350083) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6350083 6355561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6350083)
    (mid := 6352837) (hi := 6355561) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6355561 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6355561)
    (mid := 6358361) (hi := 6361013) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6273053 6284123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6273053)
    (mid := 6278537) (hi := 6284123) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6284123 6295109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6284123)
    (mid := 6289601) (hi := 6295109) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6295109 6306049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6295109)
    (mid := 6300563) (hi := 6306049) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6306049 6317021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6306049)
    (mid := 6311509) (hi := 6317021) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6317021 6328067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6317021)
    (mid := 6322513) (hi := 6328067) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6328067 6339167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6328067)
    (mid := 6333643) (hi := 6339167) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6339167 6350083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6339167)
    (mid := 6344687) (hi := 6350083) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6350083 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6350083)
    (mid := 6355561) (hi := 6361013) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6273053 6295109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6273053)
    (mid := 6284123) (hi := 6295109) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6295109 6317021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6295109)
    (mid := 6306049) (hi := 6317021) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6317021 6339167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6317021)
    (mid := 6328067) (hi := 6339167) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6339167 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6339167)
    (mid := 6350083) (hi := 6361013) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6273053 6317021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6273053)
    (mid := 6295109) (hi := 6317021) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6317021 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6317021)
    (mid := 6339167) (hi := 6361013) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6273053 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6273053)
    (mid := 6317021) (hi := 6361013) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6273053 6361013 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block071

#print axioms B699MiddleExtension.PrimorialBlocks.Block071.joined
