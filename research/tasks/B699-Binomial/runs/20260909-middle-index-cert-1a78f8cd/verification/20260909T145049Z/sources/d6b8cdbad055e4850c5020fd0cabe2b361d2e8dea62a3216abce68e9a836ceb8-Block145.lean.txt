import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block145

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12758111, 12758287, 12758461, 12758621, 12758803, 12758981, 12759143, 12759311, 12759479, 12759661, 12759833, 12759997, 12760169, 12760309, 12760483, 12760663]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12757981 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12757981 12760663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12757981) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12760843, 12761011, 12761171, 12761351, 12761533, 12761689, 12761867, 12762041, 12762209, 12762391, 12762553, 12762727, 12762901, 12763061, 12763241, 12763403]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12760663 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12760663 12763403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12760663) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12763559, 12763739, 12763903, 12764071, 12764251, 12764431, 12764597, 12764767, 12764951, 12765127, 12765301, 12765463, 12765631, 12765803, 12765959, 12766123]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12763403 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12763403 12766123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12763403) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12766307, 12766483, 12766667, 12766801, 12766981, 12767137, 12767311, 12767477, 12767633, 12767813, 12767987, 12768169, 12768347, 12768517, 12768697, 12768881]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12766123 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12766123 12768881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12766123) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12769049, 12769217, 12769391, 12769553, 12769709, 12769891, 12770059, 12770239, 12770423, 12770599, 12770749, 12770917, 12771091, 12771271, 12771431, 12771593]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12768881 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12768881 12771593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12768881) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12771769, 12771953, 12772091, 12772273, 12772453, 12772633, 12772817, 12772993, 12773161, 12773297, 12773471, 12773653, 12773807, 12773951, 12774133, 12774317]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12771593 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12771593 12774317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12771593) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12774491, 12774673, 12774851, 12775031, 12775207, 12775369, 12775549, 12775717, 12775871, 12776053, 12776213, 12776383, 12776539, 12776723, 12776879, 12777049]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12774317 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12774317 12777049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12774317) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12777221, 12777383, 12777563, 12777703, 12777827, 12778001, 12778163, 12778333, 12778517, 12778693, 12778873, 12779047, 12779231, 12779411, 12779573, 12779713]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12777049 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12777049 12779713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12777049) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12779861, 12780017, 12780197, 12780373, 12780557, 12780731, 12780907, 12781081, 12781193, 12781367, 12781541, 12781723, 12781907, 12782087, 12782267, 12782431]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12779713 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12779713 12782431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12779713) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12782599, 12782767, 12782947, 12783119, 12783299, 12783457, 12783593, 12783773, 12783931, 12784111, 12784259, 12784433, 12784613, 12784789, 12784951, 12785131]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12782431 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12782431 12785131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12782431) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12785303, 12785483, 12785653, 12785821, 12786001, 12786181, 12786331, 12786511, 12786691, 12786871, 12787051, 12787207, 12787391, 12787573, 12787721, 12787897]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12785131 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12785131 12787897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12785131) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12788057, 12788239, 12788411, 12788593, 12788719, 12788891, 12789061, 12789241, 12789419, 12789599, 12789773, 12789947, 12790109, 12790241, 12790423, 12790601]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12787897 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12787897 12790601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12787897) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12790763, 12790931, 12791113, 12791297, 12791459, 12791627, 12791797, 12791981, 12792151, 12792331, 12792499, 12792679, 12792847, 12793021, 12793199, 12793351]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12790601 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12790601 12793351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12790601) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12793519, 12793691, 12793873, 12794051, 12794213, 12794393, 12794531, 12794701, 12794849, 12795023, 12795193, 12795361, 12795511, 12795689, 12795859, 12796039]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12793351 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12793351 12796039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12793351) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12796219, 12796403, 12796577, 12796739, 12796921, 12797087, 12797261, 12797437, 12797611, 12797777, 12797951, 12798131, 12798311, 12798491, 12798661, 12798839]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12796039 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12796039 12798839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12796039) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12799021, 12799183, 12799363, 12799541, 12799723, 12799907, 12800087, 12800267, 12800429, 12800611, 12800791, 12800969, 12801127, 12801311, 12801479, 12801661]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12798839 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12798839 12801661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12798839) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12801829, 12801989, 12802171, 12802331, 12802487, 12802631, 12802799, 12802961, 12803137, 12803291, 12803459, 12803611, 12803789, 12803969, 12804151, 12804317]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12801661 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12801661 12804317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12801661) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12804487, 12804667, 12804851, 12805033, 12805217, 12805349, 12805523, 12805703, 12805861, 12806041, 12806203, 12806383, 12806557, 12806713, 12806891, 12807049]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12804317 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12804317 12807049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12804317) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12807233, 12807413, 12807583, 12807737, 12807871, 12808049, 12808219, 12808387, 12808529, 12808661, 12808843, 12809023, 12809191, 12809359, 12809539, 12809717]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12807049 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12807049 12809717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12807049) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12809879, 12810053, 12810229, 12810407, 12810583, 12810767, 12810949, 12811109, 12811289, 12811471, 12811607, 12811789, 12811973, 12812147, 12812329, 12812497]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12809717 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12809717 12812497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12809717) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12812663, 12812831, 12812993, 12813173, 12813349, 12813523, 12813707, 12813887, 12814063, 12814237, 12814391, 12814567, 12814751, 12814883, 12815053, 12815237]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12812497 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12812497 12815237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12812497) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12815417, 12815597, 12815743, 12815923, 12816077, 12816259, 12816439, 12816607, 12816751, 12816931, 12817111, 12817213, 12817373, 12817549, 12817733, 12817907]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12815237 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12815237 12817907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12815237) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12818083, 12818249, 12818431, 12818599, 12818747, 12818929, 12819083, 12819197, 12819379, 12819551, 12819707, 12819881, 12820061, 12820243, 12820427, 12820603]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12817907 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12817907 12820603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12817907) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12820783, 12820963, 12821141, 12821317, 12821491, 12821671, 12821843, 12822011, 12822193, 12822373, 12822541, 12822713, 12822881, 12823051, 12823229, 12823411]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12820603 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12820603 12823411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12820603) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12823541, 12823717, 12823901, 12824083, 12824263, 12824447, 12824627, 12824807, 12824983, 12825149, 12825331, 12825493, 12825647, 12825823, 12826003, 12826171]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12823411 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12823411 12826171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12823411) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12826327, 12826507, 12826669, 12826819, 12826999, 12827179, 12827363, 12827539, 12827719, 12827897, 12828077, 12828259, 12828427, 12828611, 12828793, 12828943]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12826171 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12826171 12828943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12826171) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12829097, 12829273, 12829457, 12829601, 12829757, 12829937, 12830119, 12830303, 12830479, 12830659, 12830821, 12831001, 12831173, 12831347, 12831529, 12831701]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12828943 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12828943 12831701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12828943) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12831881, 12832051, 12832223, 12832373, 12832553, 12832697, 12832871, 12833053, 12833237, 12833383, 12833567, 12833741, 12833893, 12834071, 12834251, 12834433]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12831701 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12831701 12834433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12831701) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12834611, 12834793, 12834977, 12835157, 12835283, 12835463, 12835639, 12835819, 12835961, 12836143, 12836287, 12836459, 12836633, 12836809, 12836987, 12837107]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12834433 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12834433 12837107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12834433) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12837277, 12837437, 12837599, 12837763, 12837947, 12838127, 12838279, 12838429, 12838613, 12838759, 12838937, 12839119, 12839293, 12839467, 12839627, 12839809]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12837107 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12837107 12839809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12837107) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12839989, 12840133, 12840313, 12840493, 12840677, 12840859, 12841043, 12841217, 12841393, 12841571, 12841753, 12841921, 12842083, 12842237, 12842411, 12842591]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12839809 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12839809 12842591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12839809) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12842771, 12842953, 12843137, 12843319, 12843451, 12843599, 12843767, 12843937, 12844121, 12844297, 12844463, 12844631, 12844813, 12844987, 12845171, 12845351]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12842591 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12842591 12845351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12842591) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12757981 12763403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12757981)
    (mid := 12760663) (hi := 12763403) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12763403 12768881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12763403)
    (mid := 12766123) (hi := 12768881) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12768881 12774317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12768881)
    (mid := 12771593) (hi := 12774317) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12774317 12779713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12774317)
    (mid := 12777049) (hi := 12779713) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12779713 12785131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12779713)
    (mid := 12782431) (hi := 12785131) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12785131 12790601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12785131)
    (mid := 12787897) (hi := 12790601) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12790601 12796039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12790601)
    (mid := 12793351) (hi := 12796039) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12796039 12801661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12796039)
    (mid := 12798839) (hi := 12801661) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12801661 12807049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12801661)
    (mid := 12804317) (hi := 12807049) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12807049 12812497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12807049)
    (mid := 12809717) (hi := 12812497) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12812497 12817907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12812497)
    (mid := 12815237) (hi := 12817907) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12817907 12823411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12817907)
    (mid := 12820603) (hi := 12823411) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12823411 12828943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12823411)
    (mid := 12826171) (hi := 12828943) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12828943 12834433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12828943)
    (mid := 12831701) (hi := 12834433) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12834433 12839809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12834433)
    (mid := 12837107) (hi := 12839809) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12839809 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12839809)
    (mid := 12842591) (hi := 12845351) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12757981 12768881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12757981)
    (mid := 12763403) (hi := 12768881) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12768881 12779713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12768881)
    (mid := 12774317) (hi := 12779713) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12779713 12790601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12779713)
    (mid := 12785131) (hi := 12790601) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12790601 12801661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12790601)
    (mid := 12796039) (hi := 12801661) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12801661 12812497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12801661)
    (mid := 12807049) (hi := 12812497) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12812497 12823411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12812497)
    (mid := 12817907) (hi := 12823411) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12823411 12834433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12823411)
    (mid := 12828943) (hi := 12834433) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12834433 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12834433)
    (mid := 12839809) (hi := 12845351) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12757981 12779713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12757981)
    (mid := 12768881) (hi := 12779713) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12779713 12801661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12779713)
    (mid := 12790601) (hi := 12801661) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12801661 12823411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12801661)
    (mid := 12812497) (hi := 12823411) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12823411 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12823411)
    (mid := 12834433) (hi := 12845351) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12757981 12801661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12757981)
    (mid := 12779713) (hi := 12801661) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12801661 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12801661)
    (mid := 12823411) (hi := 12845351) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12757981 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12757981)
    (mid := 12801661) (hi := 12845351) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12757981 12845351 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block145

#print axioms B699MiddleExtension.PrimorialBlocks.Block145.joined
