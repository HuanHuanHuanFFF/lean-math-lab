import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block133

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11707877, 11708057, 11708239, 11708419, 11708603, 11708783, 11708923, 11709101, 11709281, 11709443, 11709613, 11709769, 11709917, 11710081, 11710253, 11710417]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11707711 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11707711 11710417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11707711) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11710583, 11710763, 11710883, 11711057, 11711221, 11711377, 11711561, 11711741, 11711879, 11712059, 11712229, 11712409, 11712587, 11712763, 11712937, 11713111]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11710417 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11710417 11713111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11710417) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11713283, 11713453, 11713621, 11713781, 11713943, 11714123, 11714303, 11714477, 11714639, 11714779, 11714959, 11715139, 11715317, 11715493, 11715677, 11715857]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11713111 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11713111 11715857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11713111) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11716007, 11716189, 11716343, 11716501, 11716681, 11716843, 11717009, 11717191, 11717353, 11717527, 11717687, 11717869, 11718043, 11718221, 11718401, 11718563]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11715857 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11715857 11718563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11715857) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11718739, 11718923, 11719087, 11719243, 11719427, 11719601, 11719781, 11719963, 11720119, 11720297, 11720447, 11720627, 11720809, 11720981, 11721163, 11721331]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11718563 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11718563 11721331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11718563) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11721511, 11721691, 11721869, 11722049, 11722201, 11722379, 11722519, 11722691, 11722871, 11723011, 11723161, 11723329, 11723507, 11723681, 11723843, 11724001]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11721331 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11721331 11724001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11721331) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11724179, 11724359, 11724533, 11724709, 11724887, 11725039, 11725213, 11725397, 11725573, 11725757, 11725939, 11726119, 11726293, 11726471, 11726609, 11726783]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11724001 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11724001 11726783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11724001) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11726951, 11727119, 11727293, 11727451, 11727623, 11727791, 11727971, 11728141, 11728319, 11728439, 11728621, 11728799, 11728973, 11729147, 11729309, 11729491]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11726783 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11726783 11729491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11726783) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11729633, 11729807, 11729989, 11730149, 11730319, 11730491, 11730671, 11730853, 11731033, 11731211, 11731393, 11731549, 11731729, 11731913, 11732087, 11732257]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11729491 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11729491 11732257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11729491) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11732423, 11732597, 11732761, 11732933, 11733101, 11733269, 11733439, 11733613, 11733781, 11733937, 11734111, 11734273, 11734453, 11734637, 11734781, 11734949]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11732257 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11732257 11734949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11732257) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11735077, 11735237, 11735413, 11735587, 11735767, 11735929, 11736113, 11736287, 11736469, 11736649, 11736833, 11737007, 11737183, 11737367, 11737549, 11737729]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11734949 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11734949 11737729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11734949) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11737909, 11738087, 11738267, 11738431, 11738611, 11738791, 11738971, 11739149, 11739311, 11739493, 11739677, 11739851, 11740033, 11740207, 11740369, 11740549]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11737729 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11737729 11740549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11737729) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11740699, 11740843, 11741011, 11741189, 11741369, 11741551, 11741729, 11741903, 11742083, 11742251, 11742421, 11742559, 11742713, 11742881, 11743063, 11743223]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11740549 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11740549 11743223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11740549) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11743397, 11743553, 11743727, 11743909, 11744077, 11744233, 11744393, 11744539, 11744713, 11744867, 11745049, 11745221, 11745379, 11745541, 11745719, 11745901]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11743223 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11743223 11745901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11743223) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11746069, 11746253, 11746433, 11746607, 11746789, 11746963, 11747147, 11747317, 11747501, 11747683, 11747849, 11748031, 11748199, 11748367, 11748521, 11748703]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11745901 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11745901 11748703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11745901) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11748871, 11749051, 11749211, 11749373, 11749547, 11749721, 11749889, 11750059, 11750243, 11750413, 11750593, 11750777, 11750957, 11751127, 11751277, 11751419]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11748703 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11748703 11751419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11748703) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11751587, 11751769, 11751923, 11752093, 11752261, 11752439, 11752619, 11752799, 11752981, 11753117, 11753279, 11753461, 11753617, 11753789, 11753957, 11754137]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11751419 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11751419 11754137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11751419) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11754317, 11754473, 11754649, 11754829, 11755013, 11755189, 11755363, 11755543, 11755673, 11755853, 11756023, 11756207, 11756389, 11756567, 11756743, 11756923]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11754137 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11754137 11756923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11754137) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11757101, 11757271, 11757443, 11757617, 11757799, 11757961, 11758133, 11758309, 11758493, 11758673, 11758837, 11759017, 11759197, 11759369, 11759551, 11759711]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11756923 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11756923 11759711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11756923) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11759887, 11760059, 11760241, 11760409, 11760557, 11760737, 11760913, 11761081, 11761259, 11761417, 11761577, 11761759, 11761903, 11762087, 11762239, 11762393]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11759711 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11759711 11762393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11759711) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11762573, 11762753, 11762917, 11763091, 11763253, 11763421, 11763599, 11763769, 11763953, 11764133, 11764309, 11764471, 11764651, 11764813, 11764967, 11765141]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11762393 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11762393 11765141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11762393) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11765321, 11765471, 11765641, 11765813, 11765987, 11766151, 11766331, 11766493, 11766647, 11766817, 11766929, 11767109, 11767271, 11767447, 11767627, 11767807]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11765141 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11765141 11767807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11765141) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11767981, 11768153, 11768333, 11768513, 11768689, 11768873, 11769053, 11769221, 11769397, 11769521, 11769701, 11769847, 11770021, 11770189, 11770373, 11770543]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11767807 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11767807 11770543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11767807) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11770721, 11770883, 11771063, 11771213, 11771381, 11771563, 11771741, 11771923, 11772097, 11772263, 11772443, 11772613, 11772779, 11772961, 11773127, 11773303]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11770543 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11770543 11773303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11770543) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11773477, 11773661, 11773837, 11773997, 11774171, 11774333, 11774501, 11774683, 11774849, 11775031, 11775209, 11775389, 11775571, 11775739, 11775919, 11776097]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11773303 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11773303 11776097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11773303) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11776279, 11776423, 11776607, 11776777, 11776957, 11777099, 11777279, 11777419, 11777543, 11777723, 11777903, 11778083, 11778253, 11778413, 11778589, 11778763]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11776097 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11776097 11778763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11776097) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11778919, 11779067, 11779237, 11779421, 11779591, 11779741, 11779921, 11780101, 11780267, 11780449, 11780617, 11780801, 11780971, 11781149, 11781307, 11781461]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11778763 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11778763 11781461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11778763) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11781619, 11781787, 11781971, 11782153, 11782327, 11782501, 11782669, 11782847, 11783017, 11783201, 11783377, 11783461, 11783641, 11783809, 11783987, 11784133]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11781461 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11781461 11784133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11781461) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11784307, 11784473, 11784637, 11784811, 11784953, 11785127, 11785307, 11785463, 11785633, 11785817, 11785979, 11786161, 11786323, 11786503, 11786659, 11786839]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11784133 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11784133 11786839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11784133) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11787007, 11787187, 11787371, 11787527, 11787691, 11787859, 11788039, 11788223, 11788391, 11788571, 11788753, 11788937, 11789081, 11789257, 11789429, 11789587]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11786839 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11786839 11789587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11786839) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11789753, 11789933, 11790113, 11790293, 11790463, 11790601, 11790781, 11790959, 11791141, 11791321, 11791499, 11791673, 11791841, 11791991, 11792119, 11792279]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11789587 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11789587 11792279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11789587) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11792419, 11792593, 11792777, 11792941, 11793101, 11793283, 11793443, 11793619, 11793791, 11793973, 11794151, 11794319, 11794451, 11794609, 11794759, 11794907]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11792279 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11792279 11794907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11792279) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11707711 11713111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11707711)
    (mid := 11710417) (hi := 11713111) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11713111 11718563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11713111)
    (mid := 11715857) (hi := 11718563) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11718563 11724001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11718563)
    (mid := 11721331) (hi := 11724001) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11724001 11729491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11724001)
    (mid := 11726783) (hi := 11729491) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11729491 11734949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11729491)
    (mid := 11732257) (hi := 11734949) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11734949 11740549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11734949)
    (mid := 11737729) (hi := 11740549) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11740549 11745901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11740549)
    (mid := 11743223) (hi := 11745901) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11745901 11751419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11745901)
    (mid := 11748703) (hi := 11751419) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11751419 11756923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11751419)
    (mid := 11754137) (hi := 11756923) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11756923 11762393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11756923)
    (mid := 11759711) (hi := 11762393) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11762393 11767807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11762393)
    (mid := 11765141) (hi := 11767807) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11767807 11773303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11767807)
    (mid := 11770543) (hi := 11773303) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11773303 11778763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11773303)
    (mid := 11776097) (hi := 11778763) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11778763 11784133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11778763)
    (mid := 11781461) (hi := 11784133) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11784133 11789587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11784133)
    (mid := 11786839) (hi := 11789587) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11789587 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11789587)
    (mid := 11792279) (hi := 11794907) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11707711 11718563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11707711)
    (mid := 11713111) (hi := 11718563) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11718563 11729491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11718563)
    (mid := 11724001) (hi := 11729491) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11729491 11740549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11729491)
    (mid := 11734949) (hi := 11740549) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11740549 11751419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11740549)
    (mid := 11745901) (hi := 11751419) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11751419 11762393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11751419)
    (mid := 11756923) (hi := 11762393) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11762393 11773303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11762393)
    (mid := 11767807) (hi := 11773303) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11773303 11784133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11773303)
    (mid := 11778763) (hi := 11784133) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11784133 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11784133)
    (mid := 11789587) (hi := 11794907) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11707711 11729491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11707711)
    (mid := 11718563) (hi := 11729491) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11729491 11751419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11729491)
    (mid := 11740549) (hi := 11751419) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11751419 11773303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11751419)
    (mid := 11762393) (hi := 11773303) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11773303 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11773303)
    (mid := 11784133) (hi := 11794907) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11707711 11751419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11707711)
    (mid := 11729491) (hi := 11751419) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11751419 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11751419)
    (mid := 11773303) (hi := 11794907) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11707711 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11707711)
    (mid := 11751419) (hi := 11794907) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11707711 11794907 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block133

#print axioms B699MiddleExtension.PrimorialBlocks.Block133.joined
