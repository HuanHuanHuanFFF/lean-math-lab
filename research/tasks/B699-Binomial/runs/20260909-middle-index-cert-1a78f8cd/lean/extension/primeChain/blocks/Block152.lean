import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block152

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13370477, 13370647, 13370831, 13370969, 13371133, 13371313, 13371493, 13371653, 13371833, 13372003, 13372187, 13372363, 13372543, 13372721, 13372901, 13373081]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13370297 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13370297 13373081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13370297) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13373233, 13373413, 13373597, 13373779, 13373963, 13374143, 13374301, 13374479, 13374659, 13374821, 13375001, 13375171, 13375337, 13375519, 13375693, 13375877]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13373081 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13373081 13375877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13373081) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13376039, 13376191, 13376369, 13376549, 13376729, 13376887, 13377059, 13377233, 13377401, 13377583, 13377739, 13377893, 13378067, 13378247, 13378429, 13378613]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13375877 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13375877 13378613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13375877) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13378789, 13378961, 13379143, 13379309, 13379473, 13379651, 13379827, 13379999, 13380179, 13380361, 13380529, 13380709, 13380881, 13381037, 13381217, 13381399]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13378613 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13378613 13381399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13378613) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13381549, 13381727, 13381903, 13382087, 13382269, 13382449, 13382623, 13382807, 13382983, 13383157, 13383319, 13383499, 13383653, 13383829, 13384013, 13384181]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13381399 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13381399 13384181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13381399) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13384339, 13384513, 13384667, 13384843, 13385027, 13385191, 13385371, 13385543, 13385699, 13385881, 13386059, 13386239, 13386409, 13386589, 13386767, 13386949]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13384181 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13384181 13386949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13384181) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13387123, 13387301, 13387459, 13387643, 13387813, 13387991, 13388119, 13388269, 13388449, 13388629, 13388801, 13388959, 13389137, 13389307, 13389491, 13389653]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13386949 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13386949 13389653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13386949) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13389833, 13390001, 13390177, 13390361, 13390523, 13390703, 13390873, 13391057, 13391237, 13391401, 13391551, 13391731, 13391909, 13392089, 13392263, 13392443]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13389653 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13389653 13392443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13389653) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13392619, 13392767, 13392901, 13393063, 13393231, 13393403, 13393561, 13393733, 13393883, 13394063, 13394219, 13394377, 13394561, 13394737, 13394921, 13395103]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13392443 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13392443 13395103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13392443) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13395257, 13395433, 13395617, 13395791, 13395973, 13396151, 13396319, 13396499, 13396679, 13396861, 13397039, 13397221, 13397401, 13397567, 13397729, 13397911]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13395103 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13395103 13397911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13395103) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13398089, 13398271, 13398449, 13398617, 13398799, 13398977, 13399153, 13399327, 13399499, 13399681, 13399853, 13400033, 13400209, 13400389, 13400561, 13400741]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13397911 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13397911 13400741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13397911) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13400923, 13401107, 13401281, 13401397, 13401581, 13401757, 13401937, 13402099, 13402253, 13402427, 13402607, 13402787, 13402957, 13403119, 13403297, 13403479]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13400741 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13400741 13403479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13400741) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13403629, 13403813, 13403989, 13404169, 13404343, 13404511, 13404673, 13404829, 13405009, 13405187, 13405363, 13405541, 13405703, 13405879, 13406053, 13406213]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13403479 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13403479 13406213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13403479) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13406389, 13406531, 13406711, 13406879, 13407059, 13407241, 13407419, 13407601, 13407731, 13407913, 13408093, 13408273, 13408397, 13408579, 13408757, 13408939]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13406213 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13406213 13408939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13406213) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13409119, 13409303, 13409441, 13409603, 13409783, 13409951, 13410119, 13410277, 13410437, 13410589, 13410767, 13410931, 13411109, 13411271, 13411451, 13411621]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13408939 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13408939 13411621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13408939) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13411799, 13411969, 13412143, 13412299, 13412459, 13412629, 13412807, 13412953, 13413131, 13413313, 13413497, 13413679, 13413859, 13414039, 13414213, 13414397]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13411621 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13411621 13414397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13411621) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13414549, 13414729, 13414901, 13415071, 13415251, 13415411, 13415581, 13415749, 13415933, 13416113, 13416289, 13416467, 13416643, 13416827, 13417009, 13417189]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13414397 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13414397 13417189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13414397) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13417357, 13417541, 13417681, 13417853, 13418033, 13418201, 13418369, 13418551, 13418681, 13418833, 13418989, 13419173, 13419353, 13419533, 13419713, 13419893]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13417189 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13417189 13419893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13417189) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13420073, 13420237, 13420397, 13420573, 13420747, 13420873, 13421039, 13421207, 13421363, 13421539, 13421717, 13421897, 13422077, 13422259, 13422439, 13422613]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13419893 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13419893 13422613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13419893) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13422793, 13422943, 13423117, 13423301, 13423483, 13423667, 13423847, 13424017, 13424161, 13424311, 13424491, 13424647, 13424813, 13424993, 13425157, 13425341]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13422613 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13422613 13425341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13422613) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13425481, 13425653, 13425833, 13426009, 13426187, 13426339, 13426513, 13426669, 13426843, 13427017, 13427201, 13427353, 13427527, 13427683, 13427863, 13427983]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13425341 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13425341 13427983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13425341) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13428157, 13428319, 13428491, 13428671, 13428847, 13429027, 13429183, 13429363, 13429543, 13429709, 13429849, 13430009, 13430177, 13430303, 13430477, 13430647]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13427983 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13427983 13430647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13427983) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13430831, 13430993, 13431169, 13431349, 13431533, 13431679, 13431863, 13432037, 13432213, 13432387, 13432571, 13432751, 13432933, 13433113, 13433291, 13433471]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13430647 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13430647 13433471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13430647) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13433653, 13433837, 13433999, 13434173, 13434331, 13434481, 13434637, 13434821, 13435001, 13435159, 13435333, 13435501, 13435673, 13435819, 13435997, 13436179]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13433471 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13433471 13436179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13433471) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13436359, 13436543, 13436711, 13436893, 13437049, 13437233, 13437407, 13437577, 13437761, 13437937, 13438091, 13438267, 13438441, 13438609, 13438781, 13438933]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13436179 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13436179 13438933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13436179) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13439117, 13439297, 13439477, 13439653, 13439831, 13440001, 13440181, 13440341, 13440473, 13440653, 13440821, 13441003, 13441157, 13441331, 13441513, 13441657]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13438933 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13438933 13441657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13438933) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13441837, 13442017, 13442201, 13442381, 13442537, 13442707, 13442873, 13443049, 13443217, 13443389, 13443571, 13443743, 13443919, 13444099, 13444279, 13444373]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13441657 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13441657 13444373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13441657) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13444553, 13444733, 13444883, 13445059, 13445239, 13445389, 13445573, 13445741, 13445921, 13446101, 13446271, 13446449, 13446617, 13446791, 13446931, 13447073]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13444373 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13444373 13447073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13444373) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13447237, 13447409, 13447589, 13447751, 13447927, 13448107, 13448269, 13448429, 13448597, 13448737, 13448899, 13449077, 13449259, 13449433, 13449617, 13449767]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13447073 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13447073 13449767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13447073) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13449949, 13450133, 13450313, 13450487, 13450669, 13450831, 13451003, 13451173, 13451329, 13451513, 13451693, 13451833, 13452013, 13452181, 13452359, 13452533]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13449767 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13449767 13452533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13449767) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13452697, 13452871, 13453049, 13453213, 13453397, 13453547, 13453723, 13453901, 13454081, 13454263, 13454447, 13454629, 13454809, 13454989, 13455149, 13455331]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13452533 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13452533 13455331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13452533) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13455511, 13455661, 13455787, 13455931, 13456109, 13456283, 13456453, 13456631, 13456811, 13456987, 13457167, 13457351, 13457533, 13457713, 13457891, 13458043]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13455331 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13455331 13458043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13455331) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13370297 13375877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13373081) (hi := 13375877) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13375877 13381399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13375877)
    (mid := 13378613) (hi := 13381399) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13381399 13386949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13381399)
    (mid := 13384181) (hi := 13386949) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13386949 13392443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13386949)
    (mid := 13389653) (hi := 13392443) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13392443 13397911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13392443)
    (mid := 13395103) (hi := 13397911) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13397911 13403479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13397911)
    (mid := 13400741) (hi := 13403479) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13403479 13408939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13403479)
    (mid := 13406213) (hi := 13408939) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13408939 13414397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13408939)
    (mid := 13411621) (hi := 13414397) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13414397 13419893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13414397)
    (mid := 13417189) (hi := 13419893) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13419893 13425341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13419893)
    (mid := 13422613) (hi := 13425341) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13425341 13430647 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13425341)
    (mid := 13427983) (hi := 13430647) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13430647 13436179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13430647)
    (mid := 13433471) (hi := 13436179) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13436179 13441657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13436179)
    (mid := 13438933) (hi := 13441657) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13441657 13447073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13441657)
    (mid := 13444373) (hi := 13447073) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13447073 13452533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13447073)
    (mid := 13449767) (hi := 13452533) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13452533 13458043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13452533)
    (mid := 13455331) (hi := 13458043) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13370297 13381399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13375877) (hi := 13381399) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13381399 13392443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13381399)
    (mid := 13386949) (hi := 13392443) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13392443 13403479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13392443)
    (mid := 13397911) (hi := 13403479) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13403479 13414397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13403479)
    (mid := 13408939) (hi := 13414397) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13414397 13425341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13414397)
    (mid := 13419893) (hi := 13425341) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13425341 13436179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13425341)
    (mid := 13430647) (hi := 13436179) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13436179 13447073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13436179)
    (mid := 13441657) (hi := 13447073) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13447073 13458043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13447073)
    (mid := 13452533) (hi := 13458043) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13370297 13392443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13381399) (hi := 13392443) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13392443 13414397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13392443)
    (mid := 13403479) (hi := 13414397) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13414397 13436179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13414397)
    (mid := 13425341) (hi := 13436179) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13436179 13458043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13436179)
    (mid := 13447073) (hi := 13458043) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13370297 13414397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13392443) (hi := 13414397) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13414397 13458043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13414397)
    (mid := 13436179) (hi := 13458043) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13370297 13458043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13414397) (hi := 13458043) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13370297 13458043 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block152

#print axioms B699MiddleExtension.PrimorialBlocks.Block152.joined
