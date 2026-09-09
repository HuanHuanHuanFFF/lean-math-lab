import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block223

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [19574851, 19575011, 19575181, 19575349, 19575527, 19575697, 19575877, 19576057, 19576237, 19576411, 19576577, 19576757, 19576919, 19577101, 19577281, 19577449]
theorem check0 : primorialChainCheck 4473 primorial4473 184 19574683 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19574683 19577449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19574683) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [19577633, 19577759, 19577933, 19578107, 19578283, 19578467, 19578617, 19578791, 19578971, 19579151, 19579333, 19579499, 19579667, 19579829, 19580009, 19580173]
theorem check1 : primorialChainCheck 4473 primorial4473 184 19577449 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19577449 19580173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19577449) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [19580357, 19580531, 19580699, 19580857, 19581013, 19581193, 19581377, 19581521, 19581689, 19581851, 19582021, 19582193, 19582357, 19582531, 19582709, 19582889]
theorem check2 : primorialChainCheck 4473 primorial4473 184 19580173 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 19580173 19582889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19580173) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [19583029, 19583209, 19583387, 19583569, 19583743, 19583911, 19584091, 19584263, 19584443, 19584623, 19584791, 19584967, 19585123, 19585303, 19585487, 19585669]
theorem check3 : primorialChainCheck 4473 primorial4473 184 19582889 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 19582889 19585669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19582889) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [19585807, 19585967, 19586137, 19586267, 19586419, 19586591, 19586773, 19586953, 19587137, 19587311, 19587481, 19587619, 19587797, 19587979, 19588159, 19588339]
theorem check4 : primorialChainCheck 4473 primorial4473 184 19585669 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 19585669 19588339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19585669) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [19588501, 19588661, 19588843, 19589023, 19589201, 19589377, 19589519, 19589699, 19589863, 19590017, 19590187, 19590359, 19590509, 19590677, 19590841, 19591007]
theorem check5 : primorialChainCheck 4473 primorial4473 184 19588339 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 19588339 19591007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19588339) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [19591189, 19591373, 19591549, 19591723, 19591889, 19592029, 19592213, 19592393, 19592569, 19592747, 19592927, 19593109, 19593283, 19593451, 19593619, 19593797]
theorem check6 : primorialChainCheck 4473 primorial4473 184 19591007 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 19591007 19593797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19591007) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [19593967, 19594147, 19594331, 19594513, 19594669, 19594837, 19595003, 19595183, 19595363, 19595507, 19595687, 19595857, 19596041, 19596221, 19596403, 19596587]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19593797 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19593797 19596587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19593797) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [19596769, 19596947, 19597093, 19597273, 19597453, 19597619, 19597801, 19597961, 19598143, 19598321, 19598503, 19598659, 19598837, 19599001, 19599179, 19599341]
theorem check8 : primorialChainCheck 4473 primorial4473 184 19596587 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 19596587 19599341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19596587) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [19599509, 19599683, 19599863, 19600043, 19600223, 19600403, 19600547, 19600709, 19600883, 19601047, 19601227, 19601411, 19601563, 19601719, 19601903, 19602067]
theorem check9 : primorialChainCheck 4473 primorial4473 184 19599341 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 19599341 19602067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19599341) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [19602227, 19602409, 19602587, 19602769, 19602949, 19603123, 19603301, 19603477, 19603651, 19603823, 19603979, 19604161, 19604341, 19604521, 19604701, 19604881]
theorem check10 : primorialChainCheck 4473 primorial4473 184 19602067 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 19602067 19604881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19602067) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [19605059, 19605241, 19605419, 19605581, 19605731, 19605907, 19606091, 19606261, 19606441, 19606607, 19606777, 19606949, 19607129, 19607311, 19607473, 19607641]
theorem check11 : primorialChainCheck 4473 primorial4473 184 19604881 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 19604881 19607641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19604881) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [19607821, 19607989, 19608139, 19608319, 19608503, 19608683, 19608859, 19609043, 19609189, 19609327, 19609511, 19609673, 19609847, 19610023, 19610207, 19610387]
theorem check12 : primorialChainCheck 4473 primorial4473 184 19607641 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 19607641 19610387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19607641) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [19610561, 19610729, 19610909, 19611071, 19611247, 19611367, 19611551, 19611719, 19611901, 19612069, 19612231, 19612409, 19612589, 19612763, 19612933, 19613101]
theorem check13 : primorialChainCheck 4473 primorial4473 184 19610387 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 19610387 19613101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19610387) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [19613281, 19613449, 19613623, 19613807, 19613987, 19614169, 19614337, 19614521, 19614703, 19614887, 19615061, 19615237, 19615411, 19615577, 19615747, 19615927]
theorem check14 : primorialChainCheck 4473 primorial4473 184 19613101 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 19613101 19615927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19613101) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [19616101, 19616279, 19616449, 19616629, 19616809, 19616981, 19617163, 19617347, 19617527, 19617707, 19617889, 19618073, 19618243, 19618397, 19618559, 19618733]
theorem check15 : primorialChainCheck 4473 primorial4473 184 19615927 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 19615927 19618733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19615927) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [19618903, 19619081, 19619251, 19619429, 19619603, 19619773, 19619947, 19620119, 19620301, 19620457, 19620641, 19620793, 19620947, 19621103, 19621279, 19621463]
theorem check16 : primorialChainCheck 4473 primorial4473 184 19618733 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 19618733 19621463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19618733) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [19621639, 19621817, 19621969, 19622153, 19622329, 19622509, 19622689, 19622857, 19623041, 19623187, 19623353, 19623533, 19623701, 19623859, 19624027, 19624181]
theorem check17 : primorialChainCheck 4473 primorial4473 184 19621463 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 19621463 19624181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19621463) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [19624351, 19624523, 19624697, 19624877, 19625057, 19625239, 19625399, 19625581, 19625747, 19625927, 19626083, 19626247, 19626419, 19626569, 19626731, 19626911]
theorem check18 : primorialChainCheck 4473 primorial4473 184 19624181 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 19624181 19626911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19624181) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [19627087, 19627261, 19627429, 19627613, 19627781, 19627963, 19628117, 19628291, 19628467, 19628639, 19628803, 19628977, 19629151, 19629331, 19629469, 19629619]
theorem check19 : primorialChainCheck 4473 primorial4473 184 19626911 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 19626911 19629619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19626911) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [19629803, 19629959, 19630123, 19630307, 19630487, 19630669, 19630823, 19630993, 19631149, 19631329, 19631411, 19631593, 19631749, 19631933, 19632103, 19632287]
theorem check20 : primorialChainCheck 4473 primorial4473 184 19629619 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 19629619 19632287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19629619) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [19632469, 19632647, 19632791, 19632941, 19633123, 19633307, 19633477, 19633619, 19633799, 19633969, 19634143, 19634317, 19634477, 19634651, 19634833, 19635013]
theorem check21 : primorialChainCheck 4473 primorial4473 184 19632287 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 19632287 19635013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19632287) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [19635193, 19635361, 19635541, 19635719, 19635899, 19636081, 19636261, 19636433, 19636607, 19636787, 19636949, 19637119, 19637297, 19637461, 19637641, 19637809]
theorem check22 : primorialChainCheck 4473 primorial4473 184 19635013 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 19635013 19637809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19635013) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [19637993, 19638163, 19638347, 19638517, 19638683, 19638863, 19639019, 19639189, 19639303, 19639481, 19639663, 19639831, 19640011, 19640123, 19640297, 19640479]
theorem check23 : primorialChainCheck 4473 primorial4473 184 19637809 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 19637809 19640479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19637809) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [19640653, 19640837, 19641019, 19641169, 19641353, 19641529, 19641707, 19641889, 19642057, 19642241, 19642421, 19642589, 19642729, 19642891, 19643053, 19643213]
theorem check24 : primorialChainCheck 4473 primorial4473 184 19640479 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 19640479 19643213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19640479) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [19643383, 19643557, 19643699, 19643839, 19643989, 19644143, 19644319, 19644497, 19644671, 19644847, 19645007, 19645189, 19645369, 19645547, 19645699, 19645831]
theorem check25 : primorialChainCheck 4473 primorial4473 184 19643213 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 19643213 19645831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19643213) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [19645993, 19646177, 19646359, 19646533, 19646707, 19646881, 19646999, 19647169, 19647347, 19647503, 19647671, 19647847, 19647989, 19648163, 19648339, 19648501]
theorem check26 : primorialChainCheck 4473 primorial4473 184 19645831 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 19645831 19648501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19645831) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [19648661, 19648841, 19649017, 19649141, 19649317, 19649489, 19649657, 19649837, 19650019, 19650157, 19650331, 19650511, 19650689, 19650857, 19651019, 19651199]
theorem check27 : primorialChainCheck 4473 primorial4473 184 19648501 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 19648501 19651199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19648501) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [19651369, 19651549, 19651733, 19651901, 19652081, 19652261, 19652443, 19652617, 19652779, 19652933, 19653083, 19653251, 19653419, 19653593, 19653761, 19653941]
theorem check28 : primorialChainCheck 4473 primorial4473 184 19651199 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 19651199 19653941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19651199) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [19654123, 19654241, 19654409, 19654577, 19654757, 19654939, 19655123, 19655297, 19655431, 19655611, 19655771, 19655947, 19656121, 19656271, 19656397, 19656569]
theorem check29 : primorialChainCheck 4473 primorial4473 184 19653941 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 19653941 19656569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19653941) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [19656739, 19656919, 19657093, 19657277, 19657459, 19657639, 19657811, 19657943, 19658113, 19658291, 19658459, 19658641, 19658809, 19658993, 19659163, 19659329]
theorem check30 : primorialChainCheck 4473 primorial4473 184 19656569 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 19656569 19659329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19656569) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [19659491, 19659659, 19659817, 19660001, 19660181, 19660339, 19660519, 19660703, 19660867, 19661051, 19661233, 19661417, 19661597, 19661777, 19661951, 19662127]
theorem check31 : primorialChainCheck 4473 primorial4473 184 19659329 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 19659329 19662127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19659329) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19574683 19580173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19574683)
    (mid := 19577449) (hi := 19580173) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19580173 19585669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19580173)
    (mid := 19582889) (hi := 19585669) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 19585669 19591007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19585669)
    (mid := 19588339) (hi := 19591007) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 19591007 19596587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19591007)
    (mid := 19593797) (hi := 19596587) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 19596587 19602067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19596587)
    (mid := 19599341) (hi := 19602067) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19602067 19607641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19602067)
    (mid := 19604881) (hi := 19607641) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19607641 19613101 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19607641)
    (mid := 19610387) (hi := 19613101) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19613101 19618733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19613101)
    (mid := 19615927) (hi := 19618733) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 19618733 19624181 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19618733)
    (mid := 19621463) (hi := 19624181) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 19624181 19629619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19624181)
    (mid := 19626911) (hi := 19629619) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 19629619 19635013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19629619)
    (mid := 19632287) (hi := 19635013) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 19635013 19640479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19635013)
    (mid := 19637809) (hi := 19640479) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 19640479 19645831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19640479)
    (mid := 19643213) (hi := 19645831) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 19645831 19651199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19645831)
    (mid := 19648501) (hi := 19651199) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 19651199 19656569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19651199)
    (mid := 19653941) (hi := 19656569) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 19656569 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19656569)
    (mid := 19659329) (hi := 19662127) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19574683 19585669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19574683)
    (mid := 19580173) (hi := 19585669) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 19585669 19596587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19585669)
    (mid := 19591007) (hi := 19596587) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 19596587 19607641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19596587)
    (mid := 19602067) (hi := 19607641) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19607641 19618733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19607641)
    (mid := 19613101) (hi := 19618733) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 19618733 19629619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19618733)
    (mid := 19624181) (hi := 19629619) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 19629619 19640479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19629619)
    (mid := 19635013) (hi := 19640479) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 19640479 19651199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19640479)
    (mid := 19645831) (hi := 19651199) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 19651199 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19651199)
    (mid := 19656569) (hi := 19662127) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 19574683 19596587 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19574683)
    (mid := 19585669) (hi := 19596587) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 19596587 19618733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19596587)
    (mid := 19607641) (hi := 19618733) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 19618733 19640479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19618733)
    (mid := 19629619) (hi := 19640479) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 19640479 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19640479)
    (mid := 19651199) (hi := 19662127) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 19574683 19618733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19574683)
    (mid := 19596587) (hi := 19618733) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 19618733 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19618733)
    (mid := 19640479) (hi := 19662127) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 19574683 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19574683)
    (mid := 19618733) (hi := 19662127) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 19574683 19662127 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block223

#print axioms B699MiddleExtension.PrimorialBlocks.Block223.joined
