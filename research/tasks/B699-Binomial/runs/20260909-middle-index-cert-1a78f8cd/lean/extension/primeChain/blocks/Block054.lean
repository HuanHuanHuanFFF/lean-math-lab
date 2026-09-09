import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block054

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4777831, 4778009, 4778183, 4778357, 4778539, 4778723, 4778869, 4779037, 4779221, 4779371, 4779553, 4779701, 4779877, 4780051, 4780201, 4780379]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4777681 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4777681 4780379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4777681) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4780561, 4780739, 4780903, 4781057, 4781237, 4781417, 4781587, 4781767, 4781951, 4782133, 4782317, 4782497, 4782677, 4782853, 4782997, 4783169]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4780379 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4780379 4783169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4780379) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4783349, 4783531, 4783699, 4783873, 4784057, 4784239, 4784419, 4784597, 4784777, 4784957, 4785119, 4785293, 4785467, 4785647, 4785827, 4786007]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4783169 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4783169 4786007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4783169) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4786147, 4786321, 4786477, 4786657, 4786823, 4786987, 4787161, 4787339, 4787513, 4787683, 4787833, 4788011, 4788131, 4788307, 4788491, 4788673]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4786007 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4786007 4788673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4786007) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4788821, 4789003, 4789177, 4789339, 4789517, 4789667, 4789831, 4790011, 4790167, 4790351, 4790521, 4790699, 4790857, 4791023, 4791197, 4791379]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4788673 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4788673 4791379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4788673) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4791559, 4791737, 4791911, 4792069, 4792247, 4792409, 4792553, 4792729, 4792913, 4793077, 4793237, 4793417, 4793599, 4793771, 4793951, 4794103]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4791379 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4791379 4794103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4791379) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4794287, 4794463, 4794641, 4794817, 4794997, 4795171, 4795337, 4795519, 4795699, 4795883, 4796053, 4796237, 4796411, 4796593, 4796767, 4796929]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4794103 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4794103 4796929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4794103) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4797073, 4797251, 4797413, 4797581, 4797739, 4797913, 4798091, 4798259, 4798439, 4798609, 4798793, 4798967, 4799131, 4799303, 4799477, 4799659]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4796929 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4796929 4799659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4796929) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4799843, 4800023, 4800199, 4800373, 4800557, 4800737, 4800911, 4801061, 4801213, 4801393, 4801561, 4801729, 4801903, 4802087, 4802257, 4802411]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4799659 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4799659 4802411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4799659) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4802569, 4802741, 4802921, 4803103, 4803283, 4803467, 4803649, 4803797, 4803971, 4804133, 4804307, 4804463, 4804643, 4804823, 4804997, 4805179]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4802411 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4802411 4805179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4802411) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4805357, 4805539, 4805719, 4805903, 4806077, 4806233, 4806413, 4806589, 4806773, 4806947, 4807129, 4807303, 4807487, 4807643, 4807819, 4808003]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4805179 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4805179 4808003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4805179) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4808137, 4808299, 4808471, 4808641, 4808821, 4808987, 4809143, 4809319, 4809479, 4809661, 4809811, 4809977, 4810159, 4810343, 4810517, 4810697]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4808003 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4808003 4810697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4808003) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4810879, 4811057, 4811239, 4811413, 4811581, 4811717, 4811869, 4812053, 4812209, 4812383, 4812527, 4812707, 4812889, 4813073, 4813243, 4813423]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4810697 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4810697 4813423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4810697) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4813607, 4813759, 4813943, 4814123, 4814287, 4814471, 4814651, 4814833, 4814987, 4815127, 4815311, 4815469, 4815647, 4815823, 4816003, 4816187]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4813423 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4813423 4816187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4813423) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4816363, 4816541, 4816717, 4816901, 4817083, 4817261, 4817441, 4817581, 4817737, 4817921, 4818101, 4818277, 4818461, 4818637, 4818797, 4818953]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4816187 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4816187 4818953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4816187) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4819127, 4819273, 4819447, 4819631, 4819813, 4819987, 4820161, 4820341, 4820489, 4820663, 4820833, 4821017, 4821199, 4821373, 4821541, 4821721]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4818953 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4818953 4821721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4818953) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4821899, 4822079, 4822231, 4822393, 4822567, 4822723, 4822907, 4823083, 4823233, 4823417, 4823591, 4823761, 4823911, 4824091, 4824263, 4824439]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4821721 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4821721 4824439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4821721) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4824619, 4824791, 4824971, 4825129, 4825307, 4825453, 4825633, 4825817, 4825993, 4826161, 4826309, 4826491, 4826641, 4826813, 4826953, 4827107]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4824439 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4824439 4827107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4824439) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4827287, 4827461, 4827637, 4827821, 4827989, 4828171, 4828349, 4828531, 4828669, 4828847, 4829009, 4829183, 4829359, 4829543, 4829723, 4829843]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4827107 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4827107 4829843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4827107) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4830011, 4830167, 4830349, 4830487, 4830659, 4830841, 4831019, 4831193, 4831373, 4831549, 4831733, 4831907, 4832081, 4832263, 4832423, 4832591]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4829843 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4829843 4832591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4829843) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4832767, 4832941, 4833109, 4833271, 4833443, 4833623, 4833779, 4833953, 4834129, 4834267, 4834451, 4834631, 4834813, 4834997, 4835179, 4835357]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4832591 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4832591 4835357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4832591) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4835539, 4835723, 4835903, 4836067, 4836239, 4836413, 4836593, 4836763, 4836947, 4837087, 4837247, 4837423, 4837603, 4837771, 4837939, 4838117]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4835357 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4835357 4838117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4835357) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4838297, 4838473, 4838653, 4838831, 4839013, 4839187, 4839347, 4839529, 4839691, 4839871, 4840049, 4840219, 4840399, 4840579, 4840757, 4840939]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4838117 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4838117 4840939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4838117) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4841119, 4841303, 4841483, 4841657, 4841819, 4841981, 4842139, 4842317, 4842493, 4842653, 4842821, 4843001, 4843183, 4843367, 4843541, 4843697]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4840939 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4840939 4843697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4840939) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4843877, 4844057, 4844239, 4844419, 4844603, 4844761, 4844933, 4845079, 4845263, 4845443, 4845613, 4845793, 4845943, 4846117, 4846279, 4846441]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4843697 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4843697 4846441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4843697) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4846603, 4846771, 4846939, 4847107, 4847291, 4847473, 4847657, 4847833, 4848007, 4848169, 4848323, 4848499, 4848673, 4848847, 4849027, 4849211]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4846441 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4846441 4849211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4846441) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4849381, 4849543, 4849727, 4849909, 4850077, 4850243, 4850413, 4850597, 4850761, 4850941, 4851113, 4851277, 4851397, 4851577, 4851761, 4851941]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4849211 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4849211 4851941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4849211) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4852117, 4852301, 4852481, 4852663, 4852843, 4852997, 4853171, 4853351, 4853533, 4853699, 4853837, 4854001, 4854181, 4854361, 4854539, 4854701]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4851941 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4851941 4854701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4851941) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4854847, 4855031, 4855211, 4855391, 4855567, 4855717, 4855901, 4856083, 4856263, 4856447, 4856603, 4856783, 4856963, 4857143, 4857289, 4857451]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4854701 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4854701 4857451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4854701) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4857569, 4857751, 4857893, 4858067, 4858247, 4858423, 4858603, 4858783, 4858967, 4859137, 4859317, 4859479, 4859651, 4859821, 4859999, 4860179]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4857451 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4857451 4860179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4857451) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4860347, 4860517, 4860701, 4860883, 4861063, 4861243, 4861427, 4861607, 4861781, 4861957, 4862141, 4862303, 4862471, 4862621, 4862797, 4862941]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4860179 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4860179 4862941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4860179) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4863109, 4863293, 4863473, 4863653, 4863827, 4864009, 4864187, 4864369, 4864553, 4864729, 4864903, 4865087, 4865261, 4865431, 4865603, 4865761]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4862941 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4862941 4865761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4862941) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4777681 4783169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4780379) (hi := 4783169) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4783169 4788673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4783169)
    (mid := 4786007) (hi := 4788673) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4788673 4794103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4788673)
    (mid := 4791379) (hi := 4794103) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4794103 4799659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4794103)
    (mid := 4796929) (hi := 4799659) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4799659 4805179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4799659)
    (mid := 4802411) (hi := 4805179) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4805179 4810697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4805179)
    (mid := 4808003) (hi := 4810697) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4810697 4816187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4810697)
    (mid := 4813423) (hi := 4816187) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4816187 4821721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4816187)
    (mid := 4818953) (hi := 4821721) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4821721 4827107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4821721)
    (mid := 4824439) (hi := 4827107) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4827107 4832591 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4827107)
    (mid := 4829843) (hi := 4832591) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4832591 4838117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4832591)
    (mid := 4835357) (hi := 4838117) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4838117 4843697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4838117)
    (mid := 4840939) (hi := 4843697) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4843697 4849211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4843697)
    (mid := 4846441) (hi := 4849211) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4849211 4854701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4849211)
    (mid := 4851941) (hi := 4854701) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4854701 4860179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4854701)
    (mid := 4857451) (hi := 4860179) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4860179 4865761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4860179)
    (mid := 4862941) (hi := 4865761) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4777681 4788673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4783169) (hi := 4788673) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4788673 4799659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4788673)
    (mid := 4794103) (hi := 4799659) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4799659 4810697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4799659)
    (mid := 4805179) (hi := 4810697) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4810697 4821721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4810697)
    (mid := 4816187) (hi := 4821721) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4821721 4832591 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4821721)
    (mid := 4827107) (hi := 4832591) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4832591 4843697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4832591)
    (mid := 4838117) (hi := 4843697) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4843697 4854701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4843697)
    (mid := 4849211) (hi := 4854701) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4854701 4865761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4854701)
    (mid := 4860179) (hi := 4865761) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4777681 4799659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4788673) (hi := 4799659) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4799659 4821721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4799659)
    (mid := 4810697) (hi := 4821721) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4821721 4843697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4821721)
    (mid := 4832591) (hi := 4843697) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4843697 4865761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4843697)
    (mid := 4854701) (hi := 4865761) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4777681 4821721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4799659) (hi := 4821721) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4821721 4865761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4821721)
    (mid := 4843697) (hi := 4865761) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4777681 4865761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4821721) (hi := 4865761) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4777681 4865761 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block054

#print axioms B699MiddleExtension.PrimorialBlocks.Block054.joined
