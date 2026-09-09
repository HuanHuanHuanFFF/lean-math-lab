import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block065

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5745563, 5745743, 5745911, 5746093, 5746271, 5746453, 5746613, 5746789, 5746973, 5747149, 5747333, 5747491, 5747669, 5747849, 5748031, 5748199]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5745379 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5745379 5748199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5745379) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5748377, 5748559, 5748731, 5748913, 5749091, 5749273, 5749441, 5749619, 5749781, 5749957, 5750119, 5750279, 5750449, 5750623, 5750807, 5750957]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5748199 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5748199 5750957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5748199) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5751113, 5751283, 5751467, 5751643, 5751799, 5751971, 5752147, 5752321, 5752499, 5752679, 5752853, 5753009, 5753183, 5753353, 5753533, 5753717]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5750957 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5750957 5753717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5750957) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5753897, 5754061, 5754241, 5754409, 5754589, 5754773, 5754937, 5755073, 5755237, 5755381, 5755559, 5755733, 5755909, 5756089, 5756263, 5756447]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5753717 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5753717 5756447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5753717) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5756627, 5756801, 5756977, 5757139, 5757317, 5757497, 5757623, 5757767, 5757949, 5758133, 5758297, 5758481, 5758639, 5758817, 5758981, 5759123]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5756447 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5756447 5759123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5756447) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5759267, 5759441, 5759599, 5759783, 5759953, 5760137, 5760311, 5760437, 5760619, 5760803, 5760983, 5761163, 5761337, 5761507, 5761687, 5761867]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5759123 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5759123 5761867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5759123) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5762041, 5762221, 5762381, 5762557, 5762741, 5762917, 5763089, 5763253, 5763421, 5763587, 5763743, 5763917, 5764097, 5764271, 5764399, 5764579]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5761867 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5761867 5764579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5761867) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5764763, 5764943, 5765093, 5765273, 5765453, 5765623, 5765791, 5765959, 5766143, 5766323, 5766499, 5766667, 5766851, 5767007, 5767189, 5767357]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5764579 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5764579 5767357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5764579) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5767529, 5767681, 5767847, 5768011, 5768183, 5768327, 5768507, 5768689, 5768869, 5769053, 5769199, 5769383, 5769557, 5769721, 5769899, 5770073]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5767357 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5767357 5770073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5767357) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5770253, 5770411, 5770579, 5770759, 5770931, 5771111, 5771291, 5771461, 5771641, 5771771, 5771951, 5772121, 5772301, 5772467, 5772643, 5772817]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5770073 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5770073 5772817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5770073) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5772997, 5773139, 5773279, 5773451, 5773631, 5773811, 5773991, 5774159, 5774323, 5774497, 5774677, 5774851, 5775017, 5775197, 5775349, 5775527]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5772817 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5772817 5775527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5772817) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5775709, 5775893, 5776049, 5776217, 5776387, 5776483, 5776649, 5776831, 5776999, 5777183, 5777363, 5777543, 5777719, 5777903, 5778077, 5778259]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5775527 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5775527 5778259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5775527) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5778439, 5778611, 5778779, 5778953, 5779127, 5779307, 5779457, 5779633, 5779799, 5779967, 5780147, 5780329, 5780513, 5780689, 5780857, 5781029]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5778259 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5778259 5781029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5778259) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5781169, 5781331, 5781499, 5781661, 5781829, 5782013, 5782187, 5782369, 5782547, 5782717, 5782891, 5783069, 5783251, 5783399, 5783579, 5783761]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5781029 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5781029 5783761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5781029) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5783941, 5784091, 5784271, 5784439, 5784613, 5784787, 5784967, 5785147, 5785331, 5785513, 5785691, 5785873, 5786017, 5786177, 5786359, 5786537]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5783761 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5783761 5786537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5783761) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5786707, 5786867, 5787013, 5787193, 5787373, 5787541, 5787713, 5787889, 5788067, 5788247, 5788427, 5788609, 5788793, 5788967, 5789143, 5789309]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5786537 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5786537 5789309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5786537) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5789479, 5789659, 5789779, 5789957, 5790139, 5790313, 5790487, 5790667, 5790847, 5791013, 5791189, 5791367, 5791549, 5791717, 5791901, 5792081]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5789309 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5789309 5792081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5789309) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5792263, 5792447, 5792581, 5792747, 5792923, 5793091, 5793253, 5793409, 5793581, 5793761, 5793919, 5794099, 5794279, 5794457, 5794631, 5794801]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5792081 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5792081 5794801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5792081) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5794969, 5795123, 5795291, 5795423, 5795593, 5795773, 5795957, 5796137, 5796319, 5796503, 5796683, 5796863, 5797037, 5797213, 5797397, 5797579]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5794801 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5794801 5797579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5794801) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5797763, 5797943, 5798123, 5798291, 5798467, 5798627, 5798809, 5798993, 5799149, 5799323, 5799487, 5799649, 5799823, 5799991, 5800159, 5800343]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5797579 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5797579 5800343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5797579) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5800489, 5800661, 5800843, 5801027, 5801203, 5801381, 5801561, 5801737, 5801921, 5802101, 5802283, 5802449, 5802623, 5802799, 5802947, 5803121]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5800343 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5800343 5803121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5800343) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5803297, 5803471, 5803639, 5803823, 5803999, 5804173, 5804353, 5804521, 5804693, 5804873, 5805053, 5805229, 5805413, 5805593, 5805749, 5805911]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5803121 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5803121 5805911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5803121) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5806081, 5806259, 5806441, 5806613, 5806781, 5806961, 5807119, 5807299, 5807479, 5807663, 5807831, 5808007, 5808161, 5808337, 5808521, 5808701]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5805911 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5805911 5808701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5805911) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5808863, 5809033, 5809207, 5809387, 5809571, 5809753, 5809931, 5810111, 5810291, 5810471, 5810653, 5810803, 5810983, 5811163, 5811347, 5811529]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5808701 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5808701 5811529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5808701) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5811667, 5811833, 5812013, 5812129, 5812277, 5812427, 5812579, 5812733, 5812907, 5813077, 5813251, 5813429, 5813611, 5813789, 5813903, 5814079]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5811529 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5811529 5814079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5811529) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5814257, 5814433, 5814583, 5814751, 5814923, 5815097, 5815231, 5815379, 5815559, 5815739, 5815907, 5816089, 5816267, 5816407, 5816581, 5816753]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5814079 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5814079 5816753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5814079) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5816927, 5817107, 5817283, 5817467, 5817649, 5817829, 5818013, 5818193, 5818343, 5818523, 5818697, 5818873, 5819057, 5819239, 5819393, 5819563]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5816753 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5816753 5819563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5816753) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5819741, 5819881, 5820049, 5820233, 5820389, 5820571, 5820751, 5820929, 5821097, 5821271, 5821451, 5821603, 5821759, 5821931, 5822111, 5822273]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5819563 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5819563 5822273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5819563) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5822441, 5822623, 5822807, 5822989, 5823149, 5823317, 5823497, 5823667, 5823821, 5824003, 5824151, 5824333, 5824513, 5824673, 5824843, 5825009]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5822273 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5822273 5825009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5822273) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5825173, 5825353, 5825527, 5825711, 5825891, 5826001, 5826173, 5826341, 5826503, 5826679, 5826851, 5827007, 5827189, 5827373, 5827531, 5827711]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5825009 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5825009 5827711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5825009) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5827873, 5828057, 5828239, 5828401, 5828567, 5828749, 5828917, 5829071, 5829251, 5829433, 5829601, 5829779, 5829961, 5830129, 5830313, 5830493]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5827711 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5827711 5830493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5827711) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5830639, 5830819, 5830987, 5831141, 5831321, 5831401, 5831557, 5831729, 5831911, 5832053, 5832217, 5832397, 5832571, 5832719, 5832847, 5833001]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5830493 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5830493 5833001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5830493) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5745379 5750957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5745379)
    (mid := 5748199) (hi := 5750957) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5750957 5756447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5750957)
    (mid := 5753717) (hi := 5756447) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5756447 5761867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5756447)
    (mid := 5759123) (hi := 5761867) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5761867 5767357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5761867)
    (mid := 5764579) (hi := 5767357) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5767357 5772817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5767357)
    (mid := 5770073) (hi := 5772817) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5772817 5778259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5772817)
    (mid := 5775527) (hi := 5778259) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5778259 5783761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5778259)
    (mid := 5781029) (hi := 5783761) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5783761 5789309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5783761)
    (mid := 5786537) (hi := 5789309) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5789309 5794801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5789309)
    (mid := 5792081) (hi := 5794801) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5794801 5800343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5794801)
    (mid := 5797579) (hi := 5800343) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5800343 5805911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5800343)
    (mid := 5803121) (hi := 5805911) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5805911 5811529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5805911)
    (mid := 5808701) (hi := 5811529) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5811529 5816753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5811529)
    (mid := 5814079) (hi := 5816753) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5816753 5822273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5816753)
    (mid := 5819563) (hi := 5822273) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5822273 5827711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5822273)
    (mid := 5825009) (hi := 5827711) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5827711 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5827711)
    (mid := 5830493) (hi := 5833001) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5745379 5756447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5745379)
    (mid := 5750957) (hi := 5756447) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5756447 5767357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5756447)
    (mid := 5761867) (hi := 5767357) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5767357 5778259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5767357)
    (mid := 5772817) (hi := 5778259) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5778259 5789309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5778259)
    (mid := 5783761) (hi := 5789309) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5789309 5800343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5789309)
    (mid := 5794801) (hi := 5800343) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5800343 5811529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5800343)
    (mid := 5805911) (hi := 5811529) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5811529 5822273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5811529)
    (mid := 5816753) (hi := 5822273) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5822273 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5822273)
    (mid := 5827711) (hi := 5833001) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5745379 5767357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5745379)
    (mid := 5756447) (hi := 5767357) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5767357 5789309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5767357)
    (mid := 5778259) (hi := 5789309) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5789309 5811529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5789309)
    (mid := 5800343) (hi := 5811529) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5811529 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5811529)
    (mid := 5822273) (hi := 5833001) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5745379 5789309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5745379)
    (mid := 5767357) (hi := 5789309) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5789309 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5789309)
    (mid := 5811529) (hi := 5833001) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5745379 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5745379)
    (mid := 5789309) (hi := 5833001) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5745379 5833001 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block065

#print axioms B699MiddleExtension.PrimorialBlocks.Block065.joined
