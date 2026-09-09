import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block116

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10218541, 10218709, 10218889, 10219031, 10219211, 10219379, 10219507, 10219691, 10219841, 10220011, 10220159, 10220341, 10220513, 10220681, 10220863, 10221047]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10218359 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10218359 10221047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10218359) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10221203, 10221377, 10221557, 10221737, 10221919, 10222099, 10222283, 10222463, 10222609, 10222781, 10222957, 10223141, 10223303, 10223467, 10223641, 10223821]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10221047 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10221047 10223821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10221047) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10223989, 10224143, 10224323, 10224503, 10224649, 10224833, 10225001, 10225169, 10225337, 10225519, 10225697, 10225867, 10226033, 10226147, 10226309, 10226479]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10223821 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10223821 10226479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10223821) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10226663, 10226831, 10226989, 10227127, 10227311, 10227467, 10227647, 10227823, 10227991, 10228159, 10228321, 10228489, 10228651, 10228819, 10228993, 10229171]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10226479 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10226479 10229171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10226479) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10229347, 10229519, 10229701, 10229881, 10230061, 10230221, 10230397, 10230581, 10230763, 10230937, 10231121, 10231303, 10231471, 10231649, 10231831, 10231993]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10229171 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10229171 10231993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10229171) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10232149, 10232333, 10232513, 10232693, 10232863, 10233043, 10233221, 10233397, 10233577, 10233749, 10233917, 10234099, 10234271, 10234453, 10234613, 10234781]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10231993 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10231993 10234781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10231993) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10234963, 10235131, 10235249, 10235417, 10235593, 10235777, 10235959, 10236143, 10236319, 10236493, 10236673, 10236857, 10237039, 10237177, 10237351, 10237511]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10234781 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10234781 10237511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10234781) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10237693, 10237861, 10238027, 10238209, 10238357, 10238533, 10238717, 10238863, 10239023, 10239191, 10239329, 10239511, 10239679, 10239851, 10240033, 10240211]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10237511 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10237511 10240211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10237511) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10240369, 10240537, 10240709, 10240889, 10241069, 10241251, 10241401, 10241557, 10241731, 10241899, 10242077, 10242241, 10242391, 10242553, 10242733, 10242899]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10240211 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10240211 10242899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10240211) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10243067, 10243243, 10243427, 10243591, 10243771, 10243949, 10244123, 10244303, 10244473, 10244657, 10244837, 10245017, 10245197, 10245359, 10245533, 10245701]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10242899 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10242899 10245701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10242899) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10245863, 10246043, 10246183, 10246363, 10246547, 10246729, 10246897, 10247071, 10247239, 10247423, 10247599, 10247767, 10247947, 10248131, 10248311, 10248461]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10245701 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10245701 10248461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10245701) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10248613, 10248767, 10248947, 10249123, 10249307, 10249483, 10249663, 10249823, 10249979, 10250161, 10250323, 10250503, 10250683, 10250857, 10251041, 10251223]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10248461 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10248461 10251223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10248461) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10251407, 10251569, 10251749, 10251907, 10252079, 10252259, 10252433, 10252591, 10252769, 10252939, 10253053, 10253237, 10253417, 10253587, 10253767, 10253927]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10251223 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10251223 10253927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10251223) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10254109, 10254289, 10254473, 10254653, 10254799, 10254983, 10255163, 10255337, 10255501, 10255681, 10255831, 10255963, 10256131, 10256303, 10256483, 10256663]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10253927 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10253927 10256663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10253927) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10256837, 10257007, 10257173, 10257353, 10257529, 10257697, 10257859, 10258013, 10258189, 10258363, 10258543, 10258711, 10258891, 10259063, 10259237, 10259401]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10256663 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10256663 10259401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10256663) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10259573, 10259741, 10259917, 10260097, 10260259, 10260413, 10260559, 10260743, 10260923, 10261091, 10261271, 10261453, 10261631, 10261799, 10261973, 10262149]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10259401 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10259401 10262149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10259401) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10262327, 10262479, 10262657, 10262821, 10262977, 10263137, 10263299, 10263481, 10263661, 10263829, 10263983, 10264159, 10264343, 10264523, 10264703, 10264871]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10262149 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10262149 10264871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10262149) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10265051, 10265231, 10265389, 10265561, 10265737, 10265891, 10266071, 10266253, 10266437, 10266617, 10266799, 10266979, 10267157, 10267333, 10267511, 10267693]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10264871 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10264871 10267693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10264871) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10267877, 10268047, 10268213, 10268393, 10268567, 10268749, 10268933, 10269097, 10269269, 10269433, 10269607, 10269769, 10269949, 10270133, 10270313, 10270451]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10267693 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10267693 10270451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10267693) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10270633, 10270781, 10270933, 10271113, 10271297, 10271477, 10271627, 10271809, 10271957, 10272137, 10272319, 10272503, 10272683, 10272851, 10273033, 10273201]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10270451 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10270451 10273201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10270451) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10273349, 10273499, 10273651, 10273829, 10274009, 10274179, 10274359, 10274533, 10274713, 10274897, 10275079, 10275241, 10275413, 10275593, 10275761, 10275931]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10273201 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10273201 10275931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10273201) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10276099, 10276267, 10276421, 10276603, 10276771, 10276951, 10277131, 10277303, 10277483, 10277653, 10277831, 10278011, 10278187, 10278361, 10278533, 10278703]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10275931 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10275931 10278703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10275931) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10278881, 10279043, 10279219, 10279391, 10279571, 10279739, 10279909, 10280089, 10280243, 10280423, 10280593, 10280773, 10280953, 10281121, 10281289, 10281461]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10278703 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10278703 10281461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10278703) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10281637, 10281811, 10281949, 10282133, 10282303, 10282487, 10282619, 10282763, 10282939, 10283111, 10283279, 10283423, 10283593, 10283773, 10283957, 10284119]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10281461 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10281461 10284119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10281461) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10284293, 10284437, 10284607, 10284787, 10284971, 10285139, 10285313, 10285487, 10285651, 10285829, 10286009, 10286191, 10286363, 10286537, 10286701, 10286863]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10284119 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10284119 10286863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10284119) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10287047, 10287229, 10287401, 10287581, 10287757, 10287929, 10288097, 10288279, 10288463, 10288639, 10288801, 10288973, 10289141, 10289207, 10289387, 10289563]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10286863 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10286863 10289563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10286863) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10289731, 10289911, 10290079, 10290263, 10290437, 10290617, 10290793, 10290971, 10291139, 10291297, 10291481, 10291651, 10291823, 10292003, 10292173, 10292333]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10289563 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10289563 10292333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10289563) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10292507, 10292677, 10292839, 10292987, 10293169, 10293343, 10293527, 10293683, 10293863, 10294033, 10294213, 10294393, 10294549, 10294729, 10294891, 10295063]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10292333 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10292333 10295063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10292333) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10295231, 10295407, 10295573, 10295741, 10295921, 10296089, 10296263, 10296427, 10296593, 10296763, 10296907, 10297073, 10297249, 10297429, 10297607, 10297789]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10295063 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10295063 10297789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10295063) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10297961, 10298137, 10298317, 10298489, 10298671, 10298843, 10299019, 10299199, 10299353, 10299529, 10299697, 10299871, 10300013, 10300151, 10300327, 10300501]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10297789 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10297789 10300501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10297789) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10300681, 10300853, 10301029, 10301191, 10301359, 10301527, 10301659, 10301831, 10302011, 10302191, 10302371, 10302529, 10302713, 10302871, 10303043, 10303217]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10300501 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10300501 10303217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10300501) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10303369, 10303549, 10303721, 10303883, 10304039, 10304197, 10304353, 10304531, 10304711, 10304887, 10305059, 10305241, 10305371, 10305539, 10305709, 10305839]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10303217 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10303217 10305839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10303217) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10218359 10223821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10221047) (hi := 10223821) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10223821 10229171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10223821)
    (mid := 10226479) (hi := 10229171) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10229171 10234781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10229171)
    (mid := 10231993) (hi := 10234781) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10234781 10240211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10234781)
    (mid := 10237511) (hi := 10240211) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10240211 10245701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10240211)
    (mid := 10242899) (hi := 10245701) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10245701 10251223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10245701)
    (mid := 10248461) (hi := 10251223) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10251223 10256663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10251223)
    (mid := 10253927) (hi := 10256663) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10256663 10262149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10256663)
    (mid := 10259401) (hi := 10262149) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10262149 10267693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10262149)
    (mid := 10264871) (hi := 10267693) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10267693 10273201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10267693)
    (mid := 10270451) (hi := 10273201) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10273201 10278703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10273201)
    (mid := 10275931) (hi := 10278703) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10278703 10284119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10278703)
    (mid := 10281461) (hi := 10284119) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10284119 10289563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10284119)
    (mid := 10286863) (hi := 10289563) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10289563 10295063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10289563)
    (mid := 10292333) (hi := 10295063) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10295063 10300501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10295063)
    (mid := 10297789) (hi := 10300501) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10300501 10305839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10300501)
    (mid := 10303217) (hi := 10305839) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10218359 10229171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10223821) (hi := 10229171) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10229171 10240211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10229171)
    (mid := 10234781) (hi := 10240211) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10240211 10251223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10240211)
    (mid := 10245701) (hi := 10251223) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10251223 10262149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10251223)
    (mid := 10256663) (hi := 10262149) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10262149 10273201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10262149)
    (mid := 10267693) (hi := 10273201) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10273201 10284119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10273201)
    (mid := 10278703) (hi := 10284119) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10284119 10295063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10284119)
    (mid := 10289563) (hi := 10295063) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10295063 10305839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10295063)
    (mid := 10300501) (hi := 10305839) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10218359 10240211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10229171) (hi := 10240211) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10240211 10262149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10240211)
    (mid := 10251223) (hi := 10262149) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10262149 10284119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10262149)
    (mid := 10273201) (hi := 10284119) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10284119 10305839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10284119)
    (mid := 10295063) (hi := 10305839) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10218359 10262149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10240211) (hi := 10262149) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10262149 10305839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10262149)
    (mid := 10284119) (hi := 10305839) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10218359 10305839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10262149) (hi := 10305839) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10218359 10305839 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block116

#print axioms B699MiddleExtension.PrimorialBlocks.Block116.joined
