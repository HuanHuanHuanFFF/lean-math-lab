import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block002

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [180281, 180463, 180647, 180811, 180959, 181141, 181303, 181459, 181639, 181813, 181997, 182179, 182353, 182537, 182713, 182893]
theorem check0 : primorialChainCheck 4473 primorial4473 184 180097 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 180097 182893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 180097) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [183067, 183247, 183397, 183581, 183763, 183943, 184117, 184291, 184463, 184633, 184777, 184957, 185137, 185309, 185491, 185651]
theorem check1 : primorialChainCheck 4473 primorial4473 184 182893 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 182893 185651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 182893) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [185833, 186013, 186191, 186343, 186481, 186653, 186799, 186959, 187141, 187303, 187477, 187661, 187843, 188021, 188197, 188369]
theorem check2 : primorialChainCheck 4473 primorial4473 184 185651 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 185651 188369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 185651) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [188533, 188711, 188891, 189067, 189251, 189433, 189617, 189799, 189983, 190159, 190339, 190523, 190699, 190871, 191047, 191231]
theorem check3 : primorialChainCheck 4473 primorial4473 184 188369 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 188369 191231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 188369) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [191413, 191579, 191749, 191929, 192113, 192271, 192431, 192613, 192791, 192971, 193153, 193337, 193513, 193679, 193861, 194027]
theorem check4 : primorialChainCheck 4473 primorial4473 184 191231 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 191231 194027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 191231) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [194203, 194377, 194543, 194723, 194899, 195077, 195259, 195443, 195599, 195781, 195931, 196111, 196291, 196459, 196643, 196817]
theorem check5 : primorialChainCheck 4473 primorial4473 184 194027 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 194027 196817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 194027) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [196993, 197161, 197341, 197521, 197699, 197837, 198017, 198197, 198377, 198553, 198733, 198901, 199081, 199261, 199429, 199603]
theorem check6 : primorialChainCheck 4473 primorial4473 184 196817 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 196817 199603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 196817) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [199783, 199967, 200131, 200297, 200467, 200639, 200807, 200989, 201167, 201337, 201517, 201701, 201881, 202063, 202243, 202409]
theorem check7 : primorialChainCheck 4473 primorial4473 184 199603 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 199603 202409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 199603) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [202591, 202757, 202933, 203117, 203293, 203461, 203641, 203821, 203999, 204173, 204353, 204521, 204679, 204859, 205043, 205223]
theorem check8 : primorialChainCheck 4473 primorial4473 184 202409 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 202409 205223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 202409) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [205399, 205559, 205721, 205883, 206051, 206233, 206413, 206597, 206779, 206953, 207127, 207307, 207491, 207673, 207847, 208009]
theorem check9 : primorialChainCheck 4473 primorial4473 184 205223 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 205223 208009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 205223) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [208189, 208367, 208529, 208699, 208877, 209039, 209221, 209401, 209581, 209743, 209927, 210109, 210283, 210467, 210643, 210827]
theorem check10 : primorialChainCheck 4473 primorial4473 184 208009 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 208009 210827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 208009) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [211007, 211187, 211369, 211543, 211727, 211891, 212057, 212239, 212423, 212593, 212777, 212923, 213097, 213281, 213461, 213641]
theorem check11 : primorialChainCheck 4473 primorial4473 184 210827 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 210827 213641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 210827) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [213821, 214003, 214177, 214351, 214531, 214691, 214867, 215051, 215197, 215381, 215563, 215737, 215921, 216103, 216263, 216431]
theorem check12 : primorialChainCheck 4473 primorial4473 184 213641 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 213641 216431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 213641) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [216607, 216791, 216973, 217157, 217339, 217519, 217697, 217859, 218021, 218191, 218371, 218551, 218723, 218887, 219071, 219251]
theorem check13 : primorialChainCheck 4473 primorial4473 184 216431 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 216431 219251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 216431) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [219433, 219613, 219797, 219979, 220163, 220333, 220513, 220687, 220861, 221021, 221203, 221327, 221509, 221677, 221849, 222029]
theorem check14 : primorialChainCheck 4473 primorial4473 184 219251 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 219251 222029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 219251) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [222199, 222379, 222557, 222731, 222913, 223087, 223259, 223441, 223621, 223781, 223963, 224131, 224309, 224491, 224669, 224831]
theorem check15 : primorialChainCheck 4473 primorial4473 184 222029 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 222029 224831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 222029) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [224993, 225167, 225349, 225529, 225697, 225871, 226027, 226201, 226381, 226553, 226697, 226871, 227053, 227233, 227407, 227581]
theorem check16 : primorialChainCheck 4473 primorial4473 184 224831 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 224831 227581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 224831) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [227743, 227893, 228077, 228257, 228427, 228611, 228793, 228961, 229139, 229321, 229499, 229681, 229849, 230017, 230189, 230369]
theorem check17 : primorialChainCheck 4473 primorial4473 184 227581 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 227581 230369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 227581) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [230551, 230729, 230891, 231067, 231241, 231419, 231599, 231779, 231961, 232129, 232307, 232487, 232669, 232853, 233021, 233201]
theorem check18 : primorialChainCheck 4473 primorial4473 184 230369 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 230369 233201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 230369) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [233371, 233551, 233713, 233881, 234043, 234217, 234383, 234547, 234727, 234907, 235091, 235273, 235447, 235621, 235793, 235967]
theorem check19 : primorialChainCheck 4473 primorial4473 184 233201 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 233201 235967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 233201) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [236143, 236323, 236507, 236681, 236813, 236993, 237173, 237343, 237509, 237691, 237859, 238039, 238223, 238397, 238573, 238747]
theorem check20 : primorialChainCheck 4473 primorial4473 184 235967 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 235967 238747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 235967) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [238921, 239087, 239263, 239441, 239623, 239807, 239977, 240151, 240319, 240503, 240677, 240859, 241037, 241207, 241391, 241567]
theorem check21 : primorialChainCheck 4473 primorial4473 184 238747 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 238747 241567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 238747) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [241739, 241921, 242101, 242279, 242453, 242633, 242813, 242989, 243167, 243343, 243527, 243709, 243889, 244043, 244219, 244403]
theorem check22 : primorialChainCheck 4473 primorial4473 184 241567 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 241567 244403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 241567) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [244583, 244759, 244943, 245107, 245291, 245473, 245653, 245821, 245989, 246173, 246349, 246527, 246709, 246889, 247073, 247249]
theorem check23 : primorialChainCheck 4473 primorial4473 184 244403 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 244403 247249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 244403) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [247433, 247613, 247781, 247957, 248141, 248323, 248483, 248657, 248839, 249017, 249199, 249383, 249563, 249737, 249911, 250091]
theorem check24 : primorialChainCheck 4473 primorial4473 184 247249 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 247249 250091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 247249) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [250267, 250451, 250619, 250799, 250979, 251159, 251323, 251501, 251677, 251861, 252037, 252209, 252391, 252559, 252737, 252919]
theorem check25 : primorialChainCheck 4473 primorial4473 184 250091 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 250091 252919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 250091) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [253103, 253273, 253447, 253613, 253789, 253969, 254147, 254329, 254491, 254663, 254833, 255007, 255191, 255371, 255551, 255733]
theorem check26 : primorialChainCheck 4473 primorial4473 184 252919 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 252919 255733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 252919) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [255917, 256093, 256219, 256393, 256577, 256757, 256939, 257123, 257297, 257473, 257657, 257837, 258019, 258197, 258373, 258551]
theorem check27 : primorialChainCheck 4473 primorial4473 184 255733 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 255733 258551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 255733) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [258733, 258917, 259099, 259277, 259459, 259643, 259823, 260003, 260179, 260363, 260543, 260723, 260893, 261077, 261251, 261433]
theorem check28 : primorialChainCheck 4473 primorial4473 184 258551 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 258551 261433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 258551) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [261601, 261773, 261917, 262079, 262261, 262433, 262597, 262781, 262957, 263129, 263303, 263443, 263621, 263803, 263983, 264167]
theorem check29 : primorialChainCheck 4473 primorial4473 184 261433 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 261433 264167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 261433) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [264349, 264529, 264697, 264881, 265037, 265207, 265381, 265561, 265739, 265921, 266099, 266281, 266449, 266633, 266801, 266983]
theorem check30 : primorialChainCheck 4473 primorial4473 184 264167 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 264167 266983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 264167) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [267167, 267341, 267523, 267679, 267863, 268043, 268211, 268343, 268519, 268693, 268861, 269041, 269221, 269393, 269573, 269749]
theorem check31 : primorialChainCheck 4473 primorial4473 184 266983 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 266983 269749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 266983) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 180097 185651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 182893) (hi := 185651) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 185651 191231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 185651)
    (mid := 188369) (hi := 191231) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 191231 196817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 191231)
    (mid := 194027) (hi := 196817) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 196817 202409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 196817)
    (mid := 199603) (hi := 202409) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 202409 208009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 202409)
    (mid := 205223) (hi := 208009) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 208009 213641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 208009)
    (mid := 210827) (hi := 213641) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 213641 219251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 213641)
    (mid := 216431) (hi := 219251) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 219251 224831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 219251)
    (mid := 222029) (hi := 224831) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 224831 230369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 224831)
    (mid := 227581) (hi := 230369) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 230369 235967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 230369)
    (mid := 233201) (hi := 235967) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 235967 241567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 235967)
    (mid := 238747) (hi := 241567) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 241567 247249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 241567)
    (mid := 244403) (hi := 247249) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 247249 252919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 247249)
    (mid := 250091) (hi := 252919) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 252919 258551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 252919)
    (mid := 255733) (hi := 258551) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 258551 264167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 258551)
    (mid := 261433) (hi := 264167) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 264167 269749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 264167)
    (mid := 266983) (hi := 269749) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 180097 191231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 185651) (hi := 191231) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 191231 202409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 191231)
    (mid := 196817) (hi := 202409) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 202409 213641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 202409)
    (mid := 208009) (hi := 213641) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 213641 224831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 213641)
    (mid := 219251) (hi := 224831) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 224831 235967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 224831)
    (mid := 230369) (hi := 235967) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 235967 247249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 235967)
    (mid := 241567) (hi := 247249) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 247249 258551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 247249)
    (mid := 252919) (hi := 258551) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 258551 269749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 258551)
    (mid := 264167) (hi := 269749) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 180097 202409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 191231) (hi := 202409) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 202409 224831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 202409)
    (mid := 213641) (hi := 224831) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 224831 247249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 224831)
    (mid := 235967) (hi := 247249) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 247249 269749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 247249)
    (mid := 258551) (hi := 269749) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 180097 224831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 202409) (hi := 224831) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 224831 269749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 224831)
    (mid := 247249) (hi := 269749) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 180097 269749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 224831) (hi := 269749) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 180097 269749 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block002

#print axioms B699MiddleExtension.PrimorialBlocks.Block002.joined
