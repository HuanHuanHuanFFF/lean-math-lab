import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block200

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17566807, 17566981, 17567159, 17567323, 17567503, 17567687, 17567867, 17568043, 17568203, 17568379, 17568547, 17568721, 17568893, 17569067, 17569231, 17569397]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17566669 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17566669 17569397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17566669) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17569577, 17569751, 17569919, 17570089, 17570261, 17570437, 17570599, 17570779, 17570963, 17571131, 17571271, 17571443, 17571623, 17571803, 17571971, 17572153]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17569397 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17569397 17572153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17569397) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17572333, 17572507, 17572673, 17572847, 17573029, 17573203, 17573383, 17573477, 17573657, 17573837, 17574013, 17574197, 17574367, 17574547, 17574727, 17574911]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17572153 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17572153 17574911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17572153) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17575081, 17575249, 17575417, 17575601, 17575783, 17575967, 17576131, 17576309, 17576491, 17576633, 17576773, 17576953, 17577137, 17577317, 17577499, 17577673]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17574911 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17574911 17577673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17574911) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17577839, 17578009, 17578193, 17578373, 17578541, 17578711, 17578879, 17579059, 17579231, 17579381, 17579563, 17579719, 17579899, 17580067, 17580247, 17580391]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17577673 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17577673 17580391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17577673) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17580569, 17580727, 17580911, 17581093, 17581273, 17581429, 17581607, 17581789, 17581957, 17582137, 17582311, 17582483, 17582639, 17582813, 17582993, 17583161]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17580391 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17580391 17583161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17580391) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17583343, 17583521, 17583703, 17583887, 17584067, 17584249, 17584429, 17584607, 17584789, 17584943, 17585093, 17585257, 17585437, 17585609, 17585783, 17585947]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17583161 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17583161 17585947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17583161) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17586113, 17586293, 17586463, 17586643, 17586797, 17586979, 17587159, 17587343, 17587499, 17587681, 17587861, 17588033, 17588213, 17588393, 17588573, 17588743]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17585947 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17585947 17588743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17585947) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17588911, 17589073, 17589217, 17589391, 17589563, 17589739, 17589907, 17590091, 17590259, 17590421, 17590603, 17590777, 17590961, 17591143, 17591303, 17591479]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17588743 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17588743 17591479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17588743) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17591653, 17591831, 17591999, 17592149, 17592329, 17592511, 17592683, 17592863, 17593039, 17593217, 17593393, 17593573, 17593757, 17593931, 17594113, 17594293]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17591479 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17591479 17594293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17591479) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17594443, 17594623, 17594807, 17594981, 17595143, 17595307, 17595467, 17595649, 17595827, 17595997, 17596171, 17596351, 17596531, 17596703, 17596877, 17597053]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17594293 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17594293 17597053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17594293) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17597221, 17597383, 17597549, 17597731, 17597893, 17598071, 17598227, 17598403, 17598583, 17598709, 17598871, 17599033, 17599217, 17599399, 17599579, 17599741]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17597053 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17597053 17599741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17597053) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17599891, 17600069, 17600239, 17600413, 17600573, 17600753, 17600917, 17601091, 17601257, 17601439, 17601599, 17601781, 17601949, 17602127, 17602309, 17602483]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17599741 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17599741 17602483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17599741) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17602657, 17602799, 17602979, 17603149, 17603317, 17603501, 17603683, 17603863, 17604019, 17604161, 17604287, 17604449, 17604619, 17604803, 17604971, 17605151]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17602483 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17602483 17605151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17602483) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17605333, 17605501, 17605669, 17605853, 17606011, 17606167, 17606333, 17606489, 17606669, 17606851, 17607011, 17607169, 17607353, 17607521, 17607679, 17607853]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17605151 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17605151 17607853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17605151) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17608009, 17608139, 17608319, 17608483, 17608663, 17608847, 17609017, 17609201, 17609381, 17609549, 17609723, 17609857, 17610041, 17610223, 17610401, 17610583]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17607853 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17607853 17610583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17607853) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17610763, 17610919, 17611079, 17611183, 17611367, 17611501, 17611681, 17611861, 17612041, 17612213, 17612383, 17612531, 17612711, 17612891, 17613061, 17613227]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17610583 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17610583 17613227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17610583) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17613389, 17613571, 17613733, 17613917, 17614081, 17614253, 17614433, 17614609, 17614777, 17614943, 17615123, 17615249, 17615419, 17615593, 17615777, 17615951]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17613227 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17613227 17615951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17613227) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17616133, 17616317, 17616497, 17616679, 17616821, 17616979, 17617157, 17617319, 17617499, 17617679, 17617861, 17618009, 17618191, 17618369, 17618551, 17618723]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17615951 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17615951 17618723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17615951) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17618903, 17619079, 17619247, 17619421, 17619601, 17619781, 17619961, 17620133, 17620259, 17620423, 17620579, 17620747, 17620919, 17621101, 17621273, 17621449]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17618723 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17618723 17621449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17618723) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17621629, 17621777, 17621951, 17622079, 17622263, 17622431, 17622611, 17622751, 17622929, 17623103, 17623253, 17623429, 17623603, 17623787, 17623961, 17624129]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17621449 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17621449 17624129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17621449) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17624309, 17624479, 17624641, 17624813, 17624993, 17625169, 17625341, 17625497, 17625677, 17625857, 17626031, 17626207, 17626391, 17626571, 17626753, 17626933]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17624129 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17624129 17626933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17624129) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17627107, 17627279, 17627461, 17627629, 17627783, 17627921, 17628089, 17628263, 17628407, 17628563, 17628733, 17628917, 17629067, 17629237, 17629411, 17629589]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17626933 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17626933 17629589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17626933) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17629771, 17629933, 17630117, 17630297, 17630471, 17630573, 17630749, 17630929, 17631113, 17631293, 17631463, 17631637, 17631821, 17631983, 17632163, 17632339]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17629589 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17629589 17632339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17629589) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17632523, 17632687, 17632871, 17633023, 17633167, 17633351, 17633531, 17633689, 17633857, 17634007, 17634187, 17634367, 17634521, 17634703, 17634863, 17635019]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17632339 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17632339 17635019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17632339) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17635201, 17635381, 17635543, 17635727, 17635907, 17636081, 17636257, 17636441, 17636557, 17636719, 17636903, 17637083, 17637247, 17637391, 17637553, 17637733]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17635019 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17635019 17637733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17635019) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17637911, 17638091, 17638273, 17638457, 17638619, 17638801, 17638981, 17639131, 17639287, 17639443, 17639623, 17639803, 17639981, 17640143, 17640313, 17640487]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17637733 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17637733 17640487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17637733) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17640661, 17640817, 17640989, 17641159, 17641339, 17641523, 17641693, 17641817, 17641999, 17642171, 17642333, 17642509, 17642683, 17642843, 17643019, 17643173]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17640487 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17640487 17643173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17640487) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17643349, 17643491, 17643667, 17643839, 17644001, 17644171, 17644343, 17644513, 17644687, 17644867, 17645039, 17645213, 17645389, 17645567, 17645729, 17645909]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17643173 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17643173 17645909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17643173) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17646073, 17646241, 17646407, 17646583, 17646691, 17646857, 17647033, 17647213, 17647397, 17647577, 17647741, 17647913, 17648063, 17648237, 17648387, 17648551]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17645909 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17645909 17648551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17645909) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17648723, 17648899, 17649067, 17649223, 17649391, 17649559, 17649733, 17649899, 17650057, 17650229, 17650393, 17650559, 17650741, 17650921, 17651099, 17651269]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17648551 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17648551 17651269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17648551) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17651449, 17651609, 17651789, 17651947, 17652013, 17652163, 17652343, 17652491, 17652667, 17652847, 17653019, 17653201, 17653379, 17653553, 17653733, 17653913]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17651269 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17651269 17653913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17651269) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17566669 17572153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17569397) (hi := 17572153) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17572153 17577673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17572153)
    (mid := 17574911) (hi := 17577673) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17577673 17583161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17577673)
    (mid := 17580391) (hi := 17583161) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17583161 17588743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17583161)
    (mid := 17585947) (hi := 17588743) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17588743 17594293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17588743)
    (mid := 17591479) (hi := 17594293) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17594293 17599741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17594293)
    (mid := 17597053) (hi := 17599741) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17599741 17605151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17599741)
    (mid := 17602483) (hi := 17605151) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17605151 17610583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17605151)
    (mid := 17607853) (hi := 17610583) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17610583 17615951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17610583)
    (mid := 17613227) (hi := 17615951) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17615951 17621449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17615951)
    (mid := 17618723) (hi := 17621449) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17621449 17626933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17621449)
    (mid := 17624129) (hi := 17626933) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17626933 17632339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17626933)
    (mid := 17629589) (hi := 17632339) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17632339 17637733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17632339)
    (mid := 17635019) (hi := 17637733) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17637733 17643173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17637733)
    (mid := 17640487) (hi := 17643173) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17643173 17648551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17643173)
    (mid := 17645909) (hi := 17648551) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17648551 17653913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17648551)
    (mid := 17651269) (hi := 17653913) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17566669 17577673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17572153) (hi := 17577673) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17577673 17588743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17577673)
    (mid := 17583161) (hi := 17588743) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17588743 17599741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17588743)
    (mid := 17594293) (hi := 17599741) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17599741 17610583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17599741)
    (mid := 17605151) (hi := 17610583) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17610583 17621449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17610583)
    (mid := 17615951) (hi := 17621449) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17621449 17632339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17621449)
    (mid := 17626933) (hi := 17632339) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17632339 17643173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17632339)
    (mid := 17637733) (hi := 17643173) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17643173 17653913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17643173)
    (mid := 17648551) (hi := 17653913) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17566669 17588743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17577673) (hi := 17588743) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17588743 17610583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17588743)
    (mid := 17599741) (hi := 17610583) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17610583 17632339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17610583)
    (mid := 17621449) (hi := 17632339) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17632339 17653913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17632339)
    (mid := 17643173) (hi := 17653913) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17566669 17610583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17588743) (hi := 17610583) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17610583 17653913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17610583)
    (mid := 17632339) (hi := 17653913) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17566669 17653913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17610583) (hi := 17653913) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17566669 17653913 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block200

#print axioms B699MiddleExtension.PrimorialBlocks.Block200.joined
