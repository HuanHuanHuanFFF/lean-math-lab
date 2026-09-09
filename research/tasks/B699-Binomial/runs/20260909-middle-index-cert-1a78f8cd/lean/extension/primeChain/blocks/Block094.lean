import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block094

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8292367, 8292547, 8292707, 8292887, 8293057, 8293237, 8293393, 8293577, 8293759, 8293939, 8294123, 8294303, 8294483, 8294653, 8294837, 8294999]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8292203 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8292203 8294999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8292203) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8295179, 8295349, 8295527, 8295701, 8295877, 8295977, 8296159, 8296339, 8296517, 8296699, 8296879, 8297063, 8297197, 8297369, 8297543, 8297719]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8294999 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8294999 8297719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8294999) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8297881, 8298047, 8298229, 8298373, 8298547, 8298721, 8298847, 8299013, 8299169, 8299331, 8299513, 8299679, 8299793, 8299969, 8300147, 8300323]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8297719 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8297719 8300323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8297719) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8300503, 8300687, 8300869, 8301053, 8301217, 8301401, 8301581, 8301757, 8301911, 8302061, 8302219, 8302403, 8302583, 8302759, 8302891, 8303063]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8300323 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8300323 8303063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8300323) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8303221, 8303341, 8303509, 8303693, 8303863, 8303957, 8304133, 8304301, 8304481, 8304641, 8304809, 8304979, 8305159, 8305343, 8305519, 8305697]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8303063 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8303063 8305697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8303063) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8305873, 8306041, 8306201, 8306377, 8306533, 8306717, 8306891, 8307049, 8307223, 8307361, 8307521, 8307683, 8307863, 8308043, 8308219, 8308373]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8305697 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8305697 8308373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8305697) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8308541, 8308723, 8308891, 8309071, 8309227, 8309401, 8309579, 8309761, 8309909, 8310073, 8310251, 8310431, 8310611, 8310787, 8310971, 8311117]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8308373 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8308373 8311117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8308373) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8311297, 8311481, 8311663, 8311829, 8311991, 8312173, 8312351, 8312527, 8312693, 8312851, 8313029, 8313199, 8313377, 8313553, 8313737, 8313919]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8311117 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8311117 8313919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8311117) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8314099, 8314279, 8314459, 8314643, 8314807, 8314991, 8315149, 8315327, 8315509, 8315689, 8315831, 8316001, 8316181, 8316353, 8316523, 8316701]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8313919 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8313919 8316701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8313919) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8316863, 8317013, 8317157, 8317339, 8317523, 8317691, 8317871, 8318047, 8318231, 8318413, 8318591, 8318759, 8318927, 8319109, 8319293, 8319431]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8316701 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8316701 8319431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8316701) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8319581, 8319757, 8319937, 8320111, 8320289, 8320471, 8320619, 8320789, 8320943, 8321123, 8321293, 8321429, 8321611, 8321783, 8321941, 8322121]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8319431 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8319431 8322121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8319431) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8322289, 8322451, 8322593, 8322773, 8322947, 8323109, 8323291, 8323457, 8323619, 8323793, 8323967, 8324143, 8324287, 8324471, 8324633, 8324807]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8322121 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8322121 8324807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8322121) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8324923, 8325089, 8325269, 8325437, 8325619, 8325803, 8325943, 8326127, 8326303, 8326469, 8326613, 8326793, 8326963, 8327129, 8327303, 8327483]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8324807 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8324807 8327483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8324807) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8327651, 8327831, 8328013, 8328169, 8328343, 8328527, 8328701, 8328877, 8329043, 8329213, 8329397, 8329577, 8329759, 8329939, 8330111, 8330239]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8327483 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8327483 8330239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8327483) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8330423, 8330603, 8330779, 8330963, 8331137, 8331317, 8331493, 8331667, 8331811, 8331977, 8332139, 8332319, 8332427, 8332579, 8332763, 8332939]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8330239 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8330239 8332939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8330239) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8333119, 8333279, 8333459, 8333629, 8333807, 8333987, 8334101, 8334283, 8334461, 8334631, 8334791, 8334959, 8335123, 8335297, 8335463, 8335643]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8332939 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8332939 8335643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8332939) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8335799, 8335909, 8336093, 8336267, 8336413, 8336597, 8336777, 8336957, 8337137, 8337319, 8337499, 8337653, 8337817, 8337997, 8338181, 8338361]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8335643 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8335643 8338361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8335643) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8338537, 8338709, 8338877, 8339057, 8339239, 8339413, 8339587, 8339767, 8339941, 8340121, 8340301, 8340473, 8340641, 8340821, 8341001, 8341153]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8338361 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8338361 8341153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8338361) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8341337, 8341517, 8341667, 8341843, 8342017, 8342183, 8342357, 8342531, 8342693, 8342861, 8343037, 8343221, 8343403, 8343571, 8343703, 8343887]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8341153 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8341153 8343887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8341153) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8344069, 8344253, 8344403, 8344577, 8344759, 8344927, 8345101, 8345279, 8345459, 8345633, 8345809, 8345983, 8346157, 8346341, 8346521, 8346703]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8343887 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8343887 8346703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8343887) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8346883, 8347049, 8347217, 8347373, 8347531, 8347699, 8347879, 8348029, 8348213, 8348387, 8348567, 8348737, 8348911, 8349067, 8349251, 8349433]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8346703 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8346703 8349433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8346703) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8349613, 8349793, 8349977, 8350157, 8350319, 8350483, 8350619, 8350787, 8350967, 8351149, 8351293, 8351467, 8351639, 8351821, 8351983, 8352161]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8349433 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8349433 8352161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8349433) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8352341, 8352517, 8352679, 8352863, 8353021, 8353201, 8353361, 8353529, 8353703, 8353861, 8354041, 8354209, 8354389, 8354569, 8354729, 8354897]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8352161 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8352161 8354897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8352161) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8355077, 8355253, 8355419, 8355583, 8355749, 8355931, 8356099, 8356261, 8356423, 8356597, 8356781, 8356961, 8357143, 8357287, 8357471, 8357651]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8354897 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8354897 8357651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8354897) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8357831, 8357983, 8358167, 8358331, 8358491, 8358673, 8358839, 8359009, 8359177, 8359349, 8359517, 8359697, 8359873, 8360003, 8360147, 8360309]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8357651 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8357651 8360309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8357651) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8360489, 8360657, 8360809, 8360987, 8361151, 8361329, 8361491, 8361641, 8361809, 8361979, 8362163, 8362331, 8362493, 8362649, 8362819, 8362973]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8360309 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8360309 8362973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8360309) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8363153, 8363323, 8363483, 8363653, 8363821, 8363989, 8364173, 8364329, 8364509, 8364691, 8364871, 8365039, 8365223, 8365403, 8365561, 8365741]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8362973 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8362973 8365741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8362973) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8365913, 8366093, 8366269, 8366447, 8366629, 8366791, 8366959, 8367133, 8367301, 8367397, 8367577, 8367743, 8367913, 8368091, 8368271, 8368439]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8365741 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8365741 8368439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8365741) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8368621, 8368781, 8368963, 8369143, 8369323, 8369489, 8369663, 8369833, 8369989, 8370161, 8370311, 8370491, 8370673, 8370833, 8371009, 8371193]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8368439 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8368439 8371193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8368439) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8371373, 8371547, 8371729, 8371907, 8372083, 8372261, 8372423, 8372599, 8372783, 8372963, 8373139, 8373293, 8373467, 8373649, 8373829, 8373997]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8371193 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8371193 8373997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8371193) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8374181, 8374363, 8374547, 8374721, 8374871, 8375047, 8375189, 8375359, 8375533, 8375683, 8375863, 8376037, 8376217, 8376377, 8376551, 8376721]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8373997 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8373997 8376721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8373997) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8376889, 8377063, 8377247, 8377427, 8377601, 8377783, 8377951, 8378131, 8378311, 8378483, 8378659, 8378833, 8379017, 8379197, 8379373, 8379557]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8376721 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8376721 8379557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8376721) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8292203 8297719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8294999) (hi := 8297719) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8297719 8303063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8297719)
    (mid := 8300323) (hi := 8303063) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8303063 8308373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8303063)
    (mid := 8305697) (hi := 8308373) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8308373 8313919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8308373)
    (mid := 8311117) (hi := 8313919) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8313919 8319431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8313919)
    (mid := 8316701) (hi := 8319431) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8319431 8324807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8319431)
    (mid := 8322121) (hi := 8324807) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8324807 8330239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8324807)
    (mid := 8327483) (hi := 8330239) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8330239 8335643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8330239)
    (mid := 8332939) (hi := 8335643) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8335643 8341153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8335643)
    (mid := 8338361) (hi := 8341153) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8341153 8346703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8341153)
    (mid := 8343887) (hi := 8346703) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8346703 8352161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8346703)
    (mid := 8349433) (hi := 8352161) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8352161 8357651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8352161)
    (mid := 8354897) (hi := 8357651) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8357651 8362973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8357651)
    (mid := 8360309) (hi := 8362973) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8362973 8368439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8362973)
    (mid := 8365741) (hi := 8368439) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8368439 8373997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8368439)
    (mid := 8371193) (hi := 8373997) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8373997 8379557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8373997)
    (mid := 8376721) (hi := 8379557) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8292203 8303063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8297719) (hi := 8303063) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8303063 8313919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8303063)
    (mid := 8308373) (hi := 8313919) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8313919 8324807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8313919)
    (mid := 8319431) (hi := 8324807) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8324807 8335643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8324807)
    (mid := 8330239) (hi := 8335643) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8335643 8346703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8335643)
    (mid := 8341153) (hi := 8346703) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8346703 8357651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8346703)
    (mid := 8352161) (hi := 8357651) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8357651 8368439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8357651)
    (mid := 8362973) (hi := 8368439) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8368439 8379557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8368439)
    (mid := 8373997) (hi := 8379557) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8292203 8313919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8303063) (hi := 8313919) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8313919 8335643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8313919)
    (mid := 8324807) (hi := 8335643) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8335643 8357651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8335643)
    (mid := 8346703) (hi := 8357651) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8357651 8379557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8357651)
    (mid := 8368439) (hi := 8379557) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8292203 8335643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8313919) (hi := 8335643) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8335643 8379557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8335643)
    (mid := 8357651) (hi := 8379557) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8292203 8379557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8335643) (hi := 8379557) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8292203 8379557 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block094

#print axioms B699MiddleExtension.PrimorialBlocks.Block094.joined
