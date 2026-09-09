import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block120

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10568773, 10568953, 10569107, 10569289, 10569463, 10569619, 10569773, 10569943, 10570103, 10570249, 10570433, 10570607, 10570771, 10570927, 10571111, 10571273]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10568609 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10568609 10571273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10568609) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10571453, 10571623, 10571791, 10571929, 10572101, 10572253, 10572431, 10572587, 10572769, 10572943, 10573127, 10573309, 10573489, 10573669, 10573853, 10574033]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10571273 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10571273 10574033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10571273) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10574209, 10574383, 10574539, 10574717, 10574897, 10575073, 10575221, 10575373, 10575541, 10575713, 10575881, 10576061, 10576229, 10576411, 10576591, 10576759]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10574033 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10574033 10576759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10574033) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10576919, 10577101, 10577267, 10577443, 10577617, 10577797, 10577981, 10578163, 10578329, 10578509, 10578691, 10578871, 10579033, 10579207, 10579391, 10579573]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10576759 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10576759 10579573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10576759) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10579741, 10579883, 10580047, 10580221, 10580399, 10580561, 10580743, 10580893, 10581073, 10581257, 10581437, 10581619, 10581799, 10581959, 10582133, 10582309]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10579573 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10579573 10582309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10579573) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10582493, 10582667, 10582841, 10583021, 10583201, 10583341, 10583497, 10583681, 10583861, 10584029, 10584193, 10584377, 10584559, 10584719, 10584887, 10585063]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10582309 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10582309 10585063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10582309) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10585247, 10585427, 10585591, 10585759, 10585931, 10586111, 10586269, 10586449, 10586627, 10586809, 10586993, 10587167, 10587323, 10587487, 10587649, 10587827]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10585063 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10585063 10587827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10585063) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10588009, 10588189, 10588367, 10588547, 10588729, 10588913, 10589093, 10589221, 10589377, 10589561, 10589743, 10589923, 10590071, 10590253, 10590421, 10590577]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10587827 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10587827 10590577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10587827) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10590761, 10590941, 10591123, 10591297, 10591457, 10591597, 10591771, 10591951, 10592129, 10592311, 10592459, 10592641, 10592821, 10592999, 10593181, 10593361]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10590577 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10590577 10593361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10590577) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10593529, 10593701, 10593857, 10593997, 10594159, 10594333, 10594499, 10594681, 10594861, 10595041, 10595201, 10595371, 10595551, 10595723, 10595899, 10596071]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10593361 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10593361 10596071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10593361) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10596241, 10596403, 10596569, 10596739, 10596923, 10597063, 10597217, 10597399, 10597583, 10597739, 10597913, 10598069, 10598227, 10598389, 10598573, 10598747]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10596071 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10596071 10598747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10596071) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10598927, 10599103, 10599271, 10599437, 10599599, 10599779, 10599961, 10600097, 10600277, 10600459, 10600637, 10600813, 10600969, 10601147, 10601317, 10601483]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10598747 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10598747 10601483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10598747) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10601663, 10601819, 10602001, 10602161, 10602283, 10602463, 10602629, 10602803, 10602971, 10603141, 10603289, 10603409, 10603591, 10603753, 10603927, 10604059]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10601483 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10601483 10604059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10601483) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10604239, 10604417, 10604599, 10604767, 10604947, 10605121, 10605299, 10605481, 10605607, 10605769, 10605953, 10606109, 10606291, 10606471, 10606639, 10606811]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10604059 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10604059 10606811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10604059) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10606993, 10607173, 10607357, 10607539, 10607699, 10607869, 10608029, 10608209, 10608383, 10608557, 10608721, 10608893, 10609073, 10609253, 10609427, 10609607]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10606811 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10606811 10609607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10606811) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10609741, 10609901, 10610081, 10610251, 10610423, 10610603, 10610779, 10610953, 10611127, 10611283, 10611457, 10611619, 10611803, 10611977, 10612159, 10612333]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10609607 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10609607 10612333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10609607) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10612493, 10612669, 10612837, 10613011, 10613179, 10613363, 10613521, 10613693, 10613851, 10614011, 10614193, 10614371, 10614547, 10614731, 10614911, 10615093]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10612333 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10612333 10615093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10612333) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10615277, 10615439, 10615607, 10615789, 10615967, 10616149, 10616329, 10616513, 10616677, 10616831, 10616999, 10617179, 10617361, 10617539, 10617703, 10617883]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10615093 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10615093 10617883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10615093) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10618063, 10618247, 10618429, 10618589, 10618759, 10618919, 10619093, 10619263, 10619431, 10619599, 10619783, 10619957, 10620139, 10620317, 10620481, 10620661]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10617883 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10617883 10620661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10617883) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10620833, 10621007, 10621187, 10621343, 10621517, 10621693, 10621861, 10622041, 10622203, 10622383, 10622561, 10622713, 10622897, 10623061, 10623241, 10623409]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10620661 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10620661 10623409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10620661) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10623593, 10623737, 10623919, 10624093, 10624277, 10624447, 10624619, 10624799, 10624981, 10625159, 10625341, 10625509, 10625689, 10625869, 10626047, 10626227]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10623409 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10623409 10626227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10623409) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10626409, 10626571, 10626727, 10626911, 10627087, 10627271, 10627453, 10627627, 10627811, 10627961, 10628141, 10628309, 10628479, 10628663, 10628843, 10629023]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10626227 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10626227 10629023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10626227) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10629173, 10629347, 10629527, 10629691, 10629859, 10630021, 10630201, 10630379, 10630549, 10630721, 10630903, 10631087, 10631261, 10631377, 10631561, 10631743]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10629023 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10629023 10631743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10629023) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10631923, 10632107, 10632289, 10632467, 10632649, 10632829, 10633013, 10633193, 10633373, 10633547, 10633729, 10633913, 10634087, 10634251, 10634431, 10634597]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10631743 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10631743 10634597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10631743) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10634777, 10634959, 10635143, 10635323, 10635503, 10635679, 10635847, 10636019, 10636187, 10636357, 10636519, 10636687, 10636861, 10637041, 10637213, 10637387]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10634597 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10634597 10637387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10634597) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10637527, 10637689, 10637873, 10638049, 10638227, 10638391, 10638571, 10638751, 10638913, 10639073, 10639241, 10639397, 10639579, 10639763, 10639931, 10640107]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10637387 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10637387 10640107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10637387) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10640281, 10640449, 10640633, 10640807, 10640957, 10641109, 10641271, 10641451, 10641629, 10641803, 10641937, 10642117, 10642301, 10642483, 10642661, 10642843]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10640107 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10640107 10642843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10640107) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10643027, 10643209, 10643389, 10643561, 10643719, 10643903, 10644077, 10644233, 10644409, 10644589, 10644773, 10644923, 10645069, 10645249, 10645423, 10645597]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10642843 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10642843 10645597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10642843) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10645769, 10645949, 10646123, 10646297, 10646477, 10646653, 10646837, 10647019, 10647191, 10647361, 10647529, 10647701, 10647881, 10648063, 10648247, 10648427]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10645597 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10645597 10648427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10645597) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10648591, 10648753, 10648901, 10649071, 10649231, 10649413, 10649593, 10649773, 10649953, 10650131, 10650307, 10650473, 10650641, 10650821, 10650989, 10651159]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10648427 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10648427 10651159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10648427) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10651331, 10651499, 10651679, 10651853, 10652029, 10652209, 10652377, 10652549, 10652729, 10652893, 10653073, 10653233, 10653403, 10653569, 10653751, 10653869]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10651159 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10651159 10653869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10651159) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10654027, 10654183, 10654367, 10654531, 10654703, 10654879, 10655059, 10655237, 10655389, 10655573, 10655707, 10655867, 10656043, 10656227, 10656379, 10656557]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10653869 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10653869 10656557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10653869) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10568609 10574033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10571273) (hi := 10574033) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10574033 10579573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10574033)
    (mid := 10576759) (hi := 10579573) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10579573 10585063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10579573)
    (mid := 10582309) (hi := 10585063) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10585063 10590577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10585063)
    (mid := 10587827) (hi := 10590577) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10590577 10596071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10590577)
    (mid := 10593361) (hi := 10596071) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10596071 10601483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10596071)
    (mid := 10598747) (hi := 10601483) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10601483 10606811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10601483)
    (mid := 10604059) (hi := 10606811) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10606811 10612333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10606811)
    (mid := 10609607) (hi := 10612333) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10612333 10617883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10612333)
    (mid := 10615093) (hi := 10617883) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10617883 10623409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10617883)
    (mid := 10620661) (hi := 10623409) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10623409 10629023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10623409)
    (mid := 10626227) (hi := 10629023) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10629023 10634597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10629023)
    (mid := 10631743) (hi := 10634597) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10634597 10640107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10634597)
    (mid := 10637387) (hi := 10640107) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10640107 10645597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10640107)
    (mid := 10642843) (hi := 10645597) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10645597 10651159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10645597)
    (mid := 10648427) (hi := 10651159) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10651159 10656557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10651159)
    (mid := 10653869) (hi := 10656557) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10568609 10579573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10574033) (hi := 10579573) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10579573 10590577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10579573)
    (mid := 10585063) (hi := 10590577) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10590577 10601483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10590577)
    (mid := 10596071) (hi := 10601483) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10601483 10612333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10601483)
    (mid := 10606811) (hi := 10612333) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10612333 10623409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10612333)
    (mid := 10617883) (hi := 10623409) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10623409 10634597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10623409)
    (mid := 10629023) (hi := 10634597) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10634597 10645597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10634597)
    (mid := 10640107) (hi := 10645597) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10645597 10656557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10645597)
    (mid := 10651159) (hi := 10656557) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10568609 10590577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10579573) (hi := 10590577) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10590577 10612333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10590577)
    (mid := 10601483) (hi := 10612333) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10612333 10634597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10612333)
    (mid := 10623409) (hi := 10634597) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10634597 10656557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10634597)
    (mid := 10645597) (hi := 10656557) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10568609 10612333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10590577) (hi := 10612333) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10612333 10656557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10612333)
    (mid := 10634597) (hi := 10656557) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10568609 10656557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10612333) (hi := 10656557) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10568609 10656557 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block120

#print axioms B699MiddleExtension.PrimorialBlocks.Block120.joined
