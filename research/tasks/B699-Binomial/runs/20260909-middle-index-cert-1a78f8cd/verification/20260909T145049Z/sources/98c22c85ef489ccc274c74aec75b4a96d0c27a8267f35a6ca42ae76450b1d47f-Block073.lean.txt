import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block073

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6448811, 6448979, 6449161, 6449329, 6449491, 6449671, 6449837, 6450019, 6450193, 6450349, 6450527, 6450707, 6450881, 6451033, 6451217, 6451399]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6448639 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6448639 6451399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6448639) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6451573, 6451733, 6451897, 6452071, 6452249, 6452431, 6452561, 6452737, 6452917, 6453101, 6453263, 6453443, 6453571, 6453737, 6453893, 6454073]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6451399 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6451399 6454073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6451399) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6454241, 6454411, 6454583, 6454759, 6454937, 6455101, 6455263, 6455443, 6455623, 6455789, 6455963, 6456137, 6456313, 6456479, 6456661, 6456823]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6454073 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6454073 6456823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6454073) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6457007, 6457183, 6457357, 6457531, 6457699, 6457879, 6458059, 6458227, 6458407, 6458587, 6458737, 6458911, 6459091, 6459247, 6459421, 6459581]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6456823 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6456823 6459581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6456823) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6459743, 6459923, 6460093, 6460261, 6460439, 6460613, 6460781, 6460963, 6461141, 6461317, 6461471, 6461627, 6461803, 6461953, 6462119, 6462301]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6459581 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6459581 6462301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6459581) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6462473, 6462647, 6462811, 6462947, 6463129, 6463309, 6463489, 6463673, 6463837, 6464021, 6464203, 6464387, 6464567, 6464747, 6464923, 6465101]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6462301 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6462301 6465101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6462301) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6465271, 6465419, 6465601, 6465779, 6465959, 6466133, 6466309, 6466489, 6466661, 6466843, 6466991, 6467171, 6467323, 6467507, 6467689, 6467869]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6465101 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6465101 6467869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6465101) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6468053, 6468223, 6468403, 6468577, 6468697, 6468853, 6469031, 6469193, 6469373, 6469531, 6469703, 6469867, 6470039, 6470213, 6470377, 6470561]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6467869 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6467869 6470561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6467869) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6470731, 6470903, 6471053, 6471233, 6471401, 6471583, 6471749, 6471919, 6472099, 6472261, 6472429, 6472603, 6472783, 6472967, 6473149, 6473333]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6470561 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6470561 6473333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6470561) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6473491, 6473671, 6473843, 6474019, 6474173, 6474353, 6474509, 6474659, 6474833, 6474973, 6475153, 6475321, 6475493, 6475669, 6475841, 6476009]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6473333 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6473333 6476009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6473333) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6476191, 6476357, 6476513, 6476693, 6476867, 6477049, 6477227, 6477409, 6477589, 6477769, 6477949, 6478117, 6478301, 6478481, 6478631, 6478793]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6476009 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6476009 6478793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6476009) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6478973, 6479153, 6479327, 6479509, 6479663, 6479831, 6480011, 6480193, 6480373, 6480547, 6480707, 6480869, 6481051, 6481219, 6481393, 6481571]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6478793 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6478793 6481571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6478793) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6481753, 6481931, 6482101, 6482269, 6482447, 6482621, 6482789, 6482947, 6483131, 6483311, 6483481, 6483643, 6483823, 6484003, 6484169, 6484351]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6481571 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6481571 6484351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6481571) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6484477, 6484651, 6484831, 6484999, 6485153, 6485329, 6485497, 6485681, 6485863, 6486043, 6486217, 6486379, 6486563, 6486737, 6486919, 6487079]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6484351 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6484351 6487079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6484351) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6487259, 6487441, 6487577, 6487757, 6487939, 6488123, 6488297, 6488453, 6488627, 6488809, 6488987, 6489163, 6489341, 6489499, 6489683, 6489863]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6487079 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6487079 6489863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6487079) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6490037, 6490219, 6490391, 6490567, 6490739, 6490921, 6491101, 6491257, 6491417, 6491561, 6491731, 6491897, 6492071, 6492253, 6492407, 6492581]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6489863 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6489863 6492581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6489863) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6492763, 6492911, 6493087, 6493261, 6493441, 6493607, 6493769, 6493933, 6494101, 6494281, 6494443, 6494627, 6494783, 6494959, 6495121, 6495263]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6492581 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6492581 6495263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6492581) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6495443, 6495607, 6495791, 6495949, 6496123, 6496307, 6496487, 6496663, 6496843, 6497003, 6497177, 6497347, 6497509, 6497683, 6497863, 6498043]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6495263 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6495263 6498043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6495263) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6498227, 6498379, 6498563, 6498733, 6498917, 6499081, 6499247, 6499399, 6499573, 6499747, 6499903, 6500077, 6500257, 6500441, 6500621, 6500801]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6498043 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6498043 6500801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6498043) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6500981, 6501149, 6501311, 6501491, 6501647, 6501827, 6501991, 6502163, 6502339, 6502519, 6502703, 6502879, 6503041, 6503209, 6503389, 6503557]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6500801 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6500801 6503557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6500801) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6503737, 6503869, 6504053, 6504233, 6504401, 6504583, 6504763, 6504923, 6505069, 6505243, 6505409, 6505559, 6505717, 6505867, 6506051, 6506221]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6503557 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6503557 6506221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6503557) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6506399, 6506581, 6506719, 6506897, 6507077, 6507251, 6507421, 6507587, 6507763, 6507913, 6508097, 6508277, 6508429, 6508589, 6508769, 6508951]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6506221 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6506221 6508951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6506221) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6509123, 6509273, 6509449, 6509617, 6509791, 6509953, 6510131, 6510313, 6510481, 6510661, 6510839, 6511019, 6511171, 6511331, 6511501, 6511669]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6508951 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6508951 6511669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6508951) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6511807, 6511961, 6512137, 6512321, 6512491, 6512663, 6512813, 6512977, 6513127, 6513293, 6513473, 6513653, 6513817, 6513973, 6514147, 6514327]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6511669 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6511669 6514327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6511669) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6514507, 6514687, 6514843, 6515027, 6515203, 6515387, 6515567, 6515731, 6515909, 6516079, 6516241, 6516421, 6516583, 6516767, 6516949, 6517129]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6514327 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6514327 6517129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6514327) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6517309, 6517481, 6517649, 6517831, 6518003, 6518173, 6518341, 6518507, 6518669, 6518839, 6519017, 6519193, 6519367, 6519547, 6519719, 6519893]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6517129 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6517129 6519893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6517129) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6520069, 6520253, 6520421, 6520597, 6520777, 6520957, 6521131, 6521303, 6521479, 6521587, 6521759, 6521929, 6522083, 6522253, 6522437, 6522601]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6519893 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6519893 6522601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6519893) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6522779, 6522953, 6523133, 6523313, 6523493, 6523663, 6523843, 6524027, 6524197, 6524327, 6524509, 6524677, 6524851, 6525007, 6525187, 6525371]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6522601 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6522601 6525371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6522601) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6525553, 6525707, 6525887, 6526061, 6526241, 6526423, 6526607, 6526789, 6526973, 6527141, 6527309, 6527471, 6527641, 6527803, 6527977, 6528157]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6525371 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6525371 6528157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6525371) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6528331, 6528503, 6528679, 6528853, 6529021, 6529183, 6529363, 6529543, 6529709, 6529879, 6530063, 6530221, 6530401, 6530581, 6530753, 6530933]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6528157 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6528157 6530933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6528157) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6531113, 6531289, 6531463, 6531643, 6531797, 6531971, 6532129, 6532291, 6532469, 6532651, 6532829, 6533003, 6533167, 6533347, 6533509, 6533689]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6530933 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6530933 6533689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6530933) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6533873, 6534049, 6534197, 6534379, 6534559, 6534743, 6534907, 6535091, 6535241, 6535391, 6535561, 6535741, 6535901, 6536083, 6536267, 6536441]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6533689 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6533689 6536441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6533689) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6448639 6454073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6448639)
    (mid := 6451399) (hi := 6454073) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6454073 6459581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6454073)
    (mid := 6456823) (hi := 6459581) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6459581 6465101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6459581)
    (mid := 6462301) (hi := 6465101) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6465101 6470561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6465101)
    (mid := 6467869) (hi := 6470561) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6470561 6476009 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6470561)
    (mid := 6473333) (hi := 6476009) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6476009 6481571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6476009)
    (mid := 6478793) (hi := 6481571) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6481571 6487079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6481571)
    (mid := 6484351) (hi := 6487079) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6487079 6492581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6487079)
    (mid := 6489863) (hi := 6492581) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6492581 6498043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6492581)
    (mid := 6495263) (hi := 6498043) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6498043 6503557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6498043)
    (mid := 6500801) (hi := 6503557) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6503557 6508951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6503557)
    (mid := 6506221) (hi := 6508951) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6508951 6514327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6508951)
    (mid := 6511669) (hi := 6514327) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6514327 6519893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6514327)
    (mid := 6517129) (hi := 6519893) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6519893 6525371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6519893)
    (mid := 6522601) (hi := 6525371) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6525371 6530933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6525371)
    (mid := 6528157) (hi := 6530933) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6530933 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6530933)
    (mid := 6533689) (hi := 6536441) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6448639 6459581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6448639)
    (mid := 6454073) (hi := 6459581) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6459581 6470561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6459581)
    (mid := 6465101) (hi := 6470561) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6470561 6481571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6470561)
    (mid := 6476009) (hi := 6481571) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6481571 6492581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6481571)
    (mid := 6487079) (hi := 6492581) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6492581 6503557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6492581)
    (mid := 6498043) (hi := 6503557) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6503557 6514327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6503557)
    (mid := 6508951) (hi := 6514327) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6514327 6525371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6514327)
    (mid := 6519893) (hi := 6525371) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6525371 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6525371)
    (mid := 6530933) (hi := 6536441) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6448639 6470561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6448639)
    (mid := 6459581) (hi := 6470561) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6470561 6492581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6470561)
    (mid := 6481571) (hi := 6492581) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6492581 6514327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6492581)
    (mid := 6503557) (hi := 6514327) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6514327 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6514327)
    (mid := 6525371) (hi := 6536441) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6448639 6492581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6448639)
    (mid := 6470561) (hi := 6492581) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6492581 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6492581)
    (mid := 6514327) (hi := 6536441) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6448639 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6448639)
    (mid := 6492581) (hi := 6536441) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6448639 6536441 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block073

#print axioms B699MiddleExtension.PrimorialBlocks.Block073.joined
