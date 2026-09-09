import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block176

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15471067, 15471233, 15471383, 15471557, 15471739, 15471923, 15472103, 15472273, 15472433, 15472603, 15472781, 15472957, 15473131, 15473303, 15473477, 15473609]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15470893 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15470893 15473609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15470893) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15473767, 15473903, 15474073, 15474211, 15474383, 15474553, 15474733, 15474881, 15475043, 15475223, 15475403, 15475567, 15475751, 15475909, 15476081, 15476243]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15473609 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15473609 15476243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15473609) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15476413, 15476569, 15476731, 15476899, 15477083, 15477251, 15477421, 15477589, 15477767, 15477941, 15478121, 15478301, 15478457, 15478621, 15478777, 15478961]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15476243 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15476243 15478961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15476243) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15479143, 15479293, 15479473, 15479647, 15479831, 15479993, 15480163, 15480347, 15480529, 15480713, 15480869, 15481043, 15481223, 15481399, 15481573, 15481733]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15478961 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15478961 15481733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15478961) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15481901, 15482029, 15482177, 15482347, 15482531, 15482711, 15482893, 15483077, 15483253, 15483409, 15483581, 15483749, 15483907, 15484087, 15484247, 15484421]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15481733 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15481733 15484421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15481733) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15484591, 15484771, 15484951, 15485083, 15485257, 15485441, 15485621, 15485801, 15485959, 15486139, 15486287, 15486469, 15486649, 15486833, 15487007, 15487177]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15484421 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15484421 15487177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15484421) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15487361, 15487543, 15487721, 15487903, 15488063, 15488227, 15488393, 15488569, 15488723, 15488899, 15489079, 15489263, 15489443, 15489623, 15489781, 15489953]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15487177 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15487177 15489953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15487177) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15490133, 15490313, 15490459, 15490639, 15490823, 15490991, 15491171, 15491323, 15491501, 15491659, 15491837, 15492019, 15492193, 15492313, 15492439, 15492623]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15489953 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15489953 15492623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15489953) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15492803, 15492979, 15493109, 15493277, 15493433, 15493603, 15493771, 15493937, 15494077, 15494257, 15494431, 15494587, 15494771, 15494951, 15495131, 15495299]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15492623 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15492623 15495299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15492623) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15495481, 15495661, 15495829, 15496009, 15496177, 15496361, 15496543, 15496721, 15496903, 15497077, 15497227, 15497393, 15497567, 15497747, 15497917, 15498089]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15495299 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15495299 15498089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15495299) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15498269, 15498421, 15498599, 15498751, 15498929, 15499111, 15499283, 15499457, 15499621, 15499793, 15499943, 15500119, 15500293, 15500473, 15500633, 15500813]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15498089 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15498089 15500813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15498089) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15500981, 15501151, 15501293, 15501461, 15501583, 15501763, 15501947, 15502121, 15502303, 15502477, 15502649, 15502829, 15503009, 15503161, 15503339, 15503491]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15500813 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15500813 15503491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15500813) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15503669, 15503849, 15504029, 15504211, 15504389, 15504571, 15504733, 15504917, 15505099, 15505283, 15505453, 15505597, 15505771, 15505951, 15506093, 15506251]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15503491 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15503491 15506251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15503491) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15506411, 15506551, 15506723, 15506867, 15507049, 15507203, 15507379, 15507523, 15507707, 15507889, 15508067, 15508201, 15508379, 15508561, 15508663, 15508817]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15506251 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15506251 15508817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15506251) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15508993, 15509177, 15509353, 15509531, 15509707, 15509891, 15509999, 15510179, 15510361, 15510527, 15510689, 15510863, 15510977, 15511151, 15511297, 15511471]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15508817 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15508817 15511471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15508817) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15511651, 15511819, 15511963, 15512137, 15512269, 15512407, 15512591, 15512713, 15512897, 15513079, 15513241, 15513409, 15513587, 15513769, 15513943, 15514117]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15511471 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15511471 15514117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15511471) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15514283, 15514459, 15514613, 15514789, 15514957, 15515119, 15515299, 15515471, 15515629, 15515813, 15515959, 15516071, 15516253, 15516433, 15516617, 15516791]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15514117 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15514117 15516791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15514117) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15516947, 15517093, 15517253, 15517399, 15517559, 15517717, 15517897, 15518057, 15518203, 15518381, 15518563, 15518747, 15518929, 15519103, 15519281, 15519461]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15516791 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15516791 15519461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15516791) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15519617, 15519799, 15519971, 15520151, 15520333, 15520517, 15520693, 15520877, 15521047, 15521213, 15521393, 15521563, 15521719, 15521893, 15522061, 15522239]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15519461 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15519461 15522239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15519461) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15522421, 15522571, 15522739, 15522911, 15523093, 15523273, 15523457, 15523637, 15523813, 15523997, 15524143, 15524323, 15524479, 15524651, 15524827, 15525011]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15522239 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15522239 15525011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15522239) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15525157, 15525331, 15525509, 15525689, 15525857, 15526039, 15526213, 15526393, 15526549, 15526711, 15526859, 15527041, 15527221, 15527399, 15527581, 15527761]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15525011 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15525011 15527761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15525011) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15527933, 15528101, 15528281, 15528449, 15528619, 15528763, 15528917, 15529097, 15529271, 15529429, 15529609, 15529793, 15529963, 15530143, 15530323, 15530479]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15527761 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15527761 15530479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15527761) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15530663, 15530807, 15530989, 15531143, 15531317, 15531487, 15531671, 15531851, 15531977, 15532157, 15532303, 15532483, 15532631, 15532813, 15532997, 15533179]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15530479 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15530479 15533179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15530479) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15533351, 15533519, 15533701, 15533873, 15534049, 15534187, 15534359, 15534539, 15534721, 15534887, 15535067, 15535211, 15535391, 15535571, 15535747, 15535931]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15533179 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15533179 15535931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15533179) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15536111, 15536267, 15536449, 15536621, 15536783, 15536959, 15537103, 15537287, 15537463, 15537637, 15537803, 15537979, 15538163, 15538343, 15538511, 15538667]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15535931 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15535931 15538667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15535931) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15538819, 15538993, 15539171, 15539347, 15539521, 15539687, 15539869, 15540029, 15540211, 15540391, 15540563, 15540731, 15540911, 15541081, 15541231, 15541381]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15538667 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15538667 15541381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15538667) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15541549, 15541733, 15541873, 15542047, 15542207, 15542341, 15542519, 15542699, 15542867, 15543029, 15543211, 15543383, 15543557, 15543719, 15543889, 15544063]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15541381 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15541381 15544063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15541381) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15544241, 15544421, 15544601, 15544777, 15544961, 15545137, 15545311, 15545461, 15545609, 15545773, 15545941, 15546121, 15546281, 15546463, 15546599, 15546761]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15544063 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15544063 15546761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15544063) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15546943, 15547127, 15547309, 15547489, 15547669, 15547837, 15548021, 15548189, 15548363, 15548527, 15548711, 15548893, 15549077, 15549241, 15549421, 15549563]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15546761 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15546761 15549563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15546761) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15549739, 15549913, 15550079, 15550229, 15550331, 15550463, 15550643, 15550823, 15550999, 15551183, 15551363, 15551537, 15551713, 15551891, 15552067, 15552233]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15549563 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15549563 15552233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15549563) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15552413, 15552587, 15552767, 15552947, 15553123, 15553303, 15553477, 15553651, 15553829, 15553999, 15554177, 15554351, 15554533, 15554713, 15554897, 15555047]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15552233 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15552233 15555047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15552233) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15555229, 15555413, 15555587, 15555739, 15555923, 15556091, 15556273, 15556447, 15556631, 15556799, 15556979, 15557161, 15557341, 15557519, 15557699, 15557863]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15555047 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15555047 15557863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15555047) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15470893 15476243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15473609) (hi := 15476243) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15476243 15481733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15476243)
    (mid := 15478961) (hi := 15481733) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15481733 15487177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15481733)
    (mid := 15484421) (hi := 15487177) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15487177 15492623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15487177)
    (mid := 15489953) (hi := 15492623) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15492623 15498089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15492623)
    (mid := 15495299) (hi := 15498089) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15498089 15503491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15498089)
    (mid := 15500813) (hi := 15503491) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15503491 15508817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15503491)
    (mid := 15506251) (hi := 15508817) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15508817 15514117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15508817)
    (mid := 15511471) (hi := 15514117) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15514117 15519461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15514117)
    (mid := 15516791) (hi := 15519461) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15519461 15525011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15519461)
    (mid := 15522239) (hi := 15525011) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15525011 15530479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15525011)
    (mid := 15527761) (hi := 15530479) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15530479 15535931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15530479)
    (mid := 15533179) (hi := 15535931) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15535931 15541381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15535931)
    (mid := 15538667) (hi := 15541381) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15541381 15546761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15541381)
    (mid := 15544063) (hi := 15546761) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15546761 15552233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15546761)
    (mid := 15549563) (hi := 15552233) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15552233 15557863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15552233)
    (mid := 15555047) (hi := 15557863) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15470893 15481733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15476243) (hi := 15481733) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15481733 15492623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15481733)
    (mid := 15487177) (hi := 15492623) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15492623 15503491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15492623)
    (mid := 15498089) (hi := 15503491) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15503491 15514117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15503491)
    (mid := 15508817) (hi := 15514117) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15514117 15525011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15514117)
    (mid := 15519461) (hi := 15525011) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15525011 15535931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15525011)
    (mid := 15530479) (hi := 15535931) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15535931 15546761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15535931)
    (mid := 15541381) (hi := 15546761) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15546761 15557863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15546761)
    (mid := 15552233) (hi := 15557863) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15470893 15492623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15481733) (hi := 15492623) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15492623 15514117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15492623)
    (mid := 15503491) (hi := 15514117) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15514117 15535931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15514117)
    (mid := 15525011) (hi := 15535931) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15535931 15557863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15535931)
    (mid := 15546761) (hi := 15557863) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15470893 15514117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15492623) (hi := 15514117) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15514117 15557863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15514117)
    (mid := 15535931) (hi := 15557863) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15470893 15557863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15514117) (hi := 15557863) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15470893 15557863 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block176

#print axioms B699MiddleExtension.PrimorialBlocks.Block176.joined
