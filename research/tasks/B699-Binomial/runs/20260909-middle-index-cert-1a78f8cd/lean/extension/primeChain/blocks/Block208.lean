import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block208

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18265393, 18265571, 18265747, 18265931, 18266107, 18266263, 18266447, 18266603, 18266777, 18266957, 18267133, 18267311, 18267481, 18267653, 18267833, 18268009]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18265211 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18265211 18268009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18265211) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18268193, 18268373, 18268553, 18268721, 18268891, 18269059, 18269233, 18269401, 18269557, 18269731, 18269903, 18270079, 18270233, 18270391, 18270569, 18270737]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18268009 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18268009 18270737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18268009) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18270893, 18271051, 18271219, 18271403, 18271577, 18271723, 18271853, 18272029, 18272207, 18272383, 18272543, 18272701, 18272873, 18273037, 18273209, 18273389]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18270737 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18270737 18273389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18270737) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18273571, 18273719, 18273901, 18274073, 18274237, 18274387, 18274549, 18274721, 18274873, 18275029, 18275209, 18275371, 18275531, 18275671, 18275837, 18275987]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18273389 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18273389 18275987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18273389) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18276151, 18276311, 18276491, 18276673, 18276847, 18276977, 18277151, 18277333, 18277517, 18277697, 18277843, 18278021, 18278201, 18278371, 18278549, 18278717]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18275987 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18275987 18278717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18275987) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18278899, 18279067, 18279241, 18279413, 18279593, 18279769, 18279953, 18280099, 18280267, 18280447, 18280631, 18280771, 18280949, 18281129, 18281309, 18281489]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18278717 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18278717 18281489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18278717) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18281651, 18281831, 18282007, 18282169, 18282347, 18282527, 18282683, 18282863, 18283043, 18283201, 18283351, 18283501, 18283679, 18283861, 18284039, 18284219]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18281489 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18281489 18284219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18281489) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18284393, 18284561, 18284743, 18284923, 18285101, 18285271, 18285451, 18285611, 18285791, 18285919, 18286097, 18286259, 18286393, 18286561, 18286729, 18286859]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18284219 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18284219 18286859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18284219) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18287041, 18287221, 18287389, 18287573, 18287749, 18287933, 18288097, 18288271, 18288449, 18288607, 18288769, 18288953, 18289123, 18289307, 18289489, 18289643]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18286859 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18286859 18289643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18286859) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18289811, 18289993, 18290137, 18290303, 18290477, 18290659, 18290821, 18291001, 18291179, 18291359, 18291523, 18291703, 18291859, 18292039, 18292177, 18292331]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18289643 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18289643 18292331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18289643) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18292513, 18292661, 18292811, 18292993, 18293153, 18293329, 18293507, 18293687, 18293843, 18294013, 18294197, 18294347, 18294503, 18294677, 18294847, 18295031]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18292331 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18292331 18295031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18292331) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18295183, 18295337, 18295517, 18295691, 18295867, 18296041, 18296189, 18296357, 18296527, 18296711, 18296827, 18297001, 18297179, 18297359, 18297541, 18297701]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18295031 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18295031 18297701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18295031) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18297883, 18298067, 18298213, 18298393, 18298559, 18298741, 18298879, 18299051, 18299233, 18299417, 18299549, 18299731, 18299903, 18300083, 18300263, 18300419]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18297701 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18297701 18300419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18297701) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18300599, 18300767, 18300949, 18301133, 18301279, 18301447, 18301627, 18301799, 18301981, 18302159, 18302327, 18302467, 18302611, 18302777, 18302951, 18303121]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18300419 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18300419 18303121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18300419) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18303281, 18303457, 18303619, 18303799, 18303979, 18304151, 18304309, 18304483, 18304661, 18304837, 18305009, 18305191, 18305369, 18305537, 18305711, 18305891]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18303121 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18303121 18305891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18303121) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18306053, 18306217, 18306391, 18306559, 18306733, 18306913, 18307073, 18307253, 18307433, 18307603, 18307781, 18307937, 18308093, 18308261, 18308443, 18308627]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18305891 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18305891 18308627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18305891) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18308789, 18308963, 18309143, 18309307, 18309491, 18309671, 18309853, 18310021, 18310183, 18310351, 18310529, 18310703, 18310867, 18311047, 18311221, 18311353]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18308627 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18308627 18311353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18308627) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18311509, 18311693, 18311861, 18312037, 18312167, 18312337, 18312517, 18312683, 18312863, 18313027, 18313189, 18313331, 18313507, 18313661, 18313843, 18313987]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18311353 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18311353 18313987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18311353) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18314171, 18314323, 18314503, 18314669, 18314851, 18315023, 18315197, 18315371, 18315553, 18315727, 18315911, 18316093, 18316267, 18316439, 18316621, 18316789]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18313987 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18313987 18316789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18313987) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18316957, 18317113, 18317293, 18317471, 18317609, 18317779, 18317951, 18318127, 18318277, 18318457, 18318623, 18318791, 18318967, 18319151, 18319321, 18319463]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18316789 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18316789 18319463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18316789) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18319643, 18319817, 18319993, 18320117, 18320261, 18320429, 18320609, 18320791, 18320971, 18321143, 18321323, 18321473, 18321607, 18321769, 18321929, 18322097]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18319463 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18319463 18322097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18319463) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18322267, 18322411, 18322589, 18322771, 18322951, 18323131, 18323311, 18323489, 18323659, 18323797, 18323957, 18324101, 18324281, 18324457, 18324641, 18324821]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18322097 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18322097 18324821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18322097) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18325003, 18325183, 18325327, 18325499, 18325679, 18325849, 18326027, 18326197, 18326351, 18326531, 18326683, 18326839, 18327013, 18327193, 18327341, 18327523]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18324821 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18324821 18327523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18324821) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18327707, 18327889, 18328069, 18328253, 18328403, 18328577, 18328759, 18328943, 18329119, 18329299, 18329477, 18329629, 18329809, 18329989, 18330167, 18330293]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18327523 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18327523 18330293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18327523) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18330469, 18330647, 18330803, 18330979, 18331153, 18331331, 18331501, 18331657, 18331829, 18332003, 18332183, 18332297, 18332441, 18332603, 18332779, 18332933]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18330293 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18330293 18332933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18330293) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18333103, 18333281, 18333457, 18333641, 18333817, 18333983, 18334153, 18334331, 18334453, 18334633, 18334793, 18334973, 18335147, 18335321, 18335497, 18335671]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18332933 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18332933 18335671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18332933) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18335851, 18336029, 18336209, 18336391, 18336559, 18336739, 18336917, 18337093, 18337247, 18337427, 18337589, 18337729, 18337897, 18338011, 18338161, 18338323]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18335671 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18335671 18338323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18335671) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18338501, 18338681, 18338833, 18339017, 18339193, 18339361, 18339539, 18339707, 18339857, 18340033, 18340207, 18340391, 18340573, 18340741, 18340891, 18341069]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18338323 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18338323 18341069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18338323) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18341161, 18341341, 18341503, 18341683, 18341867, 18342043, 18342223, 18342403, 18342547, 18342691, 18342871, 18343049, 18343229, 18343393, 18343571, 18343751]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18341069 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18341069 18343751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18341069) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18343931, 18344107, 18344279, 18344461, 18344603, 18344773, 18344951, 18345101, 18345281, 18345461, 18345581, 18345731, 18345911, 18346093, 18346277, 18346441]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18343751 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18343751 18346441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18343751) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18346619, 18346789, 18346921, 18347101, 18347281, 18347423, 18347603, 18347773, 18347957, 18348133, 18348301, 18348481, 18348643, 18348817, 18348991, 18349157]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18346441 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18346441 18349157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18346441) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18349339, 18349481, 18349657, 18349829, 18350009, 18350177, 18350341, 18350513, 18350693, 18350869, 18351049, 18351209, 18351391, 18351569, 18351743, 18351923]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18349157 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18349157 18351923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18349157) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18265211 18270737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18268009) (hi := 18270737) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18270737 18275987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18270737)
    (mid := 18273389) (hi := 18275987) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18275987 18281489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18275987)
    (mid := 18278717) (hi := 18281489) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18281489 18286859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18281489)
    (mid := 18284219) (hi := 18286859) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18286859 18292331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18286859)
    (mid := 18289643) (hi := 18292331) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18292331 18297701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18292331)
    (mid := 18295031) (hi := 18297701) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18297701 18303121 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18297701)
    (mid := 18300419) (hi := 18303121) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18303121 18308627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18303121)
    (mid := 18305891) (hi := 18308627) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18308627 18313987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18308627)
    (mid := 18311353) (hi := 18313987) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18313987 18319463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18313987)
    (mid := 18316789) (hi := 18319463) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18319463 18324821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18319463)
    (mid := 18322097) (hi := 18324821) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18324821 18330293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18324821)
    (mid := 18327523) (hi := 18330293) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18330293 18335671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18330293)
    (mid := 18332933) (hi := 18335671) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18335671 18341069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18335671)
    (mid := 18338323) (hi := 18341069) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18341069 18346441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18341069)
    (mid := 18343751) (hi := 18346441) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18346441 18351923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18346441)
    (mid := 18349157) (hi := 18351923) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18265211 18275987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18270737) (hi := 18275987) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18275987 18286859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18275987)
    (mid := 18281489) (hi := 18286859) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18286859 18297701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18286859)
    (mid := 18292331) (hi := 18297701) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18297701 18308627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18297701)
    (mid := 18303121) (hi := 18308627) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18308627 18319463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18308627)
    (mid := 18313987) (hi := 18319463) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18319463 18330293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18319463)
    (mid := 18324821) (hi := 18330293) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18330293 18341069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18330293)
    (mid := 18335671) (hi := 18341069) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18341069 18351923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18341069)
    (mid := 18346441) (hi := 18351923) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18265211 18286859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18275987) (hi := 18286859) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18286859 18308627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18286859)
    (mid := 18297701) (hi := 18308627) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18308627 18330293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18308627)
    (mid := 18319463) (hi := 18330293) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18330293 18351923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18330293)
    (mid := 18341069) (hi := 18351923) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18265211 18308627 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18286859) (hi := 18308627) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18308627 18351923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18308627)
    (mid := 18330293) (hi := 18351923) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18265211 18351923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18308627) (hi := 18351923) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18265211 18351923 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block208

#print axioms B699MiddleExtension.PrimorialBlocks.Block208.joined
