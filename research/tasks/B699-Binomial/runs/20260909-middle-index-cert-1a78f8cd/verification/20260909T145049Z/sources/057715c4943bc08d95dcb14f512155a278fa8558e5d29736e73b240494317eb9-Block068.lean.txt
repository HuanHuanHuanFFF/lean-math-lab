import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block068

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6009343, 6009499, 6009683, 6009863, 6010033, 6010211, 6010393, 6010573, 6010729, 6010903, 6011077, 6011233, 6011417, 6011597, 6011779, 6011933]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6009167 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6009167 6011933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6009167) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6012103, 6012283, 6012467, 6012619, 6012803, 6012899, 6013081, 6013261, 6013409, 6013591, 6013753, 6013927, 6014111, 6014287, 6014467, 6014647]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6011933 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6011933 6014647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6011933) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6014807, 6014971, 6015131, 6015311, 6015481, 6015641, 6015803, 6015983, 6016123, 6016303, 6016457, 6016609, 6016789, 6016973, 6017153, 6017309]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6014647 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6014647 6017309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6014647) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6017491, 6017657, 6017831, 6017989, 6018143, 6018317, 6018499, 6018673, 6018853, 6019021, 6019201, 6019381, 6019553, 6019697, 6019861, 6020039]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6017309 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6017309 6020039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6017309) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6020221, 6020401, 6020579, 6020759, 6020933, 6021109, 6021289, 6021467, 6021649, 6021833, 6021997, 6022171, 6022321, 6022501, 6022663, 6022847]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6020039 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6020039 6022847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6020039) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6023029, 6023203, 6023383, 6023557, 6023713, 6023881, 6024049, 6024209, 6024391, 6024569, 6024737, 6024917, 6025099, 6025249, 6025433, 6025597]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6022847 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6022847 6025597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6022847) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6025781, 6025961, 6026123, 6026297, 6026453, 6026627, 6026753, 6026929, 6027101, 6027283, 6027443, 6027613, 6027773, 6027949, 6028129, 6028313]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6025597 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6025597 6028313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6025597) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6028493, 6028667, 6028837, 6029021, 6029183, 6029363, 6029521, 6029689, 6029861, 6030043, 6030197, 6030379, 6030539, 6030721, 6030901, 6031063]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6028313 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6028313 6031063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6028313) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6031247, 6031429, 6031603, 6031757, 6031937, 6032111, 6032293, 6032459, 6032641, 6032821, 6032963, 6033143, 6033319, 6033493, 6033673, 6033857]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6031063 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6031063 6033857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6031063) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6034037, 6034213, 6034397, 6034549, 6034727, 6034883, 6035023, 6035207, 6035377, 6035539, 6035723, 6035899, 6036073, 6036221, 6036397, 6036577]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6033857 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6033857 6036577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6033857) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6036757, 6036941, 6037111, 6037277, 6037441, 6037621, 6037793, 6037957, 6038129, 6038311, 6038477, 6038657, 6038819, 6039001, 6039157, 6039289]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6036577 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6036577 6039289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6036577) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6039463, 6039601, 6039779, 6039959, 6040141, 6040313, 6040493, 6040673, 6040843, 6041023, 6041207, 6041383, 6041551, 6041731, 6041911, 6042079]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6039289 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6039289 6042079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6039289) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6042263, 6042409, 6042577, 6042749, 6042929, 6043111, 6043267, 6043439, 6043621, 6043801, 6043981, 6044149, 6044321, 6044497, 6044677, 6044849]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6042079 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6042079 6044849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6042079) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6045019, 6045191, 6045373, 6045547, 6045731, 6045887, 6046069, 6046253, 6046387, 6046561, 6046727, 6046889, 6047071, 6047231, 6047369, 6047549]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6044849 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6044849 6047549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6044849) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6047731, 6047897, 6048071, 6048247, 6048431, 6048613, 6048773, 6048949, 6049133, 6049259, 6049441, 6049613, 6049781, 6049963, 6050141, 6050293]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6047549 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6047549 6050293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6047549) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6050477, 6050641, 6050801, 6050977, 6051161, 6051341, 6051523, 6051679, 6051821, 6052003, 6052181, 6052351, 6052531, 6052691, 6052873, 6053053]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6050293 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6050293 6053053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6050293) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6053231, 6053407, 6053563, 6053743, 6053923, 6054107, 6054289, 6054463, 6054637, 6054821, 6055001, 6055169, 6055337, 6055513, 6055697, 6055873]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6053053 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6053053 6055873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6053053) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6056053, 6056221, 6056399, 6056581, 6056753, 6056933, 6057113, 6057277, 6057461, 6057643, 6057787, 6057937, 6058109, 6058289, 6058469, 6058649]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6055873 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6055873 6058649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6055873) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6058831, 6059003, 6059171, 6059341, 6059519, 6059693, 6059863, 6060037, 6060203, 6060371, 6060547, 6060689, 6060869, 6061043, 6061217, 6061379]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6058649 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6058649 6061379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6058649) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6061553, 6061729, 6061897, 6062053, 6062213, 6062393, 6062543, 6062717, 6062891, 6062993, 6063163, 6063347, 6063511, 6063689, 6063839, 6064013]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6061379 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6061379 6064013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6061379) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6064159, 6064339, 6064523, 6064703, 6064879, 6065053, 6065233, 6065407, 6065573, 6065747, 6065929, 6066101, 6066271, 6066449, 6066629, 6066799]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6064013 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6064013 6066799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6064013) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6066971, 6067153, 6067333, 6067511, 6067693, 6067849, 6068009, 6068189, 6068351, 6068519, 6068693, 6068873, 6069047, 6069199, 6069367, 6069551]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6066799 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6066799 6069551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6066799) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6069727, 6069871, 6070027, 6070199, 6070373, 6070543, 6070723, 6070907, 6071081, 6071251, 6071419, 6071591, 6071761, 6071927, 6072109, 6072293]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6069551 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6069551 6072293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6069551) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6072467, 6072643, 6072821, 6073003, 6073183, 6073339, 6073523, 6073693, 6073877, 6074041, 6074209, 6074381, 6074561, 6074741, 6074923, 6075107]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6072293 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6072293 6075107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6072293) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6075281, 6075457, 6075637, 6075809, 6075959, 6076141, 6076321, 6076501, 6076673, 6076849, 6076981, 6077119, 6077299, 6077459, 6077641, 6077821]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6075107 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6075107 6077821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6075107) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6077999, 6078169, 6078353, 6078529, 6078713, 6078889, 6079043, 6079219, 6079391, 6079571, 6079747, 6079907, 6080069, 6080231, 6080413, 6080597]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6077821 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6077821 6080597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6077821) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6080771, 6080941, 6081113, 6081289, 6081473, 6081629, 6081811, 6081989, 6082151, 6082313, 6082477, 6082639, 6082819, 6082961, 6083141, 6083321]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6080597 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6080597 6083321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6080597) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6083491, 6083669, 6083849, 6084019, 6084193, 6084367, 6084509, 6084679, 6084853, 6084977, 6085159, 6085333, 6085441, 6085601, 6085769, 6085943]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6083321 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6083321 6085943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6083321) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6086123, 6086299, 6086471, 6086623, 6086807, 6086989, 6087167, 6087349, 6087533, 6087707, 6087889, 6088067, 6088249, 6088429, 6088613, 6088793]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6085943 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6085943 6088793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6085943) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6088967, 6089147, 6089309, 6089491, 6089659, 6089833, 6090011, 6090173, 6090349, 6090529, 6090701, 6090881, 6091031, 6091213, 6091391, 6091541]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6088793 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6088793 6091541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6088793) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6091703, 6091879, 6092057, 6092237, 6092371, 6092533, 6092701, 6092843, 6093011, 6093193, 6093371, 6093541, 6093721, 6093881, 6094043, 6094223]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6091541 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6091541 6094223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6091541) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6094397, 6094579, 6094757, 6094927, 6095093, 6095263, 6095431, 6095611, 6095777, 6095959, 6096137, 6096317, 6096499, 6096683, 6096859, 6097031]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6094223 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6094223 6097031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6094223) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6009167 6014647 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6011933) (hi := 6014647) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6014647 6020039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6014647)
    (mid := 6017309) (hi := 6020039) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6020039 6025597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6020039)
    (mid := 6022847) (hi := 6025597) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6025597 6031063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6025597)
    (mid := 6028313) (hi := 6031063) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6031063 6036577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6031063)
    (mid := 6033857) (hi := 6036577) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6036577 6042079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6036577)
    (mid := 6039289) (hi := 6042079) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6042079 6047549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6042079)
    (mid := 6044849) (hi := 6047549) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6047549 6053053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6047549)
    (mid := 6050293) (hi := 6053053) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6053053 6058649 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6053053)
    (mid := 6055873) (hi := 6058649) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6058649 6064013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6058649)
    (mid := 6061379) (hi := 6064013) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6064013 6069551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6064013)
    (mid := 6066799) (hi := 6069551) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6069551 6075107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6069551)
    (mid := 6072293) (hi := 6075107) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6075107 6080597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6075107)
    (mid := 6077821) (hi := 6080597) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6080597 6085943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6080597)
    (mid := 6083321) (hi := 6085943) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6085943 6091541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6085943)
    (mid := 6088793) (hi := 6091541) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6091541 6097031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6091541)
    (mid := 6094223) (hi := 6097031) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6009167 6020039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6014647) (hi := 6020039) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6020039 6031063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6020039)
    (mid := 6025597) (hi := 6031063) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6031063 6042079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6031063)
    (mid := 6036577) (hi := 6042079) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6042079 6053053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6042079)
    (mid := 6047549) (hi := 6053053) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6053053 6064013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6053053)
    (mid := 6058649) (hi := 6064013) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6064013 6075107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6064013)
    (mid := 6069551) (hi := 6075107) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6075107 6085943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6075107)
    (mid := 6080597) (hi := 6085943) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6085943 6097031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6085943)
    (mid := 6091541) (hi := 6097031) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6009167 6031063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6020039) (hi := 6031063) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6031063 6053053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6031063)
    (mid := 6042079) (hi := 6053053) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6053053 6075107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6053053)
    (mid := 6064013) (hi := 6075107) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6075107 6097031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6075107)
    (mid := 6085943) (hi := 6097031) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6009167 6053053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6031063) (hi := 6053053) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6053053 6097031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6053053)
    (mid := 6075107) (hi := 6097031) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6009167 6097031 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6053053) (hi := 6097031) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6009167 6097031 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block068

#print axioms B699MiddleExtension.PrimorialBlocks.Block068.joined
