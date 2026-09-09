import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block198

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17391511, 17391683, 17391853, 17392033, 17392213, 17392387, 17392559, 17392723, 17392873, 17393029, 17393213, 17393393, 17393561, 17393743, 17393923, 17394103]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17391331 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17391331 17394103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17391331) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17394283, 17394467, 17394613, 17394779, 17394959, 17395121, 17395253, 17395421, 17395597, 17395769, 17395949, 17396131, 17396311, 17396459, 17396629, 17396807]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17394103 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17394103 17396807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17394103) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17396987, 17397157, 17397329, 17397509, 17397649, 17397829, 17398013, 17398169, 17398351, 17398529, 17398679, 17398859, 17399033, 17399209, 17399359, 17399537]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17396807 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17396807 17399537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17396807) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17399719, 17399903, 17400049, 17400217, 17400389, 17400563, 17400743, 17400917, 17401091, 17401273, 17401457, 17401621, 17401801, 17401973, 17402137, 17402303]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17399537 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17399537 17402303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17399537) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17402477, 17402653, 17402837, 17403013, 17403193, 17403371, 17403553, 17403731, 17403889, 17404061, 17404223, 17404403, 17404577, 17404759, 17404943, 17405123]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17402303 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17402303 17405123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17402303) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17405287, 17405471, 17405623, 17405761, 17405929, 17406107, 17406287, 17406463, 17406647, 17406821, 17407003, 17407153, 17407333, 17407517, 17407693, 17407877]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17405123 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17405123 17407877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17405123) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17408059, 17408243, 17408423, 17408603, 17408767, 17408939, 17409103, 17409283, 17409451, 17409629, 17409809, 17409991, 17410171, 17410331, 17410513, 17410697]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17407877 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17407877 17410697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17407877) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17410867, 17411033, 17411167, 17411327, 17411501, 17411683, 17411833, 17412011, 17412193, 17412371, 17412553, 17412737, 17412919, 17413043, 17413223, 17413393]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17410697 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17410697 17413393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17410697) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17413577, 17413757, 17413927, 17414093, 17414261, 17414429, 17414609, 17414779, 17414959, 17415131, 17415311, 17415491, 17415653, 17415833, 17415997, 17416117]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17413393 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17413393 17416117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17413393) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17416291, 17416459, 17416643, 17416771, 17416951, 17417131, 17417303, 17417479, 17417663, 17417837, 17417993, 17418169, 17418329, 17418509, 17418691, 17418859]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17416117 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17416117 17418859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17416117) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17419043, 17419217, 17419387, 17419559, 17419733, 17419891, 17420071, 17420243, 17420423, 17420573, 17420723, 17420863, 17421037, 17421221, 17421367, 17421529]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17418859 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17418859 17421529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17418859) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17421713, 17421883, 17422057, 17422231, 17422397, 17422579, 17422763, 17422927, 17423101, 17423281, 17423459, 17423641, 17423807, 17423971, 17424149, 17424313]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17421529 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17421529 17424313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17421529) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17424493, 17424661, 17424809, 17424977, 17425141, 17425313, 17425487, 17425657, 17425823, 17425981, 17426141, 17426323, 17426503, 17426677, 17426837, 17427019]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17424313 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17424313 17427019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17424313) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17427203, 17427383, 17427563, 17427733, 17427913, 17428097, 17428259, 17428429, 17428613, 17428783, 17428967, 17429129, 17429309, 17429473, 17429651, 17429827]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17427019 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17427019 17429827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17427019) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17430001, 17430181, 17430359, 17430533, 17430703, 17430887, 17431061, 17431243, 17431397, 17431571, 17431741, 17431913, 17432083, 17432267, 17432449, 17432603]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17429827 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17429827 17432603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17429827) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17432783, 17432927, 17433079, 17433259, 17433443, 17433613, 17433763, 17433947, 17434127, 17434301, 17434453, 17434619, 17434801, 17434981, 17435129, 17435303]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17432603 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17432603 17435303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17432603) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17435479, 17435657, 17435839, 17435987, 17436161, 17436343, 17436487, 17436659, 17436833, 17437009, 17437187, 17437363, 17437547, 17437697, 17437843, 17437993]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17435303 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17435303 17437993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17435303) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17438173, 17438353, 17438501, 17438683, 17438857, 17439029, 17439211, 17439377, 17439559, 17439743, 17439923, 17440103, 17440261, 17440429, 17440583, 17440741]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17437993 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17437993 17440741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17437993) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17440903, 17441077, 17441257, 17441407, 17441587, 17441761, 17441927, 17442107, 17442287, 17442461, 17442643, 17442827, 17443009, 17443189, 17443373, 17443553]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17440741 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17440741 17443553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17440741) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17443711, 17443883, 17444059, 17444239, 17444411, 17444587, 17444767, 17444939, 17445121, 17445299, 17445437, 17445619, 17445803, 17445979, 17446157, 17446339]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17443553 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17443553 17446339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17443553) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17446523, 17446687, 17446843, 17446999, 17447173, 17447351, 17447533, 17447707, 17447887, 17448059, 17448229, 17448397, 17448569, 17448751, 17448913, 17449093]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17446339 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17446339 17449093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17446339) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17449273, 17449423, 17449583, 17449763, 17449937, 17450099, 17450281, 17450441, 17450603, 17450777, 17450947, 17451113, 17451293, 17451463, 17451647, 17451817]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17449093 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17449093 17451817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17449093) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17451989, 17452159, 17452343, 17452459, 17452639, 17452819, 17452993, 17453171, 17453353, 17453521, 17453699, 17453881, 17454049, 17454197, 17454379, 17454533]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17451817 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17451817 17454533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17451817) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17454707, 17454883, 17455051, 17455219, 17455393, 17455561, 17455733, 17455913, 17456039, 17456221, 17456377, 17456539, 17456683, 17456863, 17457019, 17457199]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17454533 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17454533 17457199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17454533) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17457379, 17457553, 17457733, 17457907, 17458073, 17458247, 17458429, 17458601, 17458769, 17458951, 17459129, 17459303, 17459473, 17459627, 17459777, 17459933]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17457199 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17457199 17459933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17457199) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17460103, 17460277, 17460437, 17460617, 17460769, 17460953, 17461127, 17461309, 17461471, 17461643, 17461823, 17461981, 17462141, 17462317, 17462491, 17462657]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17459933 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17459933 17462657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17459933) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17462831, 17463011, 17463169, 17463343, 17463521, 17463683, 17463857, 17464039, 17464217, 17464387, 17464571, 17464723, 17464907, 17465081, 17465251, 17465423]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17462657 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17462657 17465423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17462657) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17465599, 17465771, 17465951, 17466121, 17466289, 17466473, 17466649, 17466767, 17466949, 17467133, 17467297, 17467451, 17467627, 17467757, 17467939, 17468117]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17465423 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17465423 17468117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17465423) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17468281, 17468461, 17468617, 17468797, 17468951, 17469131, 17469311, 17469467, 17469637, 17469791, 17469971, 17470153, 17470319, 17470487, 17470657, 17470841]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17468117 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17468117 17470841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17468117) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17470991, 17471161, 17471341, 17471497, 17471647, 17471813, 17471989, 17472167, 17472337, 17472487, 17472671, 17472841, 17473003, 17473187, 17473363, 17473541]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17470841 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17470841 17473541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17470841) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17473723, 17473903, 17474087, 17474267, 17474441, 17474621, 17474801, 17474971, 17475149, 17475317, 17475499, 17475659, 17475833, 17476013, 17476177, 17476351]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17473541 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17473541 17476351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17473541) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17476517, 17476699, 17476871, 17477041, 17477191, 17477347, 17477531, 17477693, 17477851, 17478011, 17478187, 17478371, 17478553, 17478733, 17478899, 17479073]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17476351 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17476351 17479073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17476351) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17391331 17396807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17394103) (hi := 17396807) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17396807 17402303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17396807)
    (mid := 17399537) (hi := 17402303) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17402303 17407877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17402303)
    (mid := 17405123) (hi := 17407877) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17407877 17413393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17407877)
    (mid := 17410697) (hi := 17413393) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17413393 17418859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17413393)
    (mid := 17416117) (hi := 17418859) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17418859 17424313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17418859)
    (mid := 17421529) (hi := 17424313) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17424313 17429827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17424313)
    (mid := 17427019) (hi := 17429827) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17429827 17435303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17429827)
    (mid := 17432603) (hi := 17435303) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17435303 17440741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17435303)
    (mid := 17437993) (hi := 17440741) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17440741 17446339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17440741)
    (mid := 17443553) (hi := 17446339) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17446339 17451817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17446339)
    (mid := 17449093) (hi := 17451817) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17451817 17457199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17451817)
    (mid := 17454533) (hi := 17457199) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17457199 17462657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17457199)
    (mid := 17459933) (hi := 17462657) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17462657 17468117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17462657)
    (mid := 17465423) (hi := 17468117) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17468117 17473541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17468117)
    (mid := 17470841) (hi := 17473541) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17473541 17479073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17473541)
    (mid := 17476351) (hi := 17479073) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17391331 17402303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17396807) (hi := 17402303) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17402303 17413393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17402303)
    (mid := 17407877) (hi := 17413393) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17413393 17424313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17413393)
    (mid := 17418859) (hi := 17424313) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17424313 17435303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17424313)
    (mid := 17429827) (hi := 17435303) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17435303 17446339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17435303)
    (mid := 17440741) (hi := 17446339) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17446339 17457199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17446339)
    (mid := 17451817) (hi := 17457199) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17457199 17468117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17457199)
    (mid := 17462657) (hi := 17468117) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17468117 17479073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17468117)
    (mid := 17473541) (hi := 17479073) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17391331 17413393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17402303) (hi := 17413393) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17413393 17435303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17413393)
    (mid := 17424313) (hi := 17435303) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17435303 17457199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17435303)
    (mid := 17446339) (hi := 17457199) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17457199 17479073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17457199)
    (mid := 17468117) (hi := 17479073) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17391331 17435303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17413393) (hi := 17435303) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17435303 17479073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17435303)
    (mid := 17457199) (hi := 17479073) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17391331 17479073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17435303) (hi := 17479073) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17391331 17479073 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block198

#print axioms B699MiddleExtension.PrimorialBlocks.Block198.joined
