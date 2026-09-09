import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block222

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19487603, 19487777, 19487959, 19488143, 19488311, 19488473, 19488643, 19488827, 19489009, 19489181, 19489357, 19489541, 19489709, 19489889, 19490063, 19490239]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19487431 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19487431 19490239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19487431) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19490417, 19490543, 19490701, 19490873, 19491049, 19491233, 19491413, 19491583, 19491751, 19491931, 19492111, 19492289, 19492469, 19492637, 19492819, 19492987]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19490239 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19490239 19492987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19490239) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19493161, 19493317, 19493497, 19493681, 19493839, 19494017, 19494199, 19494337, 19494499, 19494677, 19494841, 19495013, 19495181, 19495339, 19495523, 19495703]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19492987 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19492987 19495703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19492987) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19495873, 19496039, 19496201, 19496383, 19496563, 19496699, 19496879, 19497061, 19497229, 19497403, 19497563, 19497739, 19497917, 19498097, 19498253, 19498429]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19495703 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19495703 19498429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19495703) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19498607, 19498789, 19498951, 19499113, 19499297, 19499429, 19499603, 19499759, 19499923, 19500101, 19500277, 19500451, 19500623, 19500799, 19500983, 19501133]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19498429 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19498429 19501133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19498429) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19501301, 19501481, 19501649, 19501829, 19502011, 19502173, 19502323, 19502507, 19502677, 19502831, 19503013, 19503179, 19503349, 19503521, 19503683, 19503857]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19501133 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19501133 19503857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19501133) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19504021, 19504187, 19504369, 19504531, 19504711, 19504879, 19505033, 19505207, 19505377, 19505557, 19505737, 19505891, 19506073, 19506233, 19506413, 19506541]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19503857 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19503857 19506541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19503857) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19506709, 19506889, 19507049, 19507231, 19507409, 19507577, 19507757, 19507931, 19508113, 19508297, 19508479, 19508617, 19508791, 19508969, 19509151, 19509311]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19506541 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19506541 19509311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19506541) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19509493, 19509661, 19509839, 19510013, 19510193, 19510369, 19510553, 19510703, 19510859, 19511027, 19511209, 19511389, 19511549, 19511719, 19511861, 19512043]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19509311 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19509311 19512043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19509311) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19512197, 19512377, 19512557, 19512721, 19512887, 19513031, 19513211, 19513387, 19513561, 19513733, 19513877, 19514057, 19514179, 19514359, 19514543, 19514723]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19512043 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19512043 19514723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19512043) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19514897, 19515053, 19515233, 19515407, 19515589, 19515773, 19515953, 19516127, 19516309, 19516457, 19516633, 19516817, 19516999, 19517177, 19517359, 19517497]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19514723 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19514723 19517497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19514723) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19517677, 19517851, 19518017, 19518199, 19518361, 19518511, 19518683, 19518847, 19519021, 19519187, 19519363, 19519541, 19519699, 19519883, 19520057, 19520231]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19517497 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19517497 19520231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19517497) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19520407, 19520561, 19520723, 19520881, 19521001, 19521169, 19521353, 19521529, 19521713, 19521877, 19522057, 19522241, 19522397, 19522577, 19522759, 19522933]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19520231 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19520231 19522933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19520231) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19523117, 19523267, 19523423, 19523593, 19523761, 19523929, 19524101, 19524283, 19524467, 19524601, 19524779, 19524961, 19525127, 19525309, 19525487, 19525669]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19522933 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19522933 19525669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19522933) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19525853, 19526033, 19526203, 19526371, 19526531, 19526707, 19526879, 19527019, 19527199, 19527377, 19527553, 19527733, 19527913, 19528073, 19528241, 19528417]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19525669 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19525669 19528417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19525669) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19528589, 19528739, 19528921, 19529077, 19529249, 19529431, 19529603, 19529779, 19529953, 19530131, 19530307, 19530479, 19530661, 19530827, 19531003, 19531157]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19528417 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19528417 19531157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19528417) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19531339, 19531517, 19531697, 19531879, 19532053, 19532237, 19532417, 19532561, 19532731, 19532899, 19533079, 19533263, 19533439, 19533611, 19533793, 19533977]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19531157 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19531157 19533977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19531157) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19534129, 19534283, 19534441, 19534621, 19534799, 19534973, 19535137, 19535317, 19535501, 19535683, 19535861, 19536031, 19536211, 19536379, 19536557, 19536739]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19533977 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19533977 19536739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19533977) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19536919, 19537103, 19537277, 19537417, 19537597, 19537747, 19537919, 19538089, 19538273, 19538443, 19538621, 19538789, 19538963, 19539101, 19539281, 19539439]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19536739 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19536739 19539439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19536739) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19539617, 19539799, 19539941, 19540121, 19540291, 19540471, 19540649, 19540817, 19540993, 19541161, 19541321, 19541441, 19541623, 19541791, 19541941, 19542119]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19539439 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19539439 19542119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19539439) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19542301, 19542473, 19542619, 19542797, 19542947, 19543127, 19543309, 19543481, 19543663, 19543847, 19544023, 19544201, 19544381, 19544537, 19544699, 19544881]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19542119 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19542119 19544881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19542119) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19545061, 19545203, 19545353, 19545523, 19545707, 19545887, 19546069, 19546199, 19546369, 19546547, 19546727, 19546907, 19547071, 19547249, 19547419, 19547597]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19544881 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19544881 19547597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19544881) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19547777, 19547959, 19548107, 19548289, 19548461, 19548637, 19548811, 19548979, 19549139, 19549319, 19549487, 19549657, 19549837, 19550009, 19550191, 19550369]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19547597 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19547597 19550369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19547597) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19550551, 19550723, 19550849, 19551031, 19551179, 19551349, 19551533, 19551709, 19551877, 19552019, 19552189, 19552361, 19552493, 19552657, 19552807, 19552963]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19550369 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19550369 19552963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19550369) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19553129, 19553293, 19553477, 19553647, 19553819, 19553987, 19554137, 19554319, 19554503, 19554683, 19554841, 19555007, 19555189, 19555343, 19555507, 19555663]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19552963 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19552963 19555663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19552963) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19555829, 19555981, 19556153, 19556333, 19556501, 19556659, 19556839, 19557017, 19557193, 19557313, 19557491, 19557653, 19557833, 19558009, 19558193, 19558351]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19555663 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19555663 19558351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19555663) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19558529, 19558711, 19558843, 19558997, 19559179, 19559363, 19559513, 19559681, 19559831, 19560011, 19560133, 19560311, 19560487, 19560647, 19560803, 19560979]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19558351 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19558351 19560979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19558351) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19561121, 19561303, 19561481, 19561649, 19561831, 19562009, 19562177, 19562341, 19562509, 19562681, 19562831, 19562981, 19563149, 19563329, 19563499, 19563659]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19560979 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19560979 19563659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19560979) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19563829, 19563997, 19564177, 19564351, 19564529, 19564687, 19564861, 19565023, 19565197, 19565369, 19565551, 19565729, 19565911, 19566091, 19566227, 19566367]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19563659 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19563659 19566367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19563659) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19566551, 19566727, 19566907, 19567081, 19567243, 19567423, 19567607, 19567771, 19567937, 19568113, 19568293, 19568467, 19568641, 19568797, 19568981, 19569163]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19566367 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19566367 19569163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19566367) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19569331, 19569509, 19569673, 19569857, 19570027, 19570211, 19570391, 19570567, 19570751, 19570933, 19571117, 19571291, 19571443, 19571627, 19571809, 19571987]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19569163 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19569163 19571987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19569163) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19572169, 19572331, 19572503, 19572673, 19572857, 19572991, 19573163, 19573343, 19573507, 19573669, 19573847, 19574011, 19574189, 19574353, 19574509, 19574683]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19571987 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19571987 19574683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19571987) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19487431 19492987 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19490239) (hi := 19492987) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19492987 19498429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19492987)
    (mid := 19495703) (hi := 19498429) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19498429 19503857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19498429)
    (mid := 19501133) (hi := 19503857) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19503857 19509311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19503857)
    (mid := 19506541) (hi := 19509311) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19509311 19514723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19509311)
    (mid := 19512043) (hi := 19514723) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19514723 19520231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19514723)
    (mid := 19517497) (hi := 19520231) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19520231 19525669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19520231)
    (mid := 19522933) (hi := 19525669) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19525669 19531157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19525669)
    (mid := 19528417) (hi := 19531157) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19531157 19536739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19531157)
    (mid := 19533977) (hi := 19536739) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19536739 19542119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19536739)
    (mid := 19539439) (hi := 19542119) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19542119 19547597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19542119)
    (mid := 19544881) (hi := 19547597) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19547597 19552963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19547597)
    (mid := 19550369) (hi := 19552963) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19552963 19558351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19552963)
    (mid := 19555663) (hi := 19558351) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19558351 19563659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19558351)
    (mid := 19560979) (hi := 19563659) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19563659 19569163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19563659)
    (mid := 19566367) (hi := 19569163) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19569163 19574683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19569163)
    (mid := 19571987) (hi := 19574683) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19487431 19498429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19492987) (hi := 19498429) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19498429 19509311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19498429)
    (mid := 19503857) (hi := 19509311) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19509311 19520231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19509311)
    (mid := 19514723) (hi := 19520231) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19520231 19531157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19520231)
    (mid := 19525669) (hi := 19531157) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19531157 19542119 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19531157)
    (mid := 19536739) (hi := 19542119) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19542119 19552963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19542119)
    (mid := 19547597) (hi := 19552963) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19552963 19563659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19552963)
    (mid := 19558351) (hi := 19563659) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19563659 19574683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19563659)
    (mid := 19569163) (hi := 19574683) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19487431 19509311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19498429) (hi := 19509311) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19509311 19531157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19509311)
    (mid := 19520231) (hi := 19531157) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19531157 19552963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19531157)
    (mid := 19542119) (hi := 19552963) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19552963 19574683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19552963)
    (mid := 19563659) (hi := 19574683) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19487431 19531157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19509311) (hi := 19531157) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19531157 19574683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19531157)
    (mid := 19552963) (hi := 19574683) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19487431 19574683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19531157) (hi := 19574683) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19487431 19574683 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block222

#print axioms B699MiddleExtension.PrimorialBlocks.Block222.joined
