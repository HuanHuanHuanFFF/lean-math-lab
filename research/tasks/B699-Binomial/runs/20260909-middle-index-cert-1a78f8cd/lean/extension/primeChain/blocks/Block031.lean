import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block031

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [2752033, 2752201, 2752357, 2752531, 2752697, 2752879, 2753063, 2753237, 2753417, 2753599, 2753783, 2753957, 2754137, 2754299, 2754481, 2754649]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2751857 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2751857 2754649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2751857) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [2754803, 2754949, 2755127, 2755307, 2755471, 2755637, 2755813, 2755997, 2756161, 2756339, 2756521, 2756693, 2756869, 2757049, 2757229, 2757397]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2754649 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2754649 2757397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2754649) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [2757577, 2757761, 2757917, 2758099, 2758253, 2758429, 2758589, 2758771, 2758949, 2759111, 2759293, 2759467, 2759621, 2759803, 2759971, 2760151]
theorem check2 : primorialChainCheck 4473 primorial4473 184 2757397 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 2757397 2760151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2757397) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [2760323, 2760487, 2760671, 2760847, 2761027, 2761207, 2761379, 2761559, 2761741, 2761907, 2762083, 2762267, 2762447, 2762593, 2762777, 2762957]
theorem check3 : primorialChainCheck 4473 primorial4473 184 2760151 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 2760151 2762957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2760151) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [2763133, 2763317, 2763491, 2763667, 2763833, 2764007, 2764187, 2764369, 2764543, 2764711, 2764891, 2765053, 2765233, 2765387, 2765551, 2765731]
theorem check4 : primorialChainCheck 4473 primorial4473 184 2762957 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 2762957 2765731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2762957) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [2765891, 2766059, 2766227, 2766389, 2766551, 2766727, 2766901, 2767081, 2767249, 2767423, 2767603, 2767771, 2767949, 2768123, 2768291, 2768461]
theorem check5 : primorialChainCheck 4473 primorial4473 184 2765731 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 2765731 2768461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2765731) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [2768639, 2768819, 2769001, 2769167, 2769343, 2769527, 2769677, 2769841, 2769983, 2770121, 2770267, 2770429, 2770613, 2770793, 2770973, 2771147]
theorem check6 : primorialChainCheck 4473 primorial4473 184 2768461 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 2768461 2771147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2768461) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [2771309, 2771491, 2771669, 2771843, 2772019, 2772199, 2772383, 2772533, 2772713, 2772883, 2773061, 2773237, 2773403, 2773583, 2773759, 2773931]
theorem check7 : primorialChainCheck 4473 primorial4473 184 2771147 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 2771147 2773931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2771147) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [2774089, 2774273, 2774419, 2774599, 2774777, 2774957, 2775137, 2775313, 2775469, 2775649, 2775781, 2775959, 2776133, 2776309, 2776493, 2776673]
theorem check8 : primorialChainCheck 4473 primorial4473 184 2773931 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 2773931 2776673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2773931) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [2776849, 2777029, 2777213, 2777387, 2777557, 2777741, 2777921, 2778091, 2778263, 2778439, 2778619, 2778799, 2778967, 2779151, 2779327, 2779507]
theorem check9 : primorialChainCheck 4473 primorial4473 184 2776673 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 2776673 2779507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2776673) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [2779669, 2779811, 2779991, 2780161, 2780339, 2780521, 2780693, 2780873, 2781029, 2781211, 2781379, 2781521, 2781703, 2781887, 2782069, 2782217]
theorem check10 : primorialChainCheck 4473 primorial4473 184 2779507 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 2779507 2782217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2779507) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [2782397, 2782567, 2782727, 2782903, 2783047, 2783227, 2783411, 2783593, 2783773, 2783947, 2784113, 2784283, 2784373, 2784557, 2784713, 2784883]
theorem check11 : primorialChainCheck 4473 primorial4473 184 2782217 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 2782217 2784883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2782217) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [2785051, 2785219, 2785379, 2785513, 2785697, 2785879, 2786041, 2786221, 2786389, 2786573, 2786753, 2786923, 2787107, 2787289, 2787461, 2787619]
theorem check12 : primorialChainCheck 4473 primorial4473 184 2784883 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 2784883 2787619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2784883) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [2787781, 2787947, 2788091, 2788273, 2788453, 2788633, 2788817, 2788997, 2789177, 2789351, 2789503, 2789669, 2789849, 2790019, 2790197, 2790331]
theorem check13 : primorialChainCheck 4473 primorial4473 184 2787619 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 2787619 2790331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2787619) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [2790497, 2790679, 2790859, 2791039, 2791199, 2791379, 2791561, 2791721, 2791897, 2792071, 2792249, 2792431, 2792561, 2792737, 2792897, 2793073]
theorem check14 : primorialChainCheck 4473 primorial4473 184 2790331 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 2790331 2793073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2790331) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [2793239, 2793407, 2793587, 2793737, 2793911, 2794093, 2794271, 2794453, 2794607, 2794789, 2794963, 2795119, 2795297, 2795477, 2795659, 2795809]
theorem check15 : primorialChainCheck 4473 primorial4473 184 2793073 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 2793073 2795809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2793073) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2795993, 2796163, 2796341, 2796523, 2796707, 2796883, 2797063, 2797247, 2797411, 2797589, 2797757, 2797939, 2798119, 2798303, 2798461, 2798641]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2795809 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2795809 2798641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2795809) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2798821, 2799001, 2799163, 2799299, 2799469, 2799647, 2799829, 2800003, 2800159, 2800339, 2800519, 2800703, 2800883, 2801047, 2801221, 2801401]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2798641 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2798641 2801401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2798641) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2801573, 2801741, 2801921, 2802097, 2802277, 2802451, 2802623, 2802797, 2802979, 2803139, 2803303, 2803477, 2803651, 2803819, 2803991, 2804171]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2801401 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2801401 2804171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2801401) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2804327, 2804509, 2804693, 2804861, 2805043, 2805227, 2805403, 2805587, 2805763, 2805923, 2806093, 2806277, 2806459, 2806619, 2806801, 2806963]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2804171 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2804171 2806963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2804171) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2807141, 2807323, 2807479, 2807663, 2807821, 2807977, 2808161, 2808329, 2808511, 2808683, 2808863, 2809019, 2809187, 2809363, 2809537, 2809717]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2806963 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2806963 2809717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2806963) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2809889, 2810069, 2810237, 2810413, 2810597, 2810747, 2810921, 2811097, 2811269, 2811439, 2811623, 2811803, 2811983, 2812153, 2812331, 2812499]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2809717 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2809717 2812499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2809717) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2812679, 2812853, 2813011, 2813191, 2813353, 2813519, 2813693, 2813851, 2814017, 2814179, 2814347, 2814509, 2814683, 2814863, 2815009, 2815187]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2812499 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2812499 2815187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2812499) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2815369, 2815529, 2815691, 2815861, 2816029, 2816213, 2816377, 2816549, 2816717, 2816899, 2817083, 2817259, 2817443, 2817623, 2817797, 2817973]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2815187 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2815187 2817973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2815187) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2818157, 2818337, 2818513, 2818687, 2818867, 2819051, 2819231, 2819413, 2819587, 2819767, 2819951, 2820131, 2820313, 2820491, 2820673, 2820833]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2817973 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2817973 2820833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2817973) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2821009, 2821183, 2821331, 2821513, 2821681, 2821859, 2822033, 2822213, 2822387, 2822569, 2822741, 2822923, 2823101, 2823283, 2823467, 2823637]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2820833 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2820833 2823637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2820833) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2823811, 2823973, 2824139, 2824319, 2824477, 2824651, 2824823, 2825003, 2825153, 2825299, 2825479, 2825657, 2825833, 2825983, 2826167, 2826337]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2823637 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2823637 2826337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2823637) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2826521, 2826701, 2826883, 2827061, 2827241, 2827421, 2827571, 2827753, 2827931, 2828113, 2828297, 2828461, 2828641, 2828809, 2828993, 2829173]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2826337 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2826337 2829173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2826337) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2829349, 2829527, 2829709, 2829889, 2830073, 2830249, 2830433, 2830613, 2830787, 2830969, 2831141, 2831321, 2831497, 2831677, 2831861, 2832041]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2829173 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2829173 2832041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2829173) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2832223, 2832391, 2832569, 2832743, 2832917, 2833099, 2833283, 2833463, 2833643, 2833813, 2833997, 2834179, 2834347, 2834527, 2834707, 2834873]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2832041 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2832041 2834873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2832041) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2835037, 2835221, 2835401, 2835563, 2835737, 2835913, 2836081, 2836261, 2836423, 2836607, 2836789, 2836973, 2837141, 2837309, 2837491, 2837633]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2834873 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2834873 2837633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2834873) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2837803, 2837987, 2838169, 2838293, 2838463, 2838631, 2838769, 2838937, 2839117, 2839301, 2839483, 2839657, 2839841, 2840023, 2840203, 2840359]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2837633 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2837633 2840359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2837633) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2751857 2757397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2751857)
    (mid := 2754649) (hi := 2757397) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2757397 2762957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2757397)
    (mid := 2760151) (hi := 2762957) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 2762957 2768461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2762957)
    (mid := 2765731) (hi := 2768461) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 2768461 2773931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2768461)
    (mid := 2771147) (hi := 2773931) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2773931 2779507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2773931)
    (mid := 2776673) (hi := 2779507) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2779507 2784883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2779507)
    (mid := 2782217) (hi := 2784883) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2784883 2790331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2784883)
    (mid := 2787619) (hi := 2790331) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2790331 2795809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2790331)
    (mid := 2793073) (hi := 2795809) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2795809 2801401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2795809)
    (mid := 2798641) (hi := 2801401) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2801401 2806963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2801401)
    (mid := 2804171) (hi := 2806963) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2806963 2812499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2806963)
    (mid := 2809717) (hi := 2812499) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2812499 2817973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2812499)
    (mid := 2815187) (hi := 2817973) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2817973 2823637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2817973)
    (mid := 2820833) (hi := 2823637) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2823637 2829173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2823637)
    (mid := 2826337) (hi := 2829173) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2829173 2834873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2829173)
    (mid := 2832041) (hi := 2834873) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2834873 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2834873)
    (mid := 2837633) (hi := 2840359) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2751857 2762957 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2751857)
    (mid := 2757397) (hi := 2762957) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 2762957 2773931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2762957)
    (mid := 2768461) (hi := 2773931) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2773931 2784883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2773931)
    (mid := 2779507) (hi := 2784883) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2784883 2795809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2784883)
    (mid := 2790331) (hi := 2795809) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2795809 2806963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2795809)
    (mid := 2801401) (hi := 2806963) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2806963 2817973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2806963)
    (mid := 2812499) (hi := 2817973) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2817973 2829173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2817973)
    (mid := 2823637) (hi := 2829173) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2829173 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2829173)
    (mid := 2834873) (hi := 2840359) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2751857 2773931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2751857)
    (mid := 2762957) (hi := 2773931) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2773931 2795809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2773931)
    (mid := 2784883) (hi := 2795809) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2795809 2817973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2795809)
    (mid := 2806963) (hi := 2817973) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2817973 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2817973)
    (mid := 2829173) (hi := 2840359) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2751857 2795809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2751857)
    (mid := 2773931) (hi := 2795809) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2795809 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2795809)
    (mid := 2817973) (hi := 2840359) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2751857 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2751857)
    (mid := 2795809) (hi := 2840359) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2751857 2840359 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block031

#print axioms B699MiddleExtension.PrimorialBlocks.Block031.joined
