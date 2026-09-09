import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block213

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18701791, 18701971, 18702143, 18702319, 18702503, 18702679, 18702863, 18703037, 18703219, 18703397, 18703561, 18703717, 18703897, 18704069, 18704249, 18704431]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18701623 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18701623 18704431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18701623) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18704611, 18704767, 18704929, 18705103, 18705283, 18705439, 18705607, 18705787, 18705949, 18706123, 18706301, 18706463, 18706637, 18706819, 18706997, 18707179]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18704431 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18704431 18707179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18704431) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18707341, 18707519, 18707677, 18707851, 18708023, 18708197, 18708379, 18708563, 18708733, 18708917, 18709081, 18709253, 18709417, 18709597, 18709763, 18709937]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18707179 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18707179 18709937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18707179) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18710099, 18710273, 18710449, 18710617, 18710779, 18710959, 18711139, 18711313, 18711487, 18711659, 18711829, 18712013, 18712147, 18712327, 18712489, 18712621]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18709937 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18709937 18712621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18709937) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18712789, 18712943, 18713117, 18713297, 18713459, 18713633, 18713813, 18713963, 18714139, 18714317, 18714473, 18714649, 18714833, 18715013, 18715163, 18715339]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18712621 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18712621 18715339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18712621) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18715493, 18715663, 18715831, 18716003, 18716183, 18716359, 18716531, 18716713, 18716849, 18717011, 18717191, 18717373, 18717551, 18717733, 18717913, 18718093]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18715339 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18715339 18718093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18715339) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18718261, 18718433, 18718613, 18718793, 18718969, 18719153, 18719303, 18719483, 18719633, 18719809, 18719983, 18720083, 18720259, 18720433, 18720601, 18720769]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18718093 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18718093 18720769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18718093) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18720941, 18721123, 18721279, 18721459, 18721643, 18721823, 18722003, 18722183, 18722359, 18722513, 18722689, 18722867, 18723043, 18723209, 18723377, 18723559]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18720769 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18720769 18723559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18720769) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18723743, 18723917, 18724091, 18724261, 18724399, 18724571, 18724733, 18724913, 18725033, 18725207, 18725383, 18725563, 18725747, 18725921, 18726101, 18726283]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18723559 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18723559 18726283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18723559) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18726427, 18726601, 18726781, 18726949, 18727123, 18727297, 18727481, 18727663, 18727843, 18728023, 18728197, 18728363, 18728533, 18728683, 18728861, 18729031]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18726283 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18726283 18729031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18726283) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18729203, 18729367, 18729539, 18729721, 18729899, 18730009, 18730193, 18730367, 18730531, 18730709, 18730871, 18731047, 18731231, 18731411, 18731579, 18731761]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18729031 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18729031 18731761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18729031) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18731939, 18732089, 18732269, 18732451, 18732617, 18732751, 18732899, 18733061, 18733241, 18733399, 18733577, 18733747, 18733927, 18734101, 18734267, 18734431]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18731761 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18731761 18734431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18731761) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18734603, 18734777, 18734959, 18735077, 18735257, 18735433, 18735611, 18735757, 18735931, 18736111, 18736279, 18736463, 18736637, 18736819, 18737003, 18737177]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18734431 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18734431 18737177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18734431) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18737357, 18737531, 18737711, 18737881, 18738059, 18738217, 18738373, 18738547, 18738719, 18738899, 18739081, 18739247, 18739429, 18739603, 18739783, 18739951]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18737177 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18737177 18739951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18737177) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18740123, 18740299, 18740483, 18740629, 18740797, 18740941, 18741119, 18741287, 18741449, 18741623, 18741781, 18741953, 18742133, 18742307, 18742487, 18742667]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18739951 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18739951 18742667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18739951) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18742849, 18743033, 18743167, 18743327, 18743509, 18743693, 18743869, 18744041, 18744223, 18744391, 18744569, 18744731, 18744911, 18745087, 18745247, 18745429]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18742667 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18742667 18745429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18742667) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18745589, 18745763, 18745921, 18746099, 18746281, 18746447, 18746593, 18746773, 18746953, 18747121, 18747301, 18747473, 18747649, 18747823, 18747977, 18748153]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18745429 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18745429 18748153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18745429) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18748337, 18748511, 18748693, 18748871, 18749009, 18749189, 18749359, 18749537, 18749711, 18749881, 18750047, 18750229, 18750383, 18750547, 18750713, 18750889]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18748153 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18748153 18750889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18748153) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18751013, 18751189, 18751363, 18751541, 18751723, 18751907, 18752087, 18752267, 18752443, 18752611, 18752779, 18752959, 18753127, 18753307, 18753491, 18753673]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18750889 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18750889 18753673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18750889) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18753821, 18753979, 18754147, 18754331, 18754459, 18754643, 18754817, 18754973, 18755119, 18755287, 18755467, 18755647, 18755791, 18755969, 18756139, 18756323]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18753673 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18753673 18756323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18753673) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18756499, 18756671, 18756827, 18757007, 18757157, 18757337, 18757517, 18757699, 18757859, 18758039, 18758213, 18758353, 18758527, 18758711, 18758893, 18759073]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18756323 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18756323 18759073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18756323) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18759233, 18759413, 18759589, 18759761, 18759941, 18760103, 18760283, 18760451, 18760633, 18760799, 18760967, 18761147, 18761321, 18761461, 18761623, 18761807]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18759073 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18759073 18761807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18759073) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18761983, 18762167, 18762299, 18762473, 18762643, 18762827, 18762949, 18763103, 18763273, 18763457, 18763639, 18763817, 18763991, 18764167, 18764351, 18764531]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18761807 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18761807 18764531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18761807) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18764699, 18764843, 18765017, 18765191, 18765367, 18765511, 18765679, 18765847, 18766031, 18766211, 18766387, 18766523, 18766697, 18766879, 18767039, 18767209]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18764531 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18764531 18767209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18764531) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18767387, 18767569, 18767753, 18767923, 18768103, 18768259, 18768403, 18768569, 18768727, 18768859, 18769019, 18769183, 18769339, 18769483, 18769661, 18769843]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18767209 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18767209 18769843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18767209) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18770027, 18770209, 18770377, 18770561, 18770711, 18770893, 18771041, 18771223, 18771407, 18771589, 18771773, 18771953, 18772121, 18772297, 18772477, 18772661]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18769843 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18769843 18772661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18769843) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18772841, 18773021, 18773149, 18773309, 18773473, 18773647, 18773827, 18774011, 18774193, 18774377, 18774559, 18774733, 18774901, 18775079, 18775261, 18775423]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18772661 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18772661 18775423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18772661) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18775579, 18775763, 18775943, 18776113, 18776293, 18776473, 18776657, 18776839, 18777023, 18777179, 18777337, 18777509, 18777677, 18777859, 18778037, 18778187]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18775423 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18775423 18778187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18775423) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18778363, 18778519, 18778703, 18778871, 18779041, 18779221, 18779381, 18779539, 18779723, 18779897, 18780077, 18780241, 18780409, 18780577, 18780743, 18780901]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18778187 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18778187 18780901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18778187) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18781069, 18781211, 18781393, 18781573, 18781757, 18781921, 18782081, 18782261, 18782441, 18782623, 18782801, 18782957, 18783137, 18783319, 18783497, 18783673]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18780901 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18780901 18783673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18780901) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18783841, 18784021, 18784193, 18784343, 18784511, 18784681, 18784861, 18785033, 18785213, 18785369, 18785467, 18785651, 18785807, 18785983, 18786161, 18786337]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18783673 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18783673 18786337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18783673) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18786499, 18786679, 18786847, 18787007, 18787183, 18787367, 18787513, 18787663, 18787841, 18787997, 18788177, 18788353, 18788533, 18788713, 18788881, 18789059]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18786337 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18786337 18789059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18786337) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18701623 18707179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18701623)
    (mid := 18704431) (hi := 18707179) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18707179 18712621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18707179)
    (mid := 18709937) (hi := 18712621) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18712621 18718093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18712621)
    (mid := 18715339) (hi := 18718093) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18718093 18723559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18718093)
    (mid := 18720769) (hi := 18723559) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18723559 18729031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18723559)
    (mid := 18726283) (hi := 18729031) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18729031 18734431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18729031)
    (mid := 18731761) (hi := 18734431) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18734431 18739951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18734431)
    (mid := 18737177) (hi := 18739951) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18739951 18745429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18739951)
    (mid := 18742667) (hi := 18745429) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18745429 18750889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18745429)
    (mid := 18748153) (hi := 18750889) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18750889 18756323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18750889)
    (mid := 18753673) (hi := 18756323) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18756323 18761807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18756323)
    (mid := 18759073) (hi := 18761807) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18761807 18767209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18761807)
    (mid := 18764531) (hi := 18767209) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18767209 18772661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18767209)
    (mid := 18769843) (hi := 18772661) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18772661 18778187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18772661)
    (mid := 18775423) (hi := 18778187) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18778187 18783673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18778187)
    (mid := 18780901) (hi := 18783673) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18783673 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18783673)
    (mid := 18786337) (hi := 18789059) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18701623 18712621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18701623)
    (mid := 18707179) (hi := 18712621) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18712621 18723559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18712621)
    (mid := 18718093) (hi := 18723559) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18723559 18734431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18723559)
    (mid := 18729031) (hi := 18734431) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18734431 18745429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18734431)
    (mid := 18739951) (hi := 18745429) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18745429 18756323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18745429)
    (mid := 18750889) (hi := 18756323) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18756323 18767209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18756323)
    (mid := 18761807) (hi := 18767209) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18767209 18778187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18767209)
    (mid := 18772661) (hi := 18778187) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18778187 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18778187)
    (mid := 18783673) (hi := 18789059) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18701623 18723559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18701623)
    (mid := 18712621) (hi := 18723559) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18723559 18745429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18723559)
    (mid := 18734431) (hi := 18745429) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18745429 18767209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18745429)
    (mid := 18756323) (hi := 18767209) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18767209 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18767209)
    (mid := 18778187) (hi := 18789059) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18701623 18745429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18701623)
    (mid := 18723559) (hi := 18745429) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18745429 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18745429)
    (mid := 18767209) (hi := 18789059) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18701623 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18701623)
    (mid := 18745429) (hi := 18789059) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18701623 18789059 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block213

#print axioms B699MiddleExtension.PrimorialBlocks.Block213.joined
