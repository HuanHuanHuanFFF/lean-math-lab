import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block219

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19225139, 19225319, 19225501, 19225667, 19225849, 19226033, 19226213, 19226357, 19226539, 19226707, 19226869, 19227053, 19227233, 19227413, 19227589, 19227773]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19224967 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19224967 19227773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19224967) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19227953, 19228117, 19228289, 19228471, 19228637, 19228813, 19228987, 19229137, 19229321, 19229503, 19229687, 19229869, 19230049, 19230181, 19230359, 19230499]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19227773 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19227773 19230499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19227773) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19230667, 19230817, 19231001, 19231159, 19231343, 19231493, 19231643, 19231801, 19231969, 19232153, 19232327, 19232509, 19232659, 19232839, 19233017, 19233197]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19230499 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19230499 19233197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19230499) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19233373, 19233553, 19233713, 19233889, 19234073, 19234231, 19234363, 19234547, 19234729, 19234913, 19235093, 19235269, 19235443, 19235621, 19235803, 19235987]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19233197 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19233197 19235987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19233197) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19236143, 19236323, 19236491, 19236653, 19236829, 19236983, 19237123, 19237307, 19237483, 19237627, 19237811, 19237969, 19238129, 19238299, 19238467, 19238647]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19235987 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19235987 19238647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19235987) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19238831, 19239007, 19239179, 19239347, 19239527, 19239697, 19239881, 19240063, 19240229, 19240411, 19240589, 19240769, 19240943, 19241119, 19241303, 19241479]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19238647 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19238647 19241479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19238647) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19241653, 19241837, 19242017, 19242173, 19242343, 19242527, 19242709, 19242889, 19243073, 19243253, 19243423, 19243597, 19243771, 19243951, 19244117, 19244287]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19241479 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19241479 19244287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19241479) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19244471, 19244653, 19244821, 19245001, 19245179, 19245353, 19245533, 19245713, 19245893, 19246067, 19246243, 19246399, 19246573, 19246741, 19246901, 19247083]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19244287 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19244287 19247083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19244287) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19247257, 19247429, 19247597, 19247773, 19247953, 19248127, 19248293, 19248461, 19248617, 19248773, 19248941, 19249121, 19249267, 19249427, 19249577, 19249751]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19247083 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19247083 19249751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19247083) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19249921, 19250093, 19250269, 19250453, 19250633, 19250801, 19250963, 19251121, 19251301, 19251473, 19251647, 19251829, 19251983, 19252159, 19252327, 19252507]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19249751 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19249751 19252507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19249751) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19252669, 19252847, 19252979, 19253153, 19253287, 19253471, 19253623, 19253803, 19253977, 19254143, 19254311, 19254479, 19254649, 19254803, 19254973, 19255157]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19252507 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19252507 19255157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19252507) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19255337, 19255519, 19255703, 19255879, 19256059, 19256231, 19256411, 19256527, 19256711, 19256893, 19257067, 19257229, 19257397, 19257571, 19257737, 19257881]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19255157 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19255157 19257881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19255157) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19258051, 19258231, 19258357, 19258531, 19258709, 19258873, 19259057, 19259239, 19259417, 19259599, 19259777, 19259953, 19260113, 19260229, 19260413, 19260589]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19257881 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19257881 19260589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19257881) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19260767, 19260931, 19261057, 19261213, 19261397, 19261579, 19261751, 19261903, 19262081, 19262263, 19262443, 19262627, 19262791, 19262953, 19263119, 19263301]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19260589 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19260589 19263301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19260589) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19263479, 19263661, 19263841, 19264019, 19264199, 19264379, 19264561, 19264709, 19264891, 19265027, 19265209, 19265383, 19265549, 19265731, 19265903, 19266061]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19263301 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19263301 19266061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19263301) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19266239, 19266419, 19266601, 19266769, 19266953, 19267111, 19267279, 19267447, 19267621, 19267757, 19267933, 19268111, 19268287, 19268467, 19268651, 19268819]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19266061 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19266061 19268819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19266061) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19268989, 19269167, 19269293, 19269463, 19269647, 19269829, 19269989, 19270169, 19270301, 19270463, 19270637, 19270813, 19270973, 19271113, 19271293, 19271477]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19268819 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19268819 19271477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19268819) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19271657, 19271831, 19272013, 19272193, 19272371, 19272541, 19272709, 19272887, 19273069, 19273213, 19273381, 19273561, 19273721, 19273897, 19274053, 19274221]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19271477 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19271477 19274221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19271477) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19274401, 19274581, 19274741, 19274909, 19275089, 19275271, 19275419, 19275601, 19275731, 19275913, 19276073, 19276247, 19276417, 19276597, 19276769, 19276919]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19274221 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19274221 19276919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19274221) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19277081, 19277239, 19277417, 19277591, 19277737, 19277917, 19278097, 19278271, 19278431, 19278587, 19278769, 19278953, 19279133, 19279297, 19279453, 19279633]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19276919 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19276919 19279633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19276919) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19279787, 19279951, 19280111, 19280281, 19280461, 19280629, 19280809, 19280993, 19281173, 19281331, 19281511, 19281679, 19281853, 19282033, 19282181, 19282357]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19279633 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19279633 19282357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19279633) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19282531, 19282699, 19282867, 19283027, 19283191, 19283317, 19283497, 19283681, 19283857, 19284017, 19284197, 19284359, 19284541, 19284709, 19284887, 19285051]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19282357 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19282357 19285051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19282357) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19285223, 19285403, 19285583, 19285759, 19285927, 19286101, 19286269, 19286453, 19286623, 19286807, 19286983, 19287157, 19287329, 19287511, 19287691, 19287839]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19285051 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19285051 19287839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19285051) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19288019, 19288201, 19288369, 19288519, 19288699, 19288883, 19289057, 19289239, 19289423, 19289587, 19289759, 19289923, 19290107, 19290289, 19290473, 19290637]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19287839 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19287839 19290637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19287839) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19290793, 19290967, 19291121, 19291297, 19291471, 19291633, 19291817, 19291981, 19292149, 19292327, 19292491, 19292641, 19292821, 19292993, 19293173, 19293349]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19290637 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19290637 19293349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19290637) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19293529, 19293709, 19293893, 19294049, 19294211, 19294351, 19294529, 19294699, 19294883, 19295047, 19295207, 19295387, 19295539, 19295723, 19295839, 19296019]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19293349 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19293349 19296019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19293349) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19296197, 19296373, 19296553, 19296733, 19296899, 19297079, 19297259, 19297433, 19297561, 19297727, 19297879, 19298057, 19298233, 19298407, 19298569, 19298749]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19296019 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19296019 19298749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19296019) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19298933, 19299113, 19299271, 19299451, 19299629, 19299803, 19299983, 19300159, 19300343, 19300517, 19300663, 19300843, 19301027, 19301203, 19301377, 19301551]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19298749 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19298749 19301551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19298749) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19301731, 19301903, 19302079, 19302253, 19302427, 19302607, 19302763, 19302931, 19303093, 19303253, 19303433, 19303567, 19303741, 19303919, 19304101, 19304281]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19301551 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19301551 19304281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19301551) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19304443, 19304617, 19304783, 19304959, 19305133, 19305289, 19305469, 19305647, 19305821, 19305989, 19306139, 19306307, 19306477, 19306657, 19306829, 19307009]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19304281 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19304281 19307009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19304281) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19307161, 19307339, 19307489, 19307671, 19307779, 19307963, 19308143, 19308307, 19308437, 19308599, 19308749, 19308911, 19309061, 19309219, 19309403, 19309583]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19307009 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19307009 19309583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19307009) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19309753, 19309937, 19310119, 19310299, 19310461, 19310609, 19310791, 19310971, 19311139, 19311317, 19311499, 19311683, 19311863, 19312043, 19312211, 19312373]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19309583 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19309583 19312373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19309583) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19224967 19230499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19224967)
    (mid := 19227773) (hi := 19230499) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19230499 19235987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19230499)
    (mid := 19233197) (hi := 19235987) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19235987 19241479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19235987)
    (mid := 19238647) (hi := 19241479) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19241479 19247083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19241479)
    (mid := 19244287) (hi := 19247083) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19247083 19252507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19247083)
    (mid := 19249751) (hi := 19252507) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19252507 19257881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19252507)
    (mid := 19255157) (hi := 19257881) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19257881 19263301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19257881)
    (mid := 19260589) (hi := 19263301) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19263301 19268819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19263301)
    (mid := 19266061) (hi := 19268819) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19268819 19274221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19268819)
    (mid := 19271477) (hi := 19274221) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19274221 19279633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19274221)
    (mid := 19276919) (hi := 19279633) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19279633 19285051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19279633)
    (mid := 19282357) (hi := 19285051) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19285051 19290637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19285051)
    (mid := 19287839) (hi := 19290637) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19290637 19296019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19290637)
    (mid := 19293349) (hi := 19296019) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19296019 19301551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19296019)
    (mid := 19298749) (hi := 19301551) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19301551 19307009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19301551)
    (mid := 19304281) (hi := 19307009) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19307009 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19307009)
    (mid := 19309583) (hi := 19312373) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19224967 19235987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19224967)
    (mid := 19230499) (hi := 19235987) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19235987 19247083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19235987)
    (mid := 19241479) (hi := 19247083) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19247083 19257881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19247083)
    (mid := 19252507) (hi := 19257881) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19257881 19268819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19257881)
    (mid := 19263301) (hi := 19268819) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19268819 19279633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19268819)
    (mid := 19274221) (hi := 19279633) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19279633 19290637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19279633)
    (mid := 19285051) (hi := 19290637) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19290637 19301551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19290637)
    (mid := 19296019) (hi := 19301551) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19301551 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19301551)
    (mid := 19307009) (hi := 19312373) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19224967 19247083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19224967)
    (mid := 19235987) (hi := 19247083) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19247083 19268819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19247083)
    (mid := 19257881) (hi := 19268819) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19268819 19290637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19268819)
    (mid := 19279633) (hi := 19290637) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19290637 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19290637)
    (mid := 19301551) (hi := 19312373) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19224967 19268819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19224967)
    (mid := 19247083) (hi := 19268819) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19268819 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19268819)
    (mid := 19290637) (hi := 19312373) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19224967 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19224967)
    (mid := 19268819) (hi := 19312373) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19224967 19312373 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block219

#print axioms B699MiddleExtension.PrimorialBlocks.Block219.joined
