import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block221

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19400191, 19400371, 19400551, 19400701, 19400879, 19401059, 19401229, 19401407, 19401587, 19401769, 19401937, 19402121, 19402303, 19402447, 19402613, 19402793]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19400023 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19400023 19402793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19400023) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19402949, 19403129, 19403311, 19403479, 19403627, 19403801, 19403981, 19404131, 19404313, 19404493, 19404673, 19404841, 19405019, 19405193, 19405369, 19405541]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19402793 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19402793 19405541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19402793) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19405709, 19405889, 19406063, 19406237, 19406399, 19406573, 19406747, 19406921, 19407103, 19407263, 19407439, 19407623, 19407803, 19407977, 19408157, 19408331]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19405541 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19405541 19408331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19405541) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19408513, 19408693, 19408877, 19409059, 19409239, 19409413, 19409581, 19409759, 19409939, 19410119, 19410301, 19410473, 19410649, 19410817, 19410973, 19411157]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19408331 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19408331 19411157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19408331) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19411319, 19411499, 19411681, 19411849, 19412033, 19412209, 19412389, 19412567, 19412747, 19412917, 19413101, 19413263, 19413389, 19413571, 19413733, 19413893]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19411157 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19411157 19413893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19411157) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19414049, 19414223, 19414403, 19414583, 19414763, 19414939, 19415113, 19415281, 19415453, 19415623, 19415807, 19415983, 19416161, 19416343, 19416511, 19416679]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19413893 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19413893 19416679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19413893) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19416851, 19417033, 19417217, 19417399, 19417583, 19417759, 19417921, 19418101, 19418251, 19418423, 19418587, 19418767, 19418941, 19419119, 19419293, 19419461]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19416679 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19416679 19419461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19416679) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19419643, 19419823, 19420007, 19420189, 19420369, 19420537, 19420721, 19420903, 19421081, 19421239, 19421383, 19421557, 19421713, 19421879, 19422061, 19422223]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19419461 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19419461 19422223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19419461) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19422379, 19422509, 19422679, 19422863, 19423043, 19423207, 19423373, 19423553, 19423717, 19423897, 19424057, 19424233, 19424411, 19424539, 19424723, 19424869]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19422223 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19422223 19424869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19422223) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19425047, 19425221, 19425347, 19425517, 19425701, 19425839, 19426013, 19426157, 19426339, 19426507, 19426681, 19426861, 19427041, 19427201, 19427377, 19427531]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19424869 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19424869 19427531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19424869) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19427699, 19427867, 19428047, 19428209, 19428377, 19428551, 19428691, 19428863, 19429037, 19429213, 19429393, 19429573, 19429741, 19429897, 19430071, 19430251]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19427531 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19427531 19430251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19427531) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19430431, 19430611, 19430777, 19430953, 19431101, 19431283, 19431449, 19431631, 19431793, 19431961, 19432123, 19432261, 19432429, 19432583, 19432759, 19432943]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19430251 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19430251 19432943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19430251) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19433123, 19433299, 19433471, 19433653, 19433837, 19433989, 19434161, 19434329, 19434487, 19434671, 19434851, 19435021, 19435201, 19435349, 19435453, 19435601]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19432943 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19432943 19435601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19432943) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19435781, 19435951, 19436111, 19436281, 19436453, 19436623, 19436789, 19436971, 19437127, 19437287, 19437449, 19437619, 19437797, 19437959, 19438127, 19438303]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19435601 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19435601 19438303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19435601) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19438487, 19438663, 19438847, 19439027, 19439191, 19439363, 19439533, 19439701, 19439873, 19440023, 19440203, 19440383, 19440539, 19440721, 19440901, 19441069]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19438303 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19438303 19441069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19438303) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19441241, 19441423, 19441607, 19441789, 19441963, 19442141, 19442299, 19442483, 19442653, 19442831, 19442993, 19443173, 19443341, 19443511, 19443691, 19443871]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19441069 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19441069 19443871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19441069) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19444043, 19444219, 19444393, 19444577, 19444757, 19444939, 19445119, 19445269, 19445449, 19445623, 19445801, 19445969, 19446151, 19446299, 19446473, 19446643]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19443871 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19443871 19446643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19443871) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19446811, 19446989, 19447171, 19447333, 19447513, 19447679, 19447859, 19448027, 19448197, 19448371, 19448551, 19448729, 19448899, 19449077, 19449239, 19449413]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19446643 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19446643 19449413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19446643) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19449557, 19449733, 19449893, 19450073, 19450253, 19450429, 19450597, 19450741, 19450913, 19451063, 19451227, 19451389, 19451569, 19451717, 19451869, 19452053]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19449413 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19449413 19452053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19449413) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19452203, 19452361, 19452497, 19452677, 19452859, 19453037, 19453211, 19453387, 19453543, 19453727, 19453909, 19454093, 19454249, 19454401, 19454549, 19454713]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19452053 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19452053 19454713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19452053) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19454891, 19455071, 19455253, 19455431, 19455593, 19455749, 19455923, 19456103, 19456277, 19456457, 19456639, 19456819, 19456991, 19457117, 19457297, 19457467]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19454713 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19454713 19457467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19454713) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19457651, 19457831, 19458001, 19458167, 19458343, 19458511, 19458689, 19458847, 19459001, 19459171, 19459333, 19459513, 19459691, 19459873, 19460057, 19460227]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19457467 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19457467 19460227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19457467) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19460401, 19460569, 19460723, 19460899, 19461077, 19461193, 19461373, 19461553, 19461731, 19461913, 19462081, 19462243, 19462411, 19462589, 19462727, 19462907]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19460227 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19460227 19462907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19460227) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19463057, 19463237, 19463413, 19463579, 19463747, 19463909, 19464083, 19464229, 19464377, 19464547, 19464707, 19464859, 19465031, 19465213, 19465393, 19465549]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19462907 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19462907 19465549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19462907) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19465729, 19465913, 19466093, 19466269, 19466449, 19466633, 19466813, 19466987, 19467139, 19467311, 19467467, 19467631, 19467797, 19467953, 19468117, 19468301]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19465549 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19465549 19468301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19465549) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19468453, 19468633, 19468811, 19468991, 19469171, 19469347, 19469507, 19469599, 19469771, 19469911, 19470067, 19470233, 19470403, 19470587, 19470761, 19470931]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19468301 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19468301 19470931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19468301) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19471099, 19471279, 19471457, 19471631, 19471787, 19471957, 19472129, 19472303, 19472461, 19472627, 19472801, 19472977, 19473151, 19473329, 19473497, 19473677]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19470931 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19470931 19473677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19470931) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19473833, 19474009, 19474187, 19474363, 19474531, 19474711, 19474883, 19475063, 19475243, 19475383, 19475543, 19475713, 19475887, 19476059, 19476217, 19476397]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19473677 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19473677 19476397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19473677) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19476571, 19476749, 19476931, 19477099, 19477279, 19477453, 19477613, 19477781, 19477963, 19478143, 19478299, 19478483, 19478659, 19478839, 19479023, 19479203]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19476397 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19476397 19479203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19476397) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19479373, 19479553, 19479737, 19479917, 19480067, 19480243, 19480427, 19480603, 19480751, 19480921, 19481101, 19481281, 19481447, 19481617, 19481801, 19481963]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19479203 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19479203 19481963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19479203) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19482143, 19482319, 19482469, 19482649, 19482829, 19482989, 19483169, 19483327, 19483501, 19483657, 19483813, 19483993, 19484173, 19484347, 19484527, 19484693]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19481963 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19481963 19484693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19481963) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19484863, 19485041, 19485181, 19485359, 19485539, 19485707, 19485889, 19486067, 19486249, 19486421, 19486567, 19486751, 19486921, 19487087, 19487257, 19487431]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19484693 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19484693 19487431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19484693) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19400023 19405541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19400023)
    (mid := 19402793) (hi := 19405541) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19405541 19411157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19405541)
    (mid := 19408331) (hi := 19411157) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19411157 19416679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19411157)
    (mid := 19413893) (hi := 19416679) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19416679 19422223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19416679)
    (mid := 19419461) (hi := 19422223) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19422223 19427531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19422223)
    (mid := 19424869) (hi := 19427531) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19427531 19432943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19427531)
    (mid := 19430251) (hi := 19432943) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19432943 19438303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19432943)
    (mid := 19435601) (hi := 19438303) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19438303 19443871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19438303)
    (mid := 19441069) (hi := 19443871) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19443871 19449413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19443871)
    (mid := 19446643) (hi := 19449413) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19449413 19454713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19449413)
    (mid := 19452053) (hi := 19454713) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19454713 19460227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19454713)
    (mid := 19457467) (hi := 19460227) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19460227 19465549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19460227)
    (mid := 19462907) (hi := 19465549) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19465549 19470931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19465549)
    (mid := 19468301) (hi := 19470931) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19470931 19476397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19470931)
    (mid := 19473677) (hi := 19476397) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19476397 19481963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19476397)
    (mid := 19479203) (hi := 19481963) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19481963 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19481963)
    (mid := 19484693) (hi := 19487431) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19400023 19411157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19400023)
    (mid := 19405541) (hi := 19411157) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19411157 19422223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19411157)
    (mid := 19416679) (hi := 19422223) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19422223 19432943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19422223)
    (mid := 19427531) (hi := 19432943) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19432943 19443871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19432943)
    (mid := 19438303) (hi := 19443871) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19443871 19454713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19443871)
    (mid := 19449413) (hi := 19454713) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19454713 19465549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19454713)
    (mid := 19460227) (hi := 19465549) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19465549 19476397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19465549)
    (mid := 19470931) (hi := 19476397) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19476397 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19476397)
    (mid := 19481963) (hi := 19487431) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19400023 19422223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19400023)
    (mid := 19411157) (hi := 19422223) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19422223 19443871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19422223)
    (mid := 19432943) (hi := 19443871) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19443871 19465549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19443871)
    (mid := 19454713) (hi := 19465549) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19465549 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19465549)
    (mid := 19476397) (hi := 19487431) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19400023 19443871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19400023)
    (mid := 19422223) (hi := 19443871) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19443871 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19443871)
    (mid := 19465549) (hi := 19487431) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19400023 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19400023)
    (mid := 19443871) (hi := 19487431) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19400023 19487431 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block221

#print axioms B699MiddleExtension.PrimorialBlocks.Block221.joined
