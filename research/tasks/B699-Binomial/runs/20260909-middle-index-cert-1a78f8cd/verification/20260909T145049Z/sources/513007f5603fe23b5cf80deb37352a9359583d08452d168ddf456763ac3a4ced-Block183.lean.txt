import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block183

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16082257, 16082401, 16082581, 16082761, 16082933, 16083113, 16083293, 16083469, 16083653, 16083833, 16084007, 16084181, 16084349, 16084517, 16084693, 16084867]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16082089 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16082089 16084867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16082089) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16085051, 16085221, 16085389, 16085567, 16085737, 16085921, 16086089, 16086247, 16086419, 16086589, 16086769, 16086949, 16087133, 16087297, 16087451, 16087619]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16084867 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16084867 16087619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16084867) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16087801, 16087969, 16088153, 16088329, 16088507, 16088663, 16088843, 16089023, 16089197, 16089373, 16089553, 16089737, 16089919, 16090097, 16090267, 16090433]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16087619 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16087619 16090433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16087619) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16090609, 16090793, 16090973, 16091149, 16091321, 16091501, 16091683, 16091857, 16092017, 16092161, 16092331, 16092499, 16092683, 16092833, 16093013, 16093193]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16090433 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16090433 16093193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16090433) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16093369, 16093547, 16093729, 16093901, 16094041, 16094219, 16094399, 16094581, 16094759, 16094899, 16095067, 16095229, 16095397, 16095559, 16095733, 16095881]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16093193 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16093193 16095881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16093193) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16096051, 16096187, 16096351, 16096519, 16096699, 16096879, 16097041, 16097203, 16097387, 16097569, 16097749, 16097927, 16098097, 16098259, 16098443, 16098601]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16095881 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16095881 16098601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16095881) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16098767, 16098941, 16099123, 16099283, 16099453, 16099613, 16099789, 16099927, 16100101, 16100267, 16100449, 16100603, 16100779, 16100951, 16101131, 16101313]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16098601 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16098601 16101313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16098601) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16101497, 16101661, 16101809, 16101979, 16102159, 16102343, 16102459, 16102601, 16102777, 16102951, 16103111, 16103293, 16103449, 16103627, 16103809, 16103959]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16101313 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16101313 16103959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16101313) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16104131, 16104313, 16104497, 16104667, 16104839, 16105003, 16105147, 16105279, 16105459, 16105637, 16105807, 16105963, 16106147, 16106323, 16106491, 16106659]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16103959 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16103959 16106659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16103959) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16106807, 16106971, 16107149, 16107331, 16107493, 16107677, 16107853, 16108013, 16108193, 16108321, 16108501, 16108679, 16108853, 16109033, 16109179, 16109339]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16106659 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16106659 16109339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16106659) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16109521, 16109699, 16109881, 16110053, 16110229, 16110403, 16110583, 16110761, 16110943, 16111127, 16111309, 16111493, 16111673, 16111853, 16112021, 16112203]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16109339 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16109339 16112203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16109339) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16112377, 16112561, 16112737, 16112909, 16113091, 16113269, 16113421, 16113599, 16113781, 16113901, 16114069, 16114253, 16114411, 16114583, 16114757, 16114939]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16112203 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16112203 16114939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16112203) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16115119, 16115299, 16115467, 16115639, 16115821, 16115999, 16116181, 16116343, 16116517, 16116673, 16116847, 16116983, 16117151, 16117333, 16117511, 16117693]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16114939 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16114939 16117693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16114939) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16117873, 16118041, 16118209, 16118381, 16118563, 16118743, 16118909, 16119091, 16119269, 16119431, 16119613, 16119793, 16119959, 16120129, 16120297, 16120477]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16117693 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16117693 16120477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16117693) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16120649, 16120823, 16120967, 16121143, 16121311, 16121471, 16121647, 16121803, 16121971, 16122151, 16122329, 16122497, 16122649, 16122829, 16123013, 16123147]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16120477 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16120477 16123147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16120477) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16123321, 16123489, 16123651, 16123831, 16123997, 16124159, 16124323, 16124501, 16124663, 16124813, 16124981, 16125149, 16125293, 16125457, 16125631, 16125803]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16123147 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16123147 16125803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16123147) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16125971, 16126147, 16126303, 16126483, 16126667, 16126843, 16127009, 16127183, 16127351, 16127497, 16127681, 16127861, 16128043, 16128227, 16128407, 16128551]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16125803 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16125803 16128551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16125803) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16128731, 16128887, 16129067, 16129247, 16129411, 16129591, 16129747, 16129921, 16130099, 16130281, 16130453, 16130629, 16130783, 16130957, 16131127, 16131307]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16128551 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16128551 16131307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16128551) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16131473, 16131653, 16131833, 16131989, 16132141, 16132313, 16132477, 16132657, 16132841, 16133023, 16133207, 16133389, 16133573, 16133749, 16133911, 16134089]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16131307 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16131307 16134089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16131307) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16134271, 16134449, 16134617, 16134793, 16134967, 16135109, 16135291, 16135453, 16135633, 16135817, 16135991, 16136171, 16136333, 16136507, 16136663, 16136843]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16134089 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16134089 16136843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16134089) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16136999, 16137181, 16137353, 16137533, 16137703, 16137853, 16138027, 16138169, 16138351, 16138523, 16138687, 16138861, 16139041, 16139203, 16139371, 16139503]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16136843 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16136843 16139503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16136843) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16139671, 16139839, 16140017, 16140193, 16140343, 16140521, 16140679, 16140857, 16140997, 16141159, 16141273, 16141451, 16141597, 16141781, 16141949, 16142107]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16139503 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16139503 16142107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16139503) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16142279, 16142461, 16142629, 16142801, 16142963, 16143139, 16143317, 16143487, 16143671, 16143847, 16144031, 16144159, 16144343, 16144523, 16144673, 16144837]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16142107 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16142107 16144837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16142107) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16144991, 16145137, 16145321, 16145477, 16145659, 16145827, 16146001, 16146173, 16146343, 16146527, 16146703, 16146869, 16147051, 16147223, 16147393, 16147561]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16144837 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16144837 16147561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16144837) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16147721, 16147903, 16148063, 16148221, 16148357, 16148479, 16148663, 16148837, 16149017, 16149179, 16149349, 16149521, 16149691, 16149869, 16150037, 16150217]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16147561 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16147561 16150217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16147561) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16150397, 16150571, 16150753, 16150921, 16151059, 16151243, 16151419, 16151587, 16151771, 16151953, 16152089, 16152263, 16152421, 16152599, 16152779, 16152959]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16150217 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16150217 16152959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16150217) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16153141, 16153321, 16153481, 16153663, 16153831, 16154011, 16154183, 16154353, 16154531, 16154659, 16154837, 16155017, 16155197, 16155367, 16155551, 16155731]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16152959 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16152959 16155731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16152959) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16155901, 16156079, 16156253, 16156429, 16156607, 16156781, 16156963, 16157129, 16157303, 16157483, 16157639, 16157821, 16158001, 16158179, 16158299, 16158463]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16155731 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16155731 16158463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16155731) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16158641, 16158817, 16159001, 16159183, 16159321, 16159489, 16159669, 16159837, 16159991, 16160147, 16160327, 16160509, 16160687, 16160861, 16161043, 16161209]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16158463 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16158463 16161209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16158463) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16161389, 16161569, 16161751, 16161931, 16162099, 16162249, 16162429, 16162609, 16162793, 16162973, 16163137, 16163317, 16163491, 16163663, 16163837, 16164011]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16161209 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16161209 16164011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16161209) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16164191, 16164367, 16164527, 16164703, 16164887, 16165063, 16165231, 16165403, 16165579, 16165763, 16165943, 16166123, 16166291, 16166471, 16166641, 16166783]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16164011 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16164011 16166783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16164011) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16166957, 16167139, 16167299, 16167469, 16167617, 16167797, 16167961, 16168093, 16168277, 16168447, 16168591, 16168771, 16168913, 16169093, 16169243, 16169423]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16166783 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16166783 16169423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16166783) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16082089 16087619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16082089)
    (mid := 16084867) (hi := 16087619) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16087619 16093193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16087619)
    (mid := 16090433) (hi := 16093193) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16093193 16098601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16093193)
    (mid := 16095881) (hi := 16098601) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16098601 16103959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16098601)
    (mid := 16101313) (hi := 16103959) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16103959 16109339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16103959)
    (mid := 16106659) (hi := 16109339) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16109339 16114939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16109339)
    (mid := 16112203) (hi := 16114939) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16114939 16120477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16114939)
    (mid := 16117693) (hi := 16120477) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16120477 16125803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16120477)
    (mid := 16123147) (hi := 16125803) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16125803 16131307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16125803)
    (mid := 16128551) (hi := 16131307) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16131307 16136843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16131307)
    (mid := 16134089) (hi := 16136843) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16136843 16142107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16136843)
    (mid := 16139503) (hi := 16142107) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16142107 16147561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16142107)
    (mid := 16144837) (hi := 16147561) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16147561 16152959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16147561)
    (mid := 16150217) (hi := 16152959) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16152959 16158463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16152959)
    (mid := 16155731) (hi := 16158463) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16158463 16164011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16158463)
    (mid := 16161209) (hi := 16164011) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16164011 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16164011)
    (mid := 16166783) (hi := 16169423) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16082089 16093193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16082089)
    (mid := 16087619) (hi := 16093193) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16093193 16103959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16093193)
    (mid := 16098601) (hi := 16103959) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16103959 16114939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16103959)
    (mid := 16109339) (hi := 16114939) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16114939 16125803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16114939)
    (mid := 16120477) (hi := 16125803) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16125803 16136843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16125803)
    (mid := 16131307) (hi := 16136843) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16136843 16147561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16136843)
    (mid := 16142107) (hi := 16147561) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16147561 16158463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16147561)
    (mid := 16152959) (hi := 16158463) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16158463 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16158463)
    (mid := 16164011) (hi := 16169423) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16082089 16103959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16082089)
    (mid := 16093193) (hi := 16103959) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16103959 16125803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16103959)
    (mid := 16114939) (hi := 16125803) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16125803 16147561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16125803)
    (mid := 16136843) (hi := 16147561) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16147561 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16147561)
    (mid := 16158463) (hi := 16169423) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16082089 16125803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16082089)
    (mid := 16103959) (hi := 16125803) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16125803 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16125803)
    (mid := 16147561) (hi := 16169423) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16082089 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16082089)
    (mid := 16125803) (hi := 16169423) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16082089 16169423 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block183

#print axioms B699MiddleExtension.PrimorialBlocks.Block183.joined
