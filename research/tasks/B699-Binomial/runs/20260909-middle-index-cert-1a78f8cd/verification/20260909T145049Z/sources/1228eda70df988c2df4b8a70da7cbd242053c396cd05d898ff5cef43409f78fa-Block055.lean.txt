import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block055

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4865933, 4866091, 4866263, 4866443, 4866623, 4866791, 4866973, 4867147, 4867327, 4867501, 4867657, 4867823, 4867999, 4868177, 4868359, 4868543]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4865761 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4865761 4868543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4865761) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4868711, 4868869, 4869049, 4869229, 4869407, 4869563, 4869743, 4869913, 4870087, 4870259, 4870433, 4870609, 4870777, 4870949, 4871107, 4871291]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4868543 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4868543 4871291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4868543) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4871473, 4871641, 4871821, 4872001, 4872169, 4872337, 4872521, 4872691, 4872871, 4873051, 4873207, 4873391, 4873573, 4873753, 4873903, 4874081]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4871291 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4871291 4874081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4871291) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4874249, 4874411, 4874587, 4874747, 4874911, 4875071, 4875253, 4875407, 4875581, 4875763, 4875943, 4876111, 4876271, 4876453, 4876631, 4876799]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4874081 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4874081 4876799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4874081) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4876981, 4877161, 4877339, 4877513, 4877669, 4877849, 4878019, 4878187, 4878361, 4878529, 4878701, 4878871, 4879033, 4879201, 4879363, 4879547]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4876799 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4876799 4879547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4876799) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4879729, 4879913, 4880089, 4880261, 4880443, 4880593, 4880747, 4880923, 4881103, 4881277, 4881433, 4881587, 4881763, 4881931, 4882109, 4882289]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4879547 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4879547 4882289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4879547) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4882453, 4882609, 4882789, 4882963, 4883147, 4883327, 4883509, 4883677, 4883839, 4884001, 4884179, 4884361, 4884521, 4884683, 4884857, 4885031]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4882289 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4882289 4885031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4882289) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4885201, 4885373, 4885553, 4885691, 4885861, 4886041, 4886213, 4886393, 4886573, 4886737, 4886899, 4887073, 4887227, 4887409, 4887593, 4887763]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4885031 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4885031 4887763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4885031) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4887947, 4888127, 4888309, 4888487, 4888661, 4888841, 4888999, 4889173, 4889347, 4889509, 4889671, 4889851, 4890023, 4890199, 4890383, 4890563]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4887763 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4887763 4890563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4887763) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4890731, 4890913, 4891093, 4891253, 4891429, 4891591, 4891763, 4891927, 4892099, 4892257, 4892429, 4892609, 4892791, 4892941, 4893113, 4893293]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4890563 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4890563 4893293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4890563) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4893463, 4893643, 4893827, 4893983, 4894151, 4894321, 4894499, 4894651, 4894781, 4894957, 4895131, 4895309, 4895491, 4895659, 4895843, 4896019]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4893293 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4893293 4896019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4893293) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4896191, 4896361, 4896533, 4896713, 4896887, 4897051, 4897219, 4897397, 4897577, 4897757, 4897933, 4898099, 4898273, 4898449, 4898633, 4898813]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4896019 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4896019 4898813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4896019) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4898981, 4899157, 4899331, 4899493, 4899677, 4899857, 4900037, 4900211, 4900393, 4900559, 4900741, 4900877, 4901053, 4901213, 4901381, 4901549]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4898813 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4898813 4901549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4898813) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4901719, 4901903, 4902077, 4902259, 4902431, 4902593, 4902773, 4902949, 4903111, 4903289, 4903453, 4903637, 4903819, 4903999, 4904113, 4904269]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4901549 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4901549 4904269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4901549) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4904443, 4904597, 4904777, 4904927, 4905101, 4905283, 4905431, 4905587, 4905731, 4905899, 4906079, 4906261, 4906439, 4906621, 4906801, 4906973]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4904269 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4904269 4906973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4904269) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4907143, 4907297, 4907473, 4907657, 4907831, 4908011, 4908193, 4908377, 4908559, 4908737, 4908907, 4909057, 4909241, 4909409, 4909577, 4909747]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4906973 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4906973 4909747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4906973) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4909871, 4910047, 4910221, 4910377, 4910539, 4910699, 4910837, 4911019, 4911199, 4911383, 4911551, 4911727, 4911901, 4912079, 4912253, 4912433]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4909747 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4909747 4912433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4909747) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4912613, 4912781, 4912951, 4913131, 4913303, 4913479, 4913639, 4913813, 4913971, 4914131, 4914307, 4914487, 4914671, 4914841, 4915013, 4915171]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4912433 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4912433 4915171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4912433) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4915331, 4915511, 4915663, 4915847, 4916027, 4916203, 4916381, 4916557, 4916741, 4916909, 4917079, 4917217, 4917401, 4917571, 4917721, 4917901]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4915171 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4915171 4917901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4915171) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4918079, 4918261, 4918439, 4918609, 4918789, 4918961, 4919143, 4919323, 4919507, 4919671, 4919839, 4920023, 4920203, 4920379, 4920529, 4920709]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4917901 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4917901 4920709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4917901) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4920887, 4921067, 4921243, 4921409, 4921583, 4921759, 4921921, 4922101, 4922251, 4922417, 4922581, 4922719, 4922903, 4923073, 4923253, 4923433]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4920709 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4920709 4923433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4920709) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4923613, 4923791, 4923967, 4924147, 4924321, 4924501, 4924669, 4924847, 4925029, 4925213, 4925363, 4925539, 4925719, 4925881, 4926059, 4926227]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4923433 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4923433 4926227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4923433) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4926409, 4926589, 4926767, 4926949, 4927121, 4927291, 4927459, 4927639, 4927823, 4927933, 4928117, 4928299, 4928479, 4928663, 4928837, 4929013]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4926227 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4926227 4929013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4926227) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4929193, 4929377, 4929559, 4929737, 4929919, 4930103, 4930279, 4930451, 4930631, 4930811, 4930973, 4931153, 4931327, 4931497, 4931671, 4931837]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4929013 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4929013 4931837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4929013) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4932017, 4932199, 4932383, 4932559, 4932743, 4932901, 4933069, 4933223, 4933387, 4933549, 4933727, 4933909, 4934093, 4934269, 4934453, 4934621]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4931837 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4931837 4934621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4931837) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4934791, 4934971, 4935149, 4935331, 4935503, 4935653, 4935817, 4935989, 4936163, 4936343, 4936507, 4936667, 4936847, 4937027, 4937201, 4937381]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4934621 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4934621 4937381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4934621) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4937563, 4937731, 4937903, 4938071, 4938247, 4938413, 4938589, 4938761, 4938943, 4939127, 4939289, 4939471, 4939637, 4939817, 4939997, 4940161]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4937381 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4937381 4940161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4937381) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4940339, 4940521, 4940671, 4940843, 4940983, 4941163, 4941347, 4941511, 4941661, 4941821, 4941983, 4942123, 4942283, 4942411, 4942579, 4942753]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4940161 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4940161 4942753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4940161) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4942933, 4943111, 4943273, 4943441, 4943573, 4943749, 4943927, 4944101, 4944281, 4944463, 4944631, 4944803, 4944983, 4945159, 4945333, 4945513]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4942753 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4942753 4945513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4942753) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4945693, 4945867, 4946047, 4946231, 4946413, 4946581, 4946761, 4946939, 4947121, 4947301, 4947463, 4947617, 4947797, 4947979, 4948117, 4948291]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4945513 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4945513 4948291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4945513) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4948459, 4948637, 4948807, 4948969, 4949143, 4949297, 4949471, 4949653, 4949837, 4949983, 4950157, 4950331, 4950511, 4950683, 4950857, 4951021]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4948291 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4948291 4951021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4948291) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4951189, 4951361, 4951511, 4951691, 4951867, 4952023, 4952203, 4952377, 4952551, 4952713, 4952897, 4953077, 4953259, 4953439, 4953617, 4953797]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4951021 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4951021 4953797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4951021) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4865761 4871291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4865761)
    (mid := 4868543) (hi := 4871291) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4871291 4876799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4871291)
    (mid := 4874081) (hi := 4876799) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4876799 4882289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4876799)
    (mid := 4879547) (hi := 4882289) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4882289 4887763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4882289)
    (mid := 4885031) (hi := 4887763) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4887763 4893293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4887763)
    (mid := 4890563) (hi := 4893293) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4893293 4898813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4893293)
    (mid := 4896019) (hi := 4898813) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4898813 4904269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4898813)
    (mid := 4901549) (hi := 4904269) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4904269 4909747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4904269)
    (mid := 4906973) (hi := 4909747) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4909747 4915171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4909747)
    (mid := 4912433) (hi := 4915171) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4915171 4920709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4915171)
    (mid := 4917901) (hi := 4920709) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4920709 4926227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4920709)
    (mid := 4923433) (hi := 4926227) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4926227 4931837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4926227)
    (mid := 4929013) (hi := 4931837) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4931837 4937381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4931837)
    (mid := 4934621) (hi := 4937381) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4937381 4942753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4937381)
    (mid := 4940161) (hi := 4942753) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4942753 4948291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4942753)
    (mid := 4945513) (hi := 4948291) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4948291 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4948291)
    (mid := 4951021) (hi := 4953797) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4865761 4876799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4865761)
    (mid := 4871291) (hi := 4876799) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4876799 4887763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4876799)
    (mid := 4882289) (hi := 4887763) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4887763 4898813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4887763)
    (mid := 4893293) (hi := 4898813) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4898813 4909747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4898813)
    (mid := 4904269) (hi := 4909747) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4909747 4920709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4909747)
    (mid := 4915171) (hi := 4920709) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4920709 4931837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4920709)
    (mid := 4926227) (hi := 4931837) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4931837 4942753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4931837)
    (mid := 4937381) (hi := 4942753) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4942753 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4942753)
    (mid := 4948291) (hi := 4953797) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4865761 4887763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4865761)
    (mid := 4876799) (hi := 4887763) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4887763 4909747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4887763)
    (mid := 4898813) (hi := 4909747) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4909747 4931837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4909747)
    (mid := 4920709) (hi := 4931837) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4931837 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4931837)
    (mid := 4942753) (hi := 4953797) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4865761 4909747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4865761)
    (mid := 4887763) (hi := 4909747) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4909747 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4909747)
    (mid := 4931837) (hi := 4953797) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4865761 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4865761)
    (mid := 4909747) (hi := 4953797) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4865761 4953797 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block055

#print axioms B699MiddleExtension.PrimorialBlocks.Block055.joined
