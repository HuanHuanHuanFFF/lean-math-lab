import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block194

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [17041933, 17042083, 17042261, 17042423, 17042603, 17042771, 17042953, 17043119, 17043293, 17043463, 17043623, 17043799, 17043977, 17044147, 17044283, 17044441]
theorem check0 : primorialChainCheck 4473 primorial4473 184 17041757 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 17041757 17044441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17041757) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [17044619, 17044801, 17044969, 17045141, 17045321, 17045491, 17045663, 17045843, 17045999, 17046179, 17046347, 17046527, 17046691, 17046863, 17047031, 17047213]
theorem check1 : primorialChainCheck 4473 primorial4473 184 17044441 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 17044441 17047213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17044441) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [17047391, 17047573, 17047757, 17047913, 17048077, 17048257, 17048411, 17048593, 17048761, 17048939, 17049121, 17049293, 17049467, 17049619, 17049751, 17049931]
theorem check2 : primorialChainCheck 4473 primorial4473 184 17047213 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 17047213 17049931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17047213) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [17050039, 17050223, 17050399, 17050571, 17050729, 17050907, 17051081, 17051261, 17051443, 17051611, 17051707, 17051887, 17052067, 17052247, 17052421, 17052601]
theorem check3 : primorialChainCheck 4473 primorial4473 184 17049931 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 17049931 17052601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17049931) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [17052781, 17052961, 17053133, 17053313, 17053481, 17053657, 17053823, 17053957, 17054137, 17054311, 17054473, 17054593, 17054773, 17054909, 17055083, 17055257]
theorem check4 : primorialChainCheck 4473 primorial4473 184 17052601 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 17052601 17055257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17052601) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [17055433, 17055613, 17055791, 17055937, 17056103, 17056283, 17056463, 17056643, 17056801, 17056979, 17057153, 17057323, 17057489, 17057659, 17057827, 17058011]
theorem check5 : primorialChainCheck 4473 primorial4473 184 17055257 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 17055257 17058011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17055257) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17058179, 17058359, 17058539, 17058653, 17058809, 17058983, 17059153, 17059333, 17059513, 17059661, 17059843, 17059963, 17060123, 17060279, 17060453, 17060609]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17058011 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17058011 17060609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17058011) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [17060773, 17060957, 17061139, 17061323, 17061503, 17061673, 17061851, 17062007, 17062181, 17062333, 17062517, 17062699, 17062879, 17063047, 17063203, 17063369]
theorem check7 : primorialChainCheck 4473 primorial4473 184 17060609 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 17060609 17063369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17060609) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [17063521, 17063663, 17063777, 17063951, 17064121, 17064301, 17064479, 17064653, 17064829, 17065007, 17065187, 17065361, 17065513, 17065673, 17065849, 17066033]
theorem check8 : primorialChainCheck 4473 primorial4473 184 17063369 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 17063369 17066033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17063369) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [17066201, 17066383, 17066561, 17066741, 17066911, 17067091, 17067257, 17067437, 17067607, 17067773, 17067943, 17068111, 17068283, 17068421, 17068589, 17068771]
theorem check9 : primorialChainCheck 4473 primorial4473 184 17066033 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 17066033 17068771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17066033) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [17068949, 17069123, 17069287, 17069453, 17069629, 17069807, 17069959, 17070143, 17070307, 17070463, 17070643, 17070803, 17070983, 17071163, 17071339, 17071511]
theorem check10 : primorialChainCheck 4473 primorial4473 184 17068771 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 17068771 17071511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17068771) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [17071693, 17071871, 17072047, 17072219, 17072401, 17072579, 17072761, 17072941, 17073101, 17073269, 17073437, 17073619, 17073803, 17073971, 17074153, 17074333]
theorem check11 : primorialChainCheck 4473 primorial4473 184 17071511 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 17071511 17074333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17071511) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [17074513, 17074697, 17074879, 17075057, 17075213, 17075351, 17075521, 17075689, 17075873, 17075987, 17076149, 17076299, 17076481, 17076659, 17076841, 17077013]
theorem check12 : primorialChainCheck 4473 primorial4473 184 17074333 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 17074333 17077013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17074333) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [17077189, 17077363, 17077517, 17077691, 17077871, 17078051, 17078221, 17078401, 17078573, 17078753, 17078921, 17079103, 17079281, 17079457, 17079571, 17079701]
theorem check13 : primorialChainCheck 4473 primorial4473 184 17077013 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 17077013 17079701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17077013) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [17079877, 17080027, 17080207, 17080379, 17080561, 17080729, 17080909, 17081089, 17081263, 17081431, 17081611, 17081777, 17081959, 17082139, 17082293, 17082473]
theorem check14 : primorialChainCheck 4473 primorial4473 184 17079701 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 17079701 17082473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17079701) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [17082649, 17082823, 17083007, 17083177, 17083343, 17083519, 17083673, 17083823, 17083993, 17084153, 17084299, 17084467, 17084647, 17084831, 17084989, 17085149]
theorem check15 : primorialChainCheck 4473 primorial4473 184 17082473 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 17082473 17085149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17082473) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [17085317, 17085457, 17085631, 17085811, 17085977, 17086159, 17086327, 17086507, 17086679, 17086837, 17087017, 17087173, 17087353, 17087527, 17087711, 17087893]
theorem check16 : primorialChainCheck 4473 primorial4473 184 17085149 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 17085149 17087893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17085149) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17088073, 17088251, 17088397, 17088571, 17088751, 17088913, 17089073, 17089249, 17089421, 17089603, 17089747, 17089927, 17090111, 17090273, 17090441, 17090621]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17087893 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17087893 17090621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17087893) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17090767, 17090923, 17091101, 17091259, 17091433, 17091593, 17091761, 17091937, 17092093, 17092277, 17092459, 17092643, 17092793, 17092967, 17093147, 17093299]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17090621 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17090621 17093299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17090621) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17093473, 17093641, 17093779, 17093929, 17094109, 17094289, 17094463, 17094647, 17094821, 17094971, 17095153, 17095333, 17095513, 17095697, 17095873, 17096041]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17093299 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17093299 17096041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17093299) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17096213, 17096377, 17096557, 17096731, 17096881, 17097043, 17097221, 17097401, 17097571, 17097749, 17097923, 17098099, 17098283, 17098463, 17098643, 17098819]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17096041 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17096041 17098819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17096041) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17098999, 17099179, 17099323, 17099497, 17099669, 17099827, 17100001, 17100173, 17100353, 17100533, 17100709, 17100887, 17101043, 17101207, 17101369, 17101547]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17098819 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17098819 17101547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17098819) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17101723, 17101907, 17102077, 17102237, 17102419, 17102599, 17102759, 17102933, 17103113, 17103269, 17103433, 17103613, 17103791, 17103959, 17104127, 17104309]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17101547 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17101547 17104309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17101547) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17104469, 17104639, 17104817, 17104981, 17105147, 17105329, 17105513, 17105657, 17105821, 17105999, 17106179, 17106329, 17106511, 17106671, 17106847, 17107021]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17104309 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17104309 17107021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17104309) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17107199, 17107367, 17107549, 17107721, 17107897, 17108081, 17108261, 17108437, 17108617, 17108801, 17108981, 17109163, 17109319, 17109473, 17109641, 17109817]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17107021 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17107021 17109817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17107021) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17109979, 17110157, 17110337, 17110519, 17110693, 17110843, 17111023, 17111201, 17111383, 17111551, 17111729, 17111909, 17112083, 17112239, 17112401, 17112583]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17109817 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17109817 17112583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17109817) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17112763, 17112947, 17113099, 17113273, 17113429, 17113561, 17113727, 17113907, 17114081, 17114249, 17114431, 17114569, 17114749, 17114899, 17115079, 17115253]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17112583 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17112583 17115253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17112583) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17115437, 17115601, 17115773, 17115953, 17116133, 17116277, 17116453, 17116633, 17116817, 17116993, 17117159, 17117341, 17117519, 17117701, 17117851, 17117987]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17115253 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17115253 17117987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17115253) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17118137, 17118301, 17118469, 17118649, 17118817, 17119001, 17119183, 17119351, 17119489, 17119667, 17119849, 17120021, 17120203, 17120359, 17120507, 17120689]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17117987 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17117987 17120689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17117987) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17120839, 17121017, 17121187, 17121371, 17121469, 17121653, 17121833, 17121997, 17122181, 17122309, 17122489, 17122663, 17122843, 17122991, 17123173, 17123347]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17120689 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17120689 17123347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17120689) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17123497, 17123669, 17123849, 17124017, 17124197, 17124379, 17124563, 17124743, 17124917, 17125093, 17125261, 17125421, 17125571, 17125751, 17125909, 17126093]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17123347 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17123347 17126093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17123347) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17126273, 17126419, 17126591, 17126773, 17126957, 17127137, 17127311, 17127491, 17127667, 17127839, 17128019, 17128193, 17128361, 17128541, 17128723, 17128897]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17126093 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17126093 17128897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17126093) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 17041757 17047213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17044441) (hi := 17047213) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17047213 17052601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17047213)
    (mid := 17049931) (hi := 17052601) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17052601 17058011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17052601)
    (mid := 17055257) (hi := 17058011) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17058011 17063369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17058011)
    (mid := 17060609) (hi := 17063369) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17063369 17068771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17063369)
    (mid := 17066033) (hi := 17068771) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17068771 17074333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17068771)
    (mid := 17071511) (hi := 17074333) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17074333 17079701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17074333)
    (mid := 17077013) (hi := 17079701) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 17079701 17085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17079701)
    (mid := 17082473) (hi := 17085149) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 17085149 17090621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17085149)
    (mid := 17087893) (hi := 17090621) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17090621 17096041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17090621)
    (mid := 17093299) (hi := 17096041) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17096041 17101547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17096041)
    (mid := 17098819) (hi := 17101547) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17101547 17107021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17101547)
    (mid := 17104309) (hi := 17107021) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17107021 17112583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17107021)
    (mid := 17109817) (hi := 17112583) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17112583 17117987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17112583)
    (mid := 17115253) (hi := 17117987) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17117987 17123347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17117987)
    (mid := 17120689) (hi := 17123347) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17123347 17128897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17123347)
    (mid := 17126093) (hi := 17128897) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 17041757 17052601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17047213) (hi := 17052601) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17052601 17063369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17052601)
    (mid := 17058011) (hi := 17063369) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17063369 17074333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17063369)
    (mid := 17068771) (hi := 17074333) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17074333 17085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17074333)
    (mid := 17079701) (hi := 17085149) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 17085149 17096041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17085149)
    (mid := 17090621) (hi := 17096041) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17096041 17107021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17096041)
    (mid := 17101547) (hi := 17107021) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17107021 17117987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17107021)
    (mid := 17112583) (hi := 17117987) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17117987 17128897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17117987)
    (mid := 17123347) (hi := 17128897) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 17041757 17063369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17052601) (hi := 17063369) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17063369 17085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17063369)
    (mid := 17074333) (hi := 17085149) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 17085149 17107021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17085149)
    (mid := 17096041) (hi := 17107021) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17107021 17128897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17107021)
    (mid := 17117987) (hi := 17128897) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 17041757 17085149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17063369) (hi := 17085149) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 17085149 17128897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17085149)
    (mid := 17107021) (hi := 17128897) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 17041757 17128897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17085149) (hi := 17128897) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 17041757 17128897 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block194

#print axioms B699MiddleExtension.PrimorialBlocks.Block194.joined
