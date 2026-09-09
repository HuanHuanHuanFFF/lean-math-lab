import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block066

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5833181, 5833349, 5833493, 5833631, 5833813, 5833991, 5834167, 5834351, 5834531, 5834701, 5834867, 5835043, 5835227, 5835383, 5835553, 5835701]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5833001 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5833001 5835701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5833001) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5835871, 5836027, 5836189, 5836357, 5836499, 5836673, 5836829, 5837003, 5837173, 5837317, 5837501, 5837677, 5837849, 5838017, 5838197, 5838379]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5835701 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5835701 5838379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5835701) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5838557, 5838731, 5838913, 5839091, 5839259, 5839433, 5839597, 5839751, 5839931, 5840113, 5840297, 5840477, 5840633, 5840801, 5840969, 5841131]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5838379 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5838379 5841131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5838379) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5841293, 5841469, 5841629, 5841799, 5841961, 5842103, 5842283, 5842457, 5842631, 5842813, 5842997, 5843179, 5843363, 5843543, 5843711, 5843881]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5841131 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5841131 5843881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5841131) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5844061, 5844221, 5844389, 5844547, 5844731, 5844901, 5845079, 5845193, 5845373, 5845547, 5845709, 5845891, 5846051, 5846233, 5846417, 5846597]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5843881 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5843881 5846597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5843881) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5846773, 5846957, 5847139, 5847323, 5847503, 5847683, 5847857, 5848039, 5848211, 5848379, 5848547, 5848723, 5848907, 5849089, 5849269, 5849453]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5846597 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5846597 5849453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5846597) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5849633, 5849813, 5849993, 5850161, 5850343, 5850527, 5850683, 5850857, 5851007, 5851189, 5851369, 5851543, 5851717, 5851897, 5852069, 5852251]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5849453 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5849453 5852251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5849453) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5852423, 5852597, 5852761, 5852941, 5853101, 5853277, 5853443, 5853623, 5853791, 5853971, 5854141, 5854313, 5854487, 5854669, 5854813, 5854993]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5852251 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5852251 5854993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5852251) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5855167, 5855347, 5855527, 5855699, 5855873, 5856043, 5856197, 5856379, 5856547, 5856713, 5856853, 5857031, 5857193, 5857361, 5857531, 5857699]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5854993 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5854993 5857699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5854993) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5857883, 5858009, 5858159, 5858341, 5858519, 5858701, 5858873, 5859041, 5859221, 5859401, 5859569, 5859751, 5859877, 5860039, 5860213, 5860373]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5857699 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5857699 5860373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5857699) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5860537, 5860717, 5860901, 5861081, 5861249, 5861411, 5861593, 5861777, 5861951, 5862133, 5862313, 5862497, 5862679, 5862847, 5863027, 5863211]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5860373 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5860373 5863211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5860373) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5863379, 5863541, 5863709, 5863889, 5864071, 5864233, 5864413, 5864569, 5864753, 5864933, 5865103, 5865283, 5865467, 5865641, 5865823, 5866001]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5863211 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5863211 5866001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5863211) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5866177, 5866351, 5866519, 5866699, 5866871, 5867033, 5867207, 5867377, 5867557, 5867731, 5867899, 5868073, 5868257, 5868377, 5868557, 5868721]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5866001 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5866001 5868721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5866001) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5868901, 5869079, 5869243, 5869427, 5869609, 5869781, 5869961, 5870143, 5870327, 5870509, 5870693, 5870857, 5871037, 5871211, 5871391, 5871571]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5868721 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5868721 5871571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5868721) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5871743, 5871917, 5872091, 5872261, 5872441, 5872597, 5872739, 5872921, 5873083, 5873267, 5873437, 5873611, 5873767, 5873951, 5874133, 5874301]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5871571 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5871571 5874301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5871571) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5874481, 5874653, 5874833, 5875003, 5875187, 5875369, 5875553, 5875729, 5875913, 5876089, 5876249, 5876401, 5876579, 5876743, 5876911, 5877041]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5874301 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5874301 5877041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5874301) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5877211, 5877371, 5877551, 5877701, 5877881, 5878063, 5878247, 5878421, 5878603, 5878751, 5878927, 5879087, 5879239, 5879413, 5879597, 5879761]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5877041 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5877041 5879761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5877041) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5879869, 5880053, 5880233, 5880409, 5880587, 5880769, 5880947, 5881111, 5881277, 5881459, 5881639, 5881823, 5881999, 5882179, 5882363, 5882537]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5879761 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5879761 5882537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5879761) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5882717, 5882887, 5883029, 5883169, 5883347, 5883509, 5883679, 5883847, 5884027, 5884201, 5884379, 5884559, 5884741, 5884919, 5885093, 5885267]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5882537 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5882537 5885267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5882537) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5885449, 5885623, 5885807, 5885983, 5886157, 5886341, 5886521, 5886701, 5886871, 5887051, 5887229, 5887393, 5887577, 5887757, 5887939, 5888117]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5885267 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5885267 5888117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5885267) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5888287, 5888471, 5888639, 5888741, 5888923, 5889097, 5889277, 5889461, 5889619, 5889787, 5889971, 5890123, 5890307, 5890481, 5890663, 5890813]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5888117 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5888117 5890813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5888117) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5890987, 5891161, 5891323, 5891507, 5891687, 5891867, 5892043, 5892203, 5892379, 5892559, 5892739, 5892881, 5893057, 5893241, 5893423, 5893571]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5890813 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5890813 5893571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5890813) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5893733, 5893907, 5894089, 5894267, 5894443, 5894591, 5894773, 5894957, 5895119, 5895299, 5895479, 5895647, 5895817, 5895971, 5896151, 5896313]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5893571 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5893571 5896313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5893571) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5896493, 5896613, 5896777, 5896951, 5897123, 5897303, 5897477, 5897653, 5897833, 5898001, 5898169, 5898349, 5898533, 5898691, 5898859, 5899043]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5896313 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5896313 5899043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5896313) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5899217, 5899381, 5899549, 5899711, 5899877, 5900047, 5900231, 5900407, 5900579, 5900753, 5900911, 5901083, 5901263, 5901437, 5901619, 5901781]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5899043 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5899043 5901781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5899043) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5901919, 5902093, 5902261, 5902433, 5902613, 5902783, 5902931, 5903099, 5903263, 5903441, 5903621, 5903789, 5903969, 5904149, 5904329, 5904511]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5901781 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5901781 5904511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5901781) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5904683, 5904863, 5905037, 5905217, 5905399, 5905573, 5905727, 5905897, 5906071, 5906237, 5906371, 5906539, 5906723, 5906899, 5907073, 5907227]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5904511 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5904511 5907227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5904511) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5907409, 5907589, 5907773, 5907953, 5908121, 5908303, 5908477, 5908649, 5908807, 5908957, 5909119, 5909303, 5909483, 5909663, 5909843, 5909993]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5907227 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5907227 5909993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5907227) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5910173, 5910353, 5910533, 5910703, 5910857, 5911039, 5911211, 5911361, 5911541, 5911721, 5911901, 5912057, 5912239, 5912393, 5912539, 5912717]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5909993 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5909993 5912717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5909993) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5912899, 5913067, 5913251, 5913431, 5913601, 5913763, 5913937, 5914121, 5914303, 5914483, 5914627, 5914807, 5914991, 5915149, 5915323, 5915501]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5912717 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5912717 5915501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5912717) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5915683, 5915867, 5916047, 5916227, 5916401, 5916583, 5916767, 5916949, 5917127, 5917297, 5917481, 5917661, 5917843, 5918027, 5918207, 5918389]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5915501 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5915501 5918389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5915501) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5918573, 5918753, 5918933, 5919107, 5919289, 5919467, 5919631, 5919787, 5919971, 5920151, 5920319, 5920501, 5920679, 5920853, 5921011, 5921177]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5918389 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5918389 5921177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5918389) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5833001 5838379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5835701) (hi := 5838379) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5838379 5843881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5838379)
    (mid := 5841131) (hi := 5843881) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5843881 5849453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5843881)
    (mid := 5846597) (hi := 5849453) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5849453 5854993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5849453)
    (mid := 5852251) (hi := 5854993) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5854993 5860373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5854993)
    (mid := 5857699) (hi := 5860373) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5860373 5866001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5860373)
    (mid := 5863211) (hi := 5866001) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5866001 5871571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5866001)
    (mid := 5868721) (hi := 5871571) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5871571 5877041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5871571)
    (mid := 5874301) (hi := 5877041) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5877041 5882537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5877041)
    (mid := 5879761) (hi := 5882537) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5882537 5888117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5882537)
    (mid := 5885267) (hi := 5888117) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5888117 5893571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5888117)
    (mid := 5890813) (hi := 5893571) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5893571 5899043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5893571)
    (mid := 5896313) (hi := 5899043) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5899043 5904511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5899043)
    (mid := 5901781) (hi := 5904511) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5904511 5909993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5904511)
    (mid := 5907227) (hi := 5909993) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5909993 5915501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5909993)
    (mid := 5912717) (hi := 5915501) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5915501 5921177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5915501)
    (mid := 5918389) (hi := 5921177) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5833001 5843881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5838379) (hi := 5843881) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5843881 5854993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5843881)
    (mid := 5849453) (hi := 5854993) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5854993 5866001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5854993)
    (mid := 5860373) (hi := 5866001) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5866001 5877041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5866001)
    (mid := 5871571) (hi := 5877041) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5877041 5888117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5877041)
    (mid := 5882537) (hi := 5888117) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5888117 5899043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5888117)
    (mid := 5893571) (hi := 5899043) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5899043 5909993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5899043)
    (mid := 5904511) (hi := 5909993) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5909993 5921177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5909993)
    (mid := 5915501) (hi := 5921177) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5833001 5854993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5843881) (hi := 5854993) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5854993 5877041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5854993)
    (mid := 5866001) (hi := 5877041) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5877041 5899043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5877041)
    (mid := 5888117) (hi := 5899043) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5899043 5921177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5899043)
    (mid := 5909993) (hi := 5921177) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5833001 5877041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5854993) (hi := 5877041) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5877041 5921177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5877041)
    (mid := 5899043) (hi := 5921177) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5833001 5921177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5877041) (hi := 5921177) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5833001 5921177 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block066

#print axioms B699MiddleExtension.PrimorialBlocks.Block066.joined
