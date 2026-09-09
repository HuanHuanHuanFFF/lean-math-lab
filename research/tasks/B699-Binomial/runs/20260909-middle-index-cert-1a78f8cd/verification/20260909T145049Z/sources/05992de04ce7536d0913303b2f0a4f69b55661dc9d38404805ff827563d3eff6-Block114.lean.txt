import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block114

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10043959, 10044137, 10044317, 10044493, 10044667, 10044847, 10045031, 10045213, 10045379, 10045559, 10045741, 10045901, 10046063, 10046243, 10046417, 10046591]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10043791 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10043791 10046591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10043791) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10046753, 10046923, 10047101, 10047277, 10047437, 10047617, 10047787, 10047967, 10048147, 10048331, 10048501, 10048679, 10048859, 10049041, 10049219, 10049393]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10046591 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10046591 10049393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10046591) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10049563, 10049729, 10049911, 10050083, 10050253, 10050437, 10050619, 10050797, 10050979, 10051163, 10051339, 10051523, 10051697, 10051861, 10052017, 10052191]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10049393 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10049393 10052191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10049393) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10052363, 10052533, 10052717, 10052893, 10053037, 10053217, 10053391, 10053557, 10053739, 10053917, 10054091, 10054267, 10054441, 10054621, 10054777, 10054937]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10052191 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10052191 10054937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10052191) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10055119, 10055281, 10055443, 10055621, 10055777, 10055951, 10056133, 10056311, 10056443, 10056623, 10056793, 10056973, 10057129, 10057309, 10057477, 10057661]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10054937 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10054937 10057661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10054937) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10057843, 10058021, 10058177, 10058333, 10058507, 10058683, 10058837, 10059011, 10059193, 10059337, 10059521, 10059703, 10059859, 10060009, 10060163, 10060343]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10057661 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10057661 10060343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10057661) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10060517, 10060663, 10060847, 10061017, 10061201, 10061383, 10061567, 10061747, 10061929, 10062067, 10062233, 10062413, 10062587, 10062769, 10062953, 10063117]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10060343 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10060343 10063117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10060343) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10063283, 10063463, 10063639, 10063793, 10063967, 10064149, 10064309, 10064477, 10064657, 10064839, 10065019, 10065203, 10065373, 10065557, 10065733, 10065911]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10063117 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10063117 10065911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10063117) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10066093, 10066271, 10066439, 10066613, 10066783, 10066967, 10067149, 10067329, 10067507, 10067657, 10067833, 10067999, 10068169, 10068343, 10068523, 10068691]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10065911 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10065911 10068691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10065911) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10068859, 10069043, 10069207, 10069369, 10069541, 10069721, 10069903, 10070087, 10070243, 10070419, 10070597, 10070701, 10070869, 10071043, 10071223, 10071403]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10068691 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10068691 10071403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10068691) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10071587, 10071757, 10071923, 10072099, 10072247, 10072423, 10072607, 10072729, 10072897, 10073071, 10073251, 10073407, 10073587, 10073771, 10073923, 10074091]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10071403 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10071403 10074091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10071403) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10074271, 10074443, 10074613, 10074797, 10074947, 10075129, 10075297, 10075469, 10075621, 10075787, 10075943, 10076123, 10076293, 10076477, 10076653, 10076831]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10074091 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10074091 10076831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10074091) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10076951, 10077131, 10077293, 10077469, 10077649, 10077833, 10077983, 10078157, 10078309, 10078489, 10078643, 10078823, 10078997, 10079159, 10079341, 10079513]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10076831 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10076831 10079513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10076831) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10079687, 10079869, 10080047, 10080223, 10080403, 10080569, 10080751, 10080901, 10081073, 10081237, 10081411, 10081583, 10081759, 10081943, 10082117, 10082287]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10079513 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10079513 10082287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10079513) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10082467, 10082627, 10082803, 10082971, 10083137, 10083259, 10083443, 10083613, 10083791, 10083949, 10084133, 10084297, 10084471, 10084651, 10084819, 10084967]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10082287 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10082287 10084967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10082287) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10085149, 10085329, 10085513, 10085687, 10085857, 10086031, 10086211, 10086383, 10086551, 10086709, 10086889, 10087061, 10087243, 10087411, 10087591, 10087771]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10084967 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10084967 10087771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10084967) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10087933, 10088093, 10088251, 10088413, 10088591, 10088761, 10088917, 10089097, 10089263, 10089439, 10089623, 10089797, 10089979, 10090151, 10090313, 10090489]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10087771 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10087771 10090489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10087771) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10090667, 10090837, 10091021, 10091203, 10091363, 10091533, 10091671, 10091839, 10092007, 10092167, 10092349, 10092529, 10092707, 10092881, 10093063, 10093241]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10090489 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10090489 10093241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10090489) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10093423, 10093591, 10093771, 10093939, 10094099, 10094281, 10094449, 10094633, 10094807, 10094977, 10095149, 10095329, 10095461, 10095641, 10095823, 10096007]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10093241 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10093241 10096007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10093241) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10096189, 10096367, 10096549, 10096717, 10096837, 10096991, 10097149, 10097333, 10097497, 10097671, 10097839, 10098007, 10098181, 10098349, 10098511, 10098689]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10096007 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10096007 10098689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10096007) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10098857, 10099027, 10099171, 10099351, 10099519, 10099703, 10099867, 10100047, 10100221, 10100393, 10100557, 10100711, 10100891, 10101023, 10101197, 10101373]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10098689 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10098689 10101373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10098689) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10101557, 10101739, 10101907, 10102069, 10102207, 10102387, 10102537, 10102717, 10102867, 10103039, 10103221, 10103393, 10103567, 10103747, 10103921, 10104089]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10101373 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10101373 10104089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10101373) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10104253, 10104433, 10104617, 10104779, 10104961, 10105133, 10105309, 10105489, 10105661, 10105841, 10106023, 10106203, 10106387, 10106563, 10106741, 10106909]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10104089 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10104089 10106909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10104089) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10107089, 10107269, 10107437, 10107619, 10107751, 10107917, 10108097, 10108279, 10108459, 10108643, 10108823, 10108979, 10109153, 10109321, 10109497, 10109651]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10106909 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10106909 10109651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10106909) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10109833, 10110017, 10110169, 10110349, 10110533, 10110707, 10110871, 10111019, 10111187, 10111369, 10111547, 10111709, 10111879, 10112057, 10112239, 10112419]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10109651 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10109651 10112419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10109651) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10112593, 10112761, 10112897, 10113071, 10113253, 10113437, 10113599, 10113769, 10113941, 10114081, 10114261, 10114409, 10114561, 10114739, 10114919, 10115089]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10112419 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10112419 10115089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10112419) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10115267, 10115419, 10115597, 10115779, 10115953, 10116109, 10116277, 10116437, 10116599, 10116781, 10116919, 10117087, 10117231, 10117411, 10117579, 10117741]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10115089 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10115089 10117741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10115089) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10117889, 10118063, 10118243, 10118401, 10118569, 10118753, 10118929, 10119079, 10119259, 10119427, 10119601, 10119763, 10119943, 10120111, 10120289, 10120459]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10117741 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10117741 10120459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10117741) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10120639, 10120807, 10120969, 10121147, 10121329, 10121491, 10121651, 10121833, 10122011, 10122179, 10122353, 10122529, 10122713, 10122883, 10123063, 10123247]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10120459 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10120459 10123247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10120459) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10123423, 10123601, 10123781, 10123957, 10124137, 10124311, 10124489, 10124641, 10124819, 10125001, 10125179, 10125343, 10125503, 10125673, 10125853, 10126037]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10123247 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10123247 10126037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10123247) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10126219, 10126399, 10126561, 10126741, 10126891, 10127069, 10127237, 10127417, 10127591, 10127773, 10127941, 10128109, 10128281, 10128451, 10128593, 10128773]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10126037 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10126037 10128773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10126037) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10128949, 10129129, 10129283, 10129447, 10129631, 10129813, 10129979, 10130161, 10130339, 10130509, 10130651, 10130821, 10130999, 10131181, 10131361, 10131529]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10128773 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10128773 10131529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10128773) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10043791 10049393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10046591) (hi := 10049393) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10049393 10054937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10049393)
    (mid := 10052191) (hi := 10054937) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10054937 10060343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10054937)
    (mid := 10057661) (hi := 10060343) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10060343 10065911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10060343)
    (mid := 10063117) (hi := 10065911) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10065911 10071403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10065911)
    (mid := 10068691) (hi := 10071403) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10071403 10076831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10071403)
    (mid := 10074091) (hi := 10076831) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10076831 10082287 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10076831)
    (mid := 10079513) (hi := 10082287) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10082287 10087771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10082287)
    (mid := 10084967) (hi := 10087771) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10087771 10093241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10087771)
    (mid := 10090489) (hi := 10093241) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10093241 10098689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10093241)
    (mid := 10096007) (hi := 10098689) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10098689 10104089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10098689)
    (mid := 10101373) (hi := 10104089) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10104089 10109651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10104089)
    (mid := 10106909) (hi := 10109651) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10109651 10115089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10109651)
    (mid := 10112419) (hi := 10115089) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10115089 10120459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10115089)
    (mid := 10117741) (hi := 10120459) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10120459 10126037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10120459)
    (mid := 10123247) (hi := 10126037) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10126037 10131529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10126037)
    (mid := 10128773) (hi := 10131529) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10043791 10054937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10049393) (hi := 10054937) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10054937 10065911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10054937)
    (mid := 10060343) (hi := 10065911) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10065911 10076831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10065911)
    (mid := 10071403) (hi := 10076831) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10076831 10087771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10076831)
    (mid := 10082287) (hi := 10087771) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10087771 10098689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10087771)
    (mid := 10093241) (hi := 10098689) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10098689 10109651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10098689)
    (mid := 10104089) (hi := 10109651) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10109651 10120459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10109651)
    (mid := 10115089) (hi := 10120459) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10120459 10131529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10120459)
    (mid := 10126037) (hi := 10131529) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10043791 10065911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10054937) (hi := 10065911) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10065911 10087771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10065911)
    (mid := 10076831) (hi := 10087771) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10087771 10109651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10087771)
    (mid := 10098689) (hi := 10109651) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10109651 10131529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10109651)
    (mid := 10120459) (hi := 10131529) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10043791 10087771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10065911) (hi := 10087771) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10087771 10131529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10087771)
    (mid := 10109651) (hi := 10131529) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10043791 10131529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10087771) (hi := 10131529) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10043791 10131529 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block114

#print axioms B699MiddleExtension.PrimorialBlocks.Block114.joined
