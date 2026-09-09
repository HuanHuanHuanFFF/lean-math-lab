import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block084

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7414801, 7414969, 7415153, 7415333, 7415509, 7415663, 7415839, 7416007, 7416191, 7416371, 7416499, 7416679, 7416847, 7417021, 7417177, 7417357]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7414621 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7414621 7417357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7414621) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7417519, 7417693, 7417877, 7418051, 7418233, 7418387, 7418557, 7418737, 7418899, 7419079, 7419227, 7419407, 7419583, 7419767, 7419931, 7420111]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7417357 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7417357 7420111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7417357) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7420289, 7420463, 7420643, 7420813, 7420969, 7421143, 7421263, 7421437, 7421587, 7421759, 7421923, 7422097, 7422281, 7422449, 7422589, 7422743]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7420111 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7420111 7422743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7420111) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7422913, 7423079, 7423261, 7423417, 7423541, 7423723, 7423903, 7424083, 7424243, 7424419, 7424581, 7424761, 7424933, 7425083, 7425259, 7425443]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7422743 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7422743 7425443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7422743) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7425623, 7425773, 7425931, 7426109, 7426277, 7426457, 7426621, 7426789, 7426963, 7427141, 7427323, 7427503, 7427663, 7427813, 7427977, 7428151]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7425443 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7425443 7428151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7425443) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7428307, 7428469, 7428653, 7428833, 7429013, 7429183, 7429363, 7429547, 7429729, 7429913, 7430069, 7430251, 7430429, 7430611, 7430791, 7430947]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7428151 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7428151 7430947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7428151) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7431119, 7431283, 7431467, 7431649, 7431833, 7432003, 7432181, 7432331, 7432501, 7432651, 7432823, 7432993, 7433171, 7433339, 7433519, 7433689]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7430947 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7430947 7433689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7430947) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7433873, 7434047, 7434223, 7434397, 7434569, 7434737, 7434901, 7435081, 7435247, 7435411, 7435591, 7435763, 7435937, 7436113, 7436287, 7436459]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7433689 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7433689 7436459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7433689) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7436629, 7436783, 7436941, 7437121, 7437301, 7437461, 7437637, 7437821, 7438001, 7438169, 7438349, 7438513, 7438693, 7438841, 7439023, 7439197]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7436459 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7436459 7439197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7436459) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7439371, 7439543, 7439717, 7439867, 7440049, 7440227, 7440409, 7440593, 7440767, 7440947, 7441127, 7441289, 7441471, 7441639, 7441823, 7441999]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7439197 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7439197 7441999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7439197) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7442161, 7442341, 7442521, 7442681, 7442863, 7443047, 7443223, 7443407, 7443587, 7443757, 7443941, 7444109, 7444277, 7444457, 7444639, 7444823]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7441999 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7441999 7444823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7441999) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7445003, 7445173, 7445327, 7445479, 7445653, 7445831, 7446001, 7446167, 7446349, 7446487, 7446643, 7446793, 7446961, 7447133, 7447313, 7447493]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7444823 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7444823 7447493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7444823) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7447669, 7447813, 7447997, 7448179, 7448351, 7448521, 7448699, 7448867, 7449047, 7449229, 7449397, 7449581, 7449749, 7449877, 7450043, 7450213]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7447493 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7447493 7450213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7447493) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7450351, 7450523, 7450699, 7450867, 7451033, 7451209, 7451387, 7451557, 7451723, 7451893, 7452077, 7452223, 7452407, 7452587, 7452751, 7452923]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7450213 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7450213 7452923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7450213) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7453079, 7453253, 7453421, 7453603, 7453753, 7453933, 7454113, 7454297, 7454471, 7454651, 7454809, 7454983, 7455121, 7455269, 7455443, 7455601]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7452923 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7452923 7455601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7452923) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7455769, 7455949, 7456121, 7456291, 7456459, 7456639, 7456811, 7456963, 7457141, 7457323, 7457503, 7457687, 7457867, 7458047, 7458229, 7458403]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7455601 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7455601 7458403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7455601) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7458587, 7458707, 7458889, 7459069, 7459247, 7459421, 7459603, 7459721, 7459897, 7460077, 7460261, 7460437, 7460617, 7460779, 7460951, 7461127]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7458403 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7458403 7461127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7458403) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7461299, 7461479, 7461653, 7461809, 7461983, 7462159, 7462333, 7462513, 7462691, 7462853, 7463021, 7463191, 7463363, 7463509, 7463693, 7463873]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7461127 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7461127 7463873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7461127) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7464019, 7464199, 7464371, 7464553, 7464731, 7464913, 7465097, 7465243, 7465399, 7465583, 7465763, 7465937, 7466101, 7466243, 7466423, 7466593]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7463873 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7463873 7466593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7463873) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7466773, 7466917, 7467073, 7467253, 7467431, 7467611, 7467793, 7467959, 7468129, 7468313, 7468459, 7468619, 7468801, 7468973, 7469123, 7469303]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7466593 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7466593 7469303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7466593) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7469461, 7469599, 7469773, 7469951, 7470107, 7470283, 7470467, 7470647, 7470823, 7470989, 7471171, 7471349, 7471511, 7471691, 7471873, 7472051]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7469303 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7469303 7472051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7469303) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7472221, 7472383, 7472533, 7472693, 7472873, 7473041, 7473211, 7473391, 7473553, 7473733, 7473913, 7474097, 7474273, 7474433, 7474603, 7474783]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7472051 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7472051 7474783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7472051) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7474967, 7475141, 7475317, 7475473, 7475651, 7475827, 7475999, 7476167, 7476349, 7476529, 7476697, 7476877, 7477037, 7477193, 7477361, 7477543]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7474783 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7474783 7477543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7474783) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7477711, 7477889, 7478069, 7478209, 7478389, 7478573, 7478753, 7478893, 7479061, 7479233, 7479397, 7479557, 7479737, 7479911, 7480093, 7480271]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7477543 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7477543 7480271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7477543) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7480441, 7480619, 7480793, 7480937, 7481107, 7481291, 7481407, 7481587, 7481759, 7481939, 7482121, 7482287, 7482469, 7482653, 7482829, 7483013]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7480271 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7480271 7483013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7480271) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7483171, 7483339, 7483477, 7483661, 7483843, 7484023, 7484189, 7484371, 7484551, 7484731, 7484899, 7485077, 7485251, 7485427, 7485571, 7485749]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7483013 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7483013 7485749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7483013) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7485901, 7486079, 7486261, 7486441, 7486607, 7486763, 7486933, 7487113, 7487287, 7487453, 7487621, 7487797, 7487969, 7488137, 7488311, 7488479]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7485749 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7485749 7488479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7485749) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7488659, 7488829, 7488991, 7489171, 7489351, 7489529, 7489711, 7489871, 7490051, 7490233, 7490411, 7490573, 7490737, 7490869, 7491049, 7491229]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7488479 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7488479 7491229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7488479) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7491403, 7491559, 7491733, 7491907, 7492057, 7492157, 7492313, 7492487, 7492657, 7492841, 7492943, 7493117, 7493293, 7493471, 7493639, 7493813]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7491229 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7491229 7493813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7491229) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7493947, 7494131, 7494287, 7494469, 7494631, 7494763, 7494919, 7495097, 7495247, 7495429, 7495597, 7495777, 7495931, 7496087, 7496249, 7496407]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7493813 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7493813 7496407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7493813) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7496581, 7496743, 7496917, 7497101, 7497263, 7497439, 7497601, 7497767, 7497943, 7498111, 7498291, 7498471, 7498643, 7498789, 7498961, 7499137]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7496407 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7496407 7499137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7496407) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7499321, 7499491, 7499663, 7499819, 7499981, 7500127, 7500293, 7500463, 7500641, 7500817, 7500979, 7501159, 7501339, 7501513, 7501693, 7501873]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7499137 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7499137 7501873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7499137) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7414621 7420111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7417357) (hi := 7420111) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7420111 7425443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7420111)
    (mid := 7422743) (hi := 7425443) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7425443 7430947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7425443)
    (mid := 7428151) (hi := 7430947) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7430947 7436459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7430947)
    (mid := 7433689) (hi := 7436459) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7436459 7441999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7436459)
    (mid := 7439197) (hi := 7441999) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7441999 7447493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7441999)
    (mid := 7444823) (hi := 7447493) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7447493 7452923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7447493)
    (mid := 7450213) (hi := 7452923) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7452923 7458403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7452923)
    (mid := 7455601) (hi := 7458403) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7458403 7463873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7458403)
    (mid := 7461127) (hi := 7463873) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7463873 7469303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7463873)
    (mid := 7466593) (hi := 7469303) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7469303 7474783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7469303)
    (mid := 7472051) (hi := 7474783) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7474783 7480271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7474783)
    (mid := 7477543) (hi := 7480271) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7480271 7485749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7480271)
    (mid := 7483013) (hi := 7485749) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7485749 7491229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7485749)
    (mid := 7488479) (hi := 7491229) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7491229 7496407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7491229)
    (mid := 7493813) (hi := 7496407) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7496407 7501873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7496407)
    (mid := 7499137) (hi := 7501873) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7414621 7425443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7420111) (hi := 7425443) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7425443 7436459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7425443)
    (mid := 7430947) (hi := 7436459) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7436459 7447493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7436459)
    (mid := 7441999) (hi := 7447493) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7447493 7458403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7447493)
    (mid := 7452923) (hi := 7458403) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7458403 7469303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7458403)
    (mid := 7463873) (hi := 7469303) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7469303 7480271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7469303)
    (mid := 7474783) (hi := 7480271) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7480271 7491229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7480271)
    (mid := 7485749) (hi := 7491229) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7491229 7501873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7491229)
    (mid := 7496407) (hi := 7501873) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7414621 7436459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7425443) (hi := 7436459) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7436459 7458403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7436459)
    (mid := 7447493) (hi := 7458403) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7458403 7480271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7458403)
    (mid := 7469303) (hi := 7480271) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7480271 7501873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7480271)
    (mid := 7491229) (hi := 7501873) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7414621 7458403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7436459) (hi := 7458403) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7458403 7501873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7458403)
    (mid := 7480271) (hi := 7501873) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7414621 7501873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7458403) (hi := 7501873) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7414621 7501873 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block084

#print axioms B699MiddleExtension.PrimorialBlocks.Block084.joined
