import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block078

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6888199, 6888379, 6888559, 6888737, 6888877, 6889049, 6889219, 6889391, 6889549, 6889721, 6889901, 6890077, 6890249, 6890413, 6890591, 6890761]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6888019 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6888019 6890761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6888019) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6890861, 6891041, 6891221, 6891383, 6891557, 6891733, 6891917, 6892099, 6892273, 6892393, 6892559, 6892741, 6892913, 6893087, 6893267, 6893441]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6890761 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6890761 6893441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6890761) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6893611, 6893753, 6893933, 6894103, 6894269, 6894439, 6894623, 6894791, 6894971, 6895139, 6895303, 6895487, 6895663, 6895817, 6895991, 6896173]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6893441 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6893441 6896173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6893441) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6896347, 6896531, 6896707, 6896887, 6896999, 6897173, 6897353, 6897533, 6897691, 6897857, 6898037, 6898187, 6898363, 6898547, 6898667, 6898841]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6896173 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6896173 6898841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6896173) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6899023, 6899201, 6899383, 6899561, 6899719, 6899899, 6900083, 6900233, 6900409, 6900577, 6900739, 6900923, 6901091, 6901273, 6901451, 6901613]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6898841 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6898841 6901613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6898841) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6901789, 6901957, 6902141, 6902321, 6902503, 6902671, 6902851, 6903007, 6903191, 6903371, 6903529, 6903679, 6903811, 6903977, 6904133, 6904309]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6901613 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6901613 6904309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6901613) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6904487, 6904649, 6904831, 6905011, 6905191, 6905363, 6905533, 6905713, 6905881, 6906061, 6906239, 6906421, 6906593, 6906763, 6906943, 6907111]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6904309 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6904309 6907111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6904309) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6907259, 6907441, 6907619, 6907799, 6907969, 6908149, 6908329, 6908507, 6908687, 6908857, 6909041, 6909173, 6909347, 6909503, 6909677, 6909841]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6907111 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6907111 6909841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6907111) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6909997, 6910159, 6910333, 6910513, 6910697, 6910867, 6911033, 6911207, 6911389, 6911561, 6911743, 6911917, 6912091, 6912271, 6912407, 6912583]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6909841 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6909841 6912583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6909841) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6912757, 6912929, 6913111, 6913273, 6913457, 6913631, 6913813, 6913997, 6914177, 6914353, 6914473, 6914657, 6914821, 6914989, 6915173, 6915319]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6912583 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6912583 6915319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6912583) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6915499, 6915683, 6915863, 6916033, 6916199, 6916339, 6916519, 6916697, 6916873, 6917047, 6917221, 6917381, 6917551, 6917731, 6917899, 6918083]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6915319 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6915319 6918083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6915319) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6918257, 6918433, 6918599, 6918763, 6918943, 6919117, 6919279, 6919463, 6919639, 6919817, 6919993, 6920149, 6920323, 6920489, 6920651, 6920833]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6918083 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6918083 6920833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6918083) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6921017, 6921197, 6921353, 6921527, 6921709, 6921883, 6922051, 6922231, 6922397, 6922577, 6922759, 6922943, 6923123, 6923303, 6923479, 6923627]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6920833 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6920833 6923627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6920833) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6923783, 6923929, 6924107, 6924277, 6924451, 6924629, 6924787, 6924961, 6925123, 6925301, 6925483, 6925663, 6925847, 6926011, 6926177, 6926357]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6923627 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6923627 6926357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6923627) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6926501, 6926669, 6926851, 6927023, 6927181, 6927329, 6927511, 6927689, 6927871, 6928049, 6928219, 6928349, 6928529, 6928703, 6928871, 6929033]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6926357 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6926357 6929033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6926357) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6929203, 6929381, 6929563, 6929729, 6929903, 6930073, 6930257, 6930431, 6930607, 6930779, 6930961, 6931129, 6931313, 6931481, 6931657, 6931831]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6929033 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6929033 6931831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6929033) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6931997, 6932179, 6932339, 6932489, 6932669, 6932837, 6933013, 6933197, 6933379, 6933559, 6933721, 6933893, 6934033, 6934217, 6934397, 6934579]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6931831 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6931831 6934579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6931831) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6934757, 6934933, 6935113, 6935297, 6935479, 6935629, 6935809, 6935993, 6936151, 6936313, 6936473, 6936641, 6936821, 6936997, 6937171, 6937349]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6934579 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6934579 6937349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6934579) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6937519, 6937661, 6937841, 6938011, 6938189, 6938359, 6938531, 6938681, 6938861, 6939029, 6939193, 6939367, 6939551, 6939733, 6939901, 6940069]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6937349 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6937349 6940069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6937349) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6940223, 6940399, 6940561, 6940741, 6940919, 6941093, 6941257, 6941437, 6941603, 6941777, 6941953, 6942121, 6942301, 6942469, 6942631, 6942799]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6940069 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6940069 6942799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6940069) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6942983, 6943147, 6943319, 6943501, 6943681, 6943819, 6943991, 6944159, 6944317, 6944501, 6944681, 6944851, 6945017, 6945199, 6945361, 6945541]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6942799 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6942799 6945541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6942799) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6945713, 6945889, 6946063, 6946241, 6946411, 6946559, 6946729, 6946909, 6947089, 6947273, 6947419, 6947593, 6947777, 6947959, 6948143, 6948307]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6945541 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6945541 6948307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6945541) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6948481, 6948659, 6948793, 6948973, 6949147, 6949331, 6949489, 6949661, 6949823, 6949993, 6950159, 6950323, 6950507, 6950683, 6950843, 6951023]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6948307 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6948307 6951023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6948307) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6951199, 6951383, 6951563, 6951733, 6951913, 6952097, 6952261, 6952441, 6952607, 6952789, 6952961, 6953137, 6953311, 6953483, 6953651, 6953819]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6951023 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6951023 6953819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6951023) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6953993, 6954149, 6954319, 6954503, 6954613, 6954797, 6954977, 6955153, 6955327, 6955477, 6955661, 6955841, 6956021, 6956203, 6956387, 6956567]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6953819 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6953819 6956567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6953819) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6956737, 6956909, 6957091, 6957259, 6957427, 6957611, 6957791, 6957967, 6958111, 6958277, 6958447, 6958621, 6958801, 6958957, 6959123, 6959297]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6956567 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6956567 6959297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6956567) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6959471, 6959651, 6959831, 6960001, 6960169, 6960353, 6960533, 6960713, 6960887, 6961063, 6961231, 6961403, 6961583, 6961753, 6961931, 6962107]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6959297 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6959297 6962107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6959297) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6962281, 6962447, 6962617, 6962801, 6962971, 6963137, 6963301, 6963479, 6963611, 6963793, 6963967, 6964123, 6964291, 6964471, 6964651, 6964831]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6962107 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6962107 6964831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6962107) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6964973, 6965131, 6965311, 6965459, 6965627, 6965809, 6965977, 6966151, 6966329, 6966469, 6966649, 6966829, 6966997, 6967151, 6967313, 6967483]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6964831 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6964831 6967483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6964831) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6967657, 6967837, 6968009, 6968183, 6968359, 6968539, 6968723, 6968891, 6969047, 6969229, 6969401, 6969563, 6969733, 6969917, 6970099, 6970279]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6967483 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6967483 6970279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6967483) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6970463, 6970637, 6970813, 6970981, 6971161, 6971333, 6971509, 6971693, 6971863, 6972041, 6972127, 6972311, 6972491, 6972661, 6972827, 6973007]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6970279 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6970279 6973007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6970279) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6973147, 6973319, 6973489, 6973663, 6973847, 6974017, 6974179, 6974351, 6974531, 6974711, 6974887, 6975061, 6975239, 6975407, 6975587, 6975769]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6973007 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6973007 6975769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6973007) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6888019 6893441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6890761) (hi := 6893441) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6893441 6898841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6893441)
    (mid := 6896173) (hi := 6898841) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6898841 6904309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6898841)
    (mid := 6901613) (hi := 6904309) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6904309 6909841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6904309)
    (mid := 6907111) (hi := 6909841) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6909841 6915319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6909841)
    (mid := 6912583) (hi := 6915319) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6915319 6920833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6915319)
    (mid := 6918083) (hi := 6920833) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6920833 6926357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6920833)
    (mid := 6923627) (hi := 6926357) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6926357 6931831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6926357)
    (mid := 6929033) (hi := 6931831) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6931831 6937349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6931831)
    (mid := 6934579) (hi := 6937349) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6937349 6942799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6937349)
    (mid := 6940069) (hi := 6942799) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6942799 6948307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6942799)
    (mid := 6945541) (hi := 6948307) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6948307 6953819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6948307)
    (mid := 6951023) (hi := 6953819) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6953819 6959297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6953819)
    (mid := 6956567) (hi := 6959297) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6959297 6964831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6959297)
    (mid := 6962107) (hi := 6964831) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6964831 6970279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6964831)
    (mid := 6967483) (hi := 6970279) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6970279 6975769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6970279)
    (mid := 6973007) (hi := 6975769) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6888019 6898841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6893441) (hi := 6898841) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6898841 6909841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6898841)
    (mid := 6904309) (hi := 6909841) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6909841 6920833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6909841)
    (mid := 6915319) (hi := 6920833) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6920833 6931831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6920833)
    (mid := 6926357) (hi := 6931831) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6931831 6942799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6931831)
    (mid := 6937349) (hi := 6942799) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6942799 6953819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6942799)
    (mid := 6948307) (hi := 6953819) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6953819 6964831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6953819)
    (mid := 6959297) (hi := 6964831) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6964831 6975769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6964831)
    (mid := 6970279) (hi := 6975769) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6888019 6909841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6898841) (hi := 6909841) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6909841 6931831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6909841)
    (mid := 6920833) (hi := 6931831) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6931831 6953819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6931831)
    (mid := 6942799) (hi := 6953819) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6953819 6975769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6953819)
    (mid := 6964831) (hi := 6975769) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6888019 6931831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6909841) (hi := 6931831) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6931831 6975769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6931831)
    (mid := 6953819) (hi := 6975769) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6888019 6975769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6931831) (hi := 6975769) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6888019 6975769 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block078

#print axioms B699MiddleExtension.PrimorialBlocks.Block078.joined
