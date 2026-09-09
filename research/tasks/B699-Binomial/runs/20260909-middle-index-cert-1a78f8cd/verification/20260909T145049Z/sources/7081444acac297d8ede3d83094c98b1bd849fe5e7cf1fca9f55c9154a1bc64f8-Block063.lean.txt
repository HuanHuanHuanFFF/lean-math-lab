import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block063

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5569687, 5569859, 5570039, 5570221, 5570377, 5570533, 5570717, 5570891, 5571073, 5571233, 5571409, 5571539, 5571721, 5571899, 5572081, 5572253]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5569511 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5569511 5572253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5569511) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5572429, 5572571, 5572751, 5572921, 5573083, 5573257, 5573413, 5573587, 5573767, 5573947, 5574131, 5574313, 5574479, 5574659, 5574841, 5575019]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5572253 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5572253 5575019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5572253) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5575183, 5575357, 5575529, 5575709, 5575891, 5576047, 5576213, 5576383, 5576563, 5576699, 5576881, 5577059, 5577239, 5577389, 5577529, 5577709]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5575019 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5575019 5577709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5575019) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5577851, 5578031, 5578201, 5578369, 5578553, 5578717, 5578871, 5579053, 5579227, 5579401, 5579579, 5579747, 5579923, 5580101, 5580271, 5580409]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5577709 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5577709 5580409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5577709) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5580593, 5580769, 5580931, 5581091, 5581259, 5581403, 5581553, 5581733, 5581897, 5582033, 5582209, 5582363, 5582531, 5582711, 5582891, 5583037]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5580409 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5580409 5583037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5580409) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5583211, 5583377, 5583541, 5583691, 5583869, 5584049, 5584207, 5584379, 5584549, 5584729, 5584913, 5585089, 5585273, 5585453, 5585633, 5585813]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5583037 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5583037 5585813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5583037) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5585989, 5586151, 5586313, 5586487, 5586671, 5586853, 5587003, 5587187, 5587369, 5587553, 5587723, 5587891, 5588069, 5588243, 5588417, 5588573]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5585813 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5585813 5588573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5585813) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5588749, 5588929, 5589019, 5589197, 5589349, 5589511, 5589677, 5589853, 5590037, 5590213, 5590381, 5590561, 5590729, 5590913, 5591081, 5591233]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5588573 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5588573 5591233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5588573) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5591413, 5591587, 5591771, 5591941, 5592101, 5592283, 5592467, 5592641, 5592823, 5592991, 5593171, 5593351, 5593529, 5593703, 5593873, 5594053]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5591233 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5591233 5594053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5591233) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5594233, 5594389, 5594527, 5594689, 5594867, 5595047, 5595223, 5595389, 5595559, 5595743, 5595913, 5596081, 5596259, 5596411, 5596561, 5596741]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5594053 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5594053 5596741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5594053) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5596907, 5597057, 5597231, 5597413, 5597597, 5597759, 5597941, 5598119, 5598301, 5598473, 5598629, 5598793, 5598961, 5599109, 5599289, 5599463]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5596741 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5596741 5599463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5596741) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5599637, 5599807, 5599981, 5600159, 5600333, 5600501, 5600671, 5600813, 5600993, 5601163, 5601329, 5601511, 5601677, 5601859, 5602039, 5602217]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5599463 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5599463 5602217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5599463) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5602393, 5602573, 5602747, 5602931, 5603111, 5603291, 5603449, 5603629, 5603791, 5603971, 5604143, 5604307, 5604481, 5604661, 5604839, 5604997]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5602217 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5602217 5604997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5602217) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5605181, 5605357, 5605499, 5605681, 5605849, 5606033, 5606191, 5606369, 5606543, 5606723, 5606893, 5607073, 5607257, 5607439, 5607619, 5607779]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5604997 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5604997 5607779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5604997) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5607961, 5608139, 5608321, 5608483, 5608661, 5608829, 5608969, 5609143, 5609321, 5609501, 5609683, 5609867, 5610049, 5610233, 5610401, 5610581]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5607779 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5607779 5610581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5607779) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5610763, 5610937, 5611121, 5611303, 5611477, 5611643, 5611813, 5611997, 5612179, 5612357, 5612539, 5612723, 5612879, 5613031, 5613169, 5613347]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5610581 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5610581 5613347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5610581) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5613499, 5613667, 5613851, 5613991, 5614159, 5614339, 5614523, 5614703, 5614883, 5615063, 5615221, 5615387, 5615563, 5615747, 5615923, 5616097]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5613347 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5613347 5616097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5613347) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5616277, 5616449, 5616629, 5616769, 5616937, 5617121, 5617301, 5617459, 5617643, 5617817, 5617999, 5618183, 5618363, 5618539, 5618713, 5618881]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5616097 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5616097 5618881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5616097) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5619043, 5619221, 5619391, 5619557, 5619739, 5619923, 5620103, 5620283, 5620457, 5620631, 5620807, 5620991, 5621173, 5621327, 5621503, 5621687]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5618881 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5618881 5621687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5618881) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5621857, 5622011, 5622181, 5622349, 5622527, 5622709, 5622889, 5623043, 5623217, 5623393, 5623577, 5623747, 5623859, 5624041, 5624221, 5624401]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5621687 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5621687 5624401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5621687) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5624573, 5624743, 5624917, 5625091, 5625251, 5625427, 5625563, 5625727, 5625877, 5626051, 5626219, 5626399, 5626583, 5626757, 5626939, 5627101]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5624401 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5624401 5627101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5624401) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5627269, 5627449, 5627627, 5627803, 5627987, 5628157, 5628341, 5628517, 5628661, 5628841, 5629009, 5629157, 5629333, 5629493, 5629651, 5629829]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5627101 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5627101 5629829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5627101) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5629993, 5630167, 5630351, 5630533, 5630693, 5630869, 5631037, 5631221, 5631401, 5631583, 5631767, 5631949, 5632127, 5632301, 5632477, 5632651]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5629829 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5629829 5632651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5629829) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5632829, 5633009, 5633189, 5633371, 5633549, 5633729, 5633893, 5634073, 5634257, 5634427, 5634611, 5634779, 5634949, 5635127, 5635297, 5635453]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5632651 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5632651 5635453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5632651) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5635633, 5635811, 5635979, 5636161, 5636291, 5636471, 5636651, 5636831, 5637011, 5637173, 5637347, 5637521, 5637689, 5637871, 5638051, 5638229]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5635453 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5635453 5638229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5635453) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5638411, 5638537, 5638709, 5638873, 5639027, 5639197, 5639377, 5639549, 5639729, 5639867, 5640043, 5640211, 5640389, 5640559, 5640743, 5640919]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5638229 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5638229 5640919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5638229) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5641079, 5641243, 5641421, 5641577, 5641711, 5641861, 5642041, 5642191, 5642369, 5642531, 5642711, 5642873, 5643047, 5643227, 5643389, 5643571]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5640919 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5640919 5643571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5640919) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5643733, 5643877, 5644061, 5644217, 5644399, 5644547, 5644711, 5644889, 5645063, 5645243, 5645407, 5645579, 5645729, 5645911, 5646073, 5646239]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5643571 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5643571 5646239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5643571) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5646419, 5646593, 5646763, 5646943, 5647093, 5647267, 5647409, 5647591, 5647771, 5647951, 5648117, 5648297, 5648477, 5648659, 5648843, 5649019]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5646239 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5646239 5649019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5646239) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5649187, 5649367, 5649547, 5649701, 5649883, 5650063, 5650231, 5650397, 5650573, 5650753, 5650937, 5651099, 5651281, 5651461, 5651623, 5651801]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5649019 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5649019 5651801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5649019) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5651983, 5652161, 5652341, 5652511, 5652683, 5652863, 5653007, 5653189, 5653313, 5653493, 5653657, 5653841, 5654017, 5654189, 5654359, 5654531]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5651801 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5651801 5654531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5651801) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5654713, 5654881, 5655049, 5655233, 5655409, 5655589, 5655757, 5655941, 5656117, 5656297, 5656481, 5656649, 5656829, 5656999, 5657177, 5657359]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5654531 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5654531 5657359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5654531) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5569511 5575019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5569511)
    (mid := 5572253) (hi := 5575019) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5575019 5580409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5575019)
    (mid := 5577709) (hi := 5580409) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5580409 5585813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5580409)
    (mid := 5583037) (hi := 5585813) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5585813 5591233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5585813)
    (mid := 5588573) (hi := 5591233) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5591233 5596741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5591233)
    (mid := 5594053) (hi := 5596741) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5596741 5602217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5596741)
    (mid := 5599463) (hi := 5602217) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5602217 5607779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5602217)
    (mid := 5604997) (hi := 5607779) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5607779 5613347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5607779)
    (mid := 5610581) (hi := 5613347) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5613347 5618881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5613347)
    (mid := 5616097) (hi := 5618881) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5618881 5624401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5618881)
    (mid := 5621687) (hi := 5624401) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5624401 5629829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5624401)
    (mid := 5627101) (hi := 5629829) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5629829 5635453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5629829)
    (mid := 5632651) (hi := 5635453) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5635453 5640919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5635453)
    (mid := 5638229) (hi := 5640919) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5640919 5646239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5640919)
    (mid := 5643571) (hi := 5646239) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5646239 5651801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5646239)
    (mid := 5649019) (hi := 5651801) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5651801 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5651801)
    (mid := 5654531) (hi := 5657359) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5569511 5580409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5569511)
    (mid := 5575019) (hi := 5580409) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5580409 5591233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5580409)
    (mid := 5585813) (hi := 5591233) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5591233 5602217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5591233)
    (mid := 5596741) (hi := 5602217) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5602217 5613347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5602217)
    (mid := 5607779) (hi := 5613347) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5613347 5624401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5613347)
    (mid := 5618881) (hi := 5624401) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5624401 5635453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5624401)
    (mid := 5629829) (hi := 5635453) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5635453 5646239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5635453)
    (mid := 5640919) (hi := 5646239) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5646239 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5646239)
    (mid := 5651801) (hi := 5657359) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5569511 5591233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5569511)
    (mid := 5580409) (hi := 5591233) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5591233 5613347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5591233)
    (mid := 5602217) (hi := 5613347) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5613347 5635453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5613347)
    (mid := 5624401) (hi := 5635453) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5635453 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5635453)
    (mid := 5646239) (hi := 5657359) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5569511 5613347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5569511)
    (mid := 5591233) (hi := 5613347) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5613347 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5613347)
    (mid := 5635453) (hi := 5657359) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5569511 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5569511)
    (mid := 5613347) (hi := 5657359) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5569511 5657359 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block063

#print axioms B699MiddleExtension.PrimorialBlocks.Block063.joined
