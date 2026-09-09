import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block207

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18178271, 18178439, 18178609, 18178789, 18178973, 18179123, 18179303, 18179471, 18179653, 18179831, 18179983, 18180161, 18180313, 18180479, 18180661, 18180817]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18178133 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18178133 18180817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18178133) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18180991, 18181147, 18181301, 18181439, 18181601, 18181783, 18181967, 18182149, 18182309, 18182477, 18182653, 18182837, 18183017, 18183181, 18183301, 18183481]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18180817 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18180817 18183481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18180817) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18183631, 18183799, 18183967, 18184151, 18184333, 18184511, 18184681, 18184847, 18185029, 18185191, 18185357, 18185539, 18185723, 18185899, 18186071, 18186199]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18183481 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18183481 18186199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18183481) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18186383, 18186551, 18186733, 18186901, 18187063, 18187243, 18187381, 18187513, 18187681, 18187861, 18188033, 18188207, 18188363, 18188477, 18188641, 18188803]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18186199 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18186199 18188803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18186199) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18188981, 18189161, 18189341, 18189487, 18189667, 18189851, 18190027, 18190127, 18190307, 18190489, 18190661, 18190841, 18191023, 18191179, 18191363, 18191543]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18188803 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18188803 18191543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18188803) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18191713, 18191897, 18192073, 18192217, 18192389, 18192571, 18192749, 18192929, 18193061, 18193243, 18193421, 18193589, 18193753, 18193913, 18194093, 18194263]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18191543 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18191543 18194263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18191543) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18194441, 18194623, 18194791, 18194963, 18195143, 18195319, 18195497, 18195643, 18195811, 18195937, 18196121, 18196303, 18196469, 18196643, 18196823, 18196993]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18194263 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18194263 18196993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18194263) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18197177, 18197359, 18197453, 18197629, 18197791, 18197941, 18198091, 18198263, 18198431, 18198613, 18198781, 18198937, 18199117, 18199297, 18199477, 18199661]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18196993 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18196993 18199661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18196993) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18199823, 18199999, 18200177, 18200339, 18200519, 18200701, 18200873, 18201049, 18201229, 18201413, 18201587, 18201761, 18201941, 18202123, 18202307, 18202463]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18199661 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18199661 18202463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18199661) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18202643, 18202823, 18202973, 18203137, 18203299, 18203483, 18203657, 18203831, 18203947, 18204119, 18204289, 18204469, 18204653, 18204833, 18205001, 18205183]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18202463 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18202463 18205183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18202463) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18205357, 18205541, 18205721, 18205867, 18206029, 18206203, 18206381, 18206533, 18206707, 18206891, 18207047, 18207197, 18207379, 18207557, 18207713, 18207883]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18205183 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18205183 18207883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18205183) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18208063, 18208231, 18208409, 18208591, 18208763, 18208913, 18209063, 18209231, 18209407, 18209563, 18209693, 18209869, 18210047, 18210209, 18210389, 18210559]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18207883 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18207883 18210559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18207883) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18210743, 18210851, 18211033, 18211213, 18211387, 18211559, 18211729, 18211909, 18212093, 18212267, 18212449, 18212629, 18212807, 18212981, 18213163, 18213317]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18210559 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18210559 18213317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18210559) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18213499, 18213667, 18213829, 18213977, 18214111, 18214283, 18214451, 18214631, 18214811, 18214981, 18215159, 18215299, 18215473, 18215651, 18215801, 18215983]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18213317 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18213317 18215983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18213317) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18216157, 18216323, 18216463, 18216641, 18216823, 18216973, 18217141, 18217289, 18217457, 18217631, 18217813, 18217993, 18218147, 18218329, 18218513, 18218693]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18215983 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18215983 18218693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18215983) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18218867, 18219037, 18219203, 18219371, 18219527, 18219709, 18219881, 18220057, 18220193, 18220361, 18220513, 18220693, 18220877, 18221041, 18221213, 18221393]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18218693 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18218693 18221393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18218693) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18221563, 18221743, 18221899, 18222059, 18222223, 18222367, 18222541, 18222707, 18222871, 18223019, 18223193, 18223349, 18223463, 18223637, 18223817, 18223999]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18221393 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18221393 18223999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18221393) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18224161, 18224321, 18224491, 18224659, 18224837, 18225013, 18225187, 18225371, 18225539, 18225673, 18225847, 18226031, 18226207, 18226387, 18226517, 18226699]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18223999 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18223999 18226699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18223999) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18226847, 18227003, 18227159, 18227323, 18227501, 18227683, 18227851, 18228017, 18228191, 18228367, 18228541, 18228703, 18228863, 18229039, 18229217, 18229391]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18226699 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18226699 18229391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18226699) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18229573, 18229751, 18229931, 18230111, 18230293, 18230447, 18230623, 18230777, 18230959, 18231137, 18231313, 18231481, 18231601, 18231781, 18231943, 18232127]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18229391 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18229391 18232127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18229391) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18232289, 18232471, 18232651, 18232831, 18233003, 18233147, 18233329, 18233513, 18233671, 18233851, 18234031, 18234211, 18234383, 18234553, 18234721, 18234893]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18232127 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18232127 18234893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18232127) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18235073, 18235199, 18235369, 18235541, 18235703, 18235879, 18236063, 18236243, 18236419, 18236593, 18236761, 18236927, 18237103, 18237281, 18237463, 18237647]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18234893 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18234893 18237647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18234893) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18237823, 18238007, 18238189, 18238369, 18238553, 18238711, 18238889, 18239063, 18239233, 18239413, 18239593, 18239773, 18239953, 18240137, 18240301, 18240479]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18237647 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18237647 18240479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18237647) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18240659, 18240839, 18240997, 18241163, 18241343, 18241519, 18241693, 18241849, 18242011, 18242183, 18242359, 18242507, 18242689, 18242863, 18243047, 18243161]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18240479 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18240479 18243161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18240479) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18243343, 18243527, 18243691, 18243851, 18244019, 18244183, 18244363, 18244531, 18244711, 18244871, 18245053, 18245237, 18245419, 18245599, 18245767, 18245951]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18243161 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18243161 18245951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18243161) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18246127, 18246299, 18246467, 18246643, 18246827, 18246997, 18247147, 18247321, 18247483, 18247661, 18247837, 18248011, 18248183, 18248357, 18248539, 18248719]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18245951 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18245951 18248719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18245951) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18248903, 18249083, 18249247, 18249403, 18249563, 18249739, 18249923, 18250093, 18250249, 18250433, 18250601, 18250769, 18250927, 18251053, 18251227, 18251399]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18248719 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18248719 18251399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18248719) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18251573, 18251747, 18251927, 18252109, 18252287, 18252461, 18252643, 18252827, 18253009, 18253171, 18253349, 18253519, 18253693, 18253877, 18254057, 18254237]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18251399 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18251399 18254237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18251399) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18254417, 18254591, 18254773, 18254933, 18255101, 18255283, 18255463, 18255641, 18255821, 18256003, 18256177, 18256339, 18256499, 18256681, 18256859, 18257039]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18254237 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18254237 18257039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18254237) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18257207, 18257389, 18257563, 18257747, 18257923, 18258059, 18258241, 18258421, 18258599, 18258781, 18258959, 18259123, 18259303, 18259459, 18259639, 18259811]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18257039 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18257039 18259811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18257039) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18259991, 18260161, 18260287, 18260471, 18260651, 18260833, 18261013, 18261181, 18261343, 18261493, 18261673, 18261829, 18262009, 18262183, 18262331, 18262501]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18259811 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18259811 18262501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18259811) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18262681, 18262861, 18263039, 18263209, 18263393, 18263563, 18263741, 18263911, 18264041, 18264223, 18264397, 18264541, 18264707, 18264881, 18265033, 18265211]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18262501 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18262501 18265211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18262501) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18178133 18183481 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18178133)
    (mid := 18180817) (hi := 18183481) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18183481 18188803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18183481)
    (mid := 18186199) (hi := 18188803) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18188803 18194263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18188803)
    (mid := 18191543) (hi := 18194263) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18194263 18199661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18194263)
    (mid := 18196993) (hi := 18199661) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18199661 18205183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18199661)
    (mid := 18202463) (hi := 18205183) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18205183 18210559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18205183)
    (mid := 18207883) (hi := 18210559) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18210559 18215983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18210559)
    (mid := 18213317) (hi := 18215983) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18215983 18221393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18215983)
    (mid := 18218693) (hi := 18221393) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18221393 18226699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18221393)
    (mid := 18223999) (hi := 18226699) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18226699 18232127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18226699)
    (mid := 18229391) (hi := 18232127) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18232127 18237647 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18232127)
    (mid := 18234893) (hi := 18237647) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18237647 18243161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18237647)
    (mid := 18240479) (hi := 18243161) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18243161 18248719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18243161)
    (mid := 18245951) (hi := 18248719) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18248719 18254237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18248719)
    (mid := 18251399) (hi := 18254237) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18254237 18259811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18254237)
    (mid := 18257039) (hi := 18259811) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18259811 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18259811)
    (mid := 18262501) (hi := 18265211) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18178133 18188803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18178133)
    (mid := 18183481) (hi := 18188803) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18188803 18199661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18188803)
    (mid := 18194263) (hi := 18199661) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18199661 18210559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18199661)
    (mid := 18205183) (hi := 18210559) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18210559 18221393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18210559)
    (mid := 18215983) (hi := 18221393) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18221393 18232127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18221393)
    (mid := 18226699) (hi := 18232127) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18232127 18243161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18232127)
    (mid := 18237647) (hi := 18243161) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18243161 18254237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18243161)
    (mid := 18248719) (hi := 18254237) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18254237 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18254237)
    (mid := 18259811) (hi := 18265211) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18178133 18199661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18178133)
    (mid := 18188803) (hi := 18199661) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18199661 18221393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18199661)
    (mid := 18210559) (hi := 18221393) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18221393 18243161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18221393)
    (mid := 18232127) (hi := 18243161) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18243161 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18243161)
    (mid := 18254237) (hi := 18265211) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18178133 18221393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18178133)
    (mid := 18199661) (hi := 18221393) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18221393 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18221393)
    (mid := 18243161) (hi := 18265211) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18178133 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18178133)
    (mid := 18221393) (hi := 18265211) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18178133 18265211 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block207

#print axioms B699MiddleExtension.PrimorialBlocks.Block207.joined
