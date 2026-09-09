import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block163

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14334457, 14334641, 14334821, 14335001, 14335159, 14335337, 14335507, 14335679, 14335829, 14336011, 14336173, 14336327, 14336473, 14336657, 14336837, 14336983]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14334283 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14334283 14336983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14334283) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14337151, 14337329, 14337481, 14337641, 14337793, 14337959, 14338139, 14338309, 14338487, 14338669, 14338811, 14338993, 14339173, 14339341, 14339513, 14339693]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14336983 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14336983 14339693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14336983) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14339867, 14340043, 14340191, 14340341, 14340517, 14340679, 14340863, 14341043, 14341211, 14341391, 14341559, 14341703, 14341879, 14342063, 14342239, 14342423]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14339693 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14339693 14342423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14339693) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14342539, 14342719, 14342903, 14343079, 14343227, 14343409, 14343577, 14343739, 14343913, 14344061, 14344237, 14344417, 14344597, 14344751, 14344907, 14345081]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14342423 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14342423 14345081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14342423) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14345251, 14345423, 14345593, 14345761, 14345917, 14346091, 14346257, 14346439, 14346613, 14346791, 14346961, 14347129, 14347283, 14347457, 14347633, 14347807]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14345081 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14345081 14347807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14345081) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14347987, 14348149, 14348317, 14348501, 14348683, 14348837, 14348993, 14349169, 14349353, 14349527, 14349707, 14349847, 14350013, 14350169, 14350337, 14350517]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14347807 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14347807 14350517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14347807) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14350673, 14350849, 14351021, 14351177, 14351321, 14351503, 14351677, 14351861, 14352043, 14352223, 14352389, 14352571, 14352739, 14352917, 14353091, 14353267]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14350517 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14350517 14353267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14350517) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14353441, 14353613, 14353793, 14353973, 14354117, 14354297, 14354479, 14354663, 14354843, 14355023, 14355167, 14355347, 14355529, 14355689, 14355857, 14356033]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14353267 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14353267 14356033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14353267) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14356217, 14356387, 14356567, 14356747, 14356931, 14357113, 14357297, 14357459, 14357641, 14357821, 14357989, 14358163, 14358347, 14358527, 14358691, 14358853]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14356033 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14356033 14358853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14356033) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14359013, 14359187, 14359357, 14359531, 14359699, 14359879, 14360057, 14360233, 14360413, 14360573, 14360747, 14360911, 14361079, 14361253, 14361437, 14361601]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14358853 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14358853 14361601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14358853) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14361751, 14361911, 14362091, 14362261, 14362441, 14362619, 14362793, 14362967, 14363131, 14363309, 14363483, 14363651, 14363821, 14363989, 14364149, 14364307]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14361601 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14361601 14364307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14361601) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14364487, 14364661, 14364809, 14364989, 14365171, 14365339, 14365523, 14365669, 14365847, 14366017, 14366201, 14366383, 14366567, 14366741, 14366917, 14367049]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14364307 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14364307 14367049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14364307) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14367233, 14367403, 14367583, 14367733, 14367901, 14368069, 14368243, 14368391, 14368567, 14368747, 14368853, 14368993, 14369177, 14369323, 14369507, 14369689]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14367049 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14367049 14369689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14367049) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14369867, 14370047, 14370221, 14370401, 14370581, 14370757, 14370931, 14371111, 14371289, 14371459, 14371603, 14371739, 14371921, 14372101, 14372273, 14372453]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14369689 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14369689 14372453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14369689) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14372629, 14372801, 14372977, 14373157, 14373319, 14373439, 14373599, 14373769, 14373949, 14374069, 14374253, 14374429, 14374579, 14374757, 14374933, 14375113]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14372453 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14372453 14375113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14372453) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14375293, 14375477, 14375651, 14375833, 14376013, 14376191, 14376371, 14376553, 14376737, 14376913, 14377081, 14377261, 14377439, 14377619, 14377777, 14377933]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14375113 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14375113 14377933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14375113) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14378101, 14378261, 14378437, 14378603, 14378773, 14378951, 14379121, 14379293, 14379461, 14379619, 14379803, 14379983, 14380151, 14380319, 14380477, 14380643]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14377933 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14377933 14380643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14377933) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14380823, 14380999, 14381153, 14381321, 14381503, 14381683, 14381867, 14382041, 14382217, 14382367, 14382547, 14382727, 14382911, 14383093, 14383273, 14383427]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14380643 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14380643 14383427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14380643) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14383601, 14383781, 14383949, 14384129, 14384299, 14384477, 14384659, 14384819, 14384999, 14385181, 14385361, 14385541, 14385719, 14385857, 14386019, 14386189]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14383427 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14383427 14386189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14383427) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14386343, 14386499, 14386681, 14386837, 14387003, 14387183, 14387363, 14387543, 14387713, 14387897, 14388037, 14388217, 14388391, 14388571, 14388739, 14388911]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14386189 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14386189 14388911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14386189) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14389091, 14389267, 14389439, 14389607, 14389763, 14389937, 14390113, 14390269, 14390443, 14390609, 14390791, 14390969, 14391149, 14391331, 14391497, 14391679]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14388911 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14388911 14391679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14388911) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14391857, 14392031, 14392171, 14392351, 14392507, 14392691, 14392849, 14392981, 14393153, 14393321, 14393497, 14393681, 14393861, 14394031, 14394187, 14394349]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14391679 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14391679 14394349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14391679) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14394521, 14394691, 14394851, 14395021, 14395201, 14395373, 14395543, 14395727, 14395891, 14396051, 14396233, 14396381, 14396561, 14396719, 14396891, 14397067]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14394349 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14394349 14397067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14394349) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14397211, 14397391, 14397569, 14397749, 14397923, 14398103, 14398277, 14398453, 14398613, 14398781, 14398961, 14399141, 14399317, 14399479, 14399657, 14399837]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14397067 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14397067 14399837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14397067) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14400019, 14400203, 14400383, 14400557, 14400731, 14400899, 14401073, 14401253, 14401421, 14401589, 14401759, 14401939, 14402107, 14402249, 14402419, 14402599]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14399837 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14399837 14402599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14399837) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14402777, 14402957, 14403107, 14403289, 14403457, 14403629, 14403797, 14403973, 14404123, 14404303, 14404483, 14404651, 14404823, 14405003, 14405177, 14405329]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14402599 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14402599 14405329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14402599) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14405509, 14405693, 14405869, 14406053, 14406233, 14406409, 14406593, 14406773, 14406941, 14407123, 14407307, 14407487, 14407669, 14407849, 14408033, 14408201]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14405329 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14405329 14408201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14405329) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14408377, 14408561, 14408729, 14408903, 14409067, 14409233, 14409413, 14409559, 14409743, 14409919, 14410103, 14410267, 14410433, 14410603, 14410771, 14410937]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14408201 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14408201 14410937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14408201) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14411119, 14411297, 14411477, 14411641, 14411737, 14411911, 14412091, 14412271, 14412407, 14412589, 14412763, 14412947, 14413129, 14413307, 14413463, 14413627]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14410937 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14410937 14413627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14410937) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14413771, 14413921, 14414093, 14414263, 14414443, 14414599, 14414779, 14414921, 14415103, 14415287, 14415469, 14415649, 14415833, 14416007, 14416177, 14416361]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14413627 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14413627 14416361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14413627) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14416541, 14416723, 14416903, 14417069, 14417243, 14417423, 14417597, 14417779, 14417951, 14418113, 14418293, 14418463, 14418647, 14418821, 14418977, 14419151]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14416361 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14416361 14419151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14416361) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14419291, 14419441, 14419589, 14419771, 14419939, 14420123, 14420303, 14420473, 14420621, 14420779, 14420909, 14421067, 14421233, 14421413, 14421581, 14421731]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14419151 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14419151 14421731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14419151) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14334283 14339693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14334283)
    (mid := 14336983) (hi := 14339693) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14339693 14345081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14339693)
    (mid := 14342423) (hi := 14345081) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14345081 14350517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14345081)
    (mid := 14347807) (hi := 14350517) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14350517 14356033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14350517)
    (mid := 14353267) (hi := 14356033) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14356033 14361601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14356033)
    (mid := 14358853) (hi := 14361601) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14361601 14367049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14361601)
    (mid := 14364307) (hi := 14367049) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14367049 14372453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14367049)
    (mid := 14369689) (hi := 14372453) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14372453 14377933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14372453)
    (mid := 14375113) (hi := 14377933) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14377933 14383427 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14377933)
    (mid := 14380643) (hi := 14383427) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14383427 14388911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14383427)
    (mid := 14386189) (hi := 14388911) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14388911 14394349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14388911)
    (mid := 14391679) (hi := 14394349) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14394349 14399837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14394349)
    (mid := 14397067) (hi := 14399837) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14399837 14405329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14399837)
    (mid := 14402599) (hi := 14405329) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14405329 14410937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14405329)
    (mid := 14408201) (hi := 14410937) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14410937 14416361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14410937)
    (mid := 14413627) (hi := 14416361) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14416361 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14416361)
    (mid := 14419151) (hi := 14421731) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14334283 14345081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14334283)
    (mid := 14339693) (hi := 14345081) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14345081 14356033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14345081)
    (mid := 14350517) (hi := 14356033) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14356033 14367049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14356033)
    (mid := 14361601) (hi := 14367049) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14367049 14377933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14367049)
    (mid := 14372453) (hi := 14377933) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14377933 14388911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14377933)
    (mid := 14383427) (hi := 14388911) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14388911 14399837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14388911)
    (mid := 14394349) (hi := 14399837) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14399837 14410937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14399837)
    (mid := 14405329) (hi := 14410937) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14410937 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14410937)
    (mid := 14416361) (hi := 14421731) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14334283 14356033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14334283)
    (mid := 14345081) (hi := 14356033) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14356033 14377933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14356033)
    (mid := 14367049) (hi := 14377933) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14377933 14399837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14377933)
    (mid := 14388911) (hi := 14399837) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14399837 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14399837)
    (mid := 14410937) (hi := 14421731) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14334283 14377933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14334283)
    (mid := 14356033) (hi := 14377933) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14377933 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14377933)
    (mid := 14399837) (hi := 14421731) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14334283 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14334283)
    (mid := 14377933) (hi := 14421731) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14334283 14421731 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block163

#print axioms B699MiddleExtension.PrimorialBlocks.Block163.joined
