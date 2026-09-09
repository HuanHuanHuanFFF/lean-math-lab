import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block190

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16692889, 16693069, 16693249, 16693429, 16693597, 16693757, 16693939, 16694123, 16694303, 16694479, 16694651, 16694827, 16695001, 16695163, 16695311, 16695467]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16692707 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16692707 16695467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16692707) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16695593, 16695773, 16695937, 16696109, 16696291, 16696453, 16696627, 16696811, 16696987, 16697171, 16697353, 16697501, 16697683, 16697867, 16698043, 16698223]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16695467 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16695467 16698223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16695467) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16698379, 16698559, 16698719, 16698901, 16699073, 16699223, 16699393, 16699577, 16699747, 16699901, 16700081, 16700261, 16700441, 16700623, 16700773, 16700951]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16698223 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16698223 16700951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16698223) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16701127, 16701299, 16701479, 16701649, 16701833, 16702013, 16702193, 16702373, 16702547, 16702717, 16702859, 16703041, 16703191, 16703371, 16703551, 16703723]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16700951 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16700951 16703723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16700951) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16703891, 16704067, 16704227, 16704407, 16704563, 16704731, 16704913, 16704983, 16705151, 16705333, 16705517, 16705697, 16705877, 16706057, 16706177, 16706357]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16703723 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16703723 16706357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16703723) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16706531, 16706693, 16706867, 16707037, 16707217, 16707391, 16707569, 16707751, 16707919, 16708103, 16708273, 16708451, 16708633, 16708817, 16708987, 16709153]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16706357 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16706357 16709153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16706357) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16709323, 16709507, 16709687, 16709857, 16710041, 16710191, 16710361, 16710539, 16710721, 16710901, 16711081, 16711259, 16711427, 16711579, 16711741, 16711921]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16709153 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16709153 16711921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16709153) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16712093, 16712263, 16712431, 16712603, 16712783, 16712959, 16713143, 16713317, 16713467, 16713649, 16713821, 16714003, 16714151, 16714331, 16714501, 16714669]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16711921 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16711921 16714669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16711921) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16714849, 16714993, 16715177, 16715353, 16715533, 16715717, 16715887, 16716061, 16716229, 16716407, 16716589, 16716773, 16716949, 16717109, 16717247, 16717429]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16714669 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16714669 16717429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16714669) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16717609, 16717793, 16717963, 16718137, 16718291, 16718473, 16718627, 16718809, 16718987, 16719163, 16719331, 16719503, 16719679, 16719839, 16720021, 16720199]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16717429 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16717429 16720199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16717429) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16720369, 16720553, 16720699, 16720871, 16721051, 16721213, 16721357, 16721479, 16721657, 16721833, 16721993, 16722161, 16722319, 16722499, 16722683, 16722859]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16720199 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16720199 16722859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16720199) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16723027, 16723207, 16723361, 16723541, 16723717, 16723897, 16724069, 16724233, 16724399, 16724567, 16724737, 16724879, 16725061, 16725239, 16725421, 16725601]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16722859 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16722859 16725601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16722859) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16725769, 16725901, 16726043, 16726207, 16726379, 16726531, 16726693, 16726867, 16727041, 16727213, 16727377, 16727537, 16727719, 16727897, 16728079, 16728263]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16725601 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16725601 16728263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16725601) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16728433, 16728601, 16728769, 16728953, 16729109, 16729289, 16729469, 16729651, 16729829, 16729997, 16730171, 16730333, 16730509, 16730663, 16730837, 16731007]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16728263 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16728263 16731007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16728263) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16731181, 16731353, 16731523, 16731677, 16731853, 16732019, 16732193, 16732349, 16732501, 16732679, 16732861, 16733039, 16733221, 16733401, 16733573, 16733753]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16731007 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16731007 16733753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16731007) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16733929, 16734097, 16734281, 16734461, 16734643, 16734821, 16734983, 16735163, 16735343, 16735519, 16735703, 16735861, 16736039, 16736201, 16736383, 16736563]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16733753 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16733753 16736563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16733753) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16736743, 16736927, 16737101, 16737269, 16737443, 16737599, 16737761, 16737943, 16738121, 16738303, 16738483, 16738663, 16738847, 16739027, 16739197, 16739363]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16736563 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16736563 16739363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16736563) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16739533, 16739693, 16739861, 16740041, 16740181, 16740331, 16740497, 16740673, 16740853, 16741031, 16741213, 16741397, 16741579, 16741733, 16741913, 16742071]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16739363 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16739363 16742071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16739363) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16742237, 16742393, 16742527, 16742701, 16742861, 16743029, 16743187, 16743347, 16743491, 16743653, 16743833, 16744009, 16744181, 16744349, 16744517, 16744699]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16742071 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16742071 16744699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16742071) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16744883, 16745059, 16745233, 16745381, 16745513, 16745693, 16745819, 16745957, 16746133, 16746313, 16746473, 16746643, 16746817, 16746979, 16747163, 16747337]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16744699 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16744699 16747337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16744699) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16747501, 16747673, 16747853, 16748033, 16748203, 16748359, 16748539, 16748717, 16748867, 16749017, 16749191, 16749371, 16749541, 16749701, 16749883, 16750061]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16747337 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16747337 16750061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16747337) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16750243, 16750399, 16750583, 16750717, 16750901, 16751051, 16751227, 16751389, 16751569, 16751747, 16751927, 16752107, 16752277, 16752409, 16752587, 16752761]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16750061 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16750061 16752761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16750061) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16752943, 16753127, 16753277, 16753441, 16753613, 16753787, 16753969, 16754149, 16754293, 16754471, 16754641, 16754819, 16755001, 16755181, 16755329, 16755463]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16752761 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16752761 16755463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16752761) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16755643, 16755811, 16755989, 16756163, 16756343, 16756511, 16756687, 16756837, 16757021, 16757203, 16757387, 16757567, 16757743, 16757921, 16758101, 16758271]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16755463 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16755463 16758271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16755463) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16758407, 16758587, 16758767, 16758947, 16759123, 16759291, 16759471, 16759649, 16759817, 16759987, 16760171, 16760333, 16760509, 16760693, 16760857, 16761007]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16758271 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16758271 16761007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16758271) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16761191, 16761373, 16761527, 16761653, 16761827, 16762003, 16762183, 16762327, 16762511, 16762679, 16762859, 16763041, 16763213, 16763387, 16763557, 16763737]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16761007 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16761007 16763737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16761007) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16763897, 16764067, 16764239, 16764421, 16764599, 16764779, 16764949, 16765129, 16765289, 16765453, 16765633, 16765807, 16765939, 16766119, 16766293, 16766461]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16763737 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16763737 16766461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16763737) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16766627, 16766803, 16766963, 16767137, 16767263, 16767433, 16767613, 16767761, 16767941, 16768111, 16768277, 16768459, 16768643, 16768823, 16768991, 16769173]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16766461 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16766461 16769173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16766461) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16769353, 16769537, 16769719, 16769903, 16770077, 16770209, 16770389, 16770557, 16770739, 16770899, 16771081, 16771259, 16771423, 16771481, 16771663, 16771801]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16769173 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16769173 16771801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16769173) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16771981, 16772141, 16772309, 16772491, 16772671, 16772831, 16773013, 16773191, 16773347, 16773529, 16773709, 16773893, 16774067, 16774249, 16774421, 16774523]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16771801 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16771801 16774523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16771801) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16774679, 16774861, 16775041, 16775221, 16775399, 16775581, 16775749, 16775909, 16776091, 16776217, 16776401, 16776581, 16776763, 16776941, 16777121, 16777291]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16774523 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16774523 16777291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16774523) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16777469, 16777643, 16777823, 16777991, 16778173, 16778357, 16778537, 16778701, 16778869, 16779053, 16779229, 16779407, 16779559, 16779743, 16779913, 16780091]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16777291 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16777291 16780091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16777291) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16692707 16698223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16695467) (hi := 16698223) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16698223 16703723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16698223)
    (mid := 16700951) (hi := 16703723) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16703723 16709153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16703723)
    (mid := 16706357) (hi := 16709153) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16709153 16714669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16709153)
    (mid := 16711921) (hi := 16714669) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16714669 16720199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16714669)
    (mid := 16717429) (hi := 16720199) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16720199 16725601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16720199)
    (mid := 16722859) (hi := 16725601) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16725601 16731007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16725601)
    (mid := 16728263) (hi := 16731007) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16731007 16736563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16731007)
    (mid := 16733753) (hi := 16736563) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16736563 16742071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16736563)
    (mid := 16739363) (hi := 16742071) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16742071 16747337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16742071)
    (mid := 16744699) (hi := 16747337) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16747337 16752761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16747337)
    (mid := 16750061) (hi := 16752761) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16752761 16758271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16752761)
    (mid := 16755463) (hi := 16758271) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16758271 16763737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16758271)
    (mid := 16761007) (hi := 16763737) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16763737 16769173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16763737)
    (mid := 16766461) (hi := 16769173) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16769173 16774523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16769173)
    (mid := 16771801) (hi := 16774523) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16774523 16780091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16774523)
    (mid := 16777291) (hi := 16780091) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16692707 16703723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16698223) (hi := 16703723) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16703723 16714669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16703723)
    (mid := 16709153) (hi := 16714669) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16714669 16725601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16714669)
    (mid := 16720199) (hi := 16725601) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16725601 16736563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16725601)
    (mid := 16731007) (hi := 16736563) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16736563 16747337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16736563)
    (mid := 16742071) (hi := 16747337) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16747337 16758271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16747337)
    (mid := 16752761) (hi := 16758271) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16758271 16769173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16758271)
    (mid := 16763737) (hi := 16769173) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16769173 16780091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16769173)
    (mid := 16774523) (hi := 16780091) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16692707 16714669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16703723) (hi := 16714669) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16714669 16736563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16714669)
    (mid := 16725601) (hi := 16736563) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16736563 16758271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16736563)
    (mid := 16747337) (hi := 16758271) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16758271 16780091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16758271)
    (mid := 16769173) (hi := 16780091) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16692707 16736563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16714669) (hi := 16736563) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16736563 16780091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16736563)
    (mid := 16758271) (hi := 16780091) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16692707 16780091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16736563) (hi := 16780091) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16692707 16780091 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block190

#print axioms B699MiddleExtension.PrimorialBlocks.Block190.joined
