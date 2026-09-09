import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block220

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19312487, 19312669, 19312841, 19313023, 19313197, 19313369, 19313551, 19313711, 19313873, 19314049, 19314233, 19314409, 19314593, 19314761, 19314943, 19315103]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19312373 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19312373 19315103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19312373) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19315279, 19315459, 19315619, 19315801, 19315979, 19316161, 19316309, 19316491, 19316669, 19316833, 19317017, 19317173, 19317343, 19317523, 19317691, 19317869]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19315103 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19315103 19317869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19315103) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19318037, 19318207, 19318373, 19318543, 19318709, 19318891, 19319063, 19319243, 19319407, 19319579, 19319761, 19319929, 19320101, 19320277, 19320451, 19320629]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19317869 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19317869 19320629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19317869) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19320811, 19320947, 19321123, 19321283, 19321457, 19321609, 19321789, 19321963, 19322143, 19322291, 19322453, 19322629, 19322813, 19322993, 19323121, 19323301]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19320629 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19320629 19323301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19320629) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19323443, 19323617, 19323793, 19323973, 19324147, 19324289, 19324457, 19324639, 19324813, 19324967, 19325149, 19325323, 19325479, 19325653, 19325833, 19326017]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19323301 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19323301 19326017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19323301) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19326193, 19326367, 19326551, 19326721, 19326889, 19327051, 19327219, 19327403, 19327577, 19327757, 19327927, 19328107, 19328291, 19328461, 19328641, 19328821]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19326017 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19326017 19328821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19326017) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19328977, 19329157, 19329329, 19329511, 19329677, 19329853, 19330033, 19330187, 19330361, 19330541, 19330723, 19330903, 19331087, 19331251, 19331407, 19331579]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19328821 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19328821 19331579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19328821) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19331749, 19331929, 19332109, 19332293, 19332457, 19332641, 19332799, 19332977, 19333151, 19333313, 19333463, 19333637, 19333813, 19333997, 19334179, 19334363]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19331579 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19331579 19334363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19331579) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19334543, 19334717, 19334893, 19335059, 19335241, 19335403, 19335587, 19335739, 19335923, 19336103, 19336279, 19336441, 19336619, 19336783, 19336957, 19337081]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19334363 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19334363 19337081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19334363) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19337261, 19337443, 19337621, 19337783, 19337947, 19338049, 19338233, 19338379, 19338551, 19338719, 19338881, 19339063, 19339247, 19339429, 19339609, 19339729]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19337081 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19337081 19339729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19337081) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19339909, 19340089, 19340273, 19340443, 19340623, 19340801, 19340983, 19341167, 19341341, 19341503, 19341667, 19341851, 19342021, 19342199, 19342369, 19342553]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19339729 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19339729 19342553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19339729) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19342727, 19342909, 19343033, 19343213, 19343381, 19343549, 19343719, 19343873, 19344049, 19344211, 19344379, 19344553, 19344719, 19344889, 19345057, 19345241]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19342553 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19342553 19345241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19342553) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19345423, 19345567, 19345751, 19345897, 19346081, 19346251, 19346413, 19346539, 19346713, 19346891, 19347043, 19347197, 19347373, 19347541, 19347697, 19347877]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19345241 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19345241 19347877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19345241) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19348051, 19348229, 19348393, 19348573, 19348751, 19348919, 19349069, 19349243, 19349413, 19349597, 19349777, 19349959, 19350143, 19350313, 19350491, 19350673]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19347877 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19347877 19350673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19347877) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19350857, 19351039, 19351217, 19351399, 19351571, 19351741, 19351909, 19352093, 19352243, 19352423, 19352603, 19352777, 19352951, 19353133, 19353283, 19353443]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19350673 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19350673 19353443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19350673) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19353617, 19353781, 19353959, 19354133, 19354303, 19354471, 19354649, 19354831, 19355003, 19355179, 19355359, 19355527, 19355669, 19355839, 19356019, 19356191]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19353443 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19353443 19356191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19353443) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19356341, 19356511, 19356677, 19356853, 19357027, 19357199, 19357367, 19357537, 19357693, 19357847, 19358029, 19358201, 19358347, 19358531, 19358711, 19358879]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19356191 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19356191 19358879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19356191) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19359061, 19359229, 19359409, 19359581, 19359763, 19359947, 19360091, 19360249, 19360427, 19360577, 19360721, 19360889, 19361071, 19361233, 19361417, 19361591]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19358879 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19358879 19361591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19358879) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19361773, 19361957, 19362139, 19362313, 19362491, 19362671, 19362853, 19363037, 19363219, 19363403, 19363579, 19363753, 19363937, 19364113, 19364297, 19364473]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19361591 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19361591 19364473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19361591) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19364627, 19364791, 19364951, 19365119, 19365293, 19365469, 19365641, 19365811, 19365991, 19366169, 19366343, 19366511, 19366687, 19366861, 19367027, 19367191]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19364473 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19364473 19367191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19364473) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19367371, 19367531, 19367701, 19367857, 19368029, 19368203, 19368379, 19368563, 19368731, 19368913, 19369087, 19369271, 19369403, 19369583, 19369739, 19369891]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19367191 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19367191 19369891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19367191) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19370051, 19370207, 19370383, 19370551, 19370731, 19370893, 19371073, 19371227, 19371403, 19371571, 19371749, 19371907, 19372081, 19372253, 19372433, 19372583]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19369891 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19369891 19372583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19369891) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19372757, 19372909, 19373093, 19373269, 19373437, 19373617, 19373801, 19373971, 19374151, 19374331, 19374503, 19374647, 19374827, 19375007, 19375171, 19375337]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19372583 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19372583 19375337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19372583) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19375511, 19375693, 19375871, 19376053, 19376221, 19376393, 19376573, 19376729, 19376911, 19377091, 19377217, 19377373, 19377551, 19377731, 19377889, 19378067]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19375337 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19375337 19378067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19375337) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19378223, 19378399, 19378577, 19378753, 19378921, 19379093, 19379267, 19379443, 19379617, 19379783, 19379963, 19380131, 19380307, 19380469, 19380653, 19380821]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19378067 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19378067 19380821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19378067) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19380971, 19381133, 19381301, 19381477, 19381633, 19381787, 19381963, 19382141, 19382317, 19382483, 19382663, 19382833, 19383017, 19383193, 19383341, 19383517]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19380821 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19380821 19383517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19380821) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19383701, 19383877, 19384051, 19384229, 19384381, 19384553, 19384711, 19384891, 19385071, 19385239, 19385419, 19385603, 19385777, 19385959, 19386139, 19386313]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19383517 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19383517 19386313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19383517) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19386491, 19386671, 19386847, 19387031, 19387213, 19387373, 19387553, 19387729, 19387913, 19388081, 19388261, 19388437, 19388597, 19388771, 19388953, 19389133]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19386313 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19386313 19389133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19386313) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19389301, 19389479, 19389641, 19389793, 19389967, 19390139, 19390303, 19390477, 19390607, 19390783, 19390961, 19391143, 19391327, 19391479, 19391651, 19391831]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19389133 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19389133 19391831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19389133) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19391993, 19392167, 19392343, 19392497, 19392679, 19392853, 19393037, 19393207, 19393391, 19393541, 19393687, 19393867, 19394051, 19394233, 19394413, 19394593]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19391831 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19391831 19394593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19391831) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19394777, 19394917, 19395083, 19395239, 19395413, 19395587, 19395769, 19395949, 19396129, 19396313, 19396471, 19396627, 19396807, 19396973, 19397123, 19397299]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19394593 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19394593 19397299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19394593) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19397447, 19397617, 19397783, 19397929, 19398109, 19398287, 19398469, 19398647, 19398811, 19398991, 19399153, 19399313, 19399481, 19399663, 19399843, 19400023]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19397299 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19397299 19400023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19397299) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19312373 19317869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19315103) (hi := 19317869) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19317869 19323301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19317869)
    (mid := 19320629) (hi := 19323301) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19323301 19328821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19323301)
    (mid := 19326017) (hi := 19328821) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19328821 19334363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19328821)
    (mid := 19331579) (hi := 19334363) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19334363 19339729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19334363)
    (mid := 19337081) (hi := 19339729) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19339729 19345241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19339729)
    (mid := 19342553) (hi := 19345241) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19345241 19350673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19345241)
    (mid := 19347877) (hi := 19350673) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19350673 19356191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19350673)
    (mid := 19353443) (hi := 19356191) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19356191 19361591 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19356191)
    (mid := 19358879) (hi := 19361591) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19361591 19367191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19361591)
    (mid := 19364473) (hi := 19367191) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19367191 19372583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19367191)
    (mid := 19369891) (hi := 19372583) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19372583 19378067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19372583)
    (mid := 19375337) (hi := 19378067) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19378067 19383517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19378067)
    (mid := 19380821) (hi := 19383517) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19383517 19389133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19383517)
    (mid := 19386313) (hi := 19389133) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19389133 19394593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19389133)
    (mid := 19391831) (hi := 19394593) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19394593 19400023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19394593)
    (mid := 19397299) (hi := 19400023) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19312373 19323301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19317869) (hi := 19323301) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19323301 19334363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19323301)
    (mid := 19328821) (hi := 19334363) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19334363 19345241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19334363)
    (mid := 19339729) (hi := 19345241) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19345241 19356191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19345241)
    (mid := 19350673) (hi := 19356191) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19356191 19367191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19356191)
    (mid := 19361591) (hi := 19367191) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19367191 19378067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19367191)
    (mid := 19372583) (hi := 19378067) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19378067 19389133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19378067)
    (mid := 19383517) (hi := 19389133) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19389133 19400023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19389133)
    (mid := 19394593) (hi := 19400023) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19312373 19334363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19323301) (hi := 19334363) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19334363 19356191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19334363)
    (mid := 19345241) (hi := 19356191) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19356191 19378067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19356191)
    (mid := 19367191) (hi := 19378067) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19378067 19400023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19378067)
    (mid := 19389133) (hi := 19400023) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19312373 19356191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19334363) (hi := 19356191) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19356191 19400023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19356191)
    (mid := 19378067) (hi := 19400023) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19312373 19400023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19356191) (hi := 19400023) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19312373 19400023 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block220

#print axioms B699MiddleExtension.PrimorialBlocks.Block220.joined
