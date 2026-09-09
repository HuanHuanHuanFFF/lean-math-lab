import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block211

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18527123, 18527303, 18527479, 18527659, 18527843, 18527963, 18528143, 18528281, 18528463, 18528637, 18528751, 18528911, 18529081, 18529261, 18529429, 18529607]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18526961 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18526961 18529607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18526961) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18529757, 18529937, 18530107, 18530287, 18530461, 18530639, 18530819, 18530989, 18531167, 18531349, 18531533, 18531703, 18531883, 18532067, 18532237, 18532403]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18529607 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18529607 18532403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18529607) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18532573, 18532757, 18532939, 18533089, 18533267, 18533441, 18533609, 18533789, 18533959, 18534137, 18534317, 18534499, 18534631, 18534809, 18534991, 18535133]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18532403 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18532403 18535133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18532403) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18535313, 18535487, 18535663, 18535841, 18535991, 18536159, 18536333, 18536513, 18536677, 18536857, 18537041, 18537161, 18537341, 18537511, 18537691, 18537853]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18535133 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18535133 18537853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18535133) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18538001, 18538183, 18538367, 18538549, 18538733, 18538909, 18539089, 18539273, 18539447, 18539621, 18539803, 18539977, 18540133, 18540317, 18540499, 18540667]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18537853 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18537853 18540667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18537853) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18540839, 18541021, 18541199, 18541351, 18541531, 18541697, 18541867, 18542039, 18542201, 18542383, 18542567, 18542747, 18542873, 18543047, 18543229, 18543377]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18540667 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18540667 18543377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18540667) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18543559, 18543743, 18543913, 18544087, 18544271, 18544451, 18544613, 18544783, 18544927, 18545077, 18545257, 18545381, 18545543, 18545713, 18545897, 18546079]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18543377 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18543377 18546079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18543377) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18546251, 18546419, 18546571, 18546713, 18546893, 18547069, 18547253, 18547427, 18547603, 18547787, 18547961, 18548119, 18548291, 18548449, 18548623, 18548801]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18546079 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18546079 18548801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18546079) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18548983, 18549143, 18549269, 18549449, 18549623, 18549803, 18549959, 18550139, 18550321, 18550457, 18550639, 18550817, 18550999, 18551173, 18551341, 18551459]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18548801 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18548801 18551459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18548801) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18551633, 18551801, 18551971, 18552143, 18552311, 18552481, 18552643, 18552817, 18552997, 18553181, 18553343, 18553517, 18553679, 18553819, 18553999, 18554183]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18551459 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18551459 18554183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18551459) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18554363, 18554533, 18554699, 18554857, 18555029, 18555209, 18555379, 18555541, 18555709, 18555847, 18556007, 18556189, 18556327, 18556501, 18556669, 18556849]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18554183 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18554183 18556849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18554183) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18557027, 18557197, 18557351, 18557533, 18557717, 18557893, 18558077, 18558259, 18558439, 18558623, 18558803, 18558977, 18559157, 18559339, 18559517, 18559663]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18556849 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18556849 18559663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18556849) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18559843, 18560021, 18560183, 18560341, 18560461, 18560621, 18560803, 18560981, 18561163, 18561313, 18561443, 18561589, 18561749, 18561923, 18562099, 18562261]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18559663 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18559663 18562261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18559663) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18562441, 18562597, 18562781, 18562949, 18563131, 18563297, 18563471, 18563653, 18563807, 18563981, 18564163, 18564341, 18564503, 18564683, 18564853, 18565021]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18562261 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18562261 18565021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18562261) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18565199, 18565381, 18565543, 18565709, 18565889, 18566063, 18566213, 18566381, 18566549, 18566731, 18566909, 18567083, 18567257, 18567433, 18567613, 18567779]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18565021 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18565021 18567779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18565021) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18567953, 18568129, 18568309, 18568493, 18568651, 18568831, 18568999, 18569179, 18569363, 18569531, 18569701, 18569861, 18570043, 18570197, 18570379, 18570557]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18567779 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18567779 18570557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18567779) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18570709, 18570887, 18571067, 18571243, 18571409, 18571561, 18571727, 18571907, 18572089, 18572249, 18572417, 18572599, 18572783, 18572951, 18573109, 18573293]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18570557 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18570557 18573293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18570557) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18573473, 18573649, 18573827, 18573959, 18574141, 18574307, 18574469, 18574649, 18574817, 18574979, 18575159, 18575311, 18575489, 18575647, 18575827, 18576011]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18573293 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18573293 18576011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18573293) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18576149, 18576329, 18576499, 18576683, 18576853, 18577007, 18577187, 18577369, 18577553, 18577729, 18577913, 18578071, 18578239, 18578423, 18578597, 18578767]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18576011 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18576011 18578767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18576011) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18578939, 18579103, 18579287, 18579461, 18579641, 18579823, 18580007, 18580187, 18580363, 18580543, 18580717, 18580897, 18581063, 18581219, 18581399, 18581573]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18578767 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18578767 18581573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18578767) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18581749, 18581933, 18582101, 18582271, 18582451, 18582631, 18582803, 18582983, 18583153, 18583303, 18583483, 18583667, 18583841, 18584021, 18584201, 18584359]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18581573 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18581573 18584359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18581573) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18584543, 18584719, 18584887, 18585067, 18585251, 18585409, 18585577, 18585757, 18585937, 18586097, 18586279, 18586459, 18586597, 18586781, 18586961, 18587141]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18584359 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18584359 18587141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18584359) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18587323, 18587501, 18587677, 18587861, 18588029, 18588203, 18588379, 18588527, 18588709, 18588893, 18589073, 18589237, 18589409, 18589583, 18589741, 18589919]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18587141 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18587141 18589919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18587141) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18590101, 18590281, 18590461, 18590629, 18590813, 18590953, 18591109, 18591283, 18591467, 18591647, 18591799, 18591977, 18592159, 18592337, 18592489, 18592661]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18589919 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18589919 18592661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18589919) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18592837, 18593021, 18593171, 18593339, 18593507, 18593657, 18593807, 18593987, 18594167, 18594349, 18594523, 18594707, 18594883, 18595067, 18595223, 18595391]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18592661 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18592661 18595391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18592661) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18595553, 18595711, 18595861, 18596027, 18596191, 18596371, 18596551, 18596723, 18596881, 18597053, 18597233, 18597413, 18597587, 18597763, 18597937, 18598121]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18595391 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18595391 18598121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18595391) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18598273, 18598453, 18598631, 18598807, 18598963, 18599143, 18599323, 18599507, 18599677, 18599851, 18599983, 18600167, 18600343, 18600521, 18600697, 18600877]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18598121 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18598121 18600877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18598121) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18601031, 18601211, 18601321, 18601493, 18601651, 18601819, 18601967, 18602149, 18602329, 18602477, 18602657, 18602839, 18603001, 18603173, 18603323, 18603479]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18600877 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18600877 18603479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18600877) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18603623, 18603787, 18603971, 18604153, 18604321, 18604499, 18604661, 18604843, 18605003, 18605159, 18605341, 18605519, 18605663, 18605801, 18605981, 18606163]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18603479 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18603479 18606163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18603479) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18606319, 18606499, 18606683, 18606829, 18606997, 18607157, 18607339, 18607487, 18607663, 18607847, 18608027, 18608197, 18608377, 18608561, 18608731, 18608899]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18606163 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18606163 18608899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18606163) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18609079, 18609259, 18609443, 18609623, 18609769, 18609931, 18610103, 18610279, 18610463, 18610643, 18610807, 18610957, 18611113, 18611297, 18611471, 18611633]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18608899 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18608899 18611633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18608899) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18611783, 18611951, 18612133, 18612301, 18612469, 18612623, 18612791, 18612973, 18613129, 18613307, 18613489, 18613669, 18613817, 18613979, 18614149, 18614311]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18611633 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18611633 18614311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18611633) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18526961 18532403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18526961)
    (mid := 18529607) (hi := 18532403) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18532403 18537853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18532403)
    (mid := 18535133) (hi := 18537853) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18537853 18543377 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18537853)
    (mid := 18540667) (hi := 18543377) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18543377 18548801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18543377)
    (mid := 18546079) (hi := 18548801) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18548801 18554183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18548801)
    (mid := 18551459) (hi := 18554183) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18554183 18559663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18554183)
    (mid := 18556849) (hi := 18559663) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18559663 18565021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18559663)
    (mid := 18562261) (hi := 18565021) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18565021 18570557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18565021)
    (mid := 18567779) (hi := 18570557) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18570557 18576011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18570557)
    (mid := 18573293) (hi := 18576011) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18576011 18581573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18576011)
    (mid := 18578767) (hi := 18581573) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18581573 18587141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18581573)
    (mid := 18584359) (hi := 18587141) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18587141 18592661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18587141)
    (mid := 18589919) (hi := 18592661) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18592661 18598121 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18592661)
    (mid := 18595391) (hi := 18598121) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18598121 18603479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18598121)
    (mid := 18600877) (hi := 18603479) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18603479 18608899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18603479)
    (mid := 18606163) (hi := 18608899) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18608899 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18608899)
    (mid := 18611633) (hi := 18614311) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18526961 18537853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18526961)
    (mid := 18532403) (hi := 18537853) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18537853 18548801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18537853)
    (mid := 18543377) (hi := 18548801) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18548801 18559663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18548801)
    (mid := 18554183) (hi := 18559663) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18559663 18570557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18559663)
    (mid := 18565021) (hi := 18570557) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18570557 18581573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18570557)
    (mid := 18576011) (hi := 18581573) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18581573 18592661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18581573)
    (mid := 18587141) (hi := 18592661) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18592661 18603479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18592661)
    (mid := 18598121) (hi := 18603479) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18603479 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18603479)
    (mid := 18608899) (hi := 18614311) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18526961 18548801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18526961)
    (mid := 18537853) (hi := 18548801) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18548801 18570557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18548801)
    (mid := 18559663) (hi := 18570557) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18570557 18592661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18570557)
    (mid := 18581573) (hi := 18592661) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18592661 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18592661)
    (mid := 18603479) (hi := 18614311) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18526961 18570557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18526961)
    (mid := 18548801) (hi := 18570557) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18570557 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18570557)
    (mid := 18592661) (hi := 18614311) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18526961 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18526961)
    (mid := 18570557) (hi := 18614311) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18526961 18614311 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block211

#print axioms B699MiddleExtension.PrimorialBlocks.Block211.joined
