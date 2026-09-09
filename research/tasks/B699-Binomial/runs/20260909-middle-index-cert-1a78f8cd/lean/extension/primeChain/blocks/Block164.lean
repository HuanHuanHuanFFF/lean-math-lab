import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block164

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14421889, 14422073, 14422253, 14422427, 14422607, 14422789, 14422921, 14423099, 14423281, 14423443, 14423621, 14423797, 14423977, 14424139, 14424317, 14424499]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14421731 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14421731 14424499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14421731) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14424679, 14424833, 14425001, 14425171, 14425349, 14425529, 14425711, 14425889, 14426063, 14426233, 14426381, 14426551, 14426723, 14426869, 14427047, 14427191]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14424499 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14424499 14427191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14424499) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14427353, 14427503, 14427671, 14427841, 14427997, 14428157, 14428327, 14428511, 14428681, 14428849, 14429033, 14429213, 14429377, 14429557, 14429731, 14429881]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14427191 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14427191 14429881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14427191) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14430049, 14430217, 14430391, 14430539, 14430721, 14430901, 14431069, 14431253, 14431429, 14431567, 14431687, 14431831, 14432009, 14432177, 14432357, 14432519]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14429881 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14429881 14432519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14429881) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14432689, 14432867, 14433047, 14433173, 14433313, 14433491, 14433667, 14433827, 14433997, 14434171, 14434333, 14434517, 14434697, 14434879, 14435059, 14435221]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14432519 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14432519 14435221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14432519) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14435389, 14435549, 14435723, 14435893, 14436047, 14436221, 14436391, 14436563, 14436733, 14436911, 14437091, 14437231, 14437373, 14437547, 14437727, 14437861]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14435221 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14435221 14437861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14435221) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14438041, 14438213, 14438393, 14438573, 14438713, 14438887, 14439059, 14439233, 14439407, 14439589, 14439727, 14439881, 14440061, 14440243, 14440409, 14440567]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14437861 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14437861 14440567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14437861) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14440739, 14440919, 14441093, 14441269, 14441431, 14441591, 14441771, 14441929, 14442107, 14442283, 14442457, 14442613, 14442773, 14442949, 14443133, 14443307]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14440567 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14440567 14443307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14440567) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14443469, 14443643, 14443817, 14443987, 14444167, 14444347, 14444527, 14444711, 14444867, 14445049, 14445191, 14445371, 14445553, 14445709, 14445887, 14446057]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14443307 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14443307 14446057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14443307) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14446241, 14446423, 14446603, 14446781, 14446963, 14447123, 14447287, 14447449, 14447633, 14447801, 14447981, 14448149, 14448331, 14448491, 14448667, 14448823]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14446057 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14446057 14448823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14446057) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14448953, 14449111, 14449289, 14449471, 14449651, 14449829, 14450011, 14450173, 14450353, 14450519, 14450699, 14450879, 14451049, 14451187, 14451347, 14451529]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14448823 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14448823 14451529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14448823) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14451709, 14451893, 14452021, 14452189, 14452367, 14452549, 14452733, 14452891, 14453071, 14453251, 14453429, 14453609, 14453783, 14453953, 14454127, 14454289]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14451529 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14451529 14454289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14451529) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14454467, 14454631, 14454809, 14454989, 14455171, 14455351, 14455501, 14455681, 14455849, 14456033, 14456209, 14456383, 14456567, 14456693, 14456873, 14457049]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14454289 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14454289 14457049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14454289) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14457227, 14457407, 14457581, 14457743, 14457907, 14458051, 14458229, 14458393, 14458573, 14458739, 14458921, 14459047, 14459213, 14459383, 14459561, 14459737]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14457049 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14457049 14459737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14457049) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14459917, 14460101, 14460283, 14460449, 14460623, 14460793, 14460977, 14461141, 14461301, 14461429, 14461613, 14461789, 14461973, 14462143, 14462321, 14462479]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14459737 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14459737 14462479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14459737) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14462659, 14462831, 14462993, 14463173, 14463353, 14463517, 14463697, 14463881, 14464061, 14464237, 14464403, 14464573, 14464729, 14464897, 14465053, 14465203]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14462479 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14462479 14465203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14462479) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14465387, 14465567, 14465749, 14465923, 14466077, 14466229, 14466409, 14466587, 14466719, 14466899, 14467081, 14467261, 14467441, 14467613, 14467787, 14467961]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14465203 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14465203 14467961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14465203) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14468141, 14468323, 14468497, 14468681, 14468837, 14468977, 14469137, 14469319, 14469493, 14469671, 14469853, 14470037, 14470207, 14470387, 14470559, 14470741]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14467961 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14467961 14470741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14467961) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14470921, 14471099, 14471257, 14471419, 14471581, 14471753, 14471929, 14472097, 14472277, 14472449, 14472613, 14472791, 14472961, 14473127, 14473309, 14473493]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14470741 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14470741 14473493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14470741) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14473651, 14473829, 14474011, 14474183, 14474351, 14474519, 14474689, 14474821, 14474987, 14475157, 14475341, 14475523, 14475707, 14475889, 14476073, 14476247]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14473493 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14473493 14476247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14473493) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14476421, 14476601, 14476747, 14476919, 14477087, 14477263, 14477443, 14477623, 14477807, 14477987, 14478161, 14478313, 14478493, 14478677, 14478857, 14478991]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14476247 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14476247 14478991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14476247) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14479163, 14479327, 14479471, 14479643, 14479799, 14479981, 14480161, 14480321, 14480497, 14480681, 14480857, 14481041, 14481223, 14481407, 14481547, 14481721]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14478991 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14478991 14481721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14478991) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14481899, 14482057, 14482241, 14482423, 14482607, 14482781, 14482943, 14483113, 14483297, 14483477, 14483659, 14483839, 14484011, 14484191, 14484367, 14484551]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14481721 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14481721 14484551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14481721) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14484727, 14484893, 14485067, 14485231, 14485403, 14485573, 14485753, 14485937, 14486117, 14486287, 14486453, 14486629, 14486809, 14486993, 14487167, 14487311]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14484551 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14484551 14487311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14484551) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14487457, 14487607, 14487761, 14487919, 14488093, 14488277, 14488427, 14488567, 14488741, 14488871, 14489053, 14489197, 14489351, 14489521, 14489693, 14489863]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14487311 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14487311 14489863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14487311) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14490043, 14490221, 14490397, 14490563, 14490743, 14490907, 14491079, 14491261, 14491439, 14491583, 14491751, 14491931, 14492099, 14492273, 14492453, 14492627]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14489863 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14489863 14492627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14489863) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14492771, 14492941, 14493119, 14493293, 14493463, 14493613, 14493793, 14493961, 14494141, 14494309, 14494481, 14494657, 14494819, 14494993, 14495177, 14495353]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14492627 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14492627 14495353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14492627) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14495521, 14495699, 14495869, 14496043, 14496217, 14496389, 14496571, 14496749, 14496917, 14497079, 14497261, 14497433, 14497607, 14497789, 14497961, 14498101]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14495353 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14495353 14498101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14495353) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14498269, 14498453, 14498597, 14498777, 14498959, 14499097, 14499259, 14499439, 14499607, 14499787, 14499941, 14500121, 14500301, 14500463, 14500631, 14500807]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14498101 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14498101 14500807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14498101) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14500979, 14501159, 14501341, 14501507, 14501689, 14501873, 14502053, 14502227, 14502403, 14502577, 14502737, 14502919, 14503081, 14503249, 14503417, 14503597]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14500807 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14500807 14503597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14500807) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14503763, 14503921, 14504101, 14504279, 14504461, 14504627, 14504801, 14504983, 14505167, 14505331, 14505511, 14505691, 14505871, 14506027, 14506207, 14506381]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14503597 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14503597 14506381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14503597) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14506517, 14506673, 14506847, 14507011, 14507189, 14507371, 14507551, 14507707, 14507881, 14508059, 14508233, 14508413, 14508563, 14508743, 14508919, 14509081]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14506381 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14506381 14509081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14506381) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14421731 14427191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14424499) (hi := 14427191) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14427191 14432519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14427191)
    (mid := 14429881) (hi := 14432519) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14432519 14437861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14432519)
    (mid := 14435221) (hi := 14437861) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14437861 14443307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14437861)
    (mid := 14440567) (hi := 14443307) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14443307 14448823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14443307)
    (mid := 14446057) (hi := 14448823) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14448823 14454289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14448823)
    (mid := 14451529) (hi := 14454289) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14454289 14459737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14454289)
    (mid := 14457049) (hi := 14459737) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14459737 14465203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14459737)
    (mid := 14462479) (hi := 14465203) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14465203 14470741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14465203)
    (mid := 14467961) (hi := 14470741) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14470741 14476247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14470741)
    (mid := 14473493) (hi := 14476247) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14476247 14481721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14476247)
    (mid := 14478991) (hi := 14481721) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14481721 14487311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14481721)
    (mid := 14484551) (hi := 14487311) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14487311 14492627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14487311)
    (mid := 14489863) (hi := 14492627) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14492627 14498101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14492627)
    (mid := 14495353) (hi := 14498101) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14498101 14503597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14498101)
    (mid := 14500807) (hi := 14503597) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14503597 14509081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14503597)
    (mid := 14506381) (hi := 14509081) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14421731 14432519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14427191) (hi := 14432519) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14432519 14443307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14432519)
    (mid := 14437861) (hi := 14443307) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14443307 14454289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14443307)
    (mid := 14448823) (hi := 14454289) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14454289 14465203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14454289)
    (mid := 14459737) (hi := 14465203) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14465203 14476247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14465203)
    (mid := 14470741) (hi := 14476247) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14476247 14487311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14476247)
    (mid := 14481721) (hi := 14487311) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14487311 14498101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14487311)
    (mid := 14492627) (hi := 14498101) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14498101 14509081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14498101)
    (mid := 14503597) (hi := 14509081) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14421731 14443307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14432519) (hi := 14443307) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14443307 14465203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14443307)
    (mid := 14454289) (hi := 14465203) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14465203 14487311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14465203)
    (mid := 14476247) (hi := 14487311) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14487311 14509081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14487311)
    (mid := 14498101) (hi := 14509081) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14421731 14465203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14443307) (hi := 14465203) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14465203 14509081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14465203)
    (mid := 14487311) (hi := 14509081) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14421731 14509081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14465203) (hi := 14509081) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14421731 14509081 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block164

#print axioms B699MiddleExtension.PrimorialBlocks.Block164.joined
