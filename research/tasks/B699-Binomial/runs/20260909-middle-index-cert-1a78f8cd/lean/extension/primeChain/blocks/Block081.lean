import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block081

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7151401, 7151569, 7151741, 7151909, 7152083, 7152263, 7152419, 7152583, 7152751, 7152923, 7153103, 7153261, 7153429, 7153607, 7153789, 7153969]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7151227 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7151227 7153969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7151227) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7154137, 7154321, 7154491, 7154639, 7154789, 7154971, 7155151, 7155331, 7155509, 7155677, 7155851, 7156033, 7156213, 7156397, 7156573, 7156741]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7153969 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7153969 7156741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7153969) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7156913, 7157093, 7157273, 7157443, 7157627, 7157803, 7157987, 7158163, 7158337, 7158517, 7158691, 7158857, 7159039, 7159223, 7159381, 7159541]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7156741 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7156741 7159541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7156741) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7159699, 7159843, 7160011, 7160189, 7160369, 7160551, 7160731, 7160899, 7161071, 7161251, 7161433, 7161599, 7161773, 7161937, 7162109, 7162289]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7159541 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7159541 7162289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7159541) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7162469, 7162633, 7162807, 7162963, 7163147, 7163309, 7163461, 7163633, 7163809, 7163993, 7164173, 7164331, 7164499, 7164673, 7164853, 7165031]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7162289 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7162289 7165031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7162289) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7165199, 7165363, 7165541, 7165699, 7165883, 7166063, 7166233, 7166417, 7166597, 7166773, 7166941, 7167119, 7167301, 7167481, 7167647, 7167791]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7165031 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7165031 7167791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7165031) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7167967, 7168097, 7168279, 7168459, 7168631, 7168813, 7168991, 7169167, 7169317, 7169501, 7169677, 7169861, 7170041, 7170199, 7170377, 7170539]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7167791 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7167791 7170539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7167791) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7170721, 7170901, 7171079, 7171259, 7171441, 7171621, 7171799, 7171979, 7172131, 7172311, 7172479, 7172639, 7172797, 7172969, 7173149, 7173293]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7170539 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7170539 7173293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7170539) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7173433, 7173613, 7173787, 7173941, 7174117, 7174301, 7174481, 7174649, 7174823, 7174997, 7175159, 7175327, 7175503, 7175687, 7175843, 7176019]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7173293 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7173293 7176019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7173293) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7176203, 7176371, 7176551, 7176733, 7176901, 7177069, 7177253, 7177427, 7177609, 7177783, 7177921, 7178077, 7178261, 7178443, 7178627, 7178779]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7176019 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7176019 7178779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7176019) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7178957, 7179127, 7179301, 7179481, 7179647, 7179829, 7180009, 7180193, 7180363, 7180543, 7180721, 7180903, 7181087, 7181257, 7181431, 7181611]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7178779 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7178779 7181611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7178779) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7181761, 7181897, 7182067, 7182223, 7182377, 7182541, 7182709, 7182883, 7183067, 7183243, 7183411, 7183591, 7183769, 7183933, 7184117, 7184291]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7181611 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7181611 7184291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7181611) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7184473, 7184657, 7184833, 7184981, 7185163, 7185341, 7185523, 7185677, 7185833, 7186007, 7186187, 7186369, 7186537, 7186703, 7186877, 7187051]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7184291 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7184291 7187051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7184291) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7187233, 7187417, 7187599, 7187783, 7187963, 7188119, 7188287, 7188457, 7188613, 7188793, 7188953, 7189123, 7189307, 7189463, 7189627, 7189783]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7187051 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7187051 7189783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7187051) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7189943, 7190123, 7190299, 7190479, 7190663, 7190837, 7191007, 7191181, 7191347, 7191511, 7191689, 7191869, 7192043, 7192201, 7192373, 7192553]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7189783 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7189783 7192553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7189783) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7192727, 7192903, 7193071, 7193231, 7193401, 7193579, 7193749, 7193903, 7194079, 7194251, 7194433, 7194611, 7194773, 7194923, 7195087, 7195261]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7192553 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7192553 7195261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7192553) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7195423, 7195597, 7195759, 7195939, 7196107, 7196291, 7196467, 7196647, 7196803, 7196951, 7197131, 7197313, 7197467, 7197607, 7197791, 7197961]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7195261 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7195261 7197961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7195261) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7198141, 7198297, 7198481, 7198643, 7198813, 7198987, 7199167, 7199327, 7199443, 7199623, 7199807, 7199957, 7200131, 7200313, 7200493, 7200659]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7197961 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7197961 7200659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7197961) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7200821, 7200983, 7201157, 7201307, 7201457, 7201639, 7201823, 7202003, 7202177, 7202359, 7202513, 7202693, 7202869, 7203043, 7203227, 7203409]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7200659 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7200659 7203409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7200659) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7203593, 7203769, 7203949, 7204133, 7204289, 7204471, 7204621, 7204801, 7204949, 7205119, 7205249, 7205383, 7205563, 7205743, 7205911, 7206053]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7203409 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7203409 7206053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7203409) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7206233, 7206403, 7206581, 7206743, 7206919, 7207093, 7207247, 7207427, 7207597, 7207771, 7207919, 7208099, 7208281, 7208449, 7208627, 7208807]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7206053 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7206053 7208807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7206053) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7208983, 7209157, 7209311, 7209491, 7209673, 7209841, 7210001, 7210169, 7210349, 7210529, 7210699, 7210877, 7211033, 7211201, 7211381, 7211537]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7208807 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7208807 7211537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7208807) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7211717, 7211899, 7212083, 7212263, 7212397, 7212577, 7212757, 7212917, 7213097, 7213279, 7213441, 7213621, 7213781, 7213937, 7214101, 7214279]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7211537 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7211537 7214279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7211537) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7214447, 7214611, 7214791, 7214959, 7215133, 7215301, 7215479, 7215661, 7215829, 7216009, 7216193, 7216373, 7216543, 7216723, 7216889, 7217071]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7214279 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7214279 7217071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7214279) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7217251, 7217429, 7217611, 7217783, 7217963, 7218143, 7218317, 7218479, 7218661, 7218839, 7219021, 7219139, 7219307, 7219483, 7219661, 7219843]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7217071 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7217071 7219843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7217071) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7220027, 7220201, 7220383, 7220557, 7220729, 7220897, 7221079, 7221259, 7221439, 7221619, 7221779, 7221961, 7222133, 7222291, 7222429, 7222613]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7219843 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7219843 7222613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7219843) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7222781, 7222939, 7223123, 7223303, 7223483, 7223659, 7223833, 7223999, 7224181, 7224359, 7224521, 7224697, 7224869, 7225039, 7225217, 7225373]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7222613 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7222613 7225373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7222613) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7225541, 7225723, 7225879, 7226059, 7226227, 7226381, 7226563, 7226741, 7226917, 7227071, 7227251, 7227419, 7227551, 7227721, 7227887, 7228033]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7225373 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7225373 7228033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7225373) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7228217, 7228399, 7228577, 7228747, 7228913, 7229077, 7229239, 7229419, 7229591, 7229771, 7229953, 7230137, 7230319, 7230481, 7230653, 7230827]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7228033 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7228033 7230827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7228033) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7230991, 7231163, 7231333, 7231501, 7231669, 7231853, 7232011, 7232171, 7232341, 7232503, 7232671, 7232839, 7233011, 7233181, 7233337, 7233511]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7230827 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7230827 7233511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7230827) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7233691, 7233871, 7234001, 7234181, 7234361, 7234541, 7234723, 7234897, 7235071, 7235237, 7235419, 7235597, 7235771, 7235953, 7236133, 7236311]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7233511 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7233511 7236311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7233511) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7236487, 7236643, 7236821, 7237003, 7237183, 7237367, 7237547, 7237729, 7237897, 7238071, 7238207, 7238389, 7238573, 7238743, 7238927, 7239109]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7236311 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7236311 7239109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7236311) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7151227 7156741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7151227)
    (mid := 7153969) (hi := 7156741) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7156741 7162289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7156741)
    (mid := 7159541) (hi := 7162289) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7162289 7167791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7162289)
    (mid := 7165031) (hi := 7167791) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7167791 7173293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7167791)
    (mid := 7170539) (hi := 7173293) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7173293 7178779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7173293)
    (mid := 7176019) (hi := 7178779) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7178779 7184291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7178779)
    (mid := 7181611) (hi := 7184291) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7184291 7189783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7184291)
    (mid := 7187051) (hi := 7189783) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7189783 7195261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7189783)
    (mid := 7192553) (hi := 7195261) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7195261 7200659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7195261)
    (mid := 7197961) (hi := 7200659) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7200659 7206053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7200659)
    (mid := 7203409) (hi := 7206053) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7206053 7211537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7206053)
    (mid := 7208807) (hi := 7211537) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7211537 7217071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7211537)
    (mid := 7214279) (hi := 7217071) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7217071 7222613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7217071)
    (mid := 7219843) (hi := 7222613) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7222613 7228033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7222613)
    (mid := 7225373) (hi := 7228033) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7228033 7233511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7228033)
    (mid := 7230827) (hi := 7233511) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7233511 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7233511)
    (mid := 7236311) (hi := 7239109) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7151227 7162289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7151227)
    (mid := 7156741) (hi := 7162289) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7162289 7173293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7162289)
    (mid := 7167791) (hi := 7173293) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7173293 7184291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7173293)
    (mid := 7178779) (hi := 7184291) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7184291 7195261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7184291)
    (mid := 7189783) (hi := 7195261) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7195261 7206053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7195261)
    (mid := 7200659) (hi := 7206053) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7206053 7217071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7206053)
    (mid := 7211537) (hi := 7217071) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7217071 7228033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7217071)
    (mid := 7222613) (hi := 7228033) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7228033 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7228033)
    (mid := 7233511) (hi := 7239109) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7151227 7173293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7151227)
    (mid := 7162289) (hi := 7173293) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7173293 7195261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7173293)
    (mid := 7184291) (hi := 7195261) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7195261 7217071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7195261)
    (mid := 7206053) (hi := 7217071) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7217071 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7217071)
    (mid := 7228033) (hi := 7239109) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7151227 7195261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7151227)
    (mid := 7173293) (hi := 7195261) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7195261 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7195261)
    (mid := 7217071) (hi := 7239109) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7151227 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7151227)
    (mid := 7195261) (hi := 7239109) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7151227 7239109 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block081

#print axioms B699MiddleExtension.PrimorialBlocks.Block081.joined
