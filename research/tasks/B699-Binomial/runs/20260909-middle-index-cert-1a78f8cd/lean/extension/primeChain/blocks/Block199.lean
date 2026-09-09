import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block199

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17479249, 17479421, 17479603, 17479783, 17479963, 17480143, 17480327, 17480447, 17480629, 17480809, 17480977, 17481143, 17481323, 17481493, 17481671, 17481851]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17479073 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17479073 17481851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17479073) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17482027, 17482211, 17482379, 17482561, 17482741, 17482879, 17483033, 17483209, 17483387, 17483561, 17483729, 17483911, 17484079, 17484263, 17484437, 17484601]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17481851 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17481851 17484601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17481851) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17484773, 17484953, 17485109, 17485291, 17485441, 17485621, 17485759, 17485921, 17486087, 17486267, 17486437, 17486621, 17486779, 17486947, 17487109, 17487289]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17484601 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17484601 17487289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17484601) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17487433, 17487601, 17487779, 17487949, 17488117, 17488301, 17488483, 17488663, 17488843, 17489027, 17489203, 17489387, 17489569, 17489741, 17489893, 17490073]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17487289 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17487289 17490073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17487289) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17490227, 17490401, 17490563, 17490743, 17490923, 17491093, 17491277, 17491459, 17491633, 17491813, 17491973, 17492093, 17492243, 17492399, 17492557, 17492737]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17490073 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17490073 17492737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17490073) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17492921, 17493103, 17493283, 17493461, 17493611, 17493779, 17493953, 17494121, 17494297, 17494457, 17494639, 17494811, 17494963, 17495113, 17495297, 17495473]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17492737 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17492737 17495473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17492737) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17495629, 17495813, 17495963, 17496119, 17496293, 17496469, 17496653, 17496827, 17497009, 17497177, 17497357, 17497531, 17497699, 17497873, 17498029, 17498207]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17495473 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17495473 17498207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17495473) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17498381, 17498543, 17498707, 17498881, 17499061, 17499241, 17499413, 17499571, 17499721, 17499899, 17500081, 17500261, 17500433, 17500607, 17500789, 17500969]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17498207 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17498207 17500969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17498207) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17501153, 17501317, 17501479, 17501663, 17501843, 17502019, 17502193, 17502347, 17502523, 17502703, 17502871, 17503051, 17503229, 17503403, 17503583, 17503757]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17500969 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17500969 17503757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17500969) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17503909, 17504093, 17504261, 17504437, 17504593, 17504761, 17504941, 17505101, 17505269, 17505451, 17505629, 17505791, 17505959, 17506133, 17506301, 17506477]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17503757 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17503757 17506477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17503757) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17506649, 17506831, 17507003, 17507153, 17507333, 17507491, 17507657, 17507827, 17507999, 17508163, 17508331, 17508503, 17508683, 17508853, 17509033, 17509211]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17506477 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17506477 17509211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17506477) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17509351, 17509529, 17509703, 17509883, 17510063, 17510243, 17510411, 17510579, 17510749, 17510923, 17511107, 17511287, 17511467, 17511617, 17511799, 17511983]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17509211 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17509211 17511983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17509211) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17512151, 17512333, 17512511, 17512687, 17512849, 17513033, 17513207, 17513381, 17513537, 17513719, 17513863, 17514047, 17514191, 17514361, 17514527, 17514703]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17511983 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17511983 17514703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17511983) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17514881, 17515037, 17515181, 17515343, 17515517, 17515691, 17515873, 17516047, 17516183, 17516327, 17516509, 17516693, 17516857, 17517037, 17517193, 17517371]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17514703 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17514703 17517371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17514703) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17517551, 17517733, 17517893, 17518027, 17518201, 17518373, 17518547, 17518717, 17518901, 17519081, 17519263, 17519413, 17519597, 17519779, 17519959, 17520133]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17517371 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17517371 17520133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17517371) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17520313, 17520497, 17520677, 17520827, 17520991, 17521159, 17521337, 17521513, 17521663, 17521841, 17522017, 17522173, 17522353, 17522521, 17522689, 17522863]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17520133 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17520133 17522863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17520133) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17523041, 17523211, 17523391, 17523559, 17523713, 17523893, 17524063, 17524237, 17524387, 17524571, 17524709, 17524883, 17525063, 17525243, 17525413, 17525591]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17522863 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17522863 17525591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17522863) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17525749, 17525933, 17526107, 17526287, 17526451, 17526617, 17526799, 17526979, 17527163, 17527343, 17527487, 17527667, 17527849, 17528029, 17528201, 17528363]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17525591 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17525591 17528363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17525591) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17528527, 17528681, 17528843, 17529011, 17529179, 17529359, 17529541, 17529719, 17529901, 17530067, 17530237, 17530421, 17530603, 17530783, 17530963, 17531147]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17528363 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17528363 17531147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17528363) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17531323, 17531473, 17531639, 17531807, 17531989, 17532169, 17532353, 17532533, 17532703, 17532883, 17533051, 17533223, 17533403, 17533583, 17533753, 17533927]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17531147 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17531147 17533927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17531147) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17534071, 17534249, 17534423, 17534597, 17534779, 17534911, 17535079, 17535263, 17535431, 17535611, 17535773, 17535949, 17536117, 17536301, 17536457, 17536637]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17533927 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17533927 17536637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17533927) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17536817, 17536997, 17537173, 17537347, 17537521, 17537699, 17537881, 17538043, 17538217, 17538377, 17538559, 17538739, 17538923, 17539099, 17539253, 17539433]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17536637 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17536637 17539433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17536637) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17539573, 17539727, 17539909, 17540093, 17540231, 17540377, 17540557, 17540723, 17540903, 17541079, 17541241, 17541421, 17541599, 17541779, 17541949, 17542103]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17539433 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17539433 17542103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17539433) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17542277, 17542457, 17542639, 17542817, 17542991, 17543153, 17543321, 17543501, 17543683, 17543863, 17544013, 17544173, 17544347, 17544529, 17544713, 17544871]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17542103 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17542103 17544871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17542103) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17545049, 17545219, 17545399, 17545571, 17545729, 17545877, 17546059, 17546231, 17546413, 17546569, 17546743, 17546923, 17547107, 17547289, 17547473, 17547653]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17544871 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17544871 17547653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17544871) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17547833, 17548009, 17548189, 17548373, 17548549, 17548717, 17548877, 17549047, 17549227, 17549387, 17549569, 17549747, 17549921, 17550097, 17550271, 17550451]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17547653 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17547653 17550451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17547653) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17550629, 17550763, 17550901, 17551063, 17551243, 17551411, 17551577, 17551759, 17551909, 17552081, 17552263, 17552429, 17552533, 17552707, 17552881, 17553049]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17550451 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17550451 17553049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17550451) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17553233, 17553413, 17553593, 17553749, 17553917, 17554087, 17554261, 17554429, 17554597, 17554781, 17554961, 17555123, 17555303, 17555479, 17555663, 17555819]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17553049 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17553049 17555819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17553049) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17556001, 17556163, 17556311, 17556493, 17556661, 17556841, 17557021, 17557147, 17557327, 17557511, 17557693, 17557861, 17558029, 17558207, 17558383, 17558531]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17555819 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17555819 17558531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17555819) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17558713, 17558887, 17559041, 17559221, 17559383, 17559559, 17559739, 17559923, 17560069, 17560189, 17560363, 17560547, 17560729, 17560913, 17561087, 17561261]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17558531 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17558531 17561261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17558531) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17561441, 17561611, 17561771, 17561953, 17562113, 17562287, 17562431, 17562607, 17562757, 17562931, 17563097, 17563243, 17563423, 17563607, 17563757, 17563921]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17561261 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17561261 17563921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17561261) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17564101, 17564243, 17564413, 17564593, 17564747, 17564929, 17565109, 17565293, 17565473, 17565649, 17565803, 17565971, 17566147, 17566313, 17566487, 17566669]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17563921 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17563921 17566669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17563921) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17479073 17484601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17479073)
    (mid := 17481851) (hi := 17484601) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17484601 17490073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17484601)
    (mid := 17487289) (hi := 17490073) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17490073 17495473 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17490073)
    (mid := 17492737) (hi := 17495473) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17495473 17500969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17495473)
    (mid := 17498207) (hi := 17500969) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17500969 17506477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17500969)
    (mid := 17503757) (hi := 17506477) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17506477 17511983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17506477)
    (mid := 17509211) (hi := 17511983) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17511983 17517371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17511983)
    (mid := 17514703) (hi := 17517371) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17517371 17522863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17517371)
    (mid := 17520133) (hi := 17522863) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17522863 17528363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17522863)
    (mid := 17525591) (hi := 17528363) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17528363 17533927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17528363)
    (mid := 17531147) (hi := 17533927) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17533927 17539433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17533927)
    (mid := 17536637) (hi := 17539433) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17539433 17544871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17539433)
    (mid := 17542103) (hi := 17544871) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17544871 17550451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17544871)
    (mid := 17547653) (hi := 17550451) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17550451 17555819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17550451)
    (mid := 17553049) (hi := 17555819) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17555819 17561261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17555819)
    (mid := 17558531) (hi := 17561261) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17561261 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17561261)
    (mid := 17563921) (hi := 17566669) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17479073 17490073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17479073)
    (mid := 17484601) (hi := 17490073) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17490073 17500969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17490073)
    (mid := 17495473) (hi := 17500969) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17500969 17511983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17500969)
    (mid := 17506477) (hi := 17511983) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17511983 17522863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17511983)
    (mid := 17517371) (hi := 17522863) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17522863 17533927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17522863)
    (mid := 17528363) (hi := 17533927) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17533927 17544871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17533927)
    (mid := 17539433) (hi := 17544871) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17544871 17555819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17544871)
    (mid := 17550451) (hi := 17555819) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17555819 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17555819)
    (mid := 17561261) (hi := 17566669) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17479073 17500969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17479073)
    (mid := 17490073) (hi := 17500969) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17500969 17522863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17500969)
    (mid := 17511983) (hi := 17522863) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17522863 17544871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17522863)
    (mid := 17533927) (hi := 17544871) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17544871 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17544871)
    (mid := 17555819) (hi := 17566669) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17479073 17522863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17479073)
    (mid := 17500969) (hi := 17522863) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17522863 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17522863)
    (mid := 17544871) (hi := 17566669) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17479073 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17479073)
    (mid := 17522863) (hi := 17566669) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17479073 17566669 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block199

#print axioms B699MiddleExtension.PrimorialBlocks.Block199.joined
