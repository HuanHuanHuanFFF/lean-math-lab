import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block180

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15820589, 15820769, 15820951, 15821123, 15821303, 15821483, 15821653, 15821831, 15822011, 15822181, 15822361, 15822533, 15822713, 15822889, 15823001, 15823177]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15820417 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15820417 15823177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15820417) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15823331, 15823501, 15823681, 15823837, 15824021, 15824201, 15824381, 15824563, 15824719, 15824869, 15825049, 15825209, 15825389, 15825571, 15825749, 15825923]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15823177 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15823177 15825923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15823177) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15826091, 15826273, 15826453, 15826637, 15826799, 15826973, 15827131, 15827309, 15827479, 15827659, 15827843, 15828019, 15828199, 15828313, 15828497, 15828679]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15825923 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15825923 15828679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15825923) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15828863, 15829043, 15829213, 15829367, 15829549, 15829733, 15829903, 15830069, 15830237, 15830377, 15830533, 15830713, 15830891, 15831073, 15831253, 15831407]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15828679 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15828679 15831407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15828679) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15831589, 15831763, 15831929, 15832099, 15832283, 15832447, 15832573, 15832727, 15832903, 15833047, 15833201, 15833383, 15833561, 15833737, 15833911, 15834083]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15831407 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15831407 15834083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15831407) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15834263, 15834433, 15834617, 15834799, 15834977, 15835159, 15835333, 15835489, 15835669, 15835837, 15836021, 15836189, 15836371, 15836551, 15836713, 15836897]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15834083 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15834083 15836897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15834083) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15837079, 15837257, 15837403, 15837581, 15837763, 15837947, 15838127, 15838307, 15838481, 15838643, 15838813, 15838993, 15839113, 15839297, 15839477, 15839657]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15836897 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15836897 15839657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15836897) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15839839, 15840007, 15840113, 15840283, 15840463, 15840613, 15840791, 15840961, 15841121, 15841289, 15841429, 15841613, 15841781, 15841939, 15842119, 15842303]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15839657 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15839657 15842303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15839657) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15842483, 15842663, 15842843, 15843013, 15843197, 15843353, 15843523, 15843703, 15843887, 15844067, 15844249, 15844429, 15844607, 15844771, 15844931, 15845101]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15842303 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15842303 15845101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15842303) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15845279, 15845443, 15845603, 15845771, 15845941, 15846119, 15846289, 15846461, 15846637, 15846791, 15846953, 15847123, 15847301, 15847457, 15847633, 15847787]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15845101 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15845101 15847787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15845101) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15847969, 15848149, 15848333, 15848513, 15848687, 15848867, 15849037, 15849221, 15849403, 15849571, 15849733, 15849917, 15850073, 15850223, 15850403, 15850577]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15847787 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15847787 15850577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15847787) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15850753, 15850909, 15851093, 15851233, 15851417, 15851573, 15851741, 15851923, 15852107, 15852283, 15852457, 15852637, 15852797, 15852979, 15853157, 15853319]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15850577 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15850577 15853319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15850577) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15853499, 15853681, 15853841, 15854021, 15854197, 15854381, 15854533, 15854717, 15854887, 15855029, 15855209, 15855391, 15855571, 15855743, 15855887, 15856067]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15853319 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15853319 15856067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15853319) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15856231, 15856411, 15856579, 15856759, 15856943, 15857087, 15857249, 15857417, 15857593, 15857773, 15857917, 15858097, 15858233, 15858397, 15858581, 15858761]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15856067 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15856067 15858761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15856067) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15858889, 15859061, 15859241, 15859423, 15859601, 15859769, 15859901, 15860083, 15860267, 15860443, 15860617, 15860797, 15860981, 15861163, 15861337, 15861499]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15858761 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15858761 15861499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15858761) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15861683, 15861841, 15862009, 15862153, 15862337, 15862519, 15862699, 15862883, 15863039, 15863213, 15863369, 15863543, 15863711, 15863891, 15864071, 15864241]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15861499 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15861499 15864241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15861499) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15864419, 15864599, 15864773, 15864931, 15865111, 15865259, 15865441, 15865613, 15865793, 15865939, 15866101, 15866267, 15866449, 15866633, 15866789, 15866953]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15864241 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15864241 15866953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15864241) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15867127, 15867289, 15867469, 15867653, 15867827, 15867977, 15868117, 15868291, 15868453, 15868637, 15868799, 15868981, 15869159, 15869339, 15869507, 15869677]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15866953 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15866953 15869677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15866953) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15869831, 15870011, 15870191, 15870331, 15870499, 15870683, 15870839, 15871019, 15871201, 15871379, 15871561, 15871717, 15871883, 15872057, 15872209, 15872347]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15869677 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15869677 15872347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15869677) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15872531, 15872687, 15872833, 15873007, 15873181, 15873337, 15873511, 15873679, 15873853, 15874037, 15874219, 15874403, 15874553, 15874721, 15874897, 15875063]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15872347 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15872347 15875063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15872347) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15875227, 15875411, 15875551, 15875693, 15875863, 15876041, 15876221, 15876403, 15876587, 15876769, 15876943, 15877111, 15877289, 15877469, 15877649, 15877811]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15875063 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15875063 15877811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15875063) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15877991, 15878141, 15878321, 15878501, 15878677, 15878839, 15879023, 15879197, 15879371, 15879541, 15879713, 15879893, 15880061, 15880199, 15880379, 15880517]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15877811 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15877811 15880517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15877811) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15880699, 15880883, 15881039, 15881197, 15881381, 15881563, 15881729, 15881869, 15882023, 15882187, 15882359, 15882541, 15882721, 15882887, 15883061, 15883243]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15880517 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15880517 15883243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15880517) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15883381, 15883541, 15883723, 15883883, 15884051, 15884221, 15884387, 15884567, 15884707, 15884887, 15885061, 15885239, 15885413, 15885589, 15885763, 15885943]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15883243 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15883243 15885943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15883243) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15886111, 15886271, 15886447, 15886631, 15886777, 15886939, 15887111, 15887293, 15887449, 15887617, 15887771, 15887899, 15888083, 15888253, 15888437, 15888611]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15885943 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15885943 15888611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15885943) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15888793, 15888967, 15889147, 15889331, 15889513, 15889669, 15889843, 15889997, 15890159, 15890339, 15890519, 15890689, 15890873, 15891047, 15891223, 15891397]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15888611 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15888611 15891397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15888611) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15891571, 15891749, 15891917, 15892099, 15892237, 15892381, 15892561, 15892733, 15892897, 15893047, 15893221, 15893393, 15893573, 15893749, 15893921, 15894097]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15891397 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15891397 15894097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15891397) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15894257, 15894383, 15894553, 15894731, 15894913, 15895097, 15895241, 15895417, 15895589, 15895757, 15895937, 15896117, 15896291, 15896471, 15896653, 15896833]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15894097 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15894097 15896833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15894097) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15896999, 15897173, 15897353, 15897523, 15897697, 15897877, 15898027, 15898171, 15898343, 15898517, 15898697, 15898879, 15899053, 15899209, 15899363, 15899519]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15896833 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15896833 15899519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15896833) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15899701, 15899881, 15900043, 15900221, 15900377, 15900539, 15900721, 15900881, 15901051, 15901229, 15901381, 15901553, 15901733, 15901913, 15902041, 15902213]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15899519 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15899519 15902213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15899519) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15902387, 15902533, 15902713, 15902893, 15903073, 15903241, 15903413, 15903553, 15903683, 15903827, 15903989, 15904171, 15904327, 15904481, 15904663, 15904793]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15902213 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15902213 15904793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15902213) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15904949, 15905107, 15905291, 15905471, 15905639, 15905809, 15905971, 15906127, 15906311, 15906493, 15906673, 15906853, 15907037, 15907219, 15907387, 15907571]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15904793 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15904793 15907571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15904793) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15820417 15825923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15823177) (hi := 15825923) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15825923 15831407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15825923)
    (mid := 15828679) (hi := 15831407) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15831407 15836897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15831407)
    (mid := 15834083) (hi := 15836897) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15836897 15842303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15836897)
    (mid := 15839657) (hi := 15842303) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15842303 15847787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15842303)
    (mid := 15845101) (hi := 15847787) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15847787 15853319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15847787)
    (mid := 15850577) (hi := 15853319) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15853319 15858761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15853319)
    (mid := 15856067) (hi := 15858761) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15858761 15864241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15858761)
    (mid := 15861499) (hi := 15864241) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15864241 15869677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15864241)
    (mid := 15866953) (hi := 15869677) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15869677 15875063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15869677)
    (mid := 15872347) (hi := 15875063) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15875063 15880517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15875063)
    (mid := 15877811) (hi := 15880517) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15880517 15885943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15880517)
    (mid := 15883243) (hi := 15885943) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15885943 15891397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15885943)
    (mid := 15888611) (hi := 15891397) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15891397 15896833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15891397)
    (mid := 15894097) (hi := 15896833) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15896833 15902213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15896833)
    (mid := 15899519) (hi := 15902213) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15902213 15907571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15902213)
    (mid := 15904793) (hi := 15907571) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15820417 15831407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15825923) (hi := 15831407) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15831407 15842303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15831407)
    (mid := 15836897) (hi := 15842303) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15842303 15853319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15842303)
    (mid := 15847787) (hi := 15853319) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15853319 15864241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15853319)
    (mid := 15858761) (hi := 15864241) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15864241 15875063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15864241)
    (mid := 15869677) (hi := 15875063) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15875063 15885943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15875063)
    (mid := 15880517) (hi := 15885943) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15885943 15896833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15885943)
    (mid := 15891397) (hi := 15896833) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15896833 15907571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15896833)
    (mid := 15902213) (hi := 15907571) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15820417 15842303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15831407) (hi := 15842303) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15842303 15864241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15842303)
    (mid := 15853319) (hi := 15864241) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15864241 15885943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15864241)
    (mid := 15875063) (hi := 15885943) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15885943 15907571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15885943)
    (mid := 15896833) (hi := 15907571) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15820417 15864241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15842303) (hi := 15864241) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15864241 15907571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15864241)
    (mid := 15885943) (hi := 15907571) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15820417 15907571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15864241) (hi := 15907571) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15820417 15907571 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block180

#print axioms B699MiddleExtension.PrimorialBlocks.Block180.joined
