import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block226

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19836983, 19837151, 19837333, 19837507, 19837687, 19837859, 19838003, 19838153, 19838333, 19838503, 19838683, 19838851, 19839023, 19839181, 19839359, 19839541]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19836799 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19836799 19839541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19836799) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19839713, 19839877, 19840049, 19840231, 19840409, 19840577, 19840753, 19840937, 19841099, 19841279, 19841461, 19841639, 19841821, 19842001, 19842167, 19842313]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19839541 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19839541 19842313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19839541) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19842463, 19842643, 19842827, 19843003, 19843177, 19843357, 19843531, 19843711, 19843891, 19844059, 19844233, 19844413, 19844549, 19844707, 19844849, 19845029]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19842313 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19842313 19845029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19842313) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19845211, 19845391, 19845559, 19845743, 19845913, 19846093, 19846261, 19846441, 19846613, 19846787, 19846969, 19847141, 19847309, 19847491, 19847587, 19847767]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19845029 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19845029 19847767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19845029) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19847929, 19848109, 19848271, 19848443, 19848623, 19848781, 19848947, 19849127, 19849309, 19849477, 19849639, 19849807, 19849987, 19850161, 19850333, 19850503]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19847767 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19847767 19850503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19847767) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19850657, 19850807, 19850983, 19851157, 19851331, 19851487, 19851653, 19851809, 19851991, 19852171, 19852351, 19852531, 19852667, 19852843, 19853017, 19853191]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19850503 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19850503 19853191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19850503) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19853363, 19853539, 19853723, 19853891, 19854061, 19854223, 19854407, 19854587, 19854767, 19854941, 19855123, 19855301, 19855483, 19855631, 19855793, 19855961]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19853191 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19853191 19855961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19853191) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19856141, 19856281, 19856401, 19856581, 19856747, 19856929, 19857091, 19857263, 19857437, 19857611, 19857781, 19857941, 19858121, 19858277, 19858457, 19858613]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19855961 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19855961 19858613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19855961) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19858763, 19858921, 19859089, 19859267, 19859449, 19859633, 19859797, 19859981, 19860143, 19860317, 19860497, 19860647, 19860803, 19860979, 19861159, 19861337]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19858613 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19858613 19861337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19858613) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19861511, 19861693, 19861843, 19862021, 19862203, 19862371, 19862539, 19862719, 19862897, 19863079, 19863257, 19863419, 19863593, 19863773, 19863953, 19864129]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19861337 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19861337 19864129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19861337) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19864289, 19864463, 19864631, 19864811, 19864987, 19865159, 19865311, 19865479, 19865653, 19865837, 19865999, 19866179, 19866349, 19866527, 19866709, 19866887]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19864129 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19864129 19866887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19864129) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19867069, 19867241, 19867399, 19867583, 19867759, 19867937, 19868111, 19868287, 19868467, 19868647, 19868819, 19868977, 19869131, 19869301, 19869463, 19869623]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19866887 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19866887 19869623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19866887) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19869803, 19869979, 19870141, 19870309, 19870489, 19870667, 19870847, 19871021, 19871197, 19871381, 19871561, 19871737, 19871911, 19872091, 19872263, 19872443]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19869623 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19869623 19872443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19869623) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19872623, 19872791, 19872961, 19873141, 19873313, 19873489, 19873661, 19873837, 19874021, 19874203, 19874383, 19874539, 19874719, 19874891, 19875047, 19875221]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19872443 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19872443 19875221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19872443) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19875379, 19875563, 19875733, 19875913, 19876079, 19876249, 19876433, 19876613, 19876777, 19876903, 19877057, 19877237, 19877371, 19877549, 19877729, 19877909]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19875221 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19875221 19877909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19875221) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19878077, 19878259, 19878437, 19878613, 19878779, 19878941, 19879121, 19879267, 19879441, 19879609, 19879789, 19879973, 19880149, 19880323, 19880501, 19880683]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19877909 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19877909 19880683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19877909) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19880867, 19881019, 19881193, 19881359, 19881541, 19881707, 19881889, 19882043, 19882223, 19882403, 19882573, 19882747, 19882921, 19883099, 19883267, 19883449]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19880683 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19880683 19883449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19880683) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19883629, 19883807, 19883977, 19884157, 19884341, 19884511, 19884661, 19884833, 19884989, 19885163, 19885339, 19885519, 19885703, 19885883, 19886063, 19886239]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19883449 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19883449 19886239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19883449) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19886423, 19886579, 19886761, 19886891, 19887061, 19887221, 19887401, 19887563, 19887743, 19887919, 19888087, 19888247, 19888417, 19888601, 19888769, 19888927]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19886239 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19886239 19888927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19886239) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19889087, 19889251, 19889417, 19889587, 19889759, 19889939, 19890107, 19890281, 19890463, 19890643, 19890817, 19890991, 19891153, 19891337, 19891511, 19891687]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19888927 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19888927 19891687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19888927) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19891867, 19892021, 19892189, 19892351, 19892519, 19892681, 19892849, 19893031, 19893197, 19893373, 19893539, 19893719, 19893883, 19894031, 19894213, 19894393]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19891687 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19891687 19894393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19891687) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19894561, 19894711, 19894891, 19895059, 19895243, 19895419, 19895591, 19895773, 19895957, 19896133, 19896277, 19896433, 19896607, 19896707, 19896883, 19897067]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19894393 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19894393 19897067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19894393) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19897223, 19897387, 19897571, 19897747, 19897919, 19898101, 19898239, 19898401, 19898573, 19898743, 19898917, 19899091, 19899263, 19899443, 19899589, 19899773]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19897067 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19897067 19899773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19897067) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19899953, 19900123, 19900303, 19900477, 19900651, 19900831, 19900997, 19901179, 19901363, 19901537, 19901701, 19901867, 19902023, 19902203, 19902361, 19902539]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19899773 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19899773 19902539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19899773) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19902689, 19902863, 19903033, 19903201, 19903381, 19903553, 19903733, 19903909, 19904083, 19904257, 19904429, 19904587, 19904749, 19904917, 19905101, 19905271]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19902539 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19902539 19905271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19902539) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19905451, 19905619, 19905797, 19905979, 19906153, 19906331, 19906493, 19906651, 19906819, 19906993, 19907161, 19907341, 19907521, 19907683, 19907863, 19908023]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19905271 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19905271 19908023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19905271) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19908197, 19908379, 19908563, 19908743, 19908919, 19909103, 19909277, 19909451, 19909619, 19909793, 19909951, 19910113, 19910263, 19910441, 19910609, 19910771]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19908023 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19908023 19910771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19908023) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19910951, 19911121, 19911293, 19911473, 19911643, 19911821, 19912001, 19912177, 19912351, 19912523, 19912691, 19912859, 19913041, 19913209, 19913393, 19913573]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19910771 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19910771 19913573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19910771) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19913737, 19913921, 19914101, 19914283, 19914467, 19914649, 19914827, 19915009, 19915193, 19915369, 19915543, 19915703, 19915871, 19916053, 19916227, 19916399]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19913573 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19913573 19916399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19913573) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19916581, 19916761, 19916933, 19917067, 19917223, 19917389, 19917571, 19917749, 19917929, 19918103, 19918279, 19918463, 19918637, 19918753, 19918919, 19919101]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19916399 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19916399 19919101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19916399) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19919281, 19919443, 19919623, 19919803, 19919983, 19920163, 19920293, 19920473, 19920643, 19920827, 19920973, 19921147, 19921327, 19921483, 19921663, 19921831]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19919101 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19919101 19921831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19919101) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19921997, 19922179, 19922359, 19922543, 19922723, 19922891, 19923073, 19923227, 19923391, 19923559, 19923719, 19923889, 19924057, 19924231, 19924397, 19924579]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19921831 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19921831 19924579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19921831) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19836799 19842313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19839541) (hi := 19842313) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19842313 19847767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19842313)
    (mid := 19845029) (hi := 19847767) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19847767 19853191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19847767)
    (mid := 19850503) (hi := 19853191) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19853191 19858613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19853191)
    (mid := 19855961) (hi := 19858613) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19858613 19864129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19858613)
    (mid := 19861337) (hi := 19864129) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19864129 19869623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19864129)
    (mid := 19866887) (hi := 19869623) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19869623 19875221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19869623)
    (mid := 19872443) (hi := 19875221) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19875221 19880683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19875221)
    (mid := 19877909) (hi := 19880683) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19880683 19886239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19880683)
    (mid := 19883449) (hi := 19886239) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19886239 19891687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19886239)
    (mid := 19888927) (hi := 19891687) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19891687 19897067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19891687)
    (mid := 19894393) (hi := 19897067) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19897067 19902539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19897067)
    (mid := 19899773) (hi := 19902539) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19902539 19908023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19902539)
    (mid := 19905271) (hi := 19908023) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19908023 19913573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19908023)
    (mid := 19910771) (hi := 19913573) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19913573 19919101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19913573)
    (mid := 19916399) (hi := 19919101) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19919101 19924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19919101)
    (mid := 19921831) (hi := 19924579) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19836799 19847767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19842313) (hi := 19847767) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19847767 19858613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19847767)
    (mid := 19853191) (hi := 19858613) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19858613 19869623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19858613)
    (mid := 19864129) (hi := 19869623) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19869623 19880683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19869623)
    (mid := 19875221) (hi := 19880683) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19880683 19891687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19880683)
    (mid := 19886239) (hi := 19891687) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19891687 19902539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19891687)
    (mid := 19897067) (hi := 19902539) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19902539 19913573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19902539)
    (mid := 19908023) (hi := 19913573) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19913573 19924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19913573)
    (mid := 19919101) (hi := 19924579) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19836799 19858613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19847767) (hi := 19858613) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19858613 19880683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19858613)
    (mid := 19869623) (hi := 19880683) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19880683 19902539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19880683)
    (mid := 19891687) (hi := 19902539) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19902539 19924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19902539)
    (mid := 19913573) (hi := 19924579) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19836799 19880683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19858613) (hi := 19880683) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19880683 19924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19880683)
    (mid := 19902539) (hi := 19924579) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19836799 19924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19880683) (hi := 19924579) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19836799 19924579 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block226

#print axioms B699MiddleExtension.PrimorialBlocks.Block226.joined
