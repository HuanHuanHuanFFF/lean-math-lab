import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block135

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11882639, 11882821, 11882977, 11883149, 11883307, 11883491, 11883667, 11883811, 11883983, 11884157, 11884331, 11884489, 11884673, 11884837, 11885017, 11885201]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11882477 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11882477 11885201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11882477) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11885383, 11885561, 11885743, 11885921, 11886073, 11886241, 11886409, 11886593, 11886739, 11886923, 11887091, 11887243, 11887387, 11887553, 11887727, 11887891]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11885201 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11885201 11887891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11885201) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11888047, 11888213, 11888369, 11888551, 11888719, 11888867, 11889049, 11889233, 11889403, 11889587, 11889751, 11889923, 11890091, 11890273, 11890421, 11890601]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11887891 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11887891 11890601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11887891) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11890777, 11890961, 11891129, 11891303, 11891471, 11891641, 11891821, 11891953, 11892121, 11892263, 11892443, 11892611, 11892791, 11892961, 11893117, 11893291]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11890601 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11890601 11893291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11890601) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11893471, 11893643, 11893811, 11893993, 11894159, 11894327, 11894497, 11894677, 11894851, 11895031, 11895199, 11895383, 11895551, 11895731, 11895913, 11896097]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11893291 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11893291 11896097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11893291) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11896271, 11896441, 11896613, 11896789, 11896967, 11897143, 11897317, 11897489, 11897653, 11897833, 11898013, 11898193, 11898373, 11898547, 11898713, 11898881]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11896097 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11896097 11898881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11896097) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11899051, 11899213, 11899379, 11899549, 11899733, 11899913, 11900093, 11900261, 11900437, 11900617, 11900771, 11900951, 11901103, 11901259, 11901437, 11901611]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11898881 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11898881 11901611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11898881) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11901781, 11901949, 11902133, 11902307, 11902487, 11902651, 11902831, 11902999, 11903149, 11903327, 11903503, 11903687, 11903867, 11904043, 11904223, 11904407]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11901611 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11901611 11904407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11901611) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11904569, 11904751, 11904931, 11905097, 11905273, 11905427, 11905589, 11905771, 11905937, 11906107, 11906287, 11906467, 11906633, 11906809, 11906981, 11907151]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11904407 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11904407 11907151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11904407) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11907323, 11907499, 11907683, 11907829, 11907989, 11908159, 11908331, 11908493, 11908669, 11908849, 11909017, 11909173, 11909353, 11909519, 11909693, 11909873]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11907151 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11907151 11909873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11907151) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11910053, 11910233, 11910413, 11910551, 11910733, 11910901, 11911063, 11911241, 11911421, 11911573, 11911733, 11911873, 11912051, 11912191, 11912363, 11912531]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11909873 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11909873 11912531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11909873) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11912687, 11912851, 11913023, 11913197, 11913367, 11913541, 11913721, 11913899, 11914081, 11914247, 11914417, 11914541, 11914717, 11914901, 11915077, 11915251]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11912531 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11912531 11915251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11912531) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11915417, 11915573, 11915753, 11915933, 11916103, 11916271, 11916449, 11916631, 11916799, 11916973, 11917133, 11917309, 11917487, 11917669, 11917849, 11917993]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11915251 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11915251 11917993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11915251) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11918171, 11918327, 11918509, 11918689, 11918867, 11919043, 11919211, 11919379, 11919563, 11919709, 11919863, 11920033, 11920199, 11920379, 11920561, 11920721]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11917993 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11917993 11920721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11917993) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11920903, 11921087, 11921269, 11921443, 11921593, 11921773, 11921957, 11922121, 11922301, 11922479, 11922649, 11922829, 11922979, 11923159, 11923339, 11923519]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11920721 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11920721 11923519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11920721) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11923687, 11923861, 11924009, 11924183, 11924359, 11924519, 11924669, 11924849, 11925029, 11925203, 11925379, 11925553, 11925737, 11925913, 11926087, 11926253]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11923519 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11923519 11926253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11923519) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11926427, 11926601, 11926763, 11926939, 11927119, 11927303, 11927483, 11927633, 11927803, 11927987, 11928151, 11928331, 11928487, 11928649, 11928821, 11928997]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11926253 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11926253 11928997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11926253) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11929171, 11929339, 11929517, 11929693, 11929871, 11930047, 11930203, 11930363, 11930543, 11930707, 11930873, 11930999, 11931163, 11931341, 11931509, 11931691]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11928997 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11928997 11931691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11928997) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11931851, 11932013, 11932153, 11932321, 11932493, 11932673, 11932849, 11933027, 11933191, 11933333, 11933513, 11933693, 11933863, 11934047, 11934203, 11934379]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11931691 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11931691 11934379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11931691) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11934563, 11934743, 11934899, 11935081, 11935237, 11935409, 11935549, 11935727, 11935901, 11936063, 11936233, 11936417, 11936597, 11936779, 11936963, 11937127]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11934379 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11934379 11937127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11934379) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11937271, 11937427, 11937599, 11937767, 11937941, 11938109, 11938291, 11938463, 11938643, 11938793, 11938967, 11939113, 11939297, 11939453, 11939621, 11939791]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11937127 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11937127 11939791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11937127) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11939959, 11940127, 11940311, 11940469, 11940653, 11940821, 11941003, 11941183, 11941357, 11941529, 11941711, 11941883, 11942057, 11942237, 11942419, 11942597]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11939791 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11939791 11942597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11939791) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11942779, 11942941, 11943109, 11943289, 11943433, 11943611, 11943791, 11943973, 11944139, 11944321, 11944501, 11944661, 11944819, 11944997, 11945179, 11945347]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11942597 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11942597 11945347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11942597) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11945519, 11945683, 11945867, 11946049, 11946199, 11946349, 11946533, 11946713, 11946881, 11947049, 11947213, 11947387, 11947567, 11947721, 11947891, 11948021]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11945347 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11945347 11948021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11945347) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11948147, 11948323, 11948491, 11948653, 11948837, 11949019, 11949199, 11949373, 11949547, 11949731, 11949913, 11950073, 11950231, 11950403, 11950537, 11950709]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11948021 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11948021 11950709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11948021) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11950877, 11951047, 11951189, 11951369, 11951531, 11951713, 11951879, 11952029, 11952209, 11952389, 11952569, 11952737, 11952917, 11953061, 11953229, 11953393]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11950709 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11950709 11953393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11950709) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11953573, 11953757, 11953937, 11954101, 11954279, 11954447, 11954617, 11954783, 11954953, 11955133, 11955311, 11955467, 11955649, 11955833, 11956003, 11956181]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11953393 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11953393 11956181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11953393) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11956361, 11956531, 11956691, 11956859, 11957027, 11957201, 11957381, 11957563, 11957747, 11957927, 11958103, 11958283, 11958449, 11958631, 11958767, 11958949]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11956181 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11956181 11958949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11956181) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11959133, 11959271, 11959439, 11959603, 11959777, 11959957, 11960131, 11960309, 11960489, 11960651, 11960833, 11961007, 11961179, 11961349, 11961527, 11961683]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11958949 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11958949 11961683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11958949) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11961847, 11962019, 11962199, 11962367, 11962537, 11962721, 11962823, 11962997, 11963177, 11963351, 11963509, 11963687, 11963867, 11964041, 11964193, 11964373]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11961683 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11961683 11964373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11961683) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11964521, 11964679, 11964863, 11965033, 11965207, 11965379, 11965561, 11965741, 11965913, 11966063, 11966243, 11966389, 11966573, 11966753, 11966921, 11967103]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11964373 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11964373 11967103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11964373) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11967253, 11967433, 11967617, 11967799, 11967979, 11968141, 11968321, 11968483, 11968667, 11968829, 11969011, 11969189, 11969357, 11969539, 11969723, 11969879]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11967103 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11967103 11969879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11967103) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11882477 11887891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11882477)
    (mid := 11885201) (hi := 11887891) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11887891 11893291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11887891)
    (mid := 11890601) (hi := 11893291) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11893291 11898881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11893291)
    (mid := 11896097) (hi := 11898881) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11898881 11904407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11898881)
    (mid := 11901611) (hi := 11904407) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11904407 11909873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11904407)
    (mid := 11907151) (hi := 11909873) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11909873 11915251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11909873)
    (mid := 11912531) (hi := 11915251) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11915251 11920721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11915251)
    (mid := 11917993) (hi := 11920721) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11920721 11926253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11920721)
    (mid := 11923519) (hi := 11926253) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11926253 11931691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11926253)
    (mid := 11928997) (hi := 11931691) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11931691 11937127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11931691)
    (mid := 11934379) (hi := 11937127) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11937127 11942597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11937127)
    (mid := 11939791) (hi := 11942597) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11942597 11948021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11942597)
    (mid := 11945347) (hi := 11948021) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11948021 11953393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11948021)
    (mid := 11950709) (hi := 11953393) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11953393 11958949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11953393)
    (mid := 11956181) (hi := 11958949) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11958949 11964373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11958949)
    (mid := 11961683) (hi := 11964373) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11964373 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11964373)
    (mid := 11967103) (hi := 11969879) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11882477 11893291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11882477)
    (mid := 11887891) (hi := 11893291) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11893291 11904407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11893291)
    (mid := 11898881) (hi := 11904407) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11904407 11915251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11904407)
    (mid := 11909873) (hi := 11915251) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11915251 11926253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11915251)
    (mid := 11920721) (hi := 11926253) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11926253 11937127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11926253)
    (mid := 11931691) (hi := 11937127) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11937127 11948021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11937127)
    (mid := 11942597) (hi := 11948021) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11948021 11958949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11948021)
    (mid := 11953393) (hi := 11958949) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11958949 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11958949)
    (mid := 11964373) (hi := 11969879) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11882477 11904407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11882477)
    (mid := 11893291) (hi := 11904407) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11904407 11926253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11904407)
    (mid := 11915251) (hi := 11926253) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11926253 11948021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11926253)
    (mid := 11937127) (hi := 11948021) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11948021 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11948021)
    (mid := 11958949) (hi := 11969879) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11882477 11926253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11882477)
    (mid := 11904407) (hi := 11926253) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11926253 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11926253)
    (mid := 11948021) (hi := 11969879) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11882477 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11882477)
    (mid := 11926253) (hi := 11969879) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11882477 11969879 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block135

#print axioms B699MiddleExtension.PrimorialBlocks.Block135.joined
