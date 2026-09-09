import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block061

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5394407, 5394583, 5394761, 5394943, 5395127, 5395289, 5395433, 5395589, 5395763, 5395921, 5396063, 5396221, 5396393, 5396563, 5396737, 5396921]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5394239 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5394239 5396921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5394239) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5397101, 5397283, 5397443, 5397599, 5397781, 5397961, 5398139, 5398319, 5398501, 5398597, 5398763, 5398933, 5399101, 5399281, 5399453, 5399633]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5396921 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5396921 5399633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5396921) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5399789, 5399941, 5400121, 5400301, 5400457, 5400589, 5400763, 5400881, 5401063, 5401247, 5401397, 5401559, 5401727, 5401901, 5402083, 5402239]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5399633 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5399633 5402239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5399633) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5402393, 5402561, 5402741, 5402909, 5403089, 5403259, 5403427, 5403611, 5403743, 5403917, 5404099, 5404279, 5404439, 5404603, 5404771, 5404921]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5402239 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5402239 5404921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5402239) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5405093, 5405261, 5405381, 5405539, 5405717, 5405887, 5406067, 5406217, 5406397, 5406563, 5406733, 5406917, 5407099, 5407271, 5407447, 5407631]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5404921 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5404921 5407631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5404921) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5407813, 5407943, 5408119, 5408233, 5408393, 5408573, 5408719, 5408903, 5409059, 5409241, 5409421, 5409589, 5409773, 5409953, 5410127, 5410309]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5407631 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5407631 5410309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5407631) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5410463, 5410627, 5410799, 5410973, 5411149, 5411327, 5411503, 5411641, 5411821, 5411993, 5412133, 5412289, 5412467, 5412629, 5412811, 5412983]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5410309 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5410309 5412983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5410309) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5413151, 5413333, 5413511, 5413693, 5413873, 5414053, 5414237, 5414417, 5414599, 5414777, 5414951, 5415131, 5415271, 5415451, 5415617, 5415791]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5412983 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5412983 5415791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5412983) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5415973, 5416157, 5416309, 5416493, 5416651, 5416811, 5416993, 5417143, 5417323, 5417507, 5417689, 5417851, 5418013, 5418181, 5418353, 5418503]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5415791 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5415791 5418503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5415791) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5418659, 5418799, 5418977, 5419157, 5419307, 5419457, 5419627, 5419811, 5419987, 5420171, 5420347, 5420531, 5420711, 5420879, 5421047, 5421209]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5418503 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5418503 5421209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5418503) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5421371, 5421547, 5421719, 5421893, 5422073, 5422247, 5422421, 5422603, 5422777, 5422943, 5423123, 5423291, 5423443, 5423623, 5423807, 5423989]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5421209 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5421209 5423989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5421209) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5424161, 5424319, 5424487, 5424667, 5424847, 5425019, 5425201, 5425379, 5425561, 5425741, 5425909, 5426093, 5426261, 5426437, 5426611, 5426779]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5423989 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5423989 5426779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5423989) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5426963, 5427133, 5427283, 5427439, 5427593, 5427767, 5427943, 5428127, 5428303, 5428487, 5428663, 5428847, 5428981, 5429153, 5429323, 5429483]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5426779 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5426779 5429483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5426779) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5429657, 5429833, 5430013, 5430167, 5430349, 5430493, 5430661, 5430839, 5431021, 5431187, 5431369, 5431537, 5431697, 5431873, 5432051, 5432227]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5429483 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5429483 5432227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5429483) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5432411, 5432591, 5432743, 5432923, 5433101, 5433271, 5433431, 5433599, 5433763, 5433937, 5434111, 5434243, 5434421, 5434603, 5434771, 5434937]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5432227 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5432227 5434937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5432227) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5435117, 5435299, 5435477, 5435641, 5435803, 5435987, 5436163, 5436341, 5436511, 5436667, 5436841, 5437013, 5437193, 5437373, 5437547, 5437721]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5434937 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5434937 5437721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5434937) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5437903, 5438071, 5438233, 5438401, 5438581, 5438753, 5438903, 5439067, 5439233, 5439409, 5439583, 5439767, 5439943, 5440117, 5440301, 5440453]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5437721 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5437721 5440453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5437721) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5440637, 5440819, 5440997, 5441167, 5441341, 5441507, 5441671, 5441851, 5442011, 5442187, 5442361, 5442539, 5442673, 5442817, 5442989, 5443171]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5440453 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5440453 5443171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5440453) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5443303, 5443469, 5443651, 5443831, 5443993, 5444177, 5444357, 5444533, 5444693, 5444867, 5445029, 5445199, 5445383, 5445541, 5445721, 5445893]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5443171 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5443171 5445893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5443171) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5446073, 5446253, 5446429, 5446591, 5446759, 5446943, 5447119, 5447303, 5447461, 5447639, 5447821, 5447989, 5448169, 5448341, 5448523, 5448689]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5445893 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5445893 5448689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5445893) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5448869, 5449049, 5449201, 5449373, 5449553, 5449727, 5449909, 5450087, 5450267, 5450441, 5450617, 5450801, 5450971, 5451151, 5451323, 5451503]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5448689 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5448689 5451503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5448689) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5451683, 5451847, 5452009, 5452193, 5452339, 5452523, 5452703, 5452883, 5453059, 5453237, 5453417, 5453579, 5453731, 5453891, 5454061, 5454227]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5451503 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5451503 5454227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5451503) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5454401, 5454563, 5454731, 5454913, 5455097, 5455267, 5455441, 5455621, 5455787, 5455951, 5456117, 5456273, 5456453, 5456603, 5456783, 5456953]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5454227 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5454227 5456953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5454227) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5457113, 5457293, 5457467, 5457637, 5457821, 5458001, 5458183, 5458367, 5458543, 5458723, 5458907, 5459087, 5459197, 5459357, 5459539, 5459723]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5456953 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5456953 5459723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5456953) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5459903, 5460083, 5460263, 5460443, 5460607, 5460779, 5460943, 5461123, 5461289, 5461457, 5461637, 5461801, 5461957, 5462141, 5462311, 5462473]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5459723 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5459723 5462473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5459723) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5462647, 5462827, 5463011, 5463181, 5463361, 5463509, 5463683, 5463853, 5464037, 5464211, 5464369, 5464553, 5464729, 5464909, 5465081, 5465261]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5462473 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5462473 5465261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5462473) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5465443, 5465627, 5465791, 5465969, 5466127, 5466311, 5466449, 5466631, 5466781, 5466953, 5467097, 5467271, 5467411, 5467577, 5467753, 5467927]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5465261 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5465261 5467927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5465261) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5468107, 5468263, 5468417, 5468597, 5468773, 5468929, 5469109, 5469287, 5469467, 5469647, 5469829, 5470013, 5470187, 5470369, 5470529, 5470681]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5467927 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5467927 5470681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5467927) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5470853, 5471023, 5471203, 5471387, 5471567, 5471731, 5471911, 5472059, 5472239, 5472421, 5472587, 5472769, 5472953, 5473109, 5473271, 5473441]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5470681 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5470681 5473441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5470681) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5473597, 5473781, 5473921, 5474087, 5474213, 5474387, 5474563, 5474719, 5474893, 5475047, 5475227, 5475409, 5475571, 5475739, 5475881, 5476061]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5473441 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5473441 5476061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5473441) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5476223, 5476391, 5476547, 5476721, 5476901, 5477083, 5477267, 5477447, 5477629, 5477809, 5477971, 5478113, 5478241, 5478401, 5478569, 5478731]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5476061 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5476061 5478731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5476061) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5478911, 5479093, 5479249, 5479427, 5479603, 5479787, 5479951, 5480129, 5480311, 5480491, 5480669, 5480843, 5481023, 5481173, 5481353, 5481533]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5478731 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5478731 5481533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5478731) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5394239 5399633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5394239)
    (mid := 5396921) (hi := 5399633) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5399633 5404921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5399633)
    (mid := 5402239) (hi := 5404921) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5404921 5410309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5404921)
    (mid := 5407631) (hi := 5410309) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5410309 5415791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5410309)
    (mid := 5412983) (hi := 5415791) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5415791 5421209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5415791)
    (mid := 5418503) (hi := 5421209) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5421209 5426779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5421209)
    (mid := 5423989) (hi := 5426779) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5426779 5432227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5426779)
    (mid := 5429483) (hi := 5432227) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5432227 5437721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5432227)
    (mid := 5434937) (hi := 5437721) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5437721 5443171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5437721)
    (mid := 5440453) (hi := 5443171) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5443171 5448689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5443171)
    (mid := 5445893) (hi := 5448689) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5448689 5454227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5448689)
    (mid := 5451503) (hi := 5454227) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5454227 5459723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5454227)
    (mid := 5456953) (hi := 5459723) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5459723 5465261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5459723)
    (mid := 5462473) (hi := 5465261) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5465261 5470681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5465261)
    (mid := 5467927) (hi := 5470681) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5470681 5476061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5470681)
    (mid := 5473441) (hi := 5476061) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5476061 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5476061)
    (mid := 5478731) (hi := 5481533) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5394239 5404921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5394239)
    (mid := 5399633) (hi := 5404921) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5404921 5415791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5404921)
    (mid := 5410309) (hi := 5415791) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5415791 5426779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5415791)
    (mid := 5421209) (hi := 5426779) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5426779 5437721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5426779)
    (mid := 5432227) (hi := 5437721) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5437721 5448689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5437721)
    (mid := 5443171) (hi := 5448689) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5448689 5459723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5448689)
    (mid := 5454227) (hi := 5459723) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5459723 5470681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5459723)
    (mid := 5465261) (hi := 5470681) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5470681 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5470681)
    (mid := 5476061) (hi := 5481533) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5394239 5415791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5394239)
    (mid := 5404921) (hi := 5415791) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5415791 5437721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5415791)
    (mid := 5426779) (hi := 5437721) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5437721 5459723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5437721)
    (mid := 5448689) (hi := 5459723) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5459723 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5459723)
    (mid := 5470681) (hi := 5481533) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5394239 5437721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5394239)
    (mid := 5415791) (hi := 5437721) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5437721 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5437721)
    (mid := 5459723) (hi := 5481533) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5394239 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5394239)
    (mid := 5437721) (hi := 5481533) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5394239 5481533 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block061

#print axioms B699MiddleExtension.PrimorialBlocks.Block061.joined
