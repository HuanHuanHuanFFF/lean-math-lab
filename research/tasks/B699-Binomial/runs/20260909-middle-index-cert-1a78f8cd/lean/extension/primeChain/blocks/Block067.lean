import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block067

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5921359, 5921543, 5921717, 5921893, 5922073, 5922253, 5922437, 5922619, 5922793, 5922971, 5923133, 5923297, 5923471, 5923609, 5923787, 5923961]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5921177 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5921177 5923961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5921177) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5924141, 5924309, 5924489, 5924657, 5924833, 5925001, 5925181, 5925343, 5925509, 5925691, 5925863, 5926033, 5926199, 5926381, 5926541, 5926721]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5923961 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5923961 5926721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5923961) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5926903, 5927087, 5927269, 5927447, 5927627, 5927809, 5927989, 5928173, 5928353, 5928523, 5928707, 5928833, 5928983, 5929129, 5929309, 5929493]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5926721 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5926721 5929493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5926721) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5929667, 5929841, 5930017, 5930201, 5930383, 5930539, 5930719, 5930893, 5931077, 5931223, 5931391, 5931559, 5931713, 5931869, 5932049, 5932231]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5929493 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5929493 5932231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5929493) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5932411, 5932583, 5932747, 5932909, 5933093, 5933273, 5933449, 5933623, 5933791, 5933903, 5934083, 5934239, 5934413, 5934571, 5934739, 5934913]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5932231 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5932231 5934913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5932231) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5935093, 5935273, 5935453, 5935627, 5935801, 5935967, 5936143, 5936321, 5936501, 5936663, 5936837, 5937011, 5937179, 5937361, 5937541, 5937707]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5934913 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5934913 5937707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5934913) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5937889, 5938073, 5938237, 5938421, 5938589, 5938771, 5938931, 5939111, 5939261, 5939431, 5939581, 5939743, 5939903, 5940047, 5940223, 5940401]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5937707 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5937707 5940401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5937707) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5940581, 5940763, 5940931, 5941099, 5941283, 5941451, 5941633, 5941769, 5941951, 5942113, 5942267, 5942429, 5942609, 5942777, 5942957, 5943139]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5940401 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5940401 5943139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5940401) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5943323, 5943493, 5943671, 5943853, 5944021, 5944193, 5944369, 5944553, 5944723, 5944907, 5945089, 5945267, 5945449, 5945591, 5945773, 5945941]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5943139 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5943139 5945941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5943139) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5946119, 5946301, 5946469, 5946649, 5946797, 5946979, 5947163, 5947327, 5947499, 5947679, 5947853, 5948027, 5948209, 5948389, 5948563, 5948713]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5945941 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5945941 5948713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5945941) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5948867, 5949049, 5949227, 5949407, 5949583, 5949763, 5949929, 5950103, 5950283, 5950463, 5950643, 5950823, 5950963, 5951147, 5951321, 5951489]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5948713 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5948713 5951489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5948713) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5951669, 5951851, 5952007, 5952181, 5952343, 5952487, 5952631, 5952811, 5952983, 5953153, 5953319, 5953489, 5953667, 5953799, 5953963, 5954147]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5951489 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5951489 5954147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5951489) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5954329, 5954513, 5954681, 5954849, 5955031, 5955211, 5955361, 5955541, 5955709, 5955883, 5956037, 5956219, 5956399, 5956549, 5956697, 5956843]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5954147 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5954147 5956843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5954147) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5957027, 5957201, 5957339, 5957513, 5957689, 5957857, 5957981, 5958163, 5958319, 5958503, 5958683, 5958853, 5958971, 5959153, 5959319, 5959489]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5956843 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5956843 5959489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5956843) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5959663, 5959831, 5959973, 5960137, 5960309, 5960483, 5960639, 5960821, 5961001, 5961173, 5961353, 5961533, 5961707, 5961887, 5962063, 5962241]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5959489 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5959489 5962241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5959489) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5962417, 5962601, 5962783, 5962967, 5963149, 5963317, 5963479, 5963653, 5963833, 5964017, 5964197, 5964377, 5964559, 5964743, 5964919, 5965093]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5962241 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5962241 5965093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5962241) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5965273, 5965447, 5965573, 5965727, 5965907, 5966087, 5966243, 5966419, 5966599, 5966773, 5966929, 5967109, 5967293, 5967461, 5967631, 5967809]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5965093 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5965093 5967809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5965093) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5967991, 5968163, 5968307, 5968481, 5968643, 5968817, 5968997, 5969179, 5969357, 5969531, 5969681, 5969863, 5970037, 5970221, 5970373, 5970557]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5967809 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5967809 5970557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5967809) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5970733, 5970901, 5971081, 5971253, 5971429, 5971591, 5971759, 5971939, 5972107, 5972279, 5972453, 5972611, 5972779, 5972959, 5973139, 5973323]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5970557 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5970557 5973323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5970557) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5973503, 5973679, 5973853, 5974027, 5974211, 5974387, 5974547, 5974711, 5974879, 5975051, 5975227, 5975401, 5975539, 5975713, 5975897, 5976079]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5973323 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5973323 5976079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5973323) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5976221, 5976403, 5976577, 5976749, 5976931, 5977073, 5977253, 5977429, 5977613, 5977753, 5977921, 5978083, 5978267, 5978449, 5978633, 5978813]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5976079 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5976079 5978813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5976079) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5978993, 5979173, 5979341, 5979469, 5979653, 5979823, 5979991, 5980171, 5980339, 5980519, 5980693, 5980859, 5981033, 5981207, 5981387, 5981567]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5978813 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5978813 5981567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5978813) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5981749, 5981891, 5982071, 5982241, 5982413, 5982577, 5982751, 5982931, 5983091, 5983267, 5983451, 5983631, 5983807, 5983969, 5984137, 5984309]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5981567 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5981567 5984309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5981567) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5984479, 5984659, 5984843, 5985013, 5985193, 5985349, 5985533, 5985709, 5985871, 5986039, 5986207, 5986391, 5986571, 5986753, 5986931, 5987101]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5984309 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5984309 5987101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5984309) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5987273, 5987447, 5987629, 5987803, 5987977, 5988139, 5988319, 5988497, 5988679, 5988839, 5989021, 5989183, 5989367, 5989547, 5989721, 5989903]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5987101 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5987101 5989903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5987101) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5990081, 5990251, 5990423, 5990597, 5990779, 5990917, 5991101, 5991263, 5991443, 5991589, 5991757, 5991907, 5992073, 5992247, 5992421, 5992603]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5989903 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5989903 5992603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5989903) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5992783, 5992933, 5993107, 5993291, 5993473, 5993653, 5993837, 5993993, 5994169, 5994347, 5994529, 5994707, 5994887, 5995069, 5995243, 5995427]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5992603 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5992603 5995427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5992603) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5995609, 5995783, 5995967, 5996149, 5996329, 5996509, 5996687, 5996863, 5997041, 5997223, 5997377, 5997553, 5997731, 5997883, 5998061, 5998217]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5995427 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5995427 5998217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5995427) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5998393, 5998567, 5998723, 5998907, 5999083, 5999267, 5999449, 5999633, 5999779, 5999947, 6000121, 6000301, 6000481, 6000653, 6000829, 6001013]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5998217 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5998217 6001013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5998217) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6001189, 6001351, 6001531, 6001679, 6001829, 6001997, 6002179, 6002363, 6002539, 6002723, 6002903, 6003083, 6003251, 6003419, 6003581, 6003761]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6001013 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6001013 6003761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6001013) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6003931, 6004093, 6004277, 6004459, 6004639, 6004813, 6004991, 6005149, 6005327, 6005497, 6005663, 6005789, 6005953, 6006137, 6006313, 6006479]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6003761 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6003761 6006479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6003761) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6006643, 6006817, 6006991, 6007159, 6007333, 6007517, 6007697, 6007879, 6008063, 6008231, 6008399, 6008533, 6008707, 6008881, 6009037, 6009167]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6006479 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6006479 6009167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6006479) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5921177 5926721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5921177)
    (mid := 5923961) (hi := 5926721) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5926721 5932231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5926721)
    (mid := 5929493) (hi := 5932231) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5932231 5937707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5932231)
    (mid := 5934913) (hi := 5937707) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5937707 5943139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5937707)
    (mid := 5940401) (hi := 5943139) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5943139 5948713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5943139)
    (mid := 5945941) (hi := 5948713) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5948713 5954147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5948713)
    (mid := 5951489) (hi := 5954147) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5954147 5959489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5954147)
    (mid := 5956843) (hi := 5959489) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5959489 5965093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5959489)
    (mid := 5962241) (hi := 5965093) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5965093 5970557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5965093)
    (mid := 5967809) (hi := 5970557) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5970557 5976079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5970557)
    (mid := 5973323) (hi := 5976079) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5976079 5981567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5976079)
    (mid := 5978813) (hi := 5981567) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5981567 5987101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5981567)
    (mid := 5984309) (hi := 5987101) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5987101 5992603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5987101)
    (mid := 5989903) (hi := 5992603) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5992603 5998217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5992603)
    (mid := 5995427) (hi := 5998217) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5998217 6003761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5998217)
    (mid := 6001013) (hi := 6003761) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6003761 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6003761)
    (mid := 6006479) (hi := 6009167) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5921177 5932231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5921177)
    (mid := 5926721) (hi := 5932231) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5932231 5943139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5932231)
    (mid := 5937707) (hi := 5943139) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5943139 5954147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5943139)
    (mid := 5948713) (hi := 5954147) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5954147 5965093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5954147)
    (mid := 5959489) (hi := 5965093) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5965093 5976079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5965093)
    (mid := 5970557) (hi := 5976079) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5976079 5987101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5976079)
    (mid := 5981567) (hi := 5987101) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5987101 5998217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5987101)
    (mid := 5992603) (hi := 5998217) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5998217 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5998217)
    (mid := 6003761) (hi := 6009167) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5921177 5943139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5921177)
    (mid := 5932231) (hi := 5943139) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5943139 5965093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5943139)
    (mid := 5954147) (hi := 5965093) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5965093 5987101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5965093)
    (mid := 5976079) (hi := 5987101) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5987101 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5987101)
    (mid := 5998217) (hi := 6009167) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5921177 5965093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5921177)
    (mid := 5943139) (hi := 5965093) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5965093 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5965093)
    (mid := 5987101) (hi := 6009167) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5921177 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5921177)
    (mid := 5965093) (hi := 6009167) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5921177 6009167 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block067

#print axioms B699MiddleExtension.PrimorialBlocks.Block067.joined
