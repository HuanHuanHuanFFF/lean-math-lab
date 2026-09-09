import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block032

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2840507, 2840689, 2840857, 2841031, 2841211, 2841373, 2841557, 2841733, 2841911, 2842069, 2842253, 2842403, 2842583, 2842753, 2842937, 2843119]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2840359 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2840359 2843119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2840359) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2843287, 2843429, 2843611, 2843791, 2843969, 2844133, 2844313, 2844481, 2844649, 2844833, 2844983, 2845151, 2845319, 2845499, 2845673, 2845853]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2843119 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2843119 2845853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2843119) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2846033, 2846189, 2846359, 2846539, 2846719, 2846873, 2847043, 2847227, 2847389, 2847563, 2847731, 2847893, 2848057, 2848213, 2848381, 2848561]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2845853 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2845853 2848561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2845853) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2848739, 2848921, 2849087, 2849233, 2849389, 2849537, 2849713, 2849893, 2850061, 2850223, 2850401, 2850583, 2850767, 2850949, 2851111, 2851267]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2848561 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2848561 2851267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2848561) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2851451, 2851633, 2851817, 2851991, 2852167, 2852351, 2852519, 2852699, 2852879, 2853047, 2853217, 2853391, 2853547, 2853709, 2853883, 2854067]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2851267 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2851267 2854067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2851267) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2854223, 2854403, 2854571, 2854751, 2854933, 2855113, 2855273, 2855443, 2855617, 2855791, 2855953, 2856121, 2856283, 2856461, 2856617, 2856779]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2854067 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2854067 2856779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2854067) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2856961, 2857123, 2857303, 2857471, 2857643, 2857801, 2857973, 2858129, 2858309, 2858489, 2858651, 2858833, 2859001, 2859173, 2859343, 2859503]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2856779 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2856779 2859503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2856779) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2859677, 2859847, 2860021, 2860181, 2860337, 2860499, 2860681, 2860853, 2861009, 2861189, 2861363, 2861539, 2861711, 2861869, 2862049, 2862227]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2859503 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2859503 2862227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2859503) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2862401, 2862577, 2862751, 2862931, 2863079, 2863229, 2863403, 2863577, 2863741, 2863921, 2864093, 2864261, 2864441, 2864623, 2864761, 2864909]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2862227 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2862227 2864909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2862227) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2865091, 2865259, 2865439, 2865623, 2865803, 2865977, 2866159, 2866343, 2866519, 2866691, 2866873, 2867023, 2867107, 2867287, 2867471, 2867633]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2864909 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2864909 2867633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2864909) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2867807, 2867959, 2868139, 2868323, 2868497, 2868673, 2868857, 2869033, 2869213, 2869369, 2869553, 2869729, 2869901, 2870081, 2870249, 2870429]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2867633 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2867633 2870429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2867633) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2870611, 2870789, 2870969, 2871139, 2871293, 2871469, 2871643, 2871811, 2871991, 2872153, 2872333, 2872481, 2872621, 2872789, 2872973, 2873149]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2870429 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2870429 2873149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2870429) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2873333, 2873513, 2873677, 2873851, 2874029, 2874211, 2874353, 2874523, 2874691, 2874841, 2875021, 2875199, 2875373, 2875549, 2875709, 2875871]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2873149 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2873149 2875871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2873149) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2876051, 2876233, 2876411, 2876593, 2876777, 2876959, 2877143, 2877313, 2877487, 2877661, 2877841, 2878021, 2878181, 2878361, 2878543, 2878727]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2875871 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2875871 2878727 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2875871) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2878903, 2879087, 2879257, 2879423, 2879563, 2879741, 2879911, 2880071, 2880239, 2880421, 2880569, 2880739, 2880907, 2881061, 2881243, 2881427]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2878727 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2878727 2881427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2878727) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2881591, 2881733, 2881897, 2882081, 2882261, 2882441, 2882609, 2882777, 2882953, 2883113, 2883289, 2883473, 2883641, 2883823, 2883997, 2884171]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2881427 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2881427 2884171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2881427) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2884351, 2884513, 2884691, 2884823, 2884993, 2885177, 2885353, 2885527, 2885693, 2885863, 2886029, 2886199, 2886383, 2886563, 2886743, 2886911]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2884171 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2884171 2886911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2884171) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2887081, 2887237, 2887363, 2887541, 2887721, 2887883, 2888059, 2888243, 2888387, 2888569, 2888749, 2888917, 2889091, 2889251, 2889427, 2889599]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2886911 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2886911 2889599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2886911) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2889781, 2889947, 2890127, 2890301, 2890483, 2890649, 2890813, 2890997, 2891171, 2891341, 2891509, 2891687, 2891831, 2892013, 2892191, 2892371]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2889599 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2889599 2892371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2889599) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2892511, 2892689, 2892853, 2893031, 2893211, 2893393, 2893547, 2893727, 2893897, 2894071, 2894239, 2894417, 2894587, 2894767, 2894951, 2895127]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2892371 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2892371 2895127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2892371) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2895301, 2895479, 2895647, 2895821, 2895979, 2896147, 2896319, 2896501, 2896667, 2896849, 2897023, 2897197, 2897381, 2897533, 2897717, 2897897]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2895127 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2895127 2897897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2895127) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2898079, 2898239, 2898421, 2898601, 2898761, 2898937, 2899121, 2899279, 2899459, 2899627, 2899783, 2899943, 2900119, 2900297, 2900477, 2900647]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2897897 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2897897 2900647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2897897) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2900831, 2901001, 2901181, 2901361, 2901527, 2901707, 2901853, 2901989, 2902171, 2902351, 2902519, 2902663, 2902831, 2903003, 2903183, 2903363]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2900647 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2900647 2903363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2900647) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2903521, 2903699, 2903837, 2904001, 2904179, 2904353, 2904533, 2904709, 2904893, 2905073, 2905241, 2905421, 2905603, 2905787, 2905961, 2906143]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2903363 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2903363 2906143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2903363) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2906291, 2906471, 2906633, 2906807, 2906987, 2907143, 2907319, 2907491, 2907649, 2907823, 2907997, 2908177, 2908361, 2908531, 2908687, 2908861]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2906143 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2906143 2908861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2906143) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2909041, 2909219, 2909393, 2909573, 2909749, 2909923, 2910107, 2910253, 2910433, 2910617, 2910797, 2910979, 2911163, 2911333, 2911511, 2911679]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2908861 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2908861 2911679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2908861) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2911859, 2912033, 2912213, 2912369, 2912551, 2912717, 2912893, 2913067, 2913247, 2913431, 2913607, 2913791, 2913961, 2914139, 2914319, 2914501]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2911679 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2911679 2914501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2911679) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2914673, 2914843, 2915027, 2915201, 2915369, 2915543, 2915719, 2915903, 2916073, 2916257, 2916439, 2916611, 2916787, 2916971, 2917147, 2917309]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2914501 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2914501 2917309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2914501) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2917493, 2917667, 2917841, 2917973, 2918141, 2918323, 2918507, 2918689, 2918873, 2919047, 2919221, 2919383, 2919557, 2919727, 2919907, 2920079]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2917309 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2917309 2920079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2917309) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2920249, 2920427, 2920591, 2920751, 2920903, 2921063, 2921239, 2921423, 2921599, 2921777, 2921957, 2922133, 2922313, 2922497, 2922677, 2922859]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2920079 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2920079 2922859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2920079) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2923043, 2923213, 2923387, 2923559, 2923741, 2923903, 2924087, 2924269, 2924437, 2924609, 2924791, 2924963, 2925137, 2925313, 2925469, 2925641]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2922859 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2922859 2925641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2922859) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2925821, 2926003, 2926181, 2926349, 2926519, 2926699, 2926843, 2927027, 2927191, 2927341, 2927473, 2927651, 2927809, 2927983, 2928151, 2928319]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2925641 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2925641 2928319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2925641) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2840359 2845853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2843119) (hi := 2845853) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2845853 2851267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2845853)
    (mid := 2848561) (hi := 2851267) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2851267 2856779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2851267)
    (mid := 2854067) (hi := 2856779) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2856779 2862227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2856779)
    (mid := 2859503) (hi := 2862227) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2862227 2867633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2862227)
    (mid := 2864909) (hi := 2867633) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2867633 2873149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2867633)
    (mid := 2870429) (hi := 2873149) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2873149 2878727 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2873149)
    (mid := 2875871) (hi := 2878727) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2878727 2884171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2878727)
    (mid := 2881427) (hi := 2884171) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2884171 2889599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2884171)
    (mid := 2886911) (hi := 2889599) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2889599 2895127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2889599)
    (mid := 2892371) (hi := 2895127) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2895127 2900647 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2895127)
    (mid := 2897897) (hi := 2900647) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2900647 2906143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2900647)
    (mid := 2903363) (hi := 2906143) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2906143 2911679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2906143)
    (mid := 2908861) (hi := 2911679) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2911679 2917309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2911679)
    (mid := 2914501) (hi := 2917309) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2917309 2922859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2917309)
    (mid := 2920079) (hi := 2922859) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2922859 2928319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2922859)
    (mid := 2925641) (hi := 2928319) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2840359 2851267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2845853) (hi := 2851267) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2851267 2862227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2851267)
    (mid := 2856779) (hi := 2862227) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2862227 2873149 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2862227)
    (mid := 2867633) (hi := 2873149) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2873149 2884171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2873149)
    (mid := 2878727) (hi := 2884171) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2884171 2895127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2884171)
    (mid := 2889599) (hi := 2895127) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2895127 2906143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2895127)
    (mid := 2900647) (hi := 2906143) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2906143 2917309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2906143)
    (mid := 2911679) (hi := 2917309) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2917309 2928319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2917309)
    (mid := 2922859) (hi := 2928319) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2840359 2862227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2851267) (hi := 2862227) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2862227 2884171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2862227)
    (mid := 2873149) (hi := 2884171) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2884171 2906143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2884171)
    (mid := 2895127) (hi := 2906143) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2906143 2928319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2906143)
    (mid := 2917309) (hi := 2928319) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2840359 2884171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2862227) (hi := 2884171) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2884171 2928319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2884171)
    (mid := 2906143) (hi := 2928319) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2840359 2928319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2884171) (hi := 2928319) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2840359 2928319 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block032

#print axioms B699MiddleExtension.PrimorialBlocks.Block032.joined
