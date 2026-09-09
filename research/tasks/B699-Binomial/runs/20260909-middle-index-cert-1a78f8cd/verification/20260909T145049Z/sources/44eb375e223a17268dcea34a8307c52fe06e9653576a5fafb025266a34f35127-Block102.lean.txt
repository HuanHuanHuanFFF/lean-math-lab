import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block102

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8992583, 8992741, 8992913, 8993087, 8993269, 8993449, 8993609, 8993791, 8993951, 8994133, 8994317, 8994497, 8994677, 8994859, 8995039, 8995223]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8992411 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8992411 8995223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8992411) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8995391, 8995573, 8995757, 8995939, 8996093, 8996233, 8996401, 8996579, 8996759, 8996941, 8997119, 8997299, 8997463, 8997647, 8997803, 8997979]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8995223 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8995223 8997979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8995223) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8998159, 8998333, 8998489, 8998673, 8998823, 8998991, 8999161, 8999339, 8999519, 8999699, 8999867, 9000049, 9000223, 9000403, 9000577, 9000743]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8997979 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8997979 9000743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8997979) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9000913, 9001093, 9001277, 9001429, 9001561, 9001739, 9001897, 9002047, 9002171, 9002347, 9002519, 9002701, 9002879, 9003061, 9003233, 9003409]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9000743 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9000743 9003409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9000743) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9003583, 9003767, 9003901, 9004069, 9004249, 9004399, 9004571, 9004741, 9004921, 9005099, 9005279, 9005429, 9005561, 9005743, 9005923, 9006077]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9003409 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9003409 9006077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9003409) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9006253, 9006433, 9006611, 9006793, 9006973, 9007157, 9007333, 9007507, 9007679, 9007861, 9008029, 9008213, 9008393, 9008557, 9008731, 9008911]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9006077 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9006077 9008911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9006077) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9009083, 9009229, 9009409, 9009593, 9009773, 9009943, 9010121, 9010301, 9010481, 9010637, 9010787, 9010949, 9011117, 9011287, 9011459, 9011633]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9008911 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9008911 9011633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9008911) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9011803, 9011987, 9012149, 9012319, 9012467, 9012637, 9012797, 9012979, 9013129, 9013313, 9013483, 9013649, 9013817, 9013997, 9014179, 9014353]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9011633 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9011633 9014353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9011633) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9014527, 9014701, 9014861, 9015029, 9015199, 9015371, 9015553, 9015707, 9015889, 9016067, 9016237, 9016421, 9016603, 9016769, 9016949, 9017119]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9014353 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9014353 9017119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9014353) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9017291, 9017453, 9017627, 9017797, 9017977, 9018161, 9018341, 9018511, 9018683, 9018853, 9019019, 9019181, 9019363, 9019531, 9019711, 9019891]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9017119 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9017119 9019891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9017119) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9020069, 9020243, 9020419, 9020587, 9020747, 9020929, 9021113, 9021283, 9021457, 9021641, 9021769, 9021949, 9022129, 9022313, 9022493, 9022627]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9019891 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9019891 9022627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9019891) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9022807, 9022987, 9023171, 9023341, 9023501, 9023683, 9023867, 9024049, 9024233, 9024413, 9024593, 9024749, 9024931, 9025111, 9025273, 9025451]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9022627 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9022627 9025451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9022627) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9025613, 9025789, 9025957, 9026131, 9026309, 9026449, 9026623, 9026807, 9026987, 9027167, 9027311, 9027467, 9027643, 9027803, 9027973, 9028141]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9025451 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9025451 9028141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9025451) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9028297, 9028433, 9028609, 9028787, 9028969, 9029131, 9029309, 9029479, 9029651, 9029809, 9029971, 9030143, 9030313, 9030487, 9030661, 9030839]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9028141 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9028141 9030839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9028141) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9031021, 9031181, 9031361, 9031541, 9031717, 9031901, 9032059, 9032227, 9032393, 9032567, 9032741, 9032911, 9033083, 9033257, 9033421, 9033601]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9030839 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9030839 9033601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9030839) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9033769, 9033943, 9034127, 9034307, 9034489, 9034651, 9034813, 9034997, 9035171, 9035333, 9035513, 9035693, 9035861, 9036007, 9036187, 9036347]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9033601 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9033601 9036347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9033601) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9036509, 9036689, 9036857, 9036997, 9037169, 9037313, 9037487, 9037669, 9037849, 9038023, 9038189, 9038369, 9038551, 9038723, 9038893, 9039071]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9036347 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9036347 9039071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9036347) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9039227, 9039403, 9039571, 9039727, 9039907, 9040079, 9040259, 9040439, 9040601, 9040777, 9040961, 9041143, 9041327, 9041497, 9041657, 9041797]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9039071 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9039071 9041797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9039071) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9041971, 9042127, 9042307, 9042491, 9042647, 9042829, 9043009, 9043187, 9043361, 9043513, 9043691, 9043871, 9044053, 9044237, 9044417, 9044599]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9041797 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9041797 9044599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9041797) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9044771, 9044951, 9045119, 9045301, 9045473, 9045643, 9045823, 9046001, 9046157, 9046339, 9046523, 9046693, 9046871, 9047053, 9047231, 9047413]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9044599 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9044599 9047413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9044599) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9047569, 9047749, 9047917, 9048077, 9048253, 9048379, 9048527, 9048703, 9048887, 9049037, 9049211, 9049357, 9049541, 9049717, 9049877, 9050051]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9047413 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9047413 9050051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9047413) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9050221, 9050383, 9050563, 9050747, 9050911, 9051071, 9051253, 9051437, 9051617, 9051787, 9051967, 9052139, 9052319, 9052499, 9052663, 9052829]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9050051 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9050051 9052829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9050051) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9053003, 9053179, 9053327, 9053501, 9053683, 9053857, 9054029, 9054197, 9054377, 9054533, 9054713, 9054839, 9055021, 9055201, 9055331, 9055507]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9052829 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9052829 9055507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9052829) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9055687, 9055831, 9055993, 9056171, 9056339, 9056507, 9056683, 9056843, 9057017, 9057199, 9057371, 9057553, 9057731, 9057901, 9058057, 9058241]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9055507 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9055507 9058241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9055507) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9058409, 9058591, 9058771, 9058901, 9059059, 9059209, 9059389, 9059573, 9059749, 9059923, 9060089, 9060257, 9060419, 9060593, 9060761, 9060943]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9058241 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9058241 9060943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9058241) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9061121, 9061267, 9061447, 9061627, 9061807, 9061991, 9062159, 9062321, 9062503, 9062663, 9062843, 9063013, 9063179, 9063349, 9063529, 9063713]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9060943 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9060943 9063713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9060943) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9063889, 9064063, 9064241, 9064423, 9064603, 9064753, 9064903, 9065083, 9065263, 9065443, 9065627, 9065801, 9065963, 9066143, 9066319, 9066503]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9063713 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9063713 9066503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9063713) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9066683, 9066809, 9066983, 9067153, 9067321, 9067489, 9067649, 9067831, 9068009, 9068183, 9068351, 9068533, 9068711, 9068893, 9069037, 9069217]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9066503 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9066503 9069217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9066503) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9069397, 9069503, 9069677, 9069839, 9070007, 9070169, 9070351, 9070519, 9070697, 9070861, 9071009, 9071143, 9071267, 9071443, 9071609, 9071791]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9069217 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9069217 9071791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9069217) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9071971, 9072127, 9072311, 9072473, 9072653, 9072827, 9073003, 9073153, 9073327, 9073511, 9073693, 9073873, 9074057, 9074231, 9074393, 9074567]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9071791 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9071791 9074567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9071791) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9074711, 9074887, 9075049, 9075197, 9075379, 9075551, 9075733, 9075917, 9076033, 9076213, 9076367, 9076549, 9076733, 9076909, 9077083, 9077267]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9074567 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9074567 9077267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9074567) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9077423, 9077599, 9077777, 9077927, 9078109, 9078281, 9078463, 9078631, 9078781, 9078961, 9079111, 9079277, 9079429, 9079607, 9079771, 9079943]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9077267 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9077267 9079943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9077267) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8992411 8997979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 8995223) (hi := 8997979) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8997979 9003409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8997979)
    (mid := 9000743) (hi := 9003409) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9003409 9008911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9003409)
    (mid := 9006077) (hi := 9008911) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9008911 9014353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9008911)
    (mid := 9011633) (hi := 9014353) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9014353 9019891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9014353)
    (mid := 9017119) (hi := 9019891) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9019891 9025451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9019891)
    (mid := 9022627) (hi := 9025451) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9025451 9030839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9025451)
    (mid := 9028141) (hi := 9030839) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9030839 9036347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9030839)
    (mid := 9033601) (hi := 9036347) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9036347 9041797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9036347)
    (mid := 9039071) (hi := 9041797) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9041797 9047413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9041797)
    (mid := 9044599) (hi := 9047413) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9047413 9052829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9047413)
    (mid := 9050051) (hi := 9052829) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9052829 9058241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9052829)
    (mid := 9055507) (hi := 9058241) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9058241 9063713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9058241)
    (mid := 9060943) (hi := 9063713) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9063713 9069217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9063713)
    (mid := 9066503) (hi := 9069217) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9069217 9074567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9069217)
    (mid := 9071791) (hi := 9074567) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9074567 9079943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9074567)
    (mid := 9077267) (hi := 9079943) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8992411 9003409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 8997979) (hi := 9003409) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9003409 9014353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9003409)
    (mid := 9008911) (hi := 9014353) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9014353 9025451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9014353)
    (mid := 9019891) (hi := 9025451) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9025451 9036347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9025451)
    (mid := 9030839) (hi := 9036347) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9036347 9047413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9036347)
    (mid := 9041797) (hi := 9047413) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9047413 9058241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9047413)
    (mid := 9052829) (hi := 9058241) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9058241 9069217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9058241)
    (mid := 9063713) (hi := 9069217) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9069217 9079943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9069217)
    (mid := 9074567) (hi := 9079943) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8992411 9014353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 9003409) (hi := 9014353) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9014353 9036347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9014353)
    (mid := 9025451) (hi := 9036347) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9036347 9058241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9036347)
    (mid := 9047413) (hi := 9058241) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9058241 9079943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9058241)
    (mid := 9069217) (hi := 9079943) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8992411 9036347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 9014353) (hi := 9036347) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9036347 9079943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9036347)
    (mid := 9058241) (hi := 9079943) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8992411 9079943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 9036347) (hi := 9079943) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8992411 9079943 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block102

#print axioms B699MiddleExtension.PrimorialBlocks.Block102.joined
