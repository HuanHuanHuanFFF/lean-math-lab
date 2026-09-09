import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block117

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10306003, 10306187, 10306367, 10306547, 10306729, 10306909, 10307081, 10307263, 10307431, 10307587, 10307771, 10307951, 10308121, 10308299, 10308479, 10308653]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10305839 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10305839 10308653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10305839) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10308803, 10308983, 10309151, 10309333, 10309511, 10309669, 10309847, 10310029, 10310213, 10310359, 10310519, 10310701, 10310873, 10311043, 10311221, 10311397]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10308653 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10308653 10311397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10308653) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10311569, 10311739, 10311923, 10312091, 10312259, 10312409, 10312571, 10312747, 10312927, 10313063, 10313239, 10313423, 10313603, 10313783, 10313921, 10314091]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10311397 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10311397 10314091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10311397) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10314253, 10314431, 10314613, 10314769, 10314943, 10315127, 10315307, 10315483, 10315667, 10315847, 10316023, 10316179, 10316363, 10316533, 10316711, 10316881]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10314091 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10314091 10316881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10314091) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10317061, 10317193, 10317371, 10317529, 10317701, 10317877, 10318057, 10318241, 10318423, 10318589, 10318733, 10318853, 10319027, 10319209, 10319383, 10319567]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10316881 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10316881 10319567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10316881) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10319747, 10319917, 10320091, 10320263, 10320437, 10320601, 10320769, 10320953, 10321121, 10321301, 10321471, 10321643, 10321823, 10322003, 10322177, 10322357]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10319567 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10319567 10322357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10319567) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10322531, 10322713, 10322867, 10323017, 10323197, 10323373, 10323553, 10323721, 10323889, 10324063, 10324247, 10324427, 10324603, 10324757, 10324939, 10325111]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10322357 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10322357 10325111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10322357) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10325291, 10325453, 10325629, 10325801, 10325981, 10326163, 10326347, 10326529, 10326703, 10326881, 10327063, 10327243, 10327417, 10327579, 10327753, 10327937]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10325111 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10325111 10327937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10325111) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10328111, 10328257, 10328431, 10328569, 10328753, 10328933, 10329113, 10329289, 10329469, 10329643, 10329817, 10329997, 10330181, 10330361, 10330531, 10330709]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10327937 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10327937 10330709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10327937) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10330891, 10331063, 10331227, 10331407, 10331579, 10331759, 10331941, 10332103, 10332281, 10332463, 10332631, 10332799, 10332983, 10333159, 10333333, 10333487]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10330709 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10330709 10333487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10330709) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10333669, 10333847, 10334003, 10334161, 10334333, 10334509, 10334693, 10334851, 10335029, 10335203, 10335379, 10335557, 10335739, 10335917, 10336097, 10336253]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10333487 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10333487 10336253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10333487) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10336433, 10336567, 10336721, 10336891, 10337059, 10337237, 10337417, 10337563, 10337737, 10337909, 10338089, 10338269, 10338421, 10338599, 10338773, 10338931]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10336253 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10336253 10338931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10336253) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10339099, 10339279, 10339429, 10339601, 10339751, 10339919, 10340101, 10340261, 10340441, 10340609, 10340783, 10340963, 10341137, 10341319, 10341503, 10341679]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10338931 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10338931 10341679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10338931) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10341857, 10342039, 10342223, 10342399, 10342543, 10342711, 10342889, 10343051, 10343213, 10343383, 10343561, 10343741, 10343909, 10344091, 10344239, 10344419]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10341679 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10341679 10344419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10341679) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10344601, 10344773, 10344923, 10345073, 10345249, 10345429, 10345613, 10345789, 10345961, 10346129, 10346293, 10346477, 10346657, 10346837, 10347019, 10347179]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10344419 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10344419 10347179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10344419) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10347353, 10347517, 10347691, 10347871, 10348007, 10348171, 10348343, 10348511, 10348691, 10348867, 10349051, 10349231, 10349411, 10349579, 10349743, 10349921]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10347179 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10347179 10349921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10347179) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10350103, 10350287, 10350443, 10350623, 10350799, 10350979, 10351163, 10351343, 10351513, 10351687, 10351853, 10352033, 10352191, 10352351, 10352533, 10352717]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10349921 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10349921 10352717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10349921) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10352899, 10353053, 10353223, 10353407, 10353589, 10353769, 10353953, 10354111, 10354291, 10354453, 10354607, 10354789, 10354973, 10355143, 10355321, 10355491]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10352717 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10352717 10355491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10352717) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10355663, 10355843, 10356023, 10356193, 10356377, 10356551, 10356733, 10356911, 10357093, 10357271, 10357439, 10357619, 10357801, 10357973, 10358137, 10358311]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10355491 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10355491 10358311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10355491) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10358489, 10358651, 10358833, 10359007, 10359187, 10359359, 10359533, 10359709, 10359893, 10360027, 10360211, 10360393, 10360561, 10360739, 10360919, 10361089]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10358311 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10358311 10361089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10358311) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10361269, 10361453, 10361633, 10361801, 10361933, 10362113, 10362281, 10362427, 10362601, 10362767, 10362943, 10363123, 10363289, 10363471, 10363649, 10363807]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10361089 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10361089 10363807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10361089) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10363981, 10364149, 10364287, 10364423, 10364587, 10364771, 10364947, 10365097, 10365269, 10365419, 10365569, 10365737, 10365917, 10366091, 10366271, 10366439]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10363807 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10363807 10366439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10363807) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10366621, 10366801, 10366981, 10367117, 10367243, 10367393, 10367573, 10367737, 10367921, 10368097, 10368269, 10368439, 10368599, 10368779, 10368961, 10369129]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10366439 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10366439 10369129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10366439) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10369313, 10369487, 10369637, 10369789, 10369967, 10370141, 10370317, 10370483, 10370653, 10370837, 10371007, 10371191, 10371373, 10371553, 10371733, 10371899]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10369129 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10369129 10371899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10369129) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10372067, 10372249, 10372433, 10372591, 10372763, 10372939, 10373119, 10373269, 10373453, 10373633, 10373789, 10373953, 10374121, 10374289, 10374473, 10374647]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10371899 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10371899 10374647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10371899) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10374823, 10375003, 10375187, 10375319, 10375493, 10375667, 10375837, 10376017, 10376183, 10376363, 10376543, 10376719, 10376881, 10377053, 10377197, 10377379]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10374647 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10374647 10377379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10374647) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10377539, 10377707, 10377863, 10378031, 10378163, 10378343, 10378481, 10378657, 10378829, 10379011, 10379189, 10379357, 10379483, 10379657, 10379839, 10380001]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10377379 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10377379 10380001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10377379) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10380163, 10380343, 10380509, 10380677, 10380857, 10381039, 10381223, 10381387, 10381561, 10381741, 10381909, 10382059, 10382233, 10382413, 10382573, 10382711]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10380001 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10380001 10382711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10380001) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10382893, 10383077, 10383259, 10383437, 10383613, 10383767, 10383931, 10384081, 10384261, 10384403, 10384573, 10384747, 10384903, 10385087, 10385269, 10385447]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10382711 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10382711 10385447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10382711) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10385621, 10385803, 10385959, 10386143, 10386281, 10386443, 10386619, 10386799, 10386979, 10387151, 10387327, 10387483, 10387649, 10387807, 10387981, 10388143]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10385447 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10385447 10388143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10385447) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10388321, 10388501, 10388659, 10388837, 10389013, 10389191, 10389367, 10389551, 10389733, 10389913, 10390087, 10390271, 10390423, 10390607, 10390769, 10390951]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10388143 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10388143 10390951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10388143) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10391093, 10391221, 10391387, 10391531, 10391713, 10391893, 10392077, 10392233, 10392413, 10392583, 10392751, 10392931, 10393111, 10393291, 10393469, 10393651]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10390951 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10390951 10393651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10390951) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10305839 10311397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10305839)
    (mid := 10308653) (hi := 10311397) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10311397 10316881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10311397)
    (mid := 10314091) (hi := 10316881) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10316881 10322357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10316881)
    (mid := 10319567) (hi := 10322357) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10322357 10327937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10322357)
    (mid := 10325111) (hi := 10327937) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10327937 10333487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10327937)
    (mid := 10330709) (hi := 10333487) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10333487 10338931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10333487)
    (mid := 10336253) (hi := 10338931) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10338931 10344419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10338931)
    (mid := 10341679) (hi := 10344419) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10344419 10349921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10344419)
    (mid := 10347179) (hi := 10349921) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10349921 10355491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10349921)
    (mid := 10352717) (hi := 10355491) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10355491 10361089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10355491)
    (mid := 10358311) (hi := 10361089) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10361089 10366439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10361089)
    (mid := 10363807) (hi := 10366439) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10366439 10371899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10366439)
    (mid := 10369129) (hi := 10371899) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10371899 10377379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10371899)
    (mid := 10374647) (hi := 10377379) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10377379 10382711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10377379)
    (mid := 10380001) (hi := 10382711) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10382711 10388143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10382711)
    (mid := 10385447) (hi := 10388143) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10388143 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10388143)
    (mid := 10390951) (hi := 10393651) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10305839 10316881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10305839)
    (mid := 10311397) (hi := 10316881) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10316881 10327937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10316881)
    (mid := 10322357) (hi := 10327937) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10327937 10338931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10327937)
    (mid := 10333487) (hi := 10338931) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10338931 10349921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10338931)
    (mid := 10344419) (hi := 10349921) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10349921 10361089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10349921)
    (mid := 10355491) (hi := 10361089) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10361089 10371899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10361089)
    (mid := 10366439) (hi := 10371899) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10371899 10382711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10371899)
    (mid := 10377379) (hi := 10382711) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10382711 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10382711)
    (mid := 10388143) (hi := 10393651) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10305839 10327937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10305839)
    (mid := 10316881) (hi := 10327937) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10327937 10349921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10327937)
    (mid := 10338931) (hi := 10349921) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10349921 10371899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10349921)
    (mid := 10361089) (hi := 10371899) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10371899 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10371899)
    (mid := 10382711) (hi := 10393651) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10305839 10349921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10305839)
    (mid := 10327937) (hi := 10349921) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10349921 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10349921)
    (mid := 10371899) (hi := 10393651) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10305839 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10305839)
    (mid := 10349921) (hi := 10393651) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10305839 10393651 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block117

#print axioms B699MiddleExtension.PrimorialBlocks.Block117.joined
