import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block060

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5306659, 5306827, 5307011, 5307167, 5307347, 5307509, 5307691, 5307857, 5308033, 5308217, 5308379, 5308553, 5308729, 5308903, 5309077, 5309243]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5306479 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5306479 5309243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5306479) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5309413, 5309539, 5309719, 5309903, 5310061, 5310191, 5310343, 5310527, 5310707, 5310863, 5311027, 5311171, 5311351, 5311511, 5311651, 5311793]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5309243 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5309243 5311793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5309243) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5311951, 5312117, 5312273, 5312453, 5312623, 5312807, 5312971, 5313131, 5313277, 5313457, 5313631, 5313797, 5313967, 5314147, 5314303, 5314487]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5311793 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5311793 5314487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5311793) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5314669, 5314819, 5314993, 5315173, 5315333, 5315491, 5315669, 5315837, 5316007, 5316187, 5316349, 5316503, 5316679, 5316847, 5317031, 5317211]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5314487 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5314487 5317211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5314487) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5317391, 5317567, 5317733, 5317913, 5318087, 5318251, 5318431, 5318591, 5318767, 5318933, 5319089, 5319271, 5319427, 5319571, 5319737, 5319913]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5317211 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5317211 5319913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5317211) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5320093, 5320229, 5320409, 5320591, 5320771, 5320951, 5321111, 5321263, 5321443, 5321621, 5321803, 5321983, 5322157, 5322323, 5322491, 5322673]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5319913 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5319913 5322673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5319913) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5322851, 5323027, 5323187, 5323369, 5323547, 5323711, 5323867, 5324051, 5324227, 5324399, 5324581, 5324747, 5324923, 5325101, 5325247, 5325431]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5322673 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5322673 5325431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5322673) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5325587, 5325767, 5325919, 5326091, 5326249, 5326429, 5326609, 5326793, 5326963, 5327131, 5327303, 5327473, 5327653, 5327831, 5328007, 5328161]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5325431 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5325431 5328161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5325431) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5328331, 5328511, 5328677, 5328859, 5329043, 5329217, 5329397, 5329567, 5329741, 5329913, 5330069, 5330251, 5330399, 5330579, 5330761, 5330933]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5328161 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5328161 5330933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5328161) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5331089, 5331259, 5331439, 5331619, 5331803, 5331983, 5332157, 5332333, 5332513, 5332697, 5332861, 5333039, 5333219, 5333387, 5333557, 5333729]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5330933 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5330933 5333729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5330933) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5333897, 5334047, 5334227, 5334409, 5334559, 5334733, 5334911, 5335081, 5335189, 5335367, 5335549, 5335723, 5335879, 5336057, 5336237, 5336393]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5333729 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5333729 5336393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5333729) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5336563, 5336741, 5336911, 5337089, 5337217, 5337401, 5337571, 5337751, 5337929, 5338103, 5338283, 5338453, 5338633, 5338811, 5338951, 5339123]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5336393 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5336393 5339123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5336393) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5339303, 5339447, 5339629, 5339809, 5339993, 5340161, 5340343, 5340523, 5340707, 5340883, 5341067, 5341241, 5341421, 5341591, 5341769, 5341943]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5339123 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5339123 5341943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5339123) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5342123, 5342303, 5342483, 5342657, 5342809, 5342993, 5343167, 5343347, 5343529, 5343713, 5343893, 5344061, 5344231, 5344351, 5344531, 5344711]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5341943 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5341943 5344711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5341943) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5344879, 5345017, 5345189, 5345371, 5345537, 5345699, 5345881, 5346059, 5346227, 5346409, 5346571, 5346751, 5346919, 5347103, 5347271, 5347423]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5344711 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5344711 5347423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5344711) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5347591, 5347751, 5347897, 5348059, 5348243, 5348423, 5348597, 5348743, 5348923, 5349083, 5349257, 5349437, 5349613, 5349797, 5349947, 5350067]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5347423 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5347423 5350067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5347423) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5350231, 5350399, 5350573, 5350757, 5350931, 5351113, 5351287, 5351461, 5351611, 5351783, 5351963, 5352133, 5352317, 5352481, 5352653, 5352833]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5350067 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5350067 5352833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5350067) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5352989, 5353151, 5353321, 5353499, 5353681, 5353849, 5354023, 5354207, 5354369, 5354551, 5354729, 5354873, 5355023, 5355199, 5355367, 5355551]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5352833 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5352833 5355551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5352833) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5355733, 5355899, 5356067, 5356249, 5356427, 5356607, 5356789, 5356963, 5357147, 5357309, 5357479, 5357657, 5357831, 5358013, 5358181, 5358343]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5355551 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5355551 5358343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5355551) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5358523, 5358697, 5358869, 5359051, 5359231, 5359379, 5359553, 5359727, 5359909, 5360077, 5360239, 5360419, 5360599, 5360783, 5360963, 5361131]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5358343 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5358343 5361131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5358343) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5361311, 5361479, 5361661, 5361833, 5361997, 5362177, 5362337, 5362501, 5362663, 5362823, 5362993, 5363167, 5363321, 5363503, 5363641, 5363801]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5361131 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5361131 5363801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5361131) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5363983, 5364143, 5364301, 5364473, 5364649, 5364823, 5365007, 5365189, 5365357, 5365531, 5365691, 5365853, 5366027, 5366209, 5366377, 5366561]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5363801 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5363801 5366561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5363801) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5366743, 5366903, 5367077, 5367251, 5367431, 5367601, 5367781, 5367961, 5368133, 5368309, 5368483, 5368661, 5368829, 5369009, 5369183, 5369347]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5366561 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5366561 5369347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5366561) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5369527, 5369681, 5369863, 5370041, 5370187, 5370371, 5370517, 5370689, 5370857, 5371039, 5371217, 5371367, 5371543, 5371727, 5371909, 5372077]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5369347 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5369347 5372077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5369347) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5372249, 5372417, 5372597, 5372771, 5372947, 5373131, 5373293, 5373469, 5373653, 5373833, 5374009, 5374181, 5374349, 5374529, 5374697, 5374861]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5372077 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5372077 5374861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5372077) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5375039, 5375221, 5375401, 5375581, 5375761, 5375941, 5376101, 5376277, 5376461, 5376619, 5376793, 5376953, 5377121, 5377303, 5377439, 5377613]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5374861 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5374861 5377613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5374861) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5377781, 5377961, 5378143, 5378299, 5378473, 5378657, 5378819, 5379001, 5379167, 5379287, 5379449, 5379629, 5379809, 5379971, 5380153, 5380337]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5377613 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5377613 5380337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5377613) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5380519, 5380699, 5380883, 5381059, 5381227, 5381377, 5381561, 5381743, 5381927, 5382109, 5382287, 5382469, 5382653, 5382787, 5382967, 5383151]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5380337 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5380337 5383151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5380337) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5383321, 5383459, 5383627, 5383811, 5383993, 5384177, 5384341, 5384513, 5384693, 5384867, 5385049, 5385229, 5385409, 5385593, 5385769, 5385937]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5383151 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5383151 5385937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5383151) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5386103, 5386237, 5386421, 5386573, 5386753, 5386921, 5387101, 5387257, 5387429, 5387611, 5387791, 5387951, 5388121, 5388289, 5388433, 5388611]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5385937 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5385937 5388611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5385937) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5388769, 5388953, 5389121, 5389303, 5389487, 5389649, 5389831, 5389997, 5390171, 5390353, 5390537, 5390719, 5390893, 5391073, 5391257, 5391439]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5388611 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5388611 5391439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5388611) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5391619, 5391803, 5391983, 5392151, 5392313, 5392493, 5392669, 5392847, 5392991, 5393173, 5393357, 5393537, 5393711, 5393893, 5394061, 5394239]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5391439 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5391439 5394239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5391439) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5306479 5311793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5309243) (hi := 5311793) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5311793 5317211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5311793)
    (mid := 5314487) (hi := 5317211) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5317211 5322673 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5317211)
    (mid := 5319913) (hi := 5322673) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5322673 5328161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5322673)
    (mid := 5325431) (hi := 5328161) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5328161 5333729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5328161)
    (mid := 5330933) (hi := 5333729) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5333729 5339123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5333729)
    (mid := 5336393) (hi := 5339123) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5339123 5344711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5339123)
    (mid := 5341943) (hi := 5344711) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5344711 5350067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5344711)
    (mid := 5347423) (hi := 5350067) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5350067 5355551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5350067)
    (mid := 5352833) (hi := 5355551) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5355551 5361131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5355551)
    (mid := 5358343) (hi := 5361131) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5361131 5366561 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5361131)
    (mid := 5363801) (hi := 5366561) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5366561 5372077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5366561)
    (mid := 5369347) (hi := 5372077) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5372077 5377613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5372077)
    (mid := 5374861) (hi := 5377613) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5377613 5383151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5377613)
    (mid := 5380337) (hi := 5383151) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5383151 5388611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5383151)
    (mid := 5385937) (hi := 5388611) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5388611 5394239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5388611)
    (mid := 5391439) (hi := 5394239) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5306479 5317211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5311793) (hi := 5317211) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5317211 5328161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5317211)
    (mid := 5322673) (hi := 5328161) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5328161 5339123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5328161)
    (mid := 5333729) (hi := 5339123) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5339123 5350067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5339123)
    (mid := 5344711) (hi := 5350067) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5350067 5361131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5350067)
    (mid := 5355551) (hi := 5361131) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5361131 5372077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5361131)
    (mid := 5366561) (hi := 5372077) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5372077 5383151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5372077)
    (mid := 5377613) (hi := 5383151) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5383151 5394239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5383151)
    (mid := 5388611) (hi := 5394239) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5306479 5328161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5317211) (hi := 5328161) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5328161 5350067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5328161)
    (mid := 5339123) (hi := 5350067) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5350067 5372077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5350067)
    (mid := 5361131) (hi := 5372077) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5372077 5394239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5372077)
    (mid := 5383151) (hi := 5394239) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5306479 5350067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5328161) (hi := 5350067) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5350067 5394239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5350067)
    (mid := 5372077) (hi := 5394239) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5306479 5394239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5350067) (hi := 5394239) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5306479 5394239 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block060

#print axioms B699MiddleExtension.PrimorialBlocks.Block060.joined
