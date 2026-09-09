import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block082

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7239293, 7239469, 7239653, 7239823, 7240001, 7240183, 7240361, 7240531, 7240693, 7240873, 7241053, 7241207, 7241363, 7241537, 7241701, 7241797]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7239109 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7239109 7241797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7239109) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7241977, 7242149, 7242329, 7242511, 7242679, 7242863, 7243021, 7243189, 7243339, 7243519, 7243697, 7243879, 7244053, 7244233, 7244407, 7244591]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7241797 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7241797 7244591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7241797) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7244773, 7244957, 7245127, 7245311, 7245467, 7245619, 7245787, 7245949, 7246133, 7246313, 7246483, 7246667, 7246843, 7247021, 7247179, 7247363]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7244591 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7244591 7247363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7244591) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7247543, 7247719, 7247897, 7248077, 7248251, 7248413, 7248587, 7248751, 7248893, 7249049, 7249223, 7249399, 7249573, 7249747, 7249927, 7250099]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7247363 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7247363 7250099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7247363) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7250281, 7250429, 7250599, 7250777, 7250939, 7251091, 7251269, 7251397, 7251577, 7251757, 7251941, 7252087, 7252253, 7252417, 7252601, 7252783]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7250099 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7250099 7252783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7250099) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7252967, 7253137, 7253321, 7253483, 7253657, 7253837, 7254011, 7254193, 7254349, 7254517, 7254679, 7254857, 7255037, 7255211, 7255357, 7255529]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7252783 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7252783 7255529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7252783) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7255711, 7255883, 7256047, 7256213, 7256393, 7256539, 7256719, 7256903, 7257083, 7257253, 7257431, 7257577, 7257749, 7257911, 7258093, 7258261]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7255529 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7255529 7258261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7255529) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7258421, 7258583, 7258753, 7258921, 7259101, 7259279, 7259453, 7259633, 7259809, 7259977, 7260133, 7260313, 7260493, 7260667, 7260839, 7261003]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7258261 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7258261 7261003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7258261) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7261187, 7261369, 7261531, 7261699, 7261871, 7262051, 7262201, 7262357, 7262533, 7262677, 7262861, 7263043, 7263227, 7263409, 7263593, 7263749]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7261003 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7261003 7263749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7261003) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7263931, 7264111, 7264277, 7264399, 7264583, 7264759, 7264937, 7265107, 7265287, 7265381, 7265549, 7265729, 7265911, 7266079, 7266253, 7266433]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7263749 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7263749 7266433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7263749) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7266601, 7266773, 7266947, 7267123, 7267303, 7267459, 7267639, 7267811, 7267991, 7268159, 7268329, 7268509, 7268693, 7268857, 7269023, 7269203]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7266433 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7266433 7269203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7266433) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7269373, 7269539, 7269719, 7269893, 7270061, 7270189, 7270349, 7270519, 7270693, 7270871, 7271027, 7271191, 7271321, 7271503, 7271683, 7271867]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7269203 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7269203 7271867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7269203) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7272049, 7272229, 7272409, 7272593, 7272767, 7272943, 7273099, 7273283, 7273463, 7273639, 7273817, 7273999, 7274177, 7274357, 7274537, 7274719]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7271867 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7271867 7274719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7271867) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7274893, 7275077, 7275239, 7275403, 7275571, 7275743, 7275923, 7276099, 7276279, 7276463, 7276637, 7276813, 7276987, 7277147, 7277329, 7277503]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7274719 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7274719 7277503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7274719) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7277687, 7277861, 7278041, 7278209, 7278389, 7278571, 7278727, 7278883, 7279067, 7279249, 7279429, 7279607, 7279763, 7279939, 7280113, 7280293]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7277503 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7277503 7280293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7277503) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7280461, 7280639, 7280809, 7280993, 7281167, 7281301, 7281473, 7281653, 7281803, 7281977, 7282157, 7282333, 7282507, 7282679, 7282853, 7282999]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7280293 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7280293 7282999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7280293) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7283173, 7283351, 7283533, 7283711, 7283891, 7284073, 7284257, 7284421, 7284569, 7284749, 7284899, 7285081, 7285253, 7285429, 7285613, 7285787]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7282999 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7282999 7285787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7282999) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7285919, 7286099, 7286261, 7286437, 7286621, 7286803, 7286969, 7287131, 7287289, 7287473, 7287647, 7287817, 7287997, 7288181, 7288361, 7288531]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7285787 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7285787 7288531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7285787) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7288711, 7288891, 7289071, 7289239, 7289423, 7289603, 7289773, 7289921, 7290089, 7290271, 7290449, 7290631, 7290809, 7290991, 7291159, 7291327]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7288531 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7288531 7291327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7288531) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7291507, 7291663, 7291831, 7292011, 7292183, 7292359, 7292531, 7292707, 7292869, 7293023, 7293199, 7293379, 7293547, 7293719, 7293899, 7293989]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7291327 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7291327 7293989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7291327) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7294169, 7294349, 7294459, 7294643, 7294811, 7294949, 7295131, 7295303, 7295473, 7295657, 7295837, 7296017, 7296193, 7296329, 7296493, 7296673]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7293989 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7293989 7296673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7293989) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7296857, 7297033, 7297189, 7297333, 7297489, 7297669, 7297847, 7298017, 7298201, 7298381, 7298507, 7298663, 7298839, 7299023, 7299203, 7299367]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7296673 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7296673 7299367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7296673) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7299529, 7299709, 7299889, 7300049, 7300231, 7300409, 7300577, 7300753, 7300919, 7301087, 7301257, 7301431, 7301597, 7301753, 7301933, 7302107]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7299367 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7299367 7302107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7299367) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7302271, 7302443, 7302619, 7302793, 7302943, 7303117, 7303301, 7303481, 7303663, 7303843, 7304009, 7304183, 7304359, 7304537, 7304719, 7304903]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7302107 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7302107 7304903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7302107) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7305073, 7305241, 7305413, 7305587, 7305763, 7305923, 7306097, 7306267, 7306423, 7306589, 7306771, 7306933, 7307099, 7307273, 7307441, 7307621]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7304903 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7304903 7307621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7304903) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7307803, 7307987, 7308137, 7308313, 7308491, 7308671, 7308817, 7308991, 7309171, 7309343, 7309427, 7309579, 7309751, 7309933, 7310087, 7310263]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7307621 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7307621 7310263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7307621) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7310447, 7310627, 7310783, 7310959, 7311127, 7311287, 7311467, 7311593, 7311737, 7311893, 7312069, 7312243, 7312427, 7312583, 7312759, 7312933]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7310263 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7310263 7312933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7310263) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7313113, 7313297, 7313459, 7313641, 7313819, 7313983, 7314163, 7314337, 7314511, 7314683, 7314833, 7315013, 7315169, 7315339, 7315499, 7315673]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7312933 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7312933 7315673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7312933) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7315853, 7316027, 7316203, 7316371, 7316549, 7316723, 7316893, 7317073, 7317253, 7317437, 7317619, 7317797, 7317977, 7318159, 7318327, 7318499]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7315673 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7315673 7318499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7315673) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7318681, 7318849, 7319017, 7319201, 7319383, 7319561, 7319743, 7319909, 7320091, 7320259, 7320437, 7320617, 7320799, 7320983, 7321163, 7321319]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7318499 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7318499 7321319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7318499) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7321469, 7321627, 7321789, 7321969, 7322153, 7322309, 7322489, 7322669, 7322839, 7323013, 7323181, 7323359, 7323539, 7323661, 7323839, 7324013]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7321319 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7321319 7324013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7321319) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7324171, 7324351, 7324531, 7324703, 7324873, 7325053, 7325231, 7325413, 7325587, 7325767, 7325947, 7326107, 7326289, 7326467, 7326619, 7326749]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7324013 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7324013 7326749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7324013) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7239109 7244591 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7241797) (hi := 7244591) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7244591 7250099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7244591)
    (mid := 7247363) (hi := 7250099) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7250099 7255529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7250099)
    (mid := 7252783) (hi := 7255529) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7255529 7261003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7255529)
    (mid := 7258261) (hi := 7261003) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7261003 7266433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7261003)
    (mid := 7263749) (hi := 7266433) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7266433 7271867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7266433)
    (mid := 7269203) (hi := 7271867) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7271867 7277503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7271867)
    (mid := 7274719) (hi := 7277503) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7277503 7282999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7277503)
    (mid := 7280293) (hi := 7282999) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7282999 7288531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7282999)
    (mid := 7285787) (hi := 7288531) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7288531 7293989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7288531)
    (mid := 7291327) (hi := 7293989) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7293989 7299367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7293989)
    (mid := 7296673) (hi := 7299367) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7299367 7304903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7299367)
    (mid := 7302107) (hi := 7304903) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7304903 7310263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7304903)
    (mid := 7307621) (hi := 7310263) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7310263 7315673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7310263)
    (mid := 7312933) (hi := 7315673) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7315673 7321319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7315673)
    (mid := 7318499) (hi := 7321319) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7321319 7326749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7321319)
    (mid := 7324013) (hi := 7326749) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7239109 7250099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7244591) (hi := 7250099) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7250099 7261003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7250099)
    (mid := 7255529) (hi := 7261003) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7261003 7271867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7261003)
    (mid := 7266433) (hi := 7271867) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7271867 7282999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7271867)
    (mid := 7277503) (hi := 7282999) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7282999 7293989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7282999)
    (mid := 7288531) (hi := 7293989) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7293989 7304903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7293989)
    (mid := 7299367) (hi := 7304903) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7304903 7315673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7304903)
    (mid := 7310263) (hi := 7315673) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7315673 7326749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7315673)
    (mid := 7321319) (hi := 7326749) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7239109 7261003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7250099) (hi := 7261003) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7261003 7282999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7261003)
    (mid := 7271867) (hi := 7282999) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7282999 7304903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7282999)
    (mid := 7293989) (hi := 7304903) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7304903 7326749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7304903)
    (mid := 7315673) (hi := 7326749) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7239109 7282999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7261003) (hi := 7282999) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7282999 7326749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7282999)
    (mid := 7304903) (hi := 7326749) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7239109 7326749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7282999) (hi := 7326749) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7239109 7326749 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block082

#print axioms B699MiddleExtension.PrimorialBlocks.Block082.joined
