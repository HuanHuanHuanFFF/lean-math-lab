import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block161

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14159293, 14159477, 14159573, 14159741, 14159911, 14160079, 14160257, 14160427, 14160607, 14160791, 14160877, 14161027, 14161207, 14161379, 14161559, 14161733]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14159111 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14159111 14161733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14159111) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14161891, 14162069, 14162249, 14162417, 14162597, 14162777, 14162947, 14163089, 14163263, 14163389, 14163553, 14163731, 14163893, 14164049, 14164217, 14164373]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14161733 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14161733 14164373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14161733) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14164541, 14164699, 14164883, 14165059, 14165243, 14165407, 14165521, 14165699, 14165867, 14166029, 14166203, 14166379, 14166557, 14166739, 14166917, 14167079]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14164373 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14164373 14167079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14164373) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14167261, 14167441, 14167607, 14167771, 14167949, 14168117, 14168257, 14168431, 14168611, 14168773, 14168929, 14169107, 14169289, 14169457, 14169613, 14169797]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14167079 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14167079 14169797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14167079) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14169979, 14170153, 14170307, 14170487, 14170661, 14170841, 14171023, 14171191, 14171369, 14171551, 14171713, 14171893, 14172077, 14172251, 14172419, 14172601]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14169797 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14169797 14172601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14169797) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14172751, 14172919, 14173099, 14173279, 14173447, 14173591, 14173769, 14173927, 14174087, 14174263, 14174429, 14174609, 14174791, 14174947, 14175131, 14175313]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14172601 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14172601 14175313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14172601) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14175481, 14175631, 14175779, 14175961, 14176133, 14176301, 14176433, 14176609, 14176781, 14176927, 14177101, 14177279, 14177461, 14177627, 14177791, 14177963]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14175313 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14175313 14177963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14175313) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14178137, 14178317, 14178499, 14178673, 14178851, 14179031, 14179211, 14179387, 14179553, 14179733, 14179873, 14180053, 14180233, 14180407, 14180557, 14180741]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14177963 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14177963 14180741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14177963) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14180923, 14181103, 14181259, 14181437, 14181533, 14181697, 14181877, 14182043, 14182213, 14182397, 14182547, 14182703, 14182871, 14183047, 14183227, 14183401]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14180741 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14180741 14183401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14180741) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14183567, 14183749, 14183921, 14184067, 14184227, 14184383, 14184563, 14184733, 14184913, 14185081, 14185261, 14185439, 14185607, 14185789, 14185967, 14186129]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14183401 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14183401 14186129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14183401) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14186311, 14186489, 14186633, 14186813, 14186981, 14187157, 14187337, 14187521, 14187703, 14187881, 14188043, 14188189, 14188373, 14188553, 14188729, 14188913]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14186129 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14186129 14188913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14186129) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14189057, 14189221, 14189387, 14189569, 14189753, 14189927, 14190097, 14190271, 14190439, 14190623, 14190791, 14190959, 14191129, 14191297, 14191477, 14191637]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14188913 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14188913 14191637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14188913) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14191819, 14191987, 14192131, 14192251, 14192417, 14192599, 14192779, 14192963, 14193131, 14193301, 14193469, 14193637, 14193821, 14194003, 14194183, 14194361]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14191637 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14191637 14194361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14191637) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14194511, 14194693, 14194871, 14195021, 14195201, 14195353, 14195521, 14195683, 14195849, 14196031, 14196199, 14196367, 14196551, 14196733, 14196907, 14197087]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14194361 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14194361 14197087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14194361) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14197219, 14197361, 14197543, 14197717, 14197891, 14198071, 14198251, 14198419, 14198599, 14198783, 14198953, 14199121, 14199281, 14199461, 14199637, 14199803]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14197087 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14197087 14199803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14197087) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14199967, 14200141, 14200283, 14200463, 14200643, 14200819, 14200997, 14201177, 14201357, 14201507, 14201687, 14201843, 14202011, 14202173, 14202347, 14202521]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14199803 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14199803 14202521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14199803) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14202697, 14202869, 14203039, 14203223, 14203379, 14203559, 14203741, 14203907, 14204089, 14204257, 14204429, 14204611, 14204791, 14204969, 14205137, 14205313]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14202521 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14202521 14205313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14202521) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14205493, 14205677, 14205823, 14206001, 14206183, 14206343, 14206513, 14206681, 14206859, 14206999, 14207183, 14207351, 14207533, 14207701, 14207873, 14208031]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14205313 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14205313 14208031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14205313) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14208179, 14208287, 14208461, 14208613, 14208797, 14208973, 14209123, 14209291, 14209471, 14209633, 14209801, 14209957, 14210117, 14210281, 14210429, 14210611]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14208031 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14208031 14210611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14208031) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14210773, 14210951, 14211103, 14211287, 14211469, 14211649, 14211817, 14211997, 14212139, 14212313, 14212487, 14212669, 14212853, 14213021, 14213191, 14213371]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14210611 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14210611 14213371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14210611) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14213533, 14213711, 14213863, 14214043, 14214203, 14214359, 14214517, 14214701, 14214881, 14215051, 14215199, 14215381, 14215547, 14215711, 14215891, 14216051]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14213371 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14213371 14216051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14213371) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14216221, 14216393, 14216563, 14216747, 14216929, 14217113, 14217271, 14217451, 14217629, 14217803, 14217971, 14218153, 14218333, 14218493, 14218663, 14218847]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14216051 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14216051 14218847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14216051) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14218993, 14219171, 14219351, 14219533, 14219717, 14219873, 14220043, 14220209, 14220383, 14220559, 14220719, 14220889, 14221069, 14221247, 14221421, 14221583]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14218847 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14218847 14221583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14218847) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14221721, 14221903, 14222083, 14222261, 14222443, 14222609, 14222771, 14222939, 14223113, 14223289, 14223467, 14223613, 14223787, 14223971, 14224151, 14224333]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14221583 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14221583 14224333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14221583) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14224517, 14224697, 14224867, 14225027, 14225203, 14225377, 14225557, 14225741, 14225881, 14226061, 14226239, 14226409, 14226577, 14226761, 14226941, 14227121]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14224333 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14224333 14227121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14224333) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14227261, 14227439, 14227621, 14227799, 14227973, 14228143, 14228323, 14228497, 14228671, 14228849, 14229029, 14229199, 14229361, 14229541, 14229707, 14229883]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14227121 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14227121 14229883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14227121) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14230067, 14230247, 14230423, 14230577, 14230757, 14230933, 14231111, 14231293, 14231473, 14231653, 14231831, 14231999, 14232181, 14232347, 14232499, 14232683]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14229883 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14229883 14232683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14229883) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14232853, 14233031, 14233213, 14233397, 14233579, 14233763, 14233939, 14234113, 14234243, 14234413, 14234569, 14234741, 14234923, 14235097, 14235271, 14235449]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14232683 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14232683 14235449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14232683) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14235589, 14235757, 14235937, 14236109, 14236279, 14236451, 14236627, 14236777, 14236951, 14237129, 14237309, 14237491, 14237659, 14237831, 14238001, 14238181]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14235449 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14235449 14238181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14235449) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14238359, 14238493, 14238667, 14238841, 14239009, 14239193, 14239373, 14239541, 14239723, 14239903, 14240047, 14240209, 14240351, 14240503, 14240663, 14240839]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14238181 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14238181 14240839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14238181) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14240983, 14241137, 14241289, 14241467, 14241641, 14241817, 14241979, 14242157, 14242337, 14242517, 14242667, 14242783, 14242939, 14243123, 14243287, 14243461]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14240839 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14240839 14243461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14240839) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14243641, 14243821, 14243993, 14244173, 14244341, 14244511, 14244689, 14244871, 14245051, 14245223, 14245379, 14245549, 14245733, 14245897, 14246077, 14246261]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14243461 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14243461 14246261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14243461) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14159111 14164373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14159111)
    (mid := 14161733) (hi := 14164373) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14164373 14169797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14164373)
    (mid := 14167079) (hi := 14169797) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14169797 14175313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14169797)
    (mid := 14172601) (hi := 14175313) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14175313 14180741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14175313)
    (mid := 14177963) (hi := 14180741) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14180741 14186129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14180741)
    (mid := 14183401) (hi := 14186129) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14186129 14191637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14186129)
    (mid := 14188913) (hi := 14191637) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14191637 14197087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14191637)
    (mid := 14194361) (hi := 14197087) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14197087 14202521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14197087)
    (mid := 14199803) (hi := 14202521) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14202521 14208031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14202521)
    (mid := 14205313) (hi := 14208031) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14208031 14213371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14208031)
    (mid := 14210611) (hi := 14213371) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14213371 14218847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14213371)
    (mid := 14216051) (hi := 14218847) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14218847 14224333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14218847)
    (mid := 14221583) (hi := 14224333) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14224333 14229883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14224333)
    (mid := 14227121) (hi := 14229883) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14229883 14235449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14229883)
    (mid := 14232683) (hi := 14235449) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14235449 14240839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14235449)
    (mid := 14238181) (hi := 14240839) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14240839 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14240839)
    (mid := 14243461) (hi := 14246261) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14159111 14169797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14159111)
    (mid := 14164373) (hi := 14169797) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14169797 14180741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14169797)
    (mid := 14175313) (hi := 14180741) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14180741 14191637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14180741)
    (mid := 14186129) (hi := 14191637) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14191637 14202521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14191637)
    (mid := 14197087) (hi := 14202521) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14202521 14213371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14202521)
    (mid := 14208031) (hi := 14213371) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14213371 14224333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14213371)
    (mid := 14218847) (hi := 14224333) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14224333 14235449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14224333)
    (mid := 14229883) (hi := 14235449) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14235449 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14235449)
    (mid := 14240839) (hi := 14246261) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14159111 14180741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14159111)
    (mid := 14169797) (hi := 14180741) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14180741 14202521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14180741)
    (mid := 14191637) (hi := 14202521) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14202521 14224333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14202521)
    (mid := 14213371) (hi := 14224333) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14224333 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14224333)
    (mid := 14235449) (hi := 14246261) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14159111 14202521 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14159111)
    (mid := 14180741) (hi := 14202521) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14202521 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14202521)
    (mid := 14224333) (hi := 14246261) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14159111 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14159111)
    (mid := 14202521) (hi := 14246261) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14159111 14246261 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block161

#print axioms B699MiddleExtension.PrimorialBlocks.Block161.joined
