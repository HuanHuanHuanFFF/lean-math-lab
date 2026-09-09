import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block165

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14509249, 14509433, 14509567, 14509739, 14509921, 14510101, 14510233, 14510417, 14510599, 14510779, 14510941, 14511113, 14511283, 14511467, 14511641, 14511823]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14509081 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14509081 14511823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14509081) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14511967, 14512139, 14512313, 14512481, 14512661, 14512837, 14513003, 14513183, 14513353, 14513533, 14513711, 14513887, 14514067, 14514223, 14514391, 14514547]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14511823 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14511823 14514547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14511823) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14514701, 14514883, 14515049, 14515213, 14515367, 14515549, 14515733, 14515901, 14516071, 14516251, 14516431, 14516609, 14516767, 14516951, 14517131, 14517287]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14514547 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14514547 14517287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14514547) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14517457, 14517631, 14517809, 14517989, 14518123, 14518211, 14518373, 14518547, 14518729, 14518891, 14519041, 14519221, 14519399, 14519567, 14519741, 14519917]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14517287 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14517287 14519917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14517287) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14520089, 14520263, 14520421, 14520599, 14520763, 14520943, 14521081, 14521253, 14521433, 14521613, 14521789, 14521973, 14522149, 14522309, 14522489, 14522659]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14519917 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14519917 14522659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14519917) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14522803, 14522969, 14523149, 14523323, 14523503, 14523683, 14523857, 14524033, 14524217, 14524397, 14524567, 14524723, 14524901, 14525057, 14525239, 14525417]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14522659 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14522659 14525417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14522659) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14525593, 14525761, 14525923, 14526097, 14526277, 14526451, 14526581, 14526763, 14526947, 14527087, 14527207, 14527391, 14527553, 14527729, 14527889, 14528069]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14525417 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14525417 14528069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14525417) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14528221, 14528401, 14528561, 14528741, 14528923, 14529107, 14529289, 14529467, 14529643, 14529817, 14529971, 14530151, 14530301, 14530469, 14530583, 14530757]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14528069 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14528069 14530757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14528069) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14530907, 14531087, 14531267, 14531443, 14531611, 14531773, 14531899, 14532079, 14532247, 14532407, 14532571, 14532751, 14532923, 14533069, 14533241, 14533417]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14530757 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14530757 14533417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14530757) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14533591, 14533747, 14533927, 14534111, 14534293, 14534477, 14534659, 14534837, 14535013, 14535167, 14535349, 14535511, 14535691, 14535863, 14536013, 14536189]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14533417 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14533417 14536189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14533417) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14536351, 14536507, 14536679, 14536831, 14537011, 14537177, 14537359, 14537539, 14537723, 14537891, 14538053, 14538221, 14538389, 14538551, 14538731, 14538913]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14536189 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14536189 14538913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14536189) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14539079, 14539249, 14539417, 14539601, 14539781, 14539949, 14540101, 14540261, 14540443, 14540621, 14540791, 14540959, 14541143, 14541311, 14541493, 14541661]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14538913 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14538913 14541661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14538913) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14541841, 14542019, 14542189, 14542351, 14542529, 14542711, 14542849, 14543029, 14543203, 14543387, 14543563, 14543747, 14543927, 14544091, 14544251, 14544407]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14541661 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14541661 14544407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14541661) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14544581, 14544749, 14544923, 14545087, 14545253, 14545409, 14545577, 14545759, 14545891, 14546057, 14546239, 14546417, 14546593, 14546743, 14546927, 14547101]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14544407 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14544407 14547101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14544407) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14547283, 14547451, 14547583, 14547751, 14547931, 14548109, 14548273, 14548453, 14548619, 14548789, 14548969, 14549149, 14549333, 14549489, 14549669, 14549833]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14547101 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14547101 14549833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14547101) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14550017, 14550197, 14550379, 14550551, 14550733, 14550911, 14551051, 14551219, 14551393, 14551573, 14551751, 14551919, 14552029, 14552203, 14552371, 14552501]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14549833 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14549833 14552501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14549833) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14552683, 14552861, 14553029, 14553211, 14553379, 14553559, 14553719, 14553863, 14554031, 14554207, 14554387, 14554571, 14554751, 14554933, 14555117, 14555293]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14552501 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14552501 14555293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14552501) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14555473, 14555657, 14555819, 14556001, 14556169, 14556343, 14556481, 14556653, 14556823, 14556991, 14557171, 14557303, 14557481, 14557657, 14557811, 14557979]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14555293 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14555293 14557979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14555293) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14558153, 14558311, 14558491, 14558669, 14558849, 14559029, 14559203, 14559379, 14559557, 14559737, 14559913, 14560097, 14560267, 14560451, 14560613, 14560753]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14557979 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14557979 14560753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14557979) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14560937, 14561119, 14561303, 14561483, 14561663, 14561839, 14562007, 14562181, 14562323, 14562487, 14562671, 14562833, 14563013, 14563193, 14563363, 14563547]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14560753 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14560753 14563547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14560753) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14563697, 14563873, 14564047, 14564197, 14564369, 14564551, 14564731, 14564863, 14565041, 14565217, 14565401, 14565563, 14565731, 14565893, 14566067, 14566247]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14563547 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14563547 14566247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14563547) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14566421, 14566579, 14566733, 14566913, 14567093, 14567269, 14567437, 14567611, 14567783, 14567941, 14568097, 14568263, 14568427, 14568601, 14568769, 14568923]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14566247 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14566247 14568923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14566247) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14569099, 14569279, 14569463, 14569613, 14569781, 14569949, 14570117, 14570291, 14570471, 14570653, 14570797, 14570971, 14571133, 14571301, 14571481, 14571637]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14568923 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14568923 14571637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14568923) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14571793, 14571971, 14572153, 14572331, 14572513, 14572687, 14572871, 14573047, 14573231, 14573407, 14573591, 14573761, 14573941, 14574107, 14574283, 14574451]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14571637 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14571637 14574451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14571637) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14574613, 14574787, 14574943, 14575117, 14575283, 14575397, 14575573, 14575747, 14575877, 14576047, 14576213, 14576383, 14576563, 14576747, 14576921, 14577103]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14574451 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14574451 14577103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14574451) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14577203, 14577383, 14577527, 14577709, 14577887, 14578063, 14578241, 14578409, 14578589, 14578771, 14578951, 14579113, 14579291, 14579449, 14579597, 14579767]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14577103 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14577103 14579767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14577103) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14579941, 14580113, 14580289, 14580463, 14580641, 14580799, 14580977, 14581159, 14581339, 14581487, 14581669, 14581843, 14582017, 14582201, 14582371, 14582543]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14579767 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14579767 14582543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14579767) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14582723, 14582881, 14583061, 14583227, 14583409, 14583589, 14583769, 14583949, 14584127, 14584301, 14584483, 14584667, 14584847, 14585003, 14585149, 14585323]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14582543 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14582543 14585323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14582543) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14585503, 14585663, 14585843, 14586023, 14586199, 14586367, 14586541, 14586701, 14586883, 14587051, 14587217, 14587399, 14587567, 14587747, 14587931, 14588107]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14585323 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14585323 14588107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14585323) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14588269, 14588429, 14588603, 14588779, 14588963, 14589139, 14589307, 14589457, 14589629, 14589793, 14589959, 14590139, 14590307, 14590489, 14590663, 14590843]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14588107 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14588107 14590843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14588107) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14591023, 14591207, 14591363, 14591513, 14591659, 14591813, 14591971, 14592121, 14592301, 14592469, 14592653, 14592827, 14593009, 14593181, 14593363, 14593517]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14590843 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14590843 14593517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14590843) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14593687, 14593861, 14594039, 14594207, 14594389, 14594549, 14594731, 14594821, 14595001, 14595181, 14595359, 14595523, 14595703, 14595887, 14596067, 14596247]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14593517 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14593517 14596247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14593517) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14509081 14514547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14509081)
    (mid := 14511823) (hi := 14514547) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14514547 14519917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14514547)
    (mid := 14517287) (hi := 14519917) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14519917 14525417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14519917)
    (mid := 14522659) (hi := 14525417) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14525417 14530757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14525417)
    (mid := 14528069) (hi := 14530757) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14530757 14536189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14530757)
    (mid := 14533417) (hi := 14536189) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14536189 14541661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14536189)
    (mid := 14538913) (hi := 14541661) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14541661 14547101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14541661)
    (mid := 14544407) (hi := 14547101) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14547101 14552501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14547101)
    (mid := 14549833) (hi := 14552501) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14552501 14557979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14552501)
    (mid := 14555293) (hi := 14557979) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14557979 14563547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14557979)
    (mid := 14560753) (hi := 14563547) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14563547 14568923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14563547)
    (mid := 14566247) (hi := 14568923) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14568923 14574451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14568923)
    (mid := 14571637) (hi := 14574451) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14574451 14579767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14574451)
    (mid := 14577103) (hi := 14579767) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14579767 14585323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14579767)
    (mid := 14582543) (hi := 14585323) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14585323 14590843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14585323)
    (mid := 14588107) (hi := 14590843) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14590843 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14590843)
    (mid := 14593517) (hi := 14596247) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14509081 14519917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14509081)
    (mid := 14514547) (hi := 14519917) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14519917 14530757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14519917)
    (mid := 14525417) (hi := 14530757) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14530757 14541661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14530757)
    (mid := 14536189) (hi := 14541661) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14541661 14552501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14541661)
    (mid := 14547101) (hi := 14552501) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14552501 14563547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14552501)
    (mid := 14557979) (hi := 14563547) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14563547 14574451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14563547)
    (mid := 14568923) (hi := 14574451) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14574451 14585323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14574451)
    (mid := 14579767) (hi := 14585323) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14585323 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14585323)
    (mid := 14590843) (hi := 14596247) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14509081 14530757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14509081)
    (mid := 14519917) (hi := 14530757) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14530757 14552501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14530757)
    (mid := 14541661) (hi := 14552501) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14552501 14574451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14552501)
    (mid := 14563547) (hi := 14574451) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14574451 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14574451)
    (mid := 14585323) (hi := 14596247) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14509081 14552501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14509081)
    (mid := 14530757) (hi := 14552501) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14552501 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14552501)
    (mid := 14574451) (hi := 14596247) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14509081 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14509081)
    (mid := 14552501) (hi := 14596247) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14509081 14596247 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block165

#print axioms B699MiddleExtension.PrimorialBlocks.Block165.joined
