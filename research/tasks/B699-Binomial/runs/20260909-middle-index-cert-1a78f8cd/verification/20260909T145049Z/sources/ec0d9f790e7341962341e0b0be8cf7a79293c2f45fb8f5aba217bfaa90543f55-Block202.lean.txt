import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block202

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17741569, 17741753, 17741921, 17742091, 17742259, 17742427, 17742601, 17742761, 17742937, 17743109, 17743289, 17743471, 17743651, 17743813, 17743981, 17744159]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17741401 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17741401 17744159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17741401) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17744327, 17744483, 17744647, 17744801, 17744963, 17745137, 17745313, 17745493, 17745659, 17745839, 17745997, 17746163, 17746331, 17746499, 17746667, 17746847]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17744159 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17744159 17746847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17744159) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17747029, 17747207, 17747369, 17747549, 17747693, 17747867, 17748047, 17748217, 17748359, 17748541, 17748719, 17748877, 17748989, 17749163, 17749337, 17749519]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17746847 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17746847 17749519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17746847) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17749673, 17749847, 17750003, 17750147, 17750311, 17750479, 17750657, 17750833, 17751001, 17751163, 17751347, 17751511, 17751691, 17751863, 17752027, 17752211]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17749519 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17749519 17752211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17749519) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17752391, 17752571, 17752753, 17752927, 17753107, 17753291, 17753431, 17753563, 17753741, 17753893, 17754073, 17754251, 17754433, 17754601, 17754773, 17754943]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17752211 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17752211 17754943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17752211) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17755109, 17755271, 17755433, 17755579, 17755763, 17755943, 17756117, 17756293, 17756471, 17756623, 17756797, 17756953, 17757137, 17757319, 17757473, 17757653]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17754943 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17754943 17757653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17754943) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17757833, 17758007, 17758189, 17758343, 17758513, 17758679, 17758861, 17759039, 17759219, 17759393, 17759557, 17759719, 17759899, 17760073, 17760251, 17760433]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17757653 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17757653 17760433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17757653) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17760583, 17760739, 17760901, 17761049, 17761229, 17761399, 17761547, 17761721, 17761883, 17762057, 17762237, 17762419, 17762561, 17762743, 17762917, 17763101]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17760433 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17760433 17763101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17760433) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17763259, 17763439, 17763593, 17763769, 17763943, 17764121, 17764283, 17764459, 17764627, 17764811, 17764987, 17765159, 17765339, 17765509, 17765689, 17765863]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17763101 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17763101 17765863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17763101) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17766043, 17766227, 17766409, 17766587, 17766739, 17766883, 17767051, 17767231, 17767411, 17767591, 17767769, 17767951, 17768123, 17768297, 17768479, 17768659]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17765863 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17765863 17768659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17765863) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17768831, 17769013, 17769197, 17769379, 17769533, 17769701, 17769881, 17770063, 17770231, 17770411, 17770579, 17770759, 17770937, 17771119, 17771291, 17771447]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17768659 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17768659 17771447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17768659) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17771629, 17771791, 17771933, 17772113, 17772283, 17772457, 17772613, 17772793, 17772977, 17773159, 17773333, 17773507, 17773669, 17773843, 17774011, 17774189]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17771447 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17771447 17774189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17771447) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17774371, 17774543, 17774723, 17774863, 17775029, 17775187, 17775371, 17775533, 17775713, 17775889, 17776019, 17776189, 17776357, 17776541, 17776711, 17776879]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17774189 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17774189 17776879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17774189) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17777063, 17777239, 17777411, 17777569, 17777741, 17777917, 17778077, 17778259, 17778443, 17778601, 17778773, 17778949, 17779123, 17779303, 17779481, 17779633]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17776879 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17776879 17779633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17776879) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17779787, 17779969, 17780123, 17780303, 17780467, 17780647, 17780813, 17780981, 17781161, 17781343, 17781521, 17781697, 17781857, 17782007, 17782181, 17782351]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17779633 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17779633 17782351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17779633) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17782529, 17782711, 17782861, 17783041, 17783203, 17783371, 17783551, 17783707, 17783869, 17784043, 17784223, 17784379, 17784553, 17784721, 17784889, 17785073]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17782351 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17782351 17785073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17782351) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17785231, 17785403, 17785583, 17785763, 17785931, 17786113, 17786287, 17786459, 17786627, 17786803, 17786971, 17787139, 17787323, 17787467, 17787641, 17787823]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17785073 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17785073 17787823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17785073) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17788007, 17788189, 17788367, 17788543, 17788723, 17788907, 17789087, 17789269, 17789437, 17789617, 17789791, 17789969, 17790131, 17790301, 17790481, 17790649]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17787823 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17787823 17790649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17787823) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17790811, 17790977, 17791157, 17791327, 17791483, 17791651, 17791817, 17791973, 17792123, 17792287, 17792443, 17792611, 17792767, 17792939, 17793121, 17793301]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17790649 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17790649 17793301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17790649) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17793469, 17793653, 17793833, 17794009, 17794193, 17794367, 17794549, 17794723, 17794883, 17795059, 17795237, 17795417, 17795597, 17795749, 17795933, 17796073]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17793301 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17793301 17796073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17793301) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17796239, 17796413, 17796577, 17796731, 17796913, 17797093, 17797261, 17797427, 17797601, 17797757, 17797933, 17798093, 17798237, 17798419, 17798597, 17798773]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17796073 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17796073 17798773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17796073) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17798951, 17799113, 17799281, 17799449, 17799619, 17799787, 17799967, 17800147, 17800331, 17800499, 17800637, 17800799, 17800973, 17801137, 17801321, 17801501]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17798773 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17798773 17801501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17798773) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17801683, 17801863, 17802019, 17802203, 17802377, 17802557, 17802721, 17802901, 17803007, 17803189, 17803351, 17803531, 17803693, 17803873, 17804041, 17804221]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17801501 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17801501 17804221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17801501) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17804401, 17804581, 17804749, 17804929, 17805113, 17805269, 17805421, 17805589, 17805773, 17805943, 17806111, 17806291, 17806471, 17806651, 17806829, 17806931]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17804221 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17804221 17806931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17804221) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17807107, 17807291, 17807453, 17807611, 17807771, 17807927, 17808107, 17808289, 17808467, 17808631, 17808799, 17808983, 17809163, 17809339, 17809513, 17809679]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17806931 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17806931 17809679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17806931) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17809861, 17810003, 17810183, 17810363, 17810539, 17810711, 17810893, 17811077, 17811259, 17811439, 17811617, 17811793, 17811973, 17812147, 17812331, 17812493]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17809679 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17809679 17812493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17809679) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17812673, 17812853, 17813027, 17813209, 17813363, 17813513, 17813669, 17813843, 17814019, 17814193, 17814371, 17814529, 17814707, 17814889, 17815067, 17815199]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17812493 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17812493 17815199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17812493) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17815381, 17815561, 17815741, 17815909, 17816083, 17816261, 17816443, 17816627, 17816801, 17816983, 17817167, 17817347, 17817491, 17817659, 17817827, 17818007]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17815199 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17815199 17818007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17815199) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17818189, 17818327, 17818511, 17818693, 17818877, 17819041, 17819209, 17819393, 17819569, 17819749, 17819933, 17820053, 17820221, 17820389, 17820571, 17820721]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17818007 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17818007 17820721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17818007) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17820889, 17821073, 17821247, 17821421, 17821603, 17821759, 17821927, 17822111, 17822279, 17822461, 17822611, 17822771, 17822951, 17823131, 17823283, 17823451]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17820721 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17820721 17823451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17820721) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17823581, 17823749, 17823913, 17824097, 17824273, 17824453, 17824637, 17824813, 17824981, 17825113, 17825251, 17825407, 17825579, 17825723, 17825903, 17826079]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17823451 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17823451 17826079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17823451) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17826253, 17826401, 17826559, 17826733, 17826917, 17827091, 17827273, 17827423, 17827597, 17827741, 17827919, 17828081, 17828249, 17828431, 17828581, 17828737]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17826079 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17826079 17828737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17826079) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17741401 17746847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17744159) (hi := 17746847) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17746847 17752211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17746847)
    (mid := 17749519) (hi := 17752211) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17752211 17757653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17752211)
    (mid := 17754943) (hi := 17757653) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17757653 17763101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17757653)
    (mid := 17760433) (hi := 17763101) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17763101 17768659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17763101)
    (mid := 17765863) (hi := 17768659) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17768659 17774189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17768659)
    (mid := 17771447) (hi := 17774189) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17774189 17779633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17774189)
    (mid := 17776879) (hi := 17779633) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17779633 17785073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17779633)
    (mid := 17782351) (hi := 17785073) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17785073 17790649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17785073)
    (mid := 17787823) (hi := 17790649) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17790649 17796073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17790649)
    (mid := 17793301) (hi := 17796073) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17796073 17801501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17796073)
    (mid := 17798773) (hi := 17801501) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17801501 17806931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17801501)
    (mid := 17804221) (hi := 17806931) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17806931 17812493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17806931)
    (mid := 17809679) (hi := 17812493) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17812493 17818007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17812493)
    (mid := 17815199) (hi := 17818007) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17818007 17823451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17818007)
    (mid := 17820721) (hi := 17823451) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17823451 17828737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17823451)
    (mid := 17826079) (hi := 17828737) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17741401 17752211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17746847) (hi := 17752211) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17752211 17763101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17752211)
    (mid := 17757653) (hi := 17763101) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17763101 17774189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17763101)
    (mid := 17768659) (hi := 17774189) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17774189 17785073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17774189)
    (mid := 17779633) (hi := 17785073) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17785073 17796073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17785073)
    (mid := 17790649) (hi := 17796073) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17796073 17806931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17796073)
    (mid := 17801501) (hi := 17806931) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17806931 17818007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17806931)
    (mid := 17812493) (hi := 17818007) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17818007 17828737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17818007)
    (mid := 17823451) (hi := 17828737) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17741401 17763101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17752211) (hi := 17763101) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17763101 17785073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17763101)
    (mid := 17774189) (hi := 17785073) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17785073 17806931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17785073)
    (mid := 17796073) (hi := 17806931) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17806931 17828737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17806931)
    (mid := 17818007) (hi := 17828737) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17741401 17785073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17763101) (hi := 17785073) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17785073 17828737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17785073)
    (mid := 17806931) (hi := 17828737) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17741401 17828737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17785073) (hi := 17828737) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17741401 17828737 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block202

#print axioms B699MiddleExtension.PrimorialBlocks.Block202.joined
