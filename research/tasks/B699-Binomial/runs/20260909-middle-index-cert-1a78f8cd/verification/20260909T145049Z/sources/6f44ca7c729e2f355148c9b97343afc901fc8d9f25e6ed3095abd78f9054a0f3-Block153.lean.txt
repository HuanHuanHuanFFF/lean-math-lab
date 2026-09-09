import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block153

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13458227, 13458391, 13458563, 13458737, 13458919, 13459097, 13459279, 13459463, 13459643, 13459819, 13460003, 13460159, 13460339, 13460521, 13460693, 13460861]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13458043 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13458043 13460861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13458043) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13461031, 13461199, 13461373, 13461551, 13461727, 13461901, 13462073, 13462247, 13462399, 13462573, 13462747, 13462927, 13463111, 13463287, 13463467, 13463633]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13460861 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13460861 13463633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13460861) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13463803, 13463987, 13464169, 13464349, 13464533, 13464691, 13464859, 13465009, 13465187, 13465369, 13465553, 13465729, 13465913, 13466093, 13466251, 13466429]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13463633 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13463633 13466429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13463633) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13466539, 13466693, 13466867, 13467023, 13467199, 13467373, 13467533, 13467691, 13467863, 13468033, 13468187, 13468349, 13468517, 13468699, 13468883, 13469063]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13466429 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13466429 13469063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13466429) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13469243, 13469419, 13469587, 13469767, 13469923, 13470101, 13470277, 13470439, 13470593, 13470767, 13470949, 13471127, 13471309, 13471483, 13471643, 13471819]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13469063 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13469063 13471819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13469063) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13472003, 13472161, 13472341, 13472497, 13472681, 13472863, 13473043, 13473221, 13473373, 13473521, 13473689, 13473857, 13474037, 13474213, 13474397, 13474547]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13471819 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13471819 13474547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13471819) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13474723, 13474891, 13475071, 13475251, 13475431, 13475603, 13475771, 13475933, 13476109, 13476283, 13476443, 13476613, 13476797, 13476979, 13477159, 13477319]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13474547 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13474547 13477319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13474547) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13477501, 13477661, 13477843, 13478021, 13478203, 13478371, 13478539, 13478723, 13478903, 13479077, 13479259, 13479439, 13479601, 13479779, 13479943, 13480123]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13477319 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13477319 13480123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13477319) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13480307, 13480463, 13480627, 13480807, 13480991, 13481173, 13481329, 13481477, 13481639, 13481821, 13481999, 13482181, 13482353, 13482529, 13482713, 13482893]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13480123 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13480123 13482893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13480123) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13483073, 13483247, 13483423, 13483607, 13483781, 13483963, 13484131, 13484311, 13484491, 13484663, 13484839, 13485019, 13485179, 13485361, 13485503, 13485683]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13482893 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13482893 13485683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13482893) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13485863, 13486013, 13486177, 13486357, 13486513, 13486687, 13486871, 13487053, 13487213, 13487393, 13487563, 13487737, 13487921, 13488073, 13488203, 13488359]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13485683 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13485683 13488359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13485683) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13488533, 13488703, 13488863, 13489037, 13489213, 13489393, 13489561, 13489733, 13489913, 13490083, 13490251, 13490419, 13490591, 13490767, 13490947, 13491131]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13488359 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13488359 13491131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13488359) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13491301, 13491469, 13491629, 13491811, 13491983, 13492151, 13492327, 13492487, 13492643, 13492811, 13492987, 13493167, 13493351, 13493533, 13493707, 13493861]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13491131 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13491131 13493861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13491131) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13494037, 13494203, 13494337, 13494521, 13494673, 13494857, 13495033, 13495193, 13495367, 13495511, 13495663, 13495843, 13495969, 13496143, 13496323, 13496507]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13493861 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13493861 13496507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13493861) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13496689, 13496863, 13497041, 13497221, 13497403, 13497587, 13497769, 13497937, 13498099, 13498283, 13498453, 13498621, 13498801, 13498973, 13499149, 13499327]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13496507 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13496507 13499327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13496507) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13499509, 13499693, 13499851, 13500007, 13500173, 13500353, 13500493, 13500661, 13500833, 13501003, 13501141, 13501321, 13501489, 13501673, 13501841, 13502011]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13499327 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13499327 13502011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13499327) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13502189, 13502353, 13502537, 13502707, 13502869, 13503041, 13503221, 13503401, 13503583, 13503767, 13503949, 13504109, 13504277, 13504429, 13504597, 13504759]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13502011 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13502011 13504759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13502011) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13504943, 13505099, 13505281, 13505449, 13505593, 13505773, 13505923, 13506091, 13506217, 13506391, 13506557, 13506737, 13506901, 13507073, 13507237, 13507411]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13504759 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13504759 13507411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13504759) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13507589, 13507759, 13507931, 13508111, 13508233, 13508413, 13508597, 13508779, 13508933, 13509109, 13509283, 13509467, 13509649, 13509833, 13510001, 13510181]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13507411 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13507411 13510181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13507411) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13510339, 13510507, 13510687, 13510831, 13511011, 13511167, 13511339, 13511521, 13511699, 13511867, 13512047, 13512221, 13512383, 13512539, 13512703, 13512883]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13510181 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13510181 13512883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13510181) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13513037, 13513153, 13513337, 13513517, 13513663, 13513847, 13514021, 13514191, 13514329, 13514497, 13514663, 13514827, 13515011, 13515181, 13515331, 13515511]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13512883 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13512883 13515511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13512883) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13515679, 13515863, 13516039, 13516177, 13516361, 13516541, 13516703, 13516883, 13517033, 13517213, 13517389, 13517563, 13517747, 13517929, 13518103, 13518277]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13515511 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13515511 13518277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13515511) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13518433, 13518607, 13518787, 13518887, 13519067, 13519229, 13519411, 13519589, 13519739, 13519907, 13520081, 13520249, 13520431, 13520603, 13520779, 13520957]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13518277 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13518277 13520957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13518277) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13521139, 13521323, 13521499, 13521667, 13521829, 13522013, 13522189, 13522373, 13522549, 13522709, 13522879, 13523063, 13523243, 13523413, 13523593, 13523753]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13520957 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13520957 13523753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13520957) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13523933, 13524101, 13524263, 13524443, 13524559, 13524743, 13524899, 13525027, 13525199, 13525381, 13525559, 13525723, 13525907, 13526069, 13526251, 13526431]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13523753 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13523753 13526431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13523753) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13526609, 13526771, 13526927, 13527109, 13527287, 13527467, 13527649, 13527817, 13528001, 13528159, 13528321, 13528499, 13528681, 13528859, 13529041, 13529213]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13526431 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13526431 13529213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13526431) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13529393, 13529567, 13529743, 13529927, 13530107, 13530289, 13530469, 13530653, 13530833, 13530991, 13531171, 13531351, 13531523, 13531703, 13531883, 13532059]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13529213 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13529213 13532059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13529213) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13532219, 13532377, 13532557, 13532741, 13532903, 13533077, 13533259, 13533439, 13533623, 13533797, 13533973, 13534139, 13534307, 13534483, 13534657, 13534841]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13532059 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13532059 13534841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13532059) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13535023, 13535173, 13535321, 13535461, 13535629, 13535813, 13535993, 13536169, 13536337, 13536521, 13536703, 13536883, 13537039, 13537189, 13537369, 13537553]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13534841 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13534841 13537553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13534841) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13537723, 13537907, 13538071, 13538233, 13538407, 13538573, 13538731, 13538879, 13539059, 13539241, 13539403, 13539583, 13539763, 13539943, 13540117, 13540297]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13537553 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13537553 13540297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13537553) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13540469, 13540643, 13540817, 13540987, 13541161, 13541323, 13541497, 13541681, 13541837, 13541993, 13542161, 13542343, 13542521, 13542701, 13542871, 13543051]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13540297 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13540297 13543051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13540297) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13543223, 13543399, 13543583, 13543759, 13543939, 13544123, 13544273, 13544431, 13544611, 13544761, 13544939, 13545113, 13545283, 13545449, 13545629, 13545799]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13543051 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13543051 13545799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13543051) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13458043 13463633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13458043)
    (mid := 13460861) (hi := 13463633) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13463633 13469063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13463633)
    (mid := 13466429) (hi := 13469063) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13469063 13474547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13469063)
    (mid := 13471819) (hi := 13474547) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13474547 13480123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13474547)
    (mid := 13477319) (hi := 13480123) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13480123 13485683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13480123)
    (mid := 13482893) (hi := 13485683) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13485683 13491131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13485683)
    (mid := 13488359) (hi := 13491131) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13491131 13496507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13491131)
    (mid := 13493861) (hi := 13496507) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13496507 13502011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13496507)
    (mid := 13499327) (hi := 13502011) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13502011 13507411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13502011)
    (mid := 13504759) (hi := 13507411) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13507411 13512883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13507411)
    (mid := 13510181) (hi := 13512883) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13512883 13518277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13512883)
    (mid := 13515511) (hi := 13518277) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13518277 13523753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13518277)
    (mid := 13520957) (hi := 13523753) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13523753 13529213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13523753)
    (mid := 13526431) (hi := 13529213) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13529213 13534841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13529213)
    (mid := 13532059) (hi := 13534841) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13534841 13540297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13534841)
    (mid := 13537553) (hi := 13540297) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13540297 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13540297)
    (mid := 13543051) (hi := 13545799) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13458043 13469063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13458043)
    (mid := 13463633) (hi := 13469063) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13469063 13480123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13469063)
    (mid := 13474547) (hi := 13480123) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13480123 13491131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13480123)
    (mid := 13485683) (hi := 13491131) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13491131 13502011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13491131)
    (mid := 13496507) (hi := 13502011) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13502011 13512883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13502011)
    (mid := 13507411) (hi := 13512883) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13512883 13523753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13512883)
    (mid := 13518277) (hi := 13523753) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13523753 13534841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13523753)
    (mid := 13529213) (hi := 13534841) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13534841 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13534841)
    (mid := 13540297) (hi := 13545799) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13458043 13480123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13458043)
    (mid := 13469063) (hi := 13480123) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13480123 13502011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13480123)
    (mid := 13491131) (hi := 13502011) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13502011 13523753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13502011)
    (mid := 13512883) (hi := 13523753) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13523753 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13523753)
    (mid := 13534841) (hi := 13545799) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13458043 13502011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13458043)
    (mid := 13480123) (hi := 13502011) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13502011 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13502011)
    (mid := 13523753) (hi := 13545799) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13458043 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13458043)
    (mid := 13502011) (hi := 13545799) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13458043 13545799 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block153

#print axioms B699MiddleExtension.PrimorialBlocks.Block153.joined
