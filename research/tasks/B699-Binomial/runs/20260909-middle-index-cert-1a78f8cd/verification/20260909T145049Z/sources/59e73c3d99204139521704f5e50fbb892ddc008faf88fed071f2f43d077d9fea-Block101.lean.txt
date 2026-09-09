import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block101

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8904677, 8904851, 8905031, 8905199, 8905361, 8905543, 8905723, 8905903, 8906087, 8906263, 8906441, 8906617, 8906797, 8906969, 8907113, 8907293]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8904499 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8904499 8907293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8904499) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8907469, 8907631, 8907799, 8907937, 8908121, 8908271, 8908433, 8908591, 8908769, 8908951, 8909101, 8909281, 8909449, 8909611, 8909779, 8909963]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8907293 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8907293 8909963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8907293) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8910137, 8910311, 8910481, 8910659, 8910833, 8910989, 8911169, 8911333, 8911517, 8911697, 8911853, 8912023, 8912207, 8912389, 8912551, 8912731]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8909963 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8909963 8912731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8909963) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8912887, 8913067, 8913239, 8913419, 8913589, 8913767, 8913941, 8914109, 8914291, 8914471, 8914651, 8914811, 8914993, 8915177, 8915359, 8915539]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8912731 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8912731 8915539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8912731) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8915723, 8915897, 8916077, 8916239, 8916421, 8916599, 8916779, 8916931, 8917109, 8917253, 8917423, 8917523, 8917697, 8917879, 8918059, 8918237]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8915539 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8915539 8918237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8915539) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8918419, 8918597, 8918773, 8918953, 8919133, 8919301, 8919461, 8919629, 8919809, 8919983, 8920147, 8920321, 8920489, 8920649, 8920817, 8920999]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8918237 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8918237 8920999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8918237) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8921179, 8921359, 8921467, 8921639, 8921791, 8921959, 8922139, 8922313, 8922479, 8922659, 8922833, 8923007, 8923177, 8923357, 8923531, 8923679]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8920999 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8920999 8923679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8920999) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8923847, 8924029, 8924213, 8924389, 8924543, 8924719, 8924893, 8925061, 8925233, 8925407, 8925583, 8925767, 8925913, 8926097, 8926273, 8926457]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8923679 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8923679 8926457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8923679) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8926613, 8926781, 8926961, 8927143, 8927311, 8927489, 8927647, 8927813, 8927981, 8928151, 8928329, 8928511, 8928683, 8928863, 8929033, 8929213]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8926457 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8926457 8929213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8926457) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8929391, 8929567, 8929733, 8929909, 8930093, 8930267, 8930429, 8930599, 8930783, 8930959, 8931119, 8931289, 8931431, 8931583, 8931757, 8931941]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8929213 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8929213 8931941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8929213) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8932117, 8932289, 8932457, 8932639, 8932823, 8932999, 8933179, 8933339, 8933513, 8933681, 8933861, 8934043, 8934227, 8934391, 8934553, 8934733]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8931941 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8931941 8934733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8931941) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8934917, 8935079, 8935259, 8935439, 8935613, 8935793, 8935957, 8936141, 8936311, 8936491, 8936663, 8936833, 8937013, 8937193, 8937377, 8937559]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8934733 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8934733 8937559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8934733) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8937727, 8937893, 8938057, 8938231, 8938381, 8938561, 8938739, 8938921, 8939057, 8939233, 8939407, 8939591, 8939759, 8939933, 8940109, 8940287]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8937559 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8937559 8940287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8937559) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8940461, 8940611, 8940779, 8940931, 8941109, 8941279, 8941459, 8941637, 8941819, 8941993, 8942177, 8942359, 8942509, 8942671, 8942851, 8943023]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8940287 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8940287 8943023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8940287) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8943203, 8943367, 8943551, 8943719, 8943901, 8944073, 8944253, 8944427, 8944609, 8944777, 8944939, 8945119, 8945273, 8945449, 8945627, 8945809]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8943023 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8943023 8945809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8943023) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8945983, 8946151, 8946317, 8946499, 8946673, 8946857, 8947039, 8947217, 8947369, 8947517, 8947699, 8947853, 8948021, 8948179, 8948333, 8948509]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8945809 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8945809 8948509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8945809) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8948689, 8948869, 8949037, 8949221, 8949379, 8949559, 8949679, 8949839, 8950001, 8950181, 8950363, 8950547, 8950709, 8950889, 8951051, 8951221]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8948509 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8948509 8951221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8948509) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8951399, 8951581, 8951737, 8951909, 8952091, 8952259, 8952431, 8952613, 8952791, 8952973, 8953157, 8953319, 8953501, 8953643, 8953811, 8953993]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8951221 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8951221 8953993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8951221) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8954177, 8954347, 8954531, 8954713, 8954867, 8955043, 8955181, 8955307, 8955449, 8955629, 8955797, 8955979, 8956147, 8956307, 8956487, 8956663]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8953993 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8953993 8956663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8953993) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8956823, 8956951, 8957131, 8957309, 8957489, 8957671, 8957843, 8958011, 8958193, 8958353, 8958517, 8958701, 8958877, 8959021, 8959201, 8959373]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8956663 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8956663 8959373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8956663) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8959537, 8959711, 8959891, 8960057, 8960227, 8960387, 8960557, 8960741, 8960923, 8961107, 8961269, 8961439, 8961619, 8961793, 8961961, 8962139]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8959373 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8959373 8962139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8959373) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8962321, 8962493, 8962643, 8962823, 8962997, 8963177, 8963351, 8963503, 8963683, 8963861, 8964031, 8964211, 8964391, 8964569, 8964737, 8964919]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8962139 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8962139 8964919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8962139) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8965097, 8965279, 8965447, 8965609, 8965769, 8965939, 8966117, 8966299, 8966479, 8966653, 8966831, 8967011, 8967193, 8967377, 8967557, 8967737]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8964919 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8964919 8967737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8964919) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8967919, 8968103, 8968283, 8968439, 8968601, 8968783, 8968957, 8969131, 8969309, 8969483, 8969663, 8969813, 8969993, 8970163, 8970341, 8970503]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8967737 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8967737 8970503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8967737) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8970673, 8970839, 8971007, 8971181, 8971351, 8971511, 8971693, 8971873, 8972053, 8972221, 8972371, 8972501, 8972669, 8972849, 8973023, 8973199]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8970503 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8970503 8973199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8970503) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8973347, 8973521, 8973697, 8973863, 8974037, 8974219, 8974391, 8974529, 8974711, 8974877, 8975059, 8975243, 8975389, 8975539, 8975717, 8975899]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8973199 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8973199 8975899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8973199) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8976073, 8976257, 8976439, 8976619, 8976787, 8976971, 8977117, 8977279, 8977459, 8977607, 8977763, 8977909, 8978093, 8978273, 8978449, 8978633]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8975899 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8975899 8978633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8975899) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8978813, 8978989, 8979169, 8979353, 8979497, 8979673, 8979857, 8980031, 8980187, 8980339, 8980523, 8980703, 8980883, 8981057, 8981233, 8981411]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8978633 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8978633 8981411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8978633) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8981573, 8981743, 8981923, 8982107, 8982247, 8982427, 8982559, 8982737, 8982913, 8983081, 8983253, 8983433, 8983607, 8983787, 8983951, 8984089]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8981411 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8981411 8984089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8981411) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8984273, 8984441, 8984623, 8984803, 8984981, 8985161, 8985337, 8985517, 8985677, 8985833, 8985997, 8986163, 8986333, 8986513, 8986697, 8986877]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8984089 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8984089 8986877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8984089) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8987047, 8987221, 8987401, 8987579, 8987761, 8987939, 8988113, 8988281, 8988451, 8988619, 8988781, 8988949, 8989133, 8989313, 8989493, 8989667]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8986877 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8986877 8989667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8986877) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8989837, 8990011, 8990183, 8990353, 8990533, 8990693, 8990873, 8991041, 8991223, 8991401, 8991559, 8991743, 8991901, 8992069, 8992231, 8992411]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8989667 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8989667 8992411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8989667) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8904499 8909963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8904499)
    (mid := 8907293) (hi := 8909963) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8909963 8915539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8909963)
    (mid := 8912731) (hi := 8915539) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8915539 8920999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8915539)
    (mid := 8918237) (hi := 8920999) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8920999 8926457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8920999)
    (mid := 8923679) (hi := 8926457) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8926457 8931941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8926457)
    (mid := 8929213) (hi := 8931941) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8931941 8937559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8931941)
    (mid := 8934733) (hi := 8937559) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8937559 8943023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8937559)
    (mid := 8940287) (hi := 8943023) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8943023 8948509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8943023)
    (mid := 8945809) (hi := 8948509) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8948509 8953993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8948509)
    (mid := 8951221) (hi := 8953993) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8953993 8959373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8953993)
    (mid := 8956663) (hi := 8959373) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8959373 8964919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8959373)
    (mid := 8962139) (hi := 8964919) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8964919 8970503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8964919)
    (mid := 8967737) (hi := 8970503) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8970503 8975899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8970503)
    (mid := 8973199) (hi := 8975899) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8975899 8981411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8975899)
    (mid := 8978633) (hi := 8981411) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8981411 8986877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8981411)
    (mid := 8984089) (hi := 8986877) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8986877 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8986877)
    (mid := 8989667) (hi := 8992411) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8904499 8915539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8904499)
    (mid := 8909963) (hi := 8915539) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8915539 8926457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8915539)
    (mid := 8920999) (hi := 8926457) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8926457 8937559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8926457)
    (mid := 8931941) (hi := 8937559) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8937559 8948509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8937559)
    (mid := 8943023) (hi := 8948509) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8948509 8959373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8948509)
    (mid := 8953993) (hi := 8959373) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8959373 8970503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8959373)
    (mid := 8964919) (hi := 8970503) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8970503 8981411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8970503)
    (mid := 8975899) (hi := 8981411) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8981411 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8981411)
    (mid := 8986877) (hi := 8992411) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8904499 8926457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8904499)
    (mid := 8915539) (hi := 8926457) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8926457 8948509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8926457)
    (mid := 8937559) (hi := 8948509) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8948509 8970503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8948509)
    (mid := 8959373) (hi := 8970503) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8970503 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8970503)
    (mid := 8981411) (hi := 8992411) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8904499 8948509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8904499)
    (mid := 8926457) (hi := 8948509) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8948509 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8948509)
    (mid := 8970503) (hi := 8992411) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8904499 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8904499)
    (mid := 8948509) (hi := 8992411) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8904499 8992411 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block101

#print axioms B699MiddleExtension.PrimorialBlocks.Block101.joined
