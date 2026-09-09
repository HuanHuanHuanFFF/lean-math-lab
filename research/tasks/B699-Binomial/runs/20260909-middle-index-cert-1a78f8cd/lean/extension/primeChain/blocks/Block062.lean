import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block062

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5481713, 5481893, 5482063, 5482237, 5482403, 5482571, 5482747, 5482927, 5483089, 5483273, 5483449, 5483633, 5483773, 5483957, 5484139, 5484307]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5481533 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5481533 5484307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5481533) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5484487, 5484653, 5484797, 5484979, 5485163, 5485331, 5485499, 5485651, 5485819, 5485999, 5486147, 5486311, 5486483, 5486641, 5486821, 5486983]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5484307 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5484307 5486983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5484307) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5487161, 5487343, 5487511, 5487689, 5487857, 5488039, 5488199, 5488381, 5488537, 5488709, 5488871, 5489041, 5489221, 5489399, 5489569, 5489749]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5486983 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5486983 5489749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5486983) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5489927, 5490101, 5490241, 5490413, 5490593, 5490769, 5490941, 5491117, 5491301, 5491483, 5491657, 5491841, 5491999, 5492171, 5492351, 5492527]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5489749 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5489749 5492527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5489749) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5492701, 5492869, 5493053, 5493217, 5493391, 5493559, 5493743, 5493923, 5494103, 5494283, 5494459, 5494639, 5494823, 5494997, 5495179, 5495363]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5492527 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5492527 5495363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5492527) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5495543, 5495723, 5495891, 5496059, 5496223, 5496397, 5496581, 5496737, 5496919, 5497091, 5497267, 5497433, 5497577, 5497753, 5497931, 5498099]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5495363 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5495363 5498099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5495363) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5498279, 5498461, 5498641, 5498819, 5498993, 5499157, 5499337, 5499509, 5499677, 5499853, 5500021, 5500193, 5500373, 5500543, 5500723, 5500879]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5498099 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5498099 5500879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5498099) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5501059, 5501233, 5501411, 5501593, 5501777, 5501959, 5502127, 5502311, 5502493, 5502671, 5502851, 5503033, 5503207, 5503391, 5503571, 5503753]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5500879 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5500879 5503753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5500879) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5503921, 5504099, 5504269, 5504449, 5504581, 5504761, 5504899, 5505083, 5505239, 5505413, 5505593, 5505769, 5505949, 5506129, 5506309, 5506481]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5503753 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5503753 5506481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5503753) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5506651, 5506817, 5506999, 5507179, 5507363, 5507543, 5507699, 5507849, 5508023, 5508203, 5508383, 5508563, 5508739, 5508913, 5509087, 5509267]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5506481 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5506481 5509267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5506481) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5509451, 5509631, 5509783, 5509939, 5510123, 5510303, 5510471, 5510651, 5510773, 5510917, 5511071, 5511251, 5511433, 5511613, 5511773, 5511949]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5509267 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5509267 5511949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5509267) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5512123, 5512307, 5512483, 5512657, 5512781, 5512957, 5513129, 5513303, 5513449, 5513623, 5513779, 5513953, 5514133, 5514293, 5514473, 5514653]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5511949 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5511949 5514653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5511949) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5514833, 5515001, 5515177, 5515357, 5515541, 5515723, 5515903, 5516059, 5516237, 5516417, 5516587, 5516767, 5516939, 5517091, 5517271, 5517437]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5514653 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5514653 5517437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5514653) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5517599, 5517779, 5517959, 5518141, 5518301, 5518463, 5518633, 5518817, 5518967, 5519131, 5519303, 5519477, 5519659, 5519819, 5520001, 5520169]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5517437 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5517437 5520169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5517437) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5520337, 5520521, 5520703, 5520877, 5521057, 5521213, 5521393, 5521573, 5521729, 5521891, 5522071, 5522243, 5522417, 5522563, 5522707, 5522873]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5520169 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5520169 5522873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5520169) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5523031, 5523211, 5523383, 5523563, 5523719, 5523901, 5524073, 5524249, 5524423, 5524601, 5524781, 5524957, 5525141, 5525293, 5525477, 5525659]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5522873 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5522873 5525659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5522873) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5525831, 5525981, 5526161, 5526337, 5526487, 5526643, 5526823, 5527007, 5527189, 5527367, 5527549, 5527733, 5527913, 5528063, 5528231, 5528407]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5525659 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5525659 5528407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5525659) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5528581, 5528759, 5528933, 5529113, 5529287, 5529463, 5529647, 5529827, 5530001, 5530181, 5530363, 5530543, 5530697, 5530867, 5531041, 5531221]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5528407 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5528407 5531221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5528407) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5531371, 5531549, 5531723, 5531893, 5532071, 5532239, 5532421, 5532587, 5532763, 5532941, 5533103, 5533277, 5533459, 5533637, 5533819, 5534003]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5531221 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5531221 5534003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5531221) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5534171, 5534351, 5534527, 5534677, 5534839, 5535017, 5535199, 5535379, 5535559, 5535743, 5535923, 5536103, 5536253, 5536417, 5536589, 5536753]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5534003 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5534003 5536753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5534003) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5536933, 5537111, 5537267, 5537447, 5537629, 5537789, 5537957, 5538131, 5538301, 5538473, 5538647, 5538763, 5538947, 5539129, 5539309, 5539477]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5536753 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5536753 5539477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5536753) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5539661, 5539829, 5539999, 5540179, 5540357, 5540531, 5540707, 5540891, 5541037, 5541187, 5541353, 5541533, 5541713, 5541869, 5542027, 5542177]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5539477 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5539477 5542177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5539477) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5542351, 5542531, 5542703, 5542853, 5543033, 5543201, 5543339, 5543507, 5543623, 5543779, 5543963, 5544139, 5544283, 5544437, 5544619, 5544793]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5542177 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5542177 5544793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5542177) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5544977, 5545123, 5545273, 5545453, 5545637, 5545801, 5545933, 5546089, 5546273, 5546419, 5546599, 5546771, 5546953, 5547133, 5547317, 5547499]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5544793 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5544793 5547499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5544793) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5547631, 5547779, 5547959, 5548141, 5548321, 5548493, 5548661, 5548843, 5549023, 5549189, 5549339, 5549483, 5549659, 5549839, 5550019, 5550203]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5547499 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5547499 5550203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5547499) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5550379, 5550563, 5550739, 5550917, 5551099, 5551283, 5551463, 5551643, 5551807, 5551981, 5552153, 5552329, 5552509, 5552669, 5552843, 5553011]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5550203 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5550203 5553011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5550203) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5553179, 5553349, 5553521, 5553683, 5553857, 5554039, 5554207, 5554387, 5554567, 5554751, 5554931, 5555083, 5555267, 5555401, 5555567, 5555747]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5553011 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5553011 5555747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5553011) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5555929, 5556107, 5556289, 5556469, 5556653, 5556821, 5556983, 5557163, 5557333, 5557501, 5557663, 5557847, 5558023, 5558191, 5558369, 5558551]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5555747 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5555747 5558551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5555747) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5558717, 5558879, 5559007, 5559181, 5559347, 5559529, 5559709, 5559889, 5560073, 5560237, 5560421, 5560591, 5560771, 5560931, 5561099, 5561263]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5558551 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5558551 5561263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5558551) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5561447, 5561629, 5561779, 5561953, 5562133, 5562317, 5562499, 5562643, 5562793, 5562971, 5563153, 5563321, 5563501, 5563673, 5563843, 5564003]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5561263 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5561263 5564003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5561263) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5564179, 5564347, 5564527, 5564711, 5564887, 5565061, 5565229, 5565401, 5565551, 5565733, 5565913, 5566097, 5566273, 5566441, 5566619, 5566801]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5564003 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5564003 5566801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5564003) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5566969, 5567141, 5567297, 5567467, 5567651, 5567831, 5567987, 5568161, 5568337, 5568487, 5568649, 5568821, 5569001, 5569163, 5569327, 5569511]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5566801 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5566801 5569511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5566801) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5481533 5486983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5484307) (hi := 5486983) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5486983 5492527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5486983)
    (mid := 5489749) (hi := 5492527) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5492527 5498099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5492527)
    (mid := 5495363) (hi := 5498099) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5498099 5503753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5498099)
    (mid := 5500879) (hi := 5503753) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5503753 5509267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5503753)
    (mid := 5506481) (hi := 5509267) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5509267 5514653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5509267)
    (mid := 5511949) (hi := 5514653) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5514653 5520169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5514653)
    (mid := 5517437) (hi := 5520169) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5520169 5525659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5520169)
    (mid := 5522873) (hi := 5525659) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5525659 5531221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5525659)
    (mid := 5528407) (hi := 5531221) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5531221 5536753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5531221)
    (mid := 5534003) (hi := 5536753) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5536753 5542177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5536753)
    (mid := 5539477) (hi := 5542177) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5542177 5547499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5542177)
    (mid := 5544793) (hi := 5547499) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5547499 5553011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5547499)
    (mid := 5550203) (hi := 5553011) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5553011 5558551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5553011)
    (mid := 5555747) (hi := 5558551) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5558551 5564003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5558551)
    (mid := 5561263) (hi := 5564003) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5564003 5569511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5564003)
    (mid := 5566801) (hi := 5569511) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5481533 5492527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5486983) (hi := 5492527) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5492527 5503753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5492527)
    (mid := 5498099) (hi := 5503753) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5503753 5514653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5503753)
    (mid := 5509267) (hi := 5514653) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5514653 5525659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5514653)
    (mid := 5520169) (hi := 5525659) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5525659 5536753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5525659)
    (mid := 5531221) (hi := 5536753) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5536753 5547499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5536753)
    (mid := 5542177) (hi := 5547499) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5547499 5558551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5547499)
    (mid := 5553011) (hi := 5558551) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5558551 5569511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5558551)
    (mid := 5564003) (hi := 5569511) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5481533 5503753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5492527) (hi := 5503753) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5503753 5525659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5503753)
    (mid := 5514653) (hi := 5525659) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5525659 5547499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5525659)
    (mid := 5536753) (hi := 5547499) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5547499 5569511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5547499)
    (mid := 5558551) (hi := 5569511) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5481533 5525659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5503753) (hi := 5525659) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5525659 5569511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5525659)
    (mid := 5547499) (hi := 5569511) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5481533 5569511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5525659) (hi := 5569511) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5481533 5569511 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block062

#print axioms B699MiddleExtension.PrimorialBlocks.Block062.joined
