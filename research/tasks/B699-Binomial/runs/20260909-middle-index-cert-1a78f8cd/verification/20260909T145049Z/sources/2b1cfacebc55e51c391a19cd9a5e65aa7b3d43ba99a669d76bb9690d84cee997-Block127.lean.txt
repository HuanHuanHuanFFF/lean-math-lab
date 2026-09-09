import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block127

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11182019, 11182189, 11182363, 11182541, 11182711, 11182883, 11183063, 11183231, 11183413, 11183597, 11183779, 11183959, 11184137, 11184319, 11184497, 11184671]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11181839 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11181839 11184671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11181839) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11184839, 11185019, 11185183, 11185351, 11185529, 11185709, 11185883, 11186039, 11186213, 11186393, 11186557, 11186741, 11186899, 11187073, 11187229, 11187401]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11184671 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11184671 11187401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11184671) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11187571, 11187749, 11187899, 11188081, 11188259, 11188433, 11188561, 11188699, 11188759, 11188939, 11189117, 11189287, 11189459, 11189641, 11189821, 11189989]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11187401 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11187401 11189989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11187401) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11190173, 11190343, 11190527, 11190701, 11190871, 11191043, 11191189, 11191351, 11191529, 11191699, 11191867, 11192039, 11192189, 11192371, 11192479, 11192603]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11189989 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11189989 11192603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11189989) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11192777, 11192947, 11193059, 11193241, 11193409, 11193593, 11193733, 11193911, 11194093, 11194277, 11194429, 11194559, 11194723, 11194889, 11195069, 11195251]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11192603 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11192603 11195251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11192603) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11195407, 11195563, 11195713, 11195897, 11196079, 11196259, 11196443, 11196623, 11196799, 11196953, 11197129, 11197313, 11197493, 11197661, 11197829, 11198003]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11195251 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11195251 11198003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11195251) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11198183, 11198351, 11198507, 11198687, 11198851, 11199031, 11199193, 11199371, 11199547, 11199731, 11199901, 11200039, 11200213, 11200391, 11200571, 11200753]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11198003 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11198003 11200753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11198003) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11200927, 11201111, 11201293, 11201473, 11201653, 11201837, 11202019, 11202187, 11202349, 11202523, 11202701, 11202871, 11203039, 11203219, 11203397, 11203579]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11200753 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11200753 11203579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11200753) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11203763, 11203919, 11204101, 11204279, 11204449, 11204621, 11204803, 11204987, 11205157, 11205323, 11205503, 11205673, 11205847, 11206031, 11206207, 11206379]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11203579 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11203579 11206379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11203579) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11206541, 11206721, 11206883, 11207057, 11207239, 11207419, 11207597, 11207767, 11207941, 11208101, 11208269, 11208433, 11208553, 11208733, 11208913, 11209097]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11206379 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11206379 11209097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11206379) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11209249, 11209433, 11209609, 11209777, 11209951, 11210117, 11210279, 11210461, 11210629, 11210813, 11210993, 11211169, 11211341, 11211523, 11211689, 11211869]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11209097 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11209097 11211869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11209097) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11212051, 11212219, 11212363, 11212529, 11212711, 11212867, 11212997, 11213177, 11213359, 11213539, 11213711, 11213843, 11214023, 11214191, 11214337, 11214499]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11211869 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11211869 11214499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11211869) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11214649, 11214829, 11215003, 11215177, 11215357, 11215531, 11215703, 11215829, 11216003, 11216173, 11216357, 11216521, 11216693, 11216861, 11217043, 11217221]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11214499 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11214499 11217221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11214499) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11217389, 11217571, 11217749, 11217931, 11218111, 11218267, 11218439, 11218619, 11218787, 11218943, 11219123, 11219293, 11219477, 11219639, 11219821, 11219987]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11217221 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11217221 11219987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11217221) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11220151, 11220331, 11220491, 11220673, 11220857, 11221009, 11221193, 11221373, 11221549, 11221709, 11221891, 11222051, 11222219, 11222357, 11222539, 11222693]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11219987 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11219987 11222693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11219987) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11222867, 11223031, 11223181, 11223361, 11223539, 11223713, 11223887, 11224043, 11224223, 11224373, 11224523, 11224679, 11224847, 11225017, 11225191, 11225359]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11222693 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11222693 11225359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11222693) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11225531, 11225699, 11225873, 11226041, 11226223, 11226403, 11226581, 11226757, 11226931, 11227091, 11227267, 11227451, 11227609, 11227781, 11227963, 11228089]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11225359 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11225359 11228089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11225359) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11228267, 11228447, 11228627, 11228779, 11228963, 11229143, 11229301, 11229461, 11229637, 11229793, 11229973, 11230157, 11230333, 11230487, 11230669, 11230853]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11228089 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11228089 11230853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11228089) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11231029, 11231201, 11231377, 11231537, 11231699, 11231881, 11232049, 11232233, 11232409, 11232593, 11232731, 11232913, 11233093, 11233273, 11233451, 11233627]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11230853 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11230853 11233627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11230853) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11233757, 11233919, 11234089, 11234243, 11234423, 11234581, 11234759, 11234941, 11235121, 11235281, 11235421, 11235583, 11235751, 11235907, 11236081, 11236237]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11233627 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11233627 11236237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11233627) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11236417, 11236597, 11236781, 11236943, 11237117, 11237299, 11237437, 11237621, 11237803, 11237983, 11238163, 11238347, 11238509, 11238691, 11238869, 11239031]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11236237 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11236237 11239031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11236237) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11239171, 11239351, 11239531, 11239691, 11239867, 11240051, 11240227, 11240401, 11240561, 11240743, 11240921, 11241079, 11241259, 11241443, 11241583, 11241757]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11239031 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11239031 11241757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11239031) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11241929, 11242109, 11242279, 11242463, 11242639, 11242817, 11242999, 11243149, 11243327, 11243509, 11243663, 11243831, 11244011, 11244193, 11244377, 11244529]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11241757 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11241757 11244529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11241757) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11244691, 11244859, 11245043, 11245187, 11245327, 11245499, 11245679, 11245847, 11246009, 11246189, 11246363, 11246531, 11246699, 11246881, 11247011, 11247191]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11244529 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11244529 11247191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11244529) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11247367, 11247547, 11247683, 11247809, 11247991, 11248157, 11248331, 11248507, 11248687, 11248847, 11249023, 11249201, 11249383, 11249561, 11249741, 11249923]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11247191 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11247191 11249923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11247191) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11250101, 11250271, 11250443, 11250599, 11250773, 11250949, 11251133, 11251313, 11251489, 11251651, 11251817, 11251979, 11252159, 11252341, 11252519, 11252701]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11249923 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11249923 11252701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11249923) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11252867, 11253041, 11253211, 11253383, 11253563, 11253733, 11253889, 11254043, 11254223, 11254363, 11254543, 11254723, 11254907, 11255081, 11255261, 11255399]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11252701 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11252701 11255399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11252701) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11255561, 11255731, 11255911, 11256083, 11256253, 11256403, 11256577, 11256761, 11256887, 11257049, 11257229, 11257409, 11257573, 11257751, 11257933, 11258087]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11255399 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11255399 11258087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11255399) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11258263, 11258441, 11258623, 11258801, 11258977, 11259119, 11259277, 11259407, 11259587, 11259767, 11259943, 11260127, 11260297, 11260451, 11260619, 11260763]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11258087 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11258087 11260763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11258087) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11260943, 11261119, 11261303, 11261479, 11261659, 11261843, 11262011, 11262133, 11262311, 11262439, 11262623, 11262791, 11262973, 11263157, 11263331, 11263493]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11260763 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11260763 11263493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11260763) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11263669, 11263853, 11264023, 11264189, 11264347, 11264521, 11264683, 11264867, 11265049, 11265227, 11265409, 11265593, 11265773, 11265941, 11266097, 11266271]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11263493 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11263493 11266271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11263493) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11266441, 11266613, 11266781, 11266961, 11267143, 11267327, 11267507, 11267681, 11267843, 11268013, 11268119, 11268287, 11268457, 11268641, 11268811, 11268953]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11266271 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11266271 11268953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11266271) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11181839 11187401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11181839)
    (mid := 11184671) (hi := 11187401) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11187401 11192603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11187401)
    (mid := 11189989) (hi := 11192603) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11192603 11198003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11192603)
    (mid := 11195251) (hi := 11198003) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11198003 11203579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11198003)
    (mid := 11200753) (hi := 11203579) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11203579 11209097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11203579)
    (mid := 11206379) (hi := 11209097) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11209097 11214499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11209097)
    (mid := 11211869) (hi := 11214499) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11214499 11219987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11214499)
    (mid := 11217221) (hi := 11219987) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11219987 11225359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11219987)
    (mid := 11222693) (hi := 11225359) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11225359 11230853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11225359)
    (mid := 11228089) (hi := 11230853) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11230853 11236237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11230853)
    (mid := 11233627) (hi := 11236237) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11236237 11241757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11236237)
    (mid := 11239031) (hi := 11241757) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11241757 11247191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11241757)
    (mid := 11244529) (hi := 11247191) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11247191 11252701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11247191)
    (mid := 11249923) (hi := 11252701) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11252701 11258087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11252701)
    (mid := 11255399) (hi := 11258087) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11258087 11263493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11258087)
    (mid := 11260763) (hi := 11263493) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11263493 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11263493)
    (mid := 11266271) (hi := 11268953) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11181839 11192603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11181839)
    (mid := 11187401) (hi := 11192603) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11192603 11203579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11192603)
    (mid := 11198003) (hi := 11203579) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11203579 11214499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11203579)
    (mid := 11209097) (hi := 11214499) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11214499 11225359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11214499)
    (mid := 11219987) (hi := 11225359) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11225359 11236237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11225359)
    (mid := 11230853) (hi := 11236237) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11236237 11247191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11236237)
    (mid := 11241757) (hi := 11247191) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11247191 11258087 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11247191)
    (mid := 11252701) (hi := 11258087) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11258087 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11258087)
    (mid := 11263493) (hi := 11268953) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11181839 11203579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11181839)
    (mid := 11192603) (hi := 11203579) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11203579 11225359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11203579)
    (mid := 11214499) (hi := 11225359) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11225359 11247191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11225359)
    (mid := 11236237) (hi := 11247191) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11247191 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11247191)
    (mid := 11258087) (hi := 11268953) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11181839 11225359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11181839)
    (mid := 11203579) (hi := 11225359) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11225359 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11225359)
    (mid := 11247191) (hi := 11268953) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11181839 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11181839)
    (mid := 11225359) (hi := 11268953) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11181839 11268953 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block127

#print axioms B699MiddleExtension.PrimorialBlocks.Block127.joined
