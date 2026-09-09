import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block098

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8642003, 8642173, 8642329, 8642509, 8642651, 8642819, 8642989, 8643149, 8643317, 8643487, 8643671, 8643851, 8644019, 8644187, 8644331, 8644511]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8641819 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8641819 8644511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8641819) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8644679, 8644861, 8645029, 8645179, 8645359, 8645543, 8645719, 8645899, 8646061, 8646233, 8646403, 8646581, 8646751, 8646929, 8647091, 8647273]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8644511 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8644511 8647273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8644511) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8647447, 8647589, 8647759, 8647937, 8648113, 8648267, 8648447, 8648557, 8648741, 8648923, 8649103, 8649283, 8649467, 8649637, 8649803, 8649973]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8647273 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8647273 8649973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8647273) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8650153, 8650321, 8650487, 8650669, 8650849, 8651017, 8651191, 8651359, 8651543, 8651723, 8651893, 8652053, 8652229, 8652407, 8652587, 8652767]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8649973 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8649973 8652767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8649973) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8652947, 8653121, 8653297, 8653457, 8653627, 8653811, 8653963, 8654147, 8654299, 8654483, 8654663, 8654839, 8655011, 8655173, 8655349, 8655527]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8652767 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8652767 8655527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8652767) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8655707, 8655883, 8656057, 8656231, 8656411, 8656589, 8656759, 8656939, 8657123, 8657291, 8657461, 8657639, 8657801, 8657983, 8658161, 8658329]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8655527 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8655527 8658329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8655527) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8658493, 8658677, 8658847, 8659019, 8659181, 8659363, 8659543, 8659711, 8659873, 8660053, 8660233, 8660413, 8660579, 8660753, 8660933, 8661089]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8658329 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8658329 8661089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8658329) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8661253, 8661437, 8661581, 8661743, 8661901, 8662079, 8662259, 8662441, 8662597, 8662769, 8662943, 8663119, 8663279, 8663461, 8663621, 8663803]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8661089 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8661089 8663803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8661089) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8663987, 8664157, 8664329, 8664473, 8664613, 8664791, 8664961, 8665123, 8665303, 8665471, 8665651, 8665817, 8665999, 8666183, 8666351, 8666533]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8663803 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8663803 8666533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8663803) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8666711, 8666891, 8666993, 8667167, 8667349, 8667521, 8667697, 8667871, 8668043, 8668207, 8668381, 8668553, 8668721, 8668901, 8669083, 8669251]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8666533 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8666533 8669251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8666533) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8669417, 8669593, 8669777, 8669939, 8670107, 8670281, 8670451, 8670619, 8670791, 8670947, 8671127, 8671307, 8671471, 8671639, 8671811, 8671991]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8669251 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8669251 8671991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8669251) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8672161, 8672333, 8672513, 8672687, 8672869, 8673037, 8673221, 8673389, 8673571, 8673727, 8673911, 8674091, 8674271, 8674453, 8674619, 8674793]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8671991 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8671991 8674793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8671991) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8674961, 8675137, 8675311, 8675473, 8675651, 8675833, 8676013, 8676197, 8676377, 8676541, 8676721, 8676893, 8677057, 8677223, 8677399, 8677577]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8674793 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8674793 8677577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8674793) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8677759, 8677891, 8678069, 8678237, 8678399, 8678581, 8678759, 8678941, 8679109, 8679289, 8679457, 8679641, 8679791, 8679973, 8680157, 8680337]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8677577 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8677577 8680337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8677577) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8680513, 8680697, 8680871, 8681047, 8681221, 8681401, 8681579, 8681737, 8681899, 8682067, 8682251, 8682433, 8682589, 8682763, 8682911, 8683091]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8680337 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8680337 8683091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8680337) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8683261, 8683439, 8683613, 8683793, 8683943, 8684111, 8684279, 8684461, 8684629, 8684789, 8684959, 8685107, 8685289, 8685473, 8685653, 8685791]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8683091 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8683091 8685791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8683091) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8685967, 8686147, 8686313, 8686487, 8686669, 8686841, 8686999, 8687183, 8687363, 8687521, 8687699, 8687881, 8688059, 8688221, 8688397, 8688577]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8685791 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8685791 8688577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8685791) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8688739, 8688919, 8689097, 8689279, 8689463, 8689643, 8689823, 8689997, 8690177, 8690359, 8690531, 8690713, 8690867, 8691043, 8691223, 8691407]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8688577 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8688577 8691407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8688577) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8691589, 8691763, 8691941, 8692109, 8692289, 8692469, 8692637, 8692819, 8692991, 8693173, 8693339, 8693521, 8693693, 8693837, 8694019, 8694197]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8691407 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8691407 8694197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8691407) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8694379, 8694551, 8694733, 8694899, 8695079, 8695223, 8695399, 8695573, 8695747, 8695931, 8696113, 8696273, 8696437, 8696617, 8696791, 8696951]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8694197 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8694197 8696951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8694197) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8697133, 8697313, 8697433, 8697613, 8697797, 8697977, 8698153, 8698297, 8698457, 8698639, 8698819, 8698997, 8699179, 8699351, 8699533, 8699659]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8696951 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8696951 8699659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8696951) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8699827, 8700011, 8700193, 8700361, 8700539, 8700721, 8700893, 8701067, 8701243, 8701423, 8701577, 8701757, 8701933, 8702107, 8702279, 8702459]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8699659 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8699659 8702459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8699659) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8702597, 8702777, 8702959, 8703139, 8703307, 8703491, 8703661, 8703841, 8703971, 8704123, 8704303, 8704481, 8704651, 8704811, 8704981, 8705159]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8702459 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8702459 8705159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8702459) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8705311, 8705491, 8705657, 8705831, 8706013, 8706197, 8706377, 8706557, 8706727, 8706881, 8707057, 8707241, 8707421, 8707603, 8707781, 8707939]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8705159 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8705159 8707939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8705159) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8708101, 8708269, 8708449, 8708627, 8708807, 8708971, 8709149, 8709317, 8709469, 8709653, 8709821, 8709991, 8710147, 8710313, 8710487, 8710649]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8707939 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8707939 8710649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8707939) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8710829, 8711011, 8711189, 8711363, 8711543, 8711719, 8711897, 8712059, 8712233, 8712397, 8712577, 8712761, 8712931, 8713109, 8713291, 8713459]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8710649 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8710649 8713459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8710649) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8713643, 8713823, 8714003, 8714177, 8714357, 8714507, 8714683, 8714857, 8715041, 8715209, 8715383, 8715559, 8715731, 8715907, 8716069, 8716249]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8713459 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8713459 8716249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8713459) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8716429, 8716613, 8716783, 8716957, 8717131, 8717287, 8717393, 8717563, 8717747, 8717927, 8718109, 8718277, 8718461, 8718601, 8718779, 8718953]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8716249 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8716249 8718953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8716249) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8719133, 8719307, 8719483, 8719663, 8719847, 8720027, 8720191, 8720347, 8720531, 8720713, 8720891, 8721061, 8721239, 8721413, 8721541, 8721701]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8718953 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8718953 8721701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8718953) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8721883, 8722033, 8722211, 8722393, 8722541, 8722711, 8722891, 8723063, 8723243, 8723423, 8723593, 8723731, 8723909, 8724073, 8724253, 8724437]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8721701 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8721701 8724437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8721701) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8724619, 8724803, 8724983, 8725159, 8725319, 8725499, 8725681, 8725841, 8726021, 8726203, 8726383, 8726533, 8726713, 8726873, 8727053, 8727211]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8724437 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8724437 8727211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8724437) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8727359, 8727539, 8727701, 8727871, 8728037, 8728211, 8728387, 8728571, 8728721, 8728903, 8729081, 8729249, 8729429, 8729603, 8729767, 8729939]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8727211 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8727211 8729939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8727211) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8641819 8647273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8644511) (hi := 8647273) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8647273 8652767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8647273)
    (mid := 8649973) (hi := 8652767) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8652767 8658329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8652767)
    (mid := 8655527) (hi := 8658329) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8658329 8663803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8658329)
    (mid := 8661089) (hi := 8663803) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8663803 8669251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8663803)
    (mid := 8666533) (hi := 8669251) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8669251 8674793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8669251)
    (mid := 8671991) (hi := 8674793) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8674793 8680337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8674793)
    (mid := 8677577) (hi := 8680337) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8680337 8685791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8680337)
    (mid := 8683091) (hi := 8685791) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8685791 8691407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8685791)
    (mid := 8688577) (hi := 8691407) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8691407 8696951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8691407)
    (mid := 8694197) (hi := 8696951) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8696951 8702459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8696951)
    (mid := 8699659) (hi := 8702459) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8702459 8707939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8702459)
    (mid := 8705159) (hi := 8707939) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8707939 8713459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8707939)
    (mid := 8710649) (hi := 8713459) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8713459 8718953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8713459)
    (mid := 8716249) (hi := 8718953) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8718953 8724437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8718953)
    (mid := 8721701) (hi := 8724437) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8724437 8729939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8724437)
    (mid := 8727211) (hi := 8729939) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8641819 8652767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8647273) (hi := 8652767) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8652767 8663803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8652767)
    (mid := 8658329) (hi := 8663803) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8663803 8674793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8663803)
    (mid := 8669251) (hi := 8674793) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8674793 8685791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8674793)
    (mid := 8680337) (hi := 8685791) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8685791 8696951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8685791)
    (mid := 8691407) (hi := 8696951) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8696951 8707939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8696951)
    (mid := 8702459) (hi := 8707939) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8707939 8718953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8707939)
    (mid := 8713459) (hi := 8718953) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8718953 8729939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8718953)
    (mid := 8724437) (hi := 8729939) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8641819 8663803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8652767) (hi := 8663803) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8663803 8685791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8663803)
    (mid := 8674793) (hi := 8685791) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8685791 8707939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8685791)
    (mid := 8696951) (hi := 8707939) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8707939 8729939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8707939)
    (mid := 8718953) (hi := 8729939) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8641819 8685791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8663803) (hi := 8685791) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8685791 8729939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8685791)
    (mid := 8707939) (hi := 8729939) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8641819 8729939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8685791) (hi := 8729939) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8641819 8729939 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block098

#print axioms B699MiddleExtension.PrimorialBlocks.Block098.joined
