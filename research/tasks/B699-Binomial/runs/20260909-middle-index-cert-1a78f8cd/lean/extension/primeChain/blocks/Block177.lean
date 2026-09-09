import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block177

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15557999, 15558173, 15558341, 15558503, 15558637, 15558799, 15558979, 15559121, 15559273, 15559451, 15559633, 15559807, 15559991, 15560173, 15560353, 15560537]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15557863 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15557863 15560537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15557863) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15560687, 15560869, 15561047, 15561229, 15561407, 15561563, 15561737, 15561911, 15562091, 15562271, 15562433, 15562609, 15562793, 15562913, 15563087, 15563269]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15560537 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15560537 15563269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15560537) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15563453, 15563629, 15563803, 15563987, 15564149, 15564331, 15564487, 15564649, 15564799, 15564977, 15565159, 15565327, 15565499, 15565673, 15565853, 15566027]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15563269 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15563269 15566027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15563269) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15566209, 15566363, 15566531, 15566711, 15566893, 15567077, 15567259, 15567443, 15567623, 15567731, 15567913, 15568093, 15568261, 15568439, 15568613, 15568781]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15566027 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15566027 15568781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15566027) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15568963, 15569129, 15569291, 15569473, 15569647, 15569779, 15569963, 15570143, 15570299, 15570479, 15570647, 15570809, 15570991, 15571151, 15571327, 15571489]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15568781 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15568781 15571489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15568781) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15571663, 15571807, 15571987, 15572171, 15572353, 15572521, 15572701, 15572861, 15573023, 15573199, 15573379, 15573533, 15573709, 15573851, 15574033, 15574211]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15571489 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15571489 15574211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15571489) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15574387, 15574553, 15574723, 15574883, 15575029, 15575201, 15575381, 15575563, 15575743, 15575891, 15576073, 15576251, 15576389, 15576569, 15576733, 15576893]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15574211 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15574211 15576893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15574211) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15577073, 15577249, 15577409, 15577589, 15577733, 15577907, 15578077, 15578257, 15578417, 15578587, 15578753, 15578933, 15579101, 15579283, 15579457, 15579593]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15576893 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15576893 15579593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15576893) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15579761, 15579929, 15580099, 15580283, 15580457, 15580601, 15580777, 15580951, 15581123, 15581303, 15581473, 15581651, 15581831, 15582001, 15582169, 15582323]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15579593 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15579593 15582323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15579593) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15582493, 15582649, 15582823, 15583003, 15583181, 15583357, 15583541, 15583723, 15583907, 15584089, 15584243, 15584423, 15584581, 15584761, 15584887, 15585067]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15582323 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15582323 15585067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15582323) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15585197, 15585373, 15585553, 15585721, 15585893, 15586033, 15586201, 15586379, 15586553, 15586733, 15586889, 15587071, 15587237, 15587417, 15587531, 15587707]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15585067 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15585067 15587707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15585067) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15587851, 15588029, 15588203, 15588301, 15588467, 15588647, 15588829, 15588971, 15589129, 15589303, 15589487, 15589667, 15589843, 15590011, 15590191, 15590353]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15587707 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15587707 15590353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15587707) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15590521, 15590693, 15590873, 15591049, 15591223, 15591383, 15591557, 15591739, 15591893, 15592069, 15592249, 15592433, 15592613, 15592793, 15592963, 15593119]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15590353 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15590353 15593119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15590353) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15593269, 15593453, 15593621, 15593803, 15593987, 15594143, 15594311, 15594487, 15594629, 15594811, 15594983, 15595159, 15595343, 15595519, 15595693, 15595871]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15593119 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15593119 15595871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15593119) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15596051, 15596233, 15596407, 15596579, 15596761, 15596927, 15597083, 15597259, 15597409, 15597577, 15597731, 15597913, 15598097, 15598277, 15598447, 15598631]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15595871 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15595871 15598631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15595871) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15598789, 15598967, 15599137, 15599281, 15599447, 15599621, 15599797, 15599981, 15600163, 15600337, 15600503, 15600677, 15600853, 15601037, 15601211, 15601387]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15598631 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15598631 15601387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15598631) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15601559, 15601723, 15601891, 15602057, 15602239, 15602399, 15602569, 15602729, 15602911, 15603089, 15603271, 15603449, 15603629, 15603799, 15603961, 15604133]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15601387 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15601387 15604133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15601387) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15604297, 15604469, 15604651, 15604819, 15605003, 15605159, 15605333, 15605503, 15605687, 15605869, 15606053, 15606229, 15606401, 15606571, 15606737, 15606917]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15604133 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15604133 15606917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15604133) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15607079, 15607253, 15607421, 15607589, 15607763, 15607939, 15608111, 15608287, 15608471, 15608629, 15608809, 15608993, 15609169, 15609353, 15609533, 15609701]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15606917 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15606917 15609701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15606917) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15609883, 15610051, 15610213, 15610379, 15610547, 15610711, 15610883, 15611047, 15611213, 15611381, 15611543, 15611689, 15611867, 15612043, 15612211, 15612391]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15609701 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15609701 15612391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15609701) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15612563, 15612743, 15612911, 15613093, 15613277, 15613457, 15613589, 15613771, 15613951, 15614129, 15614311, 15614479, 15614663, 15614839, 15615011, 15615191]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15612391 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15612391 15615191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15612391) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15615361, 15615533, 15615713, 15615881, 15616049, 15616231, 15616411, 15616589, 15616771, 15616949, 15617131, 15617309, 15617461, 15617599, 15617773, 15617957]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15615191 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15615191 15617957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15615191) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15618103, 15618271, 15618439, 15618601, 15618763, 15618929, 15619099, 15619271, 15619441, 15619607, 15619763, 15619943, 15620113, 15620291, 15620471, 15620651]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15617957 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15617957 15620651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15617957) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15620797, 15620953, 15621131, 15621313, 15621497, 15621677, 15621847, 15622021, 15622169, 15622339, 15622513, 15622697, 15622837, 15623021, 15623203, 15623383]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15620651 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15620651 15623383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15620651) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15623563, 15623743, 15623893, 15624073, 15624253, 15624391, 15624569, 15624743, 15624919, 15625081, 15625243, 15625427, 15625607, 15625789, 15625969, 15626147]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15623383 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15623383 15626147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15623383) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15626323, 15626497, 15626669, 15626843, 15627019, 15627203, 15627377, 15627541, 15627719, 15627901, 15628073, 15628243, 15628411, 15628589, 15628771, 15628919]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15626147 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15626147 15628919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15626147) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15629099, 15629279, 15629459, 15629641, 15629791, 15629963, 15630127, 15630301, 15630473, 15630653, 15630829, 15631013, 15631183, 15631349, 15631529, 15631691]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15628919 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15628919 15631691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15628919) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15631867, 15632051, 15632219, 15632399, 15632579, 15632753, 15632927, 15633103, 15633287, 15633439, 15633617, 15633799, 15633973, 15634139, 15634309, 15634459]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15631691 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15631691 15634459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15631691) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15634643, 15634813, 15634991, 15635173, 15635353, 15635513, 15635681, 15635861, 15636001, 15636169, 15636353, 15636469, 15636653, 15636833, 15637009, 15637187]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15634459 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15634459 15637187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15634459) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15637367, 15637543, 15637709, 15637889, 15638071, 15638239, 15638417, 15638591, 15638747, 15638923, 15639101, 15639263, 15639433, 15639599, 15639781, 15639947]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15637187 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15637187 15639947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15637187) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15640123, 15640291, 15640453, 15640637, 15640813, 15640987, 15641149, 15641333, 15641501, 15641671, 15641777, 15641947, 15642127, 15642307, 15642469, 15642647]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15639947 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15639947 15642647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15639947) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15642827, 15643007, 15643169, 15643337, 15643487, 15643613, 15643777, 15643937, 15644107, 15644281, 15644423, 15644591, 15644729, 15644897, 15645079, 15645211]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15642647 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15642647 15645211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15642647) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15557863 15563269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15557863)
    (mid := 15560537) (hi := 15563269) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15563269 15568781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15563269)
    (mid := 15566027) (hi := 15568781) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15568781 15574211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15568781)
    (mid := 15571489) (hi := 15574211) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15574211 15579593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15574211)
    (mid := 15576893) (hi := 15579593) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15579593 15585067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15579593)
    (mid := 15582323) (hi := 15585067) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15585067 15590353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15585067)
    (mid := 15587707) (hi := 15590353) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15590353 15595871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15590353)
    (mid := 15593119) (hi := 15595871) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15595871 15601387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15595871)
    (mid := 15598631) (hi := 15601387) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15601387 15606917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15601387)
    (mid := 15604133) (hi := 15606917) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15606917 15612391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15606917)
    (mid := 15609701) (hi := 15612391) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15612391 15617957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15612391)
    (mid := 15615191) (hi := 15617957) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15617957 15623383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15617957)
    (mid := 15620651) (hi := 15623383) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15623383 15628919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15623383)
    (mid := 15626147) (hi := 15628919) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15628919 15634459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15628919)
    (mid := 15631691) (hi := 15634459) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15634459 15639947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15634459)
    (mid := 15637187) (hi := 15639947) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15639947 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15639947)
    (mid := 15642647) (hi := 15645211) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15557863 15568781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15557863)
    (mid := 15563269) (hi := 15568781) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15568781 15579593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15568781)
    (mid := 15574211) (hi := 15579593) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15579593 15590353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15579593)
    (mid := 15585067) (hi := 15590353) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15590353 15601387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15590353)
    (mid := 15595871) (hi := 15601387) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15601387 15612391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15601387)
    (mid := 15606917) (hi := 15612391) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15612391 15623383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15612391)
    (mid := 15617957) (hi := 15623383) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15623383 15634459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15623383)
    (mid := 15628919) (hi := 15634459) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15634459 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15634459)
    (mid := 15639947) (hi := 15645211) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15557863 15579593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15557863)
    (mid := 15568781) (hi := 15579593) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15579593 15601387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15579593)
    (mid := 15590353) (hi := 15601387) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15601387 15623383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15601387)
    (mid := 15612391) (hi := 15623383) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15623383 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15623383)
    (mid := 15634459) (hi := 15645211) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15557863 15601387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15557863)
    (mid := 15579593) (hi := 15601387) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15601387 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15601387)
    (mid := 15623383) (hi := 15645211) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15557863 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15557863)
    (mid := 15601387) (hi := 15645211) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15557863 15645211 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block177

#print axioms B699MiddleExtension.PrimorialBlocks.Block177.joined
