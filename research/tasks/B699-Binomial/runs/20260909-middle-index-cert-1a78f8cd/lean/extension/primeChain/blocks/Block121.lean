import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block121

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10656731, 10656911, 10657067, 10657247, 10657403, 10657573, 10657753, 10657919, 10658101, 10658267, 10658437, 10658621, 10658789, 10658971, 10659151, 10659287]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10656557 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10656557 10659287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10656557) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10659463, 10659643, 10659827, 10659997, 10660171, 10660333, 10660511, 10660693, 10660877, 10661041, 10661219, 10661401, 10661569, 10661747, 10661929, 10662089]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10659287 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10659287 10662089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10659287) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10662259, 10662433, 10662611, 10662763, 10662941, 10663111, 10663291, 10663459, 10663643, 10663823, 10663993, 10664113, 10664293, 10664477, 10664659, 10664821]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10662089 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10662089 10664821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10662089) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10664977, 10665157, 10665337, 10665521, 10665703, 10665857, 10666037, 10666219, 10666379, 10666559, 10666741, 10666921, 10667081, 10667221, 10667399, 10667567]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10664821 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10664821 10667567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10664821) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10667743, 10667927, 10668109, 10668289, 10668421, 10668599, 10668761, 10668907, 10669091, 10669273, 10669453, 10669627, 10669807, 10669991, 10670161, 10670333]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10667567 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10667567 10670333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10667567) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10670503, 10670687, 10670857, 10671041, 10671211, 10671377, 10671547, 10671707, 10671887, 10672063, 10672237, 10672411, 10672589, 10672741, 10672913, 10673071]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10670333 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10670333 10673071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10670333) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10673251, 10673431, 10673609, 10673779, 10673947, 10674121, 10674299, 10674467, 10674649, 10674823, 10675003, 10675187, 10675369, 10675547, 10675699, 10675883]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10673071 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10673071 10675883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10673071) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10676047, 10676219, 10676401, 10676573, 10676753, 10676923, 10677089, 10677269, 10677439, 10677607, 10677781, 10677937, 10678103, 10678277, 10678453, 10678631]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10675883 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10675883 10678631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10675883) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10678813, 10678991, 10679171, 10679353, 10679533, 10679707, 10679887, 10680053, 10680227, 10680409, 10680587, 10680739, 10680919, 10681103, 10681277, 10681459]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10678631 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10678631 10681459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10678631) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10681633, 10681817, 10681997, 10682173, 10682339, 10682501, 10682663, 10682843, 10683011, 10683193, 10683371, 10683527, 10683709, 10683889, 10684073, 10684237]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10681459 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10681459 10684237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10681459) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10684417, 10684591, 10684771, 10684951, 10685131, 10685293, 10685473, 10685651, 10685821, 10685981, 10686157, 10686323, 10686491, 10686667, 10686817, 10686983]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10684237 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10684237 10686983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10684237) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10687153, 10687333, 10687493, 10687669, 10687837, 10688017, 10688201, 10688383, 10688543, 10688723, 10688891, 10689071, 10689251, 10689431, 10689607, 10689773]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10686983 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10686983 10689773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10686983) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10689911, 10690087, 10690249, 10690411, 10690583, 10690751, 10690931, 10691101, 10691279, 10691431, 10691609, 10691789, 10691959, 10692131, 10692301, 10692433]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10689773 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10689773 10692433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10689773) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10692607, 10692761, 10692943, 10693127, 10693307, 10693477, 10693633, 10693811, 10693987, 10694161, 10694311, 10694491, 10694669, 10694851, 10694953, 10695133]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10692433 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10692433 10695133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10692433) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10695283, 10695467, 10695647, 10695823, 10696003, 10696181, 10696337, 10696489, 10696667, 10696849, 10697009, 10697179, 10697363, 10697543, 10697707, 10697887]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10695133 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10695133 10697887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10695133) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10698053, 10698221, 10698403, 10698553, 10698731, 10698911, 10699063, 10699229, 10699411, 10699573, 10699757, 10699939, 10700069, 10700227, 10700411, 10700587]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10697887 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10697887 10700587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10697887) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10700759, 10700927, 10701091, 10701269, 10701437, 10701611, 10701793, 10701973, 10702157, 10702319, 10702499, 10702669, 10702849, 10702987, 10703167, 10703281]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10700587 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10700587 10703281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10700587) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10703461, 10703633, 10703741, 10703923, 10704091, 10704259, 10704439, 10704623, 10704797, 10704949, 10705129, 10705301, 10705483, 10705661, 10705837, 10706021]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10703281 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10703281 10706021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10703281) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10706167, 10706347, 10706503, 10706681, 10706851, 10707019, 10707197, 10707377, 10707553, 10707737, 10707901, 10708069, 10708241, 10708417, 10708567, 10708739]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10706021 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10706021 10708739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10706021) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10708921, 10709093, 10709273, 10709453, 10709627, 10709773, 10709957, 10710121, 10710277, 10710457, 10710641, 10710811, 10710991, 10711153, 10711333, 10711511]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10708739 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10708739 10711511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10708739) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10711681, 10711861, 10712021, 10712189, 10712353, 10712501, 10712683, 10712833, 10712987, 10713163, 10713347, 10713503, 10713671, 10713851, 10714031, 10714213]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10711511 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10711511 10714213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10711511) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10714367, 10714531, 10714699, 10714877, 10715059, 10715233, 10715417, 10715599, 10715777, 10715941, 10716119, 10716301, 10716481, 10716661, 10716833, 10717001]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10714213 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10714213 10717001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10714213) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10717169, 10717337, 10717519, 10717699, 10717877, 10718047, 10718203, 10718387, 10718563, 10718731, 10718909, 10719089, 10719259, 10719421, 10719601, 10719767]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10717001 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10717001 10719767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10717001) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10719913, 10720091, 10720271, 10720453, 10720627, 10720799, 10720979, 10721159, 10721341, 10721489, 10721653, 10721831, 10721999, 10722169, 10722353, 10722527]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10719767 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10719767 10722527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10719767) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10722703, 10722883, 10723051, 10723217, 10723399, 10723579, 10723763, 10723913, 10724081, 10724251, 10724429, 10724591, 10724743, 10724899, 10725073, 10725257]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10722527 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10722527 10725257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10722527) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10725439, 10725587, 10725739, 10725919, 10726103, 10726283, 10726447, 10726631, 10726787, 10726943, 10727113, 10727293, 10727473, 10727641, 10727809, 10727987]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10725257 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10725257 10727987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10725257) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10728169, 10728349, 10728517, 10728667, 10728827, 10728967, 10729141, 10729309, 10729487, 10729657, 10729841, 10730023, 10730201, 10730381, 10730563, 10730747]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10727987 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10727987 10730747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10727987) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10730917, 10731101, 10731283, 10731407, 10731577, 10731727, 10731911, 10732091, 10732273, 10732441, 10732621, 10732801, 10732957, 10733123, 10733297, 10733453]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10730747 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10730747 10733453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10730747) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10733629, 10733791, 10733969, 10734127, 10734289, 10734457, 10734623, 10734799, 10734979, 10735159, 10735327, 10735507, 10735679, 10735859, 10736029, 10736203]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10733453 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10733453 10736203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10733453) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10736381, 10736563, 10736743, 10736927, 10737079, 10737257, 10737409, 10737593, 10737767, 10737943, 10738127, 10738303, 10738487, 10738639, 10738823, 10738997]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10736203 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10736203 10738997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10736203) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10739173, 10739353, 10739527, 10739681, 10739863, 10740047, 10740221, 10740403, 10740577, 10740739, 10740913, 10741091, 10741259, 10741417, 10741597, 10741771]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10738997 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10738997 10741771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10738997) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10741949, 10742129, 10742309, 10742491, 10742671, 10742807, 10742983, 10743157, 10743331, 10743511, 10743671, 10743823, 10743961, 10744141, 10744309, 10744477]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10741771 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10741771 10744477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10741771) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10656557 10662089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10656557)
    (mid := 10659287) (hi := 10662089) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10662089 10667567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10662089)
    (mid := 10664821) (hi := 10667567) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10667567 10673071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10667567)
    (mid := 10670333) (hi := 10673071) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10673071 10678631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10673071)
    (mid := 10675883) (hi := 10678631) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10678631 10684237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10678631)
    (mid := 10681459) (hi := 10684237) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10684237 10689773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10684237)
    (mid := 10686983) (hi := 10689773) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10689773 10695133 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10689773)
    (mid := 10692433) (hi := 10695133) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10695133 10700587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10695133)
    (mid := 10697887) (hi := 10700587) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10700587 10706021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10700587)
    (mid := 10703281) (hi := 10706021) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10706021 10711511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10706021)
    (mid := 10708739) (hi := 10711511) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10711511 10717001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10711511)
    (mid := 10714213) (hi := 10717001) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10717001 10722527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10717001)
    (mid := 10719767) (hi := 10722527) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10722527 10727987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10722527)
    (mid := 10725257) (hi := 10727987) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10727987 10733453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10727987)
    (mid := 10730747) (hi := 10733453) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10733453 10738997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10733453)
    (mid := 10736203) (hi := 10738997) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10738997 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10738997)
    (mid := 10741771) (hi := 10744477) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10656557 10667567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10656557)
    (mid := 10662089) (hi := 10667567) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10667567 10678631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10667567)
    (mid := 10673071) (hi := 10678631) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10678631 10689773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10678631)
    (mid := 10684237) (hi := 10689773) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10689773 10700587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10689773)
    (mid := 10695133) (hi := 10700587) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10700587 10711511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10700587)
    (mid := 10706021) (hi := 10711511) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10711511 10722527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10711511)
    (mid := 10717001) (hi := 10722527) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10722527 10733453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10722527)
    (mid := 10727987) (hi := 10733453) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10733453 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10733453)
    (mid := 10738997) (hi := 10744477) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10656557 10678631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10656557)
    (mid := 10667567) (hi := 10678631) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10678631 10700587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10678631)
    (mid := 10689773) (hi := 10700587) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10700587 10722527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10700587)
    (mid := 10711511) (hi := 10722527) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10722527 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10722527)
    (mid := 10733453) (hi := 10744477) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10656557 10700587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10656557)
    (mid := 10678631) (hi := 10700587) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10700587 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10700587)
    (mid := 10722527) (hi := 10744477) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10656557 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10656557)
    (mid := 10700587) (hi := 10744477) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10656557 10744477 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block121

#print axioms B699MiddleExtension.PrimorialBlocks.Block121.joined
