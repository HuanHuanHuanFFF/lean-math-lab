import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block171

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15033871, 15034049, 15034231, 15034381, 15034559, 15034717, 15034897, 15035081, 15035243, 15035417, 15035597, 15035773, 15035957, 15036139, 15036323, 15036491]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15033701 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15033701 15036491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15033701) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15036629, 15036803, 15036979, 15037157, 15037339, 15037523, 15037669, 15037853, 15038029, 15038213, 15038393, 15038567, 15038713, 15038893, 15039077, 15039257]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15036491 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15036491 15039257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15036491) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15039403, 15039547, 15039727, 15039901, 15040079, 15040253, 15040429, 15040603, 15040787, 15040943, 15041123, 15041303, 15041473, 15041657, 15041827, 15042011]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15039257 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15039257 15042011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15039257) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15042193, 15042373, 15042551, 15042701, 15042883, 15043057, 15043241, 15043411, 15043591, 15043757, 15043939, 15044101, 15044279, 15044443, 15044621, 15044761]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15042011 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15042011 15044761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15042011) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15044893, 15045077, 15045259, 15045431, 15045601, 15045769, 15045949, 15046133, 15046313, 15046487, 15046657, 15046813, 15046981, 15047147, 15047327, 15047507]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15044761 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15044761 15047507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15044761) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15047689, 15047843, 15048023, 15048193, 15048377, 15048559, 15048713, 15048881, 15049051, 15049217, 15049399, 15049547, 15049693, 15049877, 15050059, 15050213]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15047507 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15047507 15050213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15047507) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15050377, 15050557, 15050687, 15050851, 15051019, 15051191, 15051353, 15051527, 15051697, 15051871, 15052049, 15052231, 15052409, 15052591, 15052759, 15052927]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15050213 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15050213 15052927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15050213) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15053107, 15053287, 15053471, 15053651, 15053821, 15054001, 15054181, 15054349, 15054527, 15054701, 15054869, 15054997, 15055177, 15055361, 15055541, 15055717]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15052927 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15052927 15055717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15052927) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15055879, 15056051, 15056213, 15056369, 15056537, 15056707, 15056869, 15057037, 15057197, 15057377, 15057547, 15057727, 15057877, 15058061, 15058229, 15058409]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15055717 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15055717 15058409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15055717) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15058573, 15058751, 15058919, 15059053, 15059237, 15059393, 15059567, 15059747, 15059921, 15060091, 15060263, 15060439, 15060613, 15060779, 15060959, 15061117]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15058409 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15058409 15061117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15058409) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15061289, 15061457, 15061603, 15061751, 15061931, 15062077, 15062239, 15062389, 15062569, 15062753, 15062921, 15063101, 15063271, 15063439, 15063611, 15063793]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15061117 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15061117 15063793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15061117) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15063973, 15064151, 15064327, 15064493, 15064649, 15064831, 15064991, 15065159, 15065339, 15065513, 15065683, 15065861, 15066043, 15066193, 15066371, 15066553]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15063793 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15063793 15066553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15063793) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15066707, 15066869, 15067051, 15067229, 15067387, 15067567, 15067727, 15067901, 15068071, 15068237, 15068419, 15068597, 15068741, 15068909, 15069091, 15069251]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15066553 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15066553 15069251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15066553) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15069433, 15069617, 15069799, 15069979, 15070157, 15070337, 15070501, 15070661, 15070841, 15070999, 15071183, 15071341, 15071521, 15071701, 15071873, 15072037]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15069251 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15069251 15072037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15069251) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15072203, 15072371, 15072517, 15072689, 15072859, 15073043, 15073217, 15073397, 15073561, 15073739, 15073913, 15073999, 15074161, 15074333, 15074489, 15074663]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15072037 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15072037 15074663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15072037) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15074837, 15075013, 15075197, 15075371, 15075553, 15075727, 15075901, 15076081, 15076249, 15076423, 15076601, 15076783, 15076951, 15077099, 15077269, 15077441]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15074663 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15074663 15077441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15074663) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15077609, 15077771, 15077947, 15078127, 15078299, 15078451, 15078619, 15078797, 15078979, 15079157, 15079297, 15079469, 15079643, 15079817, 15079991, 15080137]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15077441 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15077441 15080137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15077441) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15080311, 15080453, 15080599, 15080777, 15080959, 15081137, 15081301, 15081467, 15081643, 15081821, 15081961, 15082141, 15082321, 15082489, 15082673, 15082853]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15080137 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15080137 15082853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15080137) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15083023, 15083191, 15083363, 15083533, 15083713, 15083869, 15084053, 15084229, 15084397, 15084551, 15084733, 15084911, 15085093, 15085271, 15085453, 15085633]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15082853 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15082853 15085633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15082853) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15085801, 15085979, 15086147, 15086317, 15086441, 15086611, 15086789, 15086963, 15087119, 15087301, 15087469, 15087649, 15087833, 15087967, 15088133, 15088301]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15085633 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15085633 15088301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15085633) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15088477, 15088651, 15088823, 15088999, 15089171, 15089351, 15089533, 15089717, 15089891, 15090073, 15090247, 15090421, 15090589, 15090773, 15090949, 15091129]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15088301 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15088301 15091129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15088301) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15091303, 15091487, 15091651, 15091789, 15091943, 15092113, 15092279, 15092461, 15092639, 15092813, 15092993, 15093167, 15093347, 15093511, 15093691, 15093857]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15091129 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15091129 15093857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15091129) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15094031, 15094207, 15094357, 15094517, 15094697, 15094837, 15095009, 15095183, 15095363, 15095491, 15095617, 15095777, 15095959, 15096143, 15096313, 15096479]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15093857 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15093857 15096479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15093857) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15096647, 15096797, 15096973, 15097151, 15097321, 15097501, 15097679, 15097829, 15097993, 15098177, 15098351, 15098507, 15098687, 15098861, 15099023, 15099151]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15096479 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15096479 15099151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15096479) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15099323, 15099479, 15099659, 15099839, 15099979, 15100153, 15100321, 15100499, 15100663, 15100843, 15101027, 15101183, 15101357, 15101539, 15101717, 15101887]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15099151 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15099151 15101887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15099151) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15102071, 15102247, 15102427, 15102583, 15102733, 15102889, 15103061, 15103201, 15103381, 15103559, 15103741, 15103909, 15104087, 15104267, 15104429, 15104603]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15101887 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15101887 15104603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15101887) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15104783, 15104963, 15105119, 15105301, 15105449, 15105611, 15105787, 15105967, 15106151, 15106321, 15106451, 15106633, 15106813, 15106997, 15107179, 15107357]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15104603 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15104603 15107357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15104603) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15107537, 15107707, 15107891, 15108073, 15108229, 15108413, 15108593, 15108757, 15108931, 15109109, 15109291, 15109453, 15109621, 15109793, 15109973, 15110143]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15107357 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15107357 15110143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15107357) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15110321, 15110497, 15110677, 15110831, 15111007, 15111169, 15111331, 15111497, 15111671, 15111809, 15111937, 15112121, 15112301, 15112481, 15112639, 15112819]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15110143 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15110143 15112819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15110143) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15112997, 15113171, 15113327, 15113509, 15113677, 15113827, 15114007, 15114179, 15114353, 15114523, 15114661, 15114821, 15114997, 15115169, 15115333, 15115501]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15112819 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15112819 15115501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15112819) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15115679, 15115847, 15116029, 15116201, 15116377, 15116551, 15116719, 15116897, 15117071, 15117251, 15117419, 15117593, 15117769, 15117943, 15118127, 15118307]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15115501 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15115501 15118307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15115501) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15118487, 15118639, 15118823, 15118991, 15119173, 15119339, 15119519, 15119669, 15119843, 15120023, 15120187, 15120367, 15120551, 15120733, 15120899, 15121081]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15118307 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15118307 15121081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15118307) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15033701 15039257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15033701)
    (mid := 15036491) (hi := 15039257) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15039257 15044761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15039257)
    (mid := 15042011) (hi := 15044761) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15044761 15050213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15044761)
    (mid := 15047507) (hi := 15050213) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15050213 15055717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15050213)
    (mid := 15052927) (hi := 15055717) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15055717 15061117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15055717)
    (mid := 15058409) (hi := 15061117) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15061117 15066553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15061117)
    (mid := 15063793) (hi := 15066553) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15066553 15072037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15066553)
    (mid := 15069251) (hi := 15072037) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15072037 15077441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15072037)
    (mid := 15074663) (hi := 15077441) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15077441 15082853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15077441)
    (mid := 15080137) (hi := 15082853) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15082853 15088301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15082853)
    (mid := 15085633) (hi := 15088301) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15088301 15093857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15088301)
    (mid := 15091129) (hi := 15093857) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15093857 15099151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15093857)
    (mid := 15096479) (hi := 15099151) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15099151 15104603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15099151)
    (mid := 15101887) (hi := 15104603) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15104603 15110143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15104603)
    (mid := 15107357) (hi := 15110143) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15110143 15115501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15110143)
    (mid := 15112819) (hi := 15115501) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15115501 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15115501)
    (mid := 15118307) (hi := 15121081) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15033701 15044761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15033701)
    (mid := 15039257) (hi := 15044761) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15044761 15055717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15044761)
    (mid := 15050213) (hi := 15055717) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15055717 15066553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15055717)
    (mid := 15061117) (hi := 15066553) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15066553 15077441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15066553)
    (mid := 15072037) (hi := 15077441) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15077441 15088301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15077441)
    (mid := 15082853) (hi := 15088301) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15088301 15099151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15088301)
    (mid := 15093857) (hi := 15099151) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15099151 15110143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15099151)
    (mid := 15104603) (hi := 15110143) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15110143 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15110143)
    (mid := 15115501) (hi := 15121081) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15033701 15055717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15033701)
    (mid := 15044761) (hi := 15055717) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15055717 15077441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15055717)
    (mid := 15066553) (hi := 15077441) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15077441 15099151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15077441)
    (mid := 15088301) (hi := 15099151) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15099151 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15099151)
    (mid := 15110143) (hi := 15121081) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15033701 15077441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15033701)
    (mid := 15055717) (hi := 15077441) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15077441 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15077441)
    (mid := 15099151) (hi := 15121081) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15033701 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15033701)
    (mid := 15077441) (hi := 15121081) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15033701 15121081 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block171

#print axioms B699MiddleExtension.PrimorialBlocks.Block171.joined
