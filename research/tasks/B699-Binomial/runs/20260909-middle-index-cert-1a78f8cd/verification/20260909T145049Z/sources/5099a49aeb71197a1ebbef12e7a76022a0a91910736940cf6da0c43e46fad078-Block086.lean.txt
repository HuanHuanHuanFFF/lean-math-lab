import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block086

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7589597, 7589731, 7589903, 7590073, 7590227, 7590389, 7590571, 7590743, 7590893, 7591043, 7591217, 7591387, 7591553, 7591729, 7591907, 7592089]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7589423 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7589423 7592089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7589423) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7592261, 7592423, 7592579, 7592759, 7592941, 7593119, 7593301, 7593479, 7593661, 7593827, 7594009, 7594193, 7594339, 7594519, 7594693, 7594877]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7592089 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7592089 7594877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7592089) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7595057, 7595239, 7595411, 7595587, 7595761, 7595927, 7596107, 7596283, 7596451, 7596629, 7596793, 7596947, 7597097, 7597277, 7597459, 7597643]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7594877 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7594877 7597643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7594877) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7597823, 7597979, 7598159, 7598341, 7598519, 7598699, 7598873, 7599049, 7599203, 7599379, 7599551, 7599707, 7599887, 7600069, 7600231, 7600403]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7597643 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7597643 7600403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7597643) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7600573, 7600757, 7600933, 7601117, 7601287, 7601467, 7601651, 7601833, 7602017, 7602193, 7602377, 7602547, 7602709, 7602863, 7603033, 7603213]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7600403 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7600403 7603213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7600403) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7603397, 7603577, 7603723, 7603903, 7604087, 7604243, 7604411, 7604587, 7604771, 7604953, 7605133, 7605293, 7605473, 7605641, 7605821, 7605971]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7603213 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7603213 7605971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7603213) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7606153, 7606337, 7606499, 7606681, 7606849, 7607029, 7607209, 7607393, 7607557, 7607729, 7607911, 7608079, 7608259, 7608439, 7608613, 7608793]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7605971 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7605971 7608793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7605971) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7608977, 7609153, 7609337, 7609501, 7609681, 7609843, 7610003, 7610179, 7610363, 7610521, 7610693, 7610873, 7611047, 7611217, 7611389, 7611557]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7608793 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7608793 7611557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7608793) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7611719, 7611889, 7612063, 7612229, 7612403, 7612547, 7612727, 7612909, 7613071, 7613251, 7613387, 7613539, 7613719, 7613867, 7614017, 7614199]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7611557 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7611557 7614199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7611557) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7614371, 7614553, 7614709, 7614847, 7615009, 7615187, 7615357, 7615519, 7615697, 7615879, 7616057, 7616239, 7616423, 7616599, 7616771, 7616923]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7614199 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7614199 7616923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7614199) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7617091, 7617263, 7617433, 7617607, 7617773, 7617949, 7618103, 7618249, 7618427, 7618609, 7618789, 7618973, 7619147, 7619329, 7619503, 7619683]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7616923 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7616923 7619683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7616923) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7619867, 7620049, 7620227, 7620407, 7620559, 7620737, 7620911, 7621093, 7621259, 7621433, 7621609, 7621769, 7621927, 7622101, 7622281, 7622449]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7619683 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7619683 7622449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7619683) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7622633, 7622779, 7622941, 7623113, 7623289, 7623457, 7623619, 7623779, 7623953, 7624121, 7624291, 7624471, 7624649, 7624831, 7625011, 7625171]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7622449 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7622449 7625171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7622449) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7625341, 7625509, 7625689, 7625867, 7626029, 7626197, 7626373, 7626539, 7626721, 7626901, 7627063, 7627247, 7627429, 7627603, 7627751, 7627931]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7625171 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7625171 7627931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7625171) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7628113, 7628293, 7628471, 7628629, 7628809, 7628987, 7629161, 7629329, 7629497, 7629637, 7629799, 7629983, 7630163, 7630333, 7630499, 7630669]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7627931 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7627931 7630669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7627931) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7630849, 7631021, 7631191, 7631359, 7631537, 7631693, 7631857, 7632013, 7632187, 7632367, 7632533, 7632701, 7632883, 7633039, 7633181, 7633363]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7630669 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7630669 7633363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7630669) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7633547, 7633679, 7633859, 7634041, 7634203, 7634387, 7634567, 7634749, 7634933, 7635101, 7635281, 7635461, 7635631, 7635809, 7635973, 7636147]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7633363 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7633363 7636147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7633363) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7636331, 7636511, 7636669, 7636829, 7637011, 7637153, 7637327, 7637477, 7637659, 7637831, 7638011, 7638173, 7638347, 7638523, 7638707, 7638889]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7636147 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7636147 7638889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7636147) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7639067, 7639249, 7639433, 7639607, 7639771, 7639927, 7640069, 7640249, 7640419, 7640579, 7640749, 7640933, 7641113, 7641289, 7641461, 7641637]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7638889 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7638889 7641637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7638889) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7641817, 7641989, 7642171, 7642343, 7642513, 7642681, 7642861, 7643039, 7643219, 7643399, 7643549, 7643731, 7643899, 7644083, 7644253, 7644433]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7641637 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7641637 7644433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7641637) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7644617, 7644799, 7644961, 7645117, 7645301, 7645483, 7645667, 7645843, 7646027, 7646201, 7646369, 7646519, 7646699, 7646861, 7647037, 7647221]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7644433 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7644433 7647221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7644433) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7647391, 7647571, 7647749, 7647931, 7648097, 7648261, 7648441, 7648609, 7648789, 7648967, 7649143, 7649311, 7649489, 7649671, 7649849, 7650031]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7647221 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7647221 7650031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7647221) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7650199, 7650373, 7650553, 7650733, 7650917, 7651097, 7651277, 7651421, 7651603, 7651783, 7651961, 7652129, 7652297, 7652471, 7652647, 7652819]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7650031 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7650031 7652819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7650031) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7652989, 7653157, 7653329, 7653509, 7653691, 7653847, 7654019, 7654189, 7654363, 7654541, 7654697, 7654873, 7655057, 7655239, 7655413, 7655597]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7652819 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7652819 7655597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7652819) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7655779, 7655953, 7656133, 7656301, 7656469, 7656653, 7656823, 7657007, 7657159, 7657339, 7657523, 7657691, 7657861, 7658017, 7658201, 7658383]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7655597 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7655597 7658383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7655597) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7658531, 7658713, 7658879, 7659059, 7659241, 7659419, 7659601, 7659749, 7659929, 7660099, 7660271, 7660427, 7660607, 7660787, 7660969, 7661119]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7658383 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7658383 7661119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7658383) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7661299, 7661483, 7661663, 7661837, 7662001, 7662173, 7662353, 7662517, 7662701, 7662877, 7663049, 7663223, 7663399, 7663567, 7663751, 7663927]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7661119 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7661119 7663927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7661119) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7664077, 7664249, 7664407, 7664563, 7664737, 7664887, 7665071, 7665247, 7665431, 7665613, 7665787, 7665967, 7666151, 7666333, 7666501, 7666669]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7663927 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7663927 7666669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7663927) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7666853, 7667021, 7667183, 7667333, 7667483, 7667651, 7667827, 7668007, 7668161, 7668337, 7668481, 7668653, 7668833, 7669003, 7669177, 7669339]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7666669 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7666669 7669339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7666669) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7669517, 7669699, 7669877, 7670027, 7670207, 7670389, 7670573, 7670749, 7670903, 7671049, 7671227, 7671407, 7671583, 7671757, 7671941, 7672123]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7669339 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7669339 7672123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7669339) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7672307, 7672487, 7672669, 7672853, 7673011, 7673179, 7673357, 7673539, 7673723, 7673903, 7674049, 7674223, 7674389, 7674553, 7674731, 7674911]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7672123 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7672123 7674911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7672123) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7675067, 7675247, 7675427, 7675589, 7675771, 7675949, 7676113, 7676297, 7676477, 7676633, 7676807, 7676989, 7677169, 7677323, 7677503, 7677679]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7674911 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7674911 7677679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7674911) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7589423 7594877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7592089) (hi := 7594877) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7594877 7600403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7594877)
    (mid := 7597643) (hi := 7600403) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7600403 7605971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7600403)
    (mid := 7603213) (hi := 7605971) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7605971 7611557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7605971)
    (mid := 7608793) (hi := 7611557) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7611557 7616923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7611557)
    (mid := 7614199) (hi := 7616923) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7616923 7622449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7616923)
    (mid := 7619683) (hi := 7622449) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7622449 7627931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7622449)
    (mid := 7625171) (hi := 7627931) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7627931 7633363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7627931)
    (mid := 7630669) (hi := 7633363) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7633363 7638889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7633363)
    (mid := 7636147) (hi := 7638889) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7638889 7644433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7638889)
    (mid := 7641637) (hi := 7644433) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7644433 7650031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7644433)
    (mid := 7647221) (hi := 7650031) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7650031 7655597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7650031)
    (mid := 7652819) (hi := 7655597) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7655597 7661119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7655597)
    (mid := 7658383) (hi := 7661119) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7661119 7666669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7661119)
    (mid := 7663927) (hi := 7666669) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7666669 7672123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7666669)
    (mid := 7669339) (hi := 7672123) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7672123 7677679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7672123)
    (mid := 7674911) (hi := 7677679) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7589423 7600403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7594877) (hi := 7600403) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7600403 7611557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7600403)
    (mid := 7605971) (hi := 7611557) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7611557 7622449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7611557)
    (mid := 7616923) (hi := 7622449) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7622449 7633363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7622449)
    (mid := 7627931) (hi := 7633363) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7633363 7644433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7633363)
    (mid := 7638889) (hi := 7644433) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7644433 7655597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7644433)
    (mid := 7650031) (hi := 7655597) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7655597 7666669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7655597)
    (mid := 7661119) (hi := 7666669) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7666669 7677679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7666669)
    (mid := 7672123) (hi := 7677679) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7589423 7611557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7600403) (hi := 7611557) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7611557 7633363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7611557)
    (mid := 7622449) (hi := 7633363) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7633363 7655597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7633363)
    (mid := 7644433) (hi := 7655597) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7655597 7677679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7655597)
    (mid := 7666669) (hi := 7677679) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7589423 7633363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7611557) (hi := 7633363) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7633363 7677679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7633363)
    (mid := 7655597) (hi := 7677679) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7589423 7677679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7633363) (hi := 7677679) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7589423 7677679 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block086

#print axioms B699MiddleExtension.PrimorialBlocks.Block086.joined
