import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block077

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6800089, 6800257, 6800441, 6800623, 6800791, 6800929, 6801101, 6801281, 6801433, 6801607, 6801787, 6801961, 6802141, 6802321, 6802493, 6802673]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6799907 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6799907 6802673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6799907) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6802837, 6803011, 6803177, 6803351, 6803521, 6803701, 6803869, 6804047, 6804229, 6804409, 6804583, 6804767, 6804949, 6805121, 6805289, 6805471]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6802673 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6802673 6805471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6802673) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6805649, 6805829, 6805991, 6806147, 6806309, 6806479, 6806651, 6806831, 6807013, 6807181, 6807349, 6807523, 6807707, 6807887, 6808057, 6808237]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6805471 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6805471 6808237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6805471) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6808421, 6808603, 6808787, 6808969, 6809149, 6809323, 6809507, 6809687, 6809851, 6810029, 6810203, 6810373, 6810541, 6810719, 6810893, 6811073]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6808237 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6808237 6811073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6808237) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6811249, 6811423, 6811603, 6811751, 6811921, 6812077, 6812233, 6812417, 6812581, 6812759, 6812933, 6813113, 6813293, 6813473, 6813649, 6813817]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6811073 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6811073 6813817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6811073) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6814001, 6814183, 6814363, 6814547, 6814729, 6814889, 6815069, 6815233, 6815399, 6815573, 6815749, 6815923, 6816107, 6816281, 6816461, 6816631]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6813817 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6813817 6816631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6813817) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6816787, 6816967, 6817121, 6817301, 6817483, 6817661, 6817843, 6818011, 6818191, 6818363, 6818527, 6818677, 6818849, 6819019, 6819203, 6819383]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6816631 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6816631 6819383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6816631) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6819557, 6819719, 6819893, 6820067, 6820241, 6820421, 6820579, 6820741, 6820921, 6821099, 6821281, 6821461, 6821629, 6821809, 6821963, 6822143]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6819383 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6819383 6822143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6819383) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6822323, 6822493, 6822659, 6822839, 6823021, 6823199, 6823373, 6823549, 6823721, 6823891, 6824039, 6824219, 6824393, 6824569, 6824749, 6824927]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6822143 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6822143 6824927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6822143) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6825101, 6825257, 6825439, 6825613, 6825787, 6825971, 6826133, 6826307, 6826481, 6826657, 6826829, 6827011, 6827189, 6827363, 6827543, 6827699]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6824927 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6824927 6827699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6824927) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6827881, 6828061, 6828197, 6828377, 6828557, 6828739, 6828911, 6829093, 6829271, 6829453, 6829637, 6829817, 6829997, 6830171, 6830347, 6830531]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6827699 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6827699 6830531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6827699) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6830699, 6830869, 6831047, 6831221, 6831401, 6831581, 6831761, 6831941, 6832103, 6832277, 6832451, 6832627, 6832811, 6832993, 6833147, 6833317]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6830531 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6830531 6833317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6830531) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6833479, 6833663, 6833843, 6834007, 6834173, 6834313, 6834497, 6834679, 6834853, 6835033, 6835217, 6835399, 6835583, 6835729, 6835901, 6836051]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6833317 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6833317 6836051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6833317) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6836201, 6836369, 6836549, 6836729, 6836867, 6837041, 6837223, 6837401, 6837581, 6837751, 6837931, 6838099, 6838261, 6838441, 6838621, 6838801]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6836051 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6836051 6838801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6836051) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6838963, 6839123, 6839281, 6839461, 6839629, 6839803, 6839983, 6840167, 6840349, 6840527, 6840661, 6840811, 6840989, 6841147, 6841319, 6841453]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6838801 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6838801 6841453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6838801) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6841609, 6841777, 6841951, 6842131, 6842281, 6842453, 6842629, 6842813, 6842981, 6843143, 6843323, 6843497, 6843671, 6843841, 6843997, 6844163]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6841453 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6841453 6844163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6841453) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6844339, 6844517, 6844687, 6844861, 6845029, 6845207, 6845383, 6845563, 6845723, 6845897, 6846079, 6846263, 6846439, 6846611, 6846787, 6846967]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6844163 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6844163 6846967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6844163) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6847147, 6847319, 6847499, 6847681, 6847843, 6848027, 6848197, 6848377, 6848537, 6848717, 6848869, 6848969, 6849151, 6849313, 6849497, 6849677]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6846967 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6846967 6849677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6846967) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6849851, 6850007, 6850189, 6850369, 6850553, 6850709, 6850853, 6851023, 6851189, 6851347, 6851513, 6851687, 6851863, 6852047, 6852227, 6852401]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6849677 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6849677 6852401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6849677) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6852569, 6852743, 6852917, 6853097, 6853279, 6853463, 6853643, 6853823, 6853999, 6854173, 6854347, 6854531, 6854711, 6854891, 6855071, 6855253]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6852401 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6852401 6855253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6852401) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6855419, 6855593, 6855769, 6855931, 6856111, 6856279, 6856463, 6856643, 6856819, 6857003, 6857177, 6857359, 6857533, 6857713, 6857881, 6858043]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6855253 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6855253 6858043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6855253) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6858179, 6858353, 6858517, 6858697, 6858869, 6859033, 6859217, 6859387, 6859571, 6859739, 6859901, 6860071, 6860251, 6860419, 6860603, 6860783]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6858043 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6858043 6860783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6858043) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6860963, 6861133, 6861311, 6861493, 6861629, 6861809, 6861977, 6862159, 6862343, 6862507, 6862643, 6862783, 6862963, 6863147, 6863327, 6863509]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6860783 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6860783 6863509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6860783) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6863669, 6863849, 6864031, 6864211, 6864383, 6864553, 6864713, 6864881, 6865057, 6865231, 6865393, 6865571, 6865717, 6865867, 6866051, 6866191]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6863509 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6863509 6866191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6863509) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6866357, 6866513, 6866693, 6866863, 6867043, 6867221, 6867389, 6867571, 6867743, 6867923, 6868093, 6868247, 6868427, 6868597, 6868781, 6868921]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6866191 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6866191 6868921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6866191) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6869101, 6869273, 6869441, 6869623, 6869803, 6869987, 6870167, 6870317, 6870481, 6870653, 6870817, 6871001, 6871177, 6871351, 6871511, 6871681]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6868921 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6868921 6871681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6868921) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6871849, 6872023, 6872207, 6872381, 6872521, 6872693, 6872869, 6873043, 6873211, 6873371, 6873533, 6873707, 6873871, 6874039, 6874223, 6874397]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6871681 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6871681 6874397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6871681) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6874573, 6874753, 6874927, 6875101, 6875279, 6875461, 6875623, 6875807, 6875989, 6876169, 6876349, 6876533, 6876677, 6876853, 6876983, 6877109]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6874397 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6874397 6877109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6874397) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6877271, 6877447, 6877613, 6877789, 6877963, 6878143, 6878321, 6878491, 6878671, 6878849, 6879023, 6879193, 6879371, 6879541, 6879683, 6879857]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6877109 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6877109 6879857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6877109) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6880021, 6880193, 6880369, 6880547, 6880721, 6880891, 6881057, 6881239, 6881417, 6881579, 6881759, 6881939, 6882097, 6882191, 6882373, 6882553]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6879857 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6879857 6882553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6879857) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6882697, 6882859, 6883027, 6883199, 6883381, 6883561, 6883733, 6883897, 6884081, 6884243, 6884401, 6884539, 6884699, 6884869, 6885041, 6885217]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6882553 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6882553 6885217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6882553) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6885401, 6885583, 6885761, 6885941, 6886109, 6886291, 6886471, 6886643, 6886823, 6886981, 6887161, 6887341, 6887501, 6887681, 6887863, 6888019]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6885217 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6885217 6888019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6885217) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6799907 6805471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6799907)
    (mid := 6802673) (hi := 6805471) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6805471 6811073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6805471)
    (mid := 6808237) (hi := 6811073) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6811073 6816631 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6811073)
    (mid := 6813817) (hi := 6816631) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6816631 6822143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6816631)
    (mid := 6819383) (hi := 6822143) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6822143 6827699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6822143)
    (mid := 6824927) (hi := 6827699) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6827699 6833317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6827699)
    (mid := 6830531) (hi := 6833317) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6833317 6838801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6833317)
    (mid := 6836051) (hi := 6838801) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6838801 6844163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6838801)
    (mid := 6841453) (hi := 6844163) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6844163 6849677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6844163)
    (mid := 6846967) (hi := 6849677) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6849677 6855253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6849677)
    (mid := 6852401) (hi := 6855253) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6855253 6860783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6855253)
    (mid := 6858043) (hi := 6860783) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6860783 6866191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6860783)
    (mid := 6863509) (hi := 6866191) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6866191 6871681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6866191)
    (mid := 6868921) (hi := 6871681) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6871681 6877109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6871681)
    (mid := 6874397) (hi := 6877109) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6877109 6882553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6877109)
    (mid := 6879857) (hi := 6882553) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6882553 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6882553)
    (mid := 6885217) (hi := 6888019) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6799907 6811073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6799907)
    (mid := 6805471) (hi := 6811073) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6811073 6822143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6811073)
    (mid := 6816631) (hi := 6822143) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6822143 6833317 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6822143)
    (mid := 6827699) (hi := 6833317) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6833317 6844163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6833317)
    (mid := 6838801) (hi := 6844163) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6844163 6855253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6844163)
    (mid := 6849677) (hi := 6855253) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6855253 6866191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6855253)
    (mid := 6860783) (hi := 6866191) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6866191 6877109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6866191)
    (mid := 6871681) (hi := 6877109) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6877109 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6877109)
    (mid := 6882553) (hi := 6888019) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6799907 6822143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6799907)
    (mid := 6811073) (hi := 6822143) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6822143 6844163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6822143)
    (mid := 6833317) (hi := 6844163) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6844163 6866191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6844163)
    (mid := 6855253) (hi := 6866191) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6866191 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6866191)
    (mid := 6877109) (hi := 6888019) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6799907 6844163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6799907)
    (mid := 6822143) (hi := 6844163) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6844163 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6844163)
    (mid := 6866191) (hi := 6888019) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6799907 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6799907)
    (mid := 6844163) (hi := 6888019) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6799907 6888019 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block077

#print axioms B699MiddleExtension.PrimorialBlocks.Block077.joined
