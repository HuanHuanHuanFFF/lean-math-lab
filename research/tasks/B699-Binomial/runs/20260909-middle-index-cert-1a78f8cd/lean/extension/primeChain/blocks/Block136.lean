import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block136

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11970041, 11970221, 11970403, 11970587, 11970757, 11970919, 11971087, 11971261, 11971439, 11971607, 11971787, 11971943, 11972113, 11972269, 11972407, 11972579]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11969879 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11969879 11972579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11969879) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11972761, 11972899, 11973079, 11973257, 11973431, 11973589, 11973769, 11973943, 11974121, 11974279, 11974453, 11974637, 11974813, 11974969, 11975153, 11975311]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11972579 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11972579 11975311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11972579) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11975477, 11975657, 11975819, 11975993, 11976131, 11976301, 11976473, 11976647, 11976829, 11977003, 11977157, 11977337, 11977519, 11977681, 11977859, 11978041]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11975311 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11975311 11978041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11975311) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11978177, 11978359, 11978539, 11978723, 11978893, 11979061, 11979239, 11979391, 11979563, 11979743, 11979911, 11980091, 11980261, 11980433, 11980613, 11980783]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11978041 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11978041 11980783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11978041) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11980939, 11981117, 11981297, 11981443, 11981623, 11981791, 11981971, 11982109, 11982277, 11982449, 11982629, 11982811, 11982989, 11983163, 11983337, 11983519]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11980783 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11980783 11983519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11980783) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11983693, 11983859, 11984039, 11984213, 11984393, 11984561, 11984741, 11984923, 11985101, 11985271, 11985451, 11985601, 11985773, 11985937, 11986111, 11986237]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11983519 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11983519 11986237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11983519) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11986417, 11986577, 11986757, 11986913, 11987083, 11987267, 11987419, 11987579, 11987753, 11987923, 11988091, 11988253, 11988433, 11988617, 11988799, 11988979]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11986237 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11986237 11988979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11986237) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11989163, 11989333, 11989511, 11989687, 11989837, 11990009, 11990191, 11990371, 11990549, 11990723, 11990903, 11991047, 11991209, 11991377, 11991523, 11991689]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11988979 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11988979 11991689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11988979) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11991839, 11991997, 11992171, 11992349, 11992511, 11992693, 11992853, 11992993, 11993171, 11993353, 11993521, 11993699, 11993843, 11994013, 11994193, 11994373]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11991689 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11991689 11994373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11991689) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11994547, 11994701, 11994883, 11995057, 11995229, 11995391, 11995573, 11995757, 11995927, 11996107, 11996291, 11996449, 11996629, 11996791, 11996939, 11997109]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11994373 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11994373 11997109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11994373) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11997277, 11997449, 11997617, 11997787, 11997959, 11998127, 11998303, 11998487, 11998661, 11998843, 11999027, 11999179, 11999333, 11999513, 11999683, 11999857]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11997109 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11997109 11999857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11997109) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12000029, 12000133, 12000281, 12000433, 12000613, 12000797, 12000979, 12001163, 12001333, 12001511, 12001667, 12001841, 12001999, 12002183, 12002339, 12002519]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11999857 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11999857 12002519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11999857) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12002681, 12002843, 12003011, 12003191, 12003359, 12003527, 12003703, 12003881, 12004051, 12004217, 12004387, 12004549, 12004723, 12004891, 12005053, 12005237]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12002519 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12002519 12005237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12002519) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12005419, 12005599, 12005779, 12005963, 12006133, 12006311, 12006473, 12006653, 12006829, 12006977, 12007159, 12007327, 12007511, 12007669, 12007847, 12008027]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12005237 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12005237 12008027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12005237) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12008201, 12008371, 12008543, 12008713, 12008897, 12009077, 12009233, 12009409, 12009593, 12009773, 12009953, 12010129, 12010309, 12010477, 12010651, 12010799]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12008027 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12008027 12010799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12008027) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12010963, 12011143, 12011323, 12011507, 12011689, 12011873, 12012053, 12012197, 12012367, 12012551, 12012677, 12012859, 12013021, 12013201, 12013381, 12013553]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12010799 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12010799 12013553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12010799) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12013733, 12013901, 12014063, 12014221, 12014371, 12014539, 12014713, 12014881, 12015041, 12015217, 12015373, 12015557, 12015739, 12015919, 12016099, 12016283]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12013553 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12013553 12016283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12013553) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12016441, 12016621, 12016799, 12016973, 12017149, 12017303, 12017471, 12017639, 12017813, 12017989, 12018169, 12018353, 12018533, 12018703, 12018871, 12019009]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12016283 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12016283 12019009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12016283) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12019177, 12019349, 12019531, 12019703, 12019883, 12020051, 12020231, 12020389, 12020573, 12020741, 12020917, 12021071, 12021187, 12021367, 12021551, 12021701]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12019009 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12019009 12021701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12019009) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12021881, 12022039, 12022223, 12022397, 12022579, 12022739, 12022919, 12023059, 12023243, 12023419, 12023597, 12023773, 12023953, 12024119, 12024301, 12024461]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12021701 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12021701 12024461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12021701) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12024643, 12024823, 12025003, 12025183, 12025367, 12025549, 12025733, 12025903, 12026087, 12026269, 12026453, 12026603, 12026779, 12026923, 12027089, 12027271]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12024461 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12024461 12027271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12024461) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12027451, 12027623, 12027803, 12027971, 12028147, 12028319, 12028493, 12028669, 12028847, 12029029, 12029191, 12029363, 12029543, 12029711, 12029881, 12030061]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12027271 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12027271 12030061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12027271) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12030233, 12030383, 12030559, 12030727, 12030901, 12031079, 12031249, 12031417, 12031571, 12031729, 12031913, 12032089, 12032249, 12032429, 12032599, 12032777]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12030061 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12030061 12032777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12030061) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12032953, 12033107, 12033277, 12033451, 12033617, 12033793, 12033971, 12034153, 12034331, 12034513, 12034667, 12034849, 12035033, 12035209, 12035383, 12035563]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12032777 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12032777 12035563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12032777) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12035689, 12035869, 12036053, 12036229, 12036407, 12036553, 12036727, 12036907, 12037063, 12037243, 12037427, 12037601, 12037769, 12037937, 12038119, 12038303]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12035563 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12035563 12038303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12035563) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12038483, 12038659, 12038827, 12039007, 12039187, 12039371, 12039539, 12039707, 12039889, 12040073, 12040253, 12040421, 12040583, 12040759, 12040909, 12041089]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12038303 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12038303 12041089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12038303) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12041273, 12041411, 12041587, 12041767, 12041923, 12042091, 12042269, 12042449, 12042619, 12042769, 12042931, 12043103, 12043267, 12043441, 12043621, 12043799]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12041089 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12041089 12043799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12041089) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12043979, 12044159, 12044327, 12044509, 12044677, 12044861, 12045023, 12045181, 12045347, 12045521, 12045697, 12045881, 12046037, 12046193, 12046369, 12046553]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12043799 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12043799 12046553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12043799) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12046729, 12046913, 12047053, 12047227, 12047411, 12047591, 12047771, 12047941, 12048083, 12048263, 12048401, 12048581, 12048727, 12048899, 12049069, 12049253]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12046553 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12046553 12049253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12046553) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12049423, 12049601, 12049783, 12049967, 12050149, 12050323, 12050497, 12050681, 12050839, 12051023, 12051197, 12051373, 12051553, 12051737, 12051887, 12052043]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12049253 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12049253 12052043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12049253) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12052219, 12052399, 12052567, 12052741, 12052921, 12053089, 12053257, 12053423, 12053551, 12053729, 12053887, 12054023, 12054199, 12054359, 12054527, 12054677]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12052043 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12052043 12054677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12052043) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12054851, 12055031, 12055207, 12055391, 12055553, 12055723, 12055903, 12056087, 12056267, 12056441, 12056617, 12056801, 12056981, 12057139, 12057323, 12057499]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12054677 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12054677 12057499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12054677) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11969879 11975311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 11972579) (hi := 11975311) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11975311 11980783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11975311)
    (mid := 11978041) (hi := 11980783) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11980783 11986237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11980783)
    (mid := 11983519) (hi := 11986237) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11986237 11991689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11986237)
    (mid := 11988979) (hi := 11991689) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11991689 11997109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11991689)
    (mid := 11994373) (hi := 11997109) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11997109 12002519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11997109)
    (mid := 11999857) (hi := 12002519) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12002519 12008027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12002519)
    (mid := 12005237) (hi := 12008027) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12008027 12013553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12008027)
    (mid := 12010799) (hi := 12013553) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12013553 12019009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12013553)
    (mid := 12016283) (hi := 12019009) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12019009 12024461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12019009)
    (mid := 12021701) (hi := 12024461) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12024461 12030061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12024461)
    (mid := 12027271) (hi := 12030061) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12030061 12035563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12030061)
    (mid := 12032777) (hi := 12035563) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12035563 12041089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12035563)
    (mid := 12038303) (hi := 12041089) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12041089 12046553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12041089)
    (mid := 12043799) (hi := 12046553) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12046553 12052043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12046553)
    (mid := 12049253) (hi := 12052043) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12052043 12057499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12052043)
    (mid := 12054677) (hi := 12057499) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11969879 11980783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 11975311) (hi := 11980783) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11980783 11991689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11980783)
    (mid := 11986237) (hi := 11991689) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11991689 12002519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11991689)
    (mid := 11997109) (hi := 12002519) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12002519 12013553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12002519)
    (mid := 12008027) (hi := 12013553) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12013553 12024461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12013553)
    (mid := 12019009) (hi := 12024461) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12024461 12035563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12024461)
    (mid := 12030061) (hi := 12035563) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12035563 12046553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12035563)
    (mid := 12041089) (hi := 12046553) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12046553 12057499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12046553)
    (mid := 12052043) (hi := 12057499) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11969879 11991689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 11980783) (hi := 11991689) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11991689 12013553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11991689)
    (mid := 12002519) (hi := 12013553) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12013553 12035563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12013553)
    (mid := 12024461) (hi := 12035563) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12035563 12057499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12035563)
    (mid := 12046553) (hi := 12057499) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11969879 12013553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 11991689) (hi := 12013553) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12013553 12057499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12013553)
    (mid := 12035563) (hi := 12057499) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11969879 12057499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 12013553) (hi := 12057499) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11969879 12057499 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block136

#print axioms B699MiddleExtension.PrimorialBlocks.Block136.joined
