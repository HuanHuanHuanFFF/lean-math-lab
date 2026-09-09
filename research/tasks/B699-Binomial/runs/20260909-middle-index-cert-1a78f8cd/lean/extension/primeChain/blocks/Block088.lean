import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block088

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7765519, 7765673, 7765853, 7766021, 7766201, 7766371, 7766537, 7766713, 7766897, 7767049, 7767229, 7767401, 7767569, 7767731, 7767899, 7768081]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7765343 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7765343 7768081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7765343) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7768253, 7768427, 7768601, 7768769, 7768921, 7769087, 7769263, 7769441, 7769579, 7769761, 7769911, 7770089, 7770253, 7770403, 7770583, 7770761]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7768081 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7768081 7770761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7768081) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7770929, 7771109, 7771277, 7771459, 7771639, 7771823, 7771997, 7772173, 7772353, 7772521, 7772669, 7772839, 7773013, 7773197, 7773371, 7773523]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7770761 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7770761 7773523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7770761) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7773673, 7773851, 7774031, 7774213, 7774381, 7774549, 7774721, 7774903, 7775087, 7775269, 7775429, 7775597, 7775759, 7775903, 7776079, 7776239]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7773523 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7773523 7776239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7773523) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7776413, 7776589, 7776751, 7776931, 7777103, 7777283, 7777463, 7777643, 7777813, 7777997, 7778167, 7778339, 7778509, 7778671, 7778839, 7779019]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7776239 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7776239 7779019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7776239) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7779203, 7779383, 7779547, 7779719, 7779887, 7780061, 7780243, 7780403, 7780583, 7780757, 7780921, 7781101, 7781261, 7781441, 7781623, 7781779]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7779019 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7779019 7781779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7779019) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7781957, 7782133, 7782301, 7782479, 7782659, 7782823, 7783007, 7783169, 7783343, 7783519, 7783691, 7783873, 7784039, 7784221, 7784389, 7784573]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7781779 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7781779 7784573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7781779) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7784747, 7784923, 7785103, 7785277, 7785457, 7785607, 7785749, 7785917, 7786099, 7786279, 7786463, 7786619, 7786787, 7786967, 7787149, 7787333]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7784573 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7784573 7787333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7784573) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7787503, 7787677, 7787861, 7788029, 7788199, 7788367, 7788527, 7788709, 7788889, 7789073, 7789253, 7789403, 7789583, 7789759, 7789931, 7790093]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7787333 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7787333 7790093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7787333) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7790273, 7790443, 7790623, 7790803, 7790953, 7791109, 7791283, 7791467, 7791629, 7791799, 7791977, 7792157, 7792333, 7792513, 7792693, 7792861]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7790093 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7790093 7792861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7790093) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7793041, 7793213, 7793393, 7793561, 7793729, 7793897, 7794071, 7794253, 7794421, 7794571, 7794751, 7794929, 7795103, 7795273, 7795441, 7795603]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7792861 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7792861 7795603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7792861) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7795769, 7795939, 7796123, 7796263, 7796423, 7796599, 7796759, 7796939, 7797109, 7797287, 7797463, 7797631, 7797799, 7797983, 7798163, 7798337]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7795603 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7795603 7798337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7795603) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7798501, 7798673, 7798837, 7799017, 7799201, 7799377, 7799543, 7799723, 7799903, 7800083, 7800259, 7800413, 7800577, 7800733, 7800901, 7801081]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7798337 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7798337 7801081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7798337) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7801259, 7801427, 7801597, 7801769, 7801943, 7802117, 7802299, 7802477, 7802659, 7802803, 7802959, 7803143, 7803317, 7803491, 7803673, 7803853]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7801081 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7801081 7803853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7801081) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7804019, 7804201, 7804369, 7804553, 7804733, 7804913, 7805093, 7805269, 7805453, 7805627, 7805797, 7805981, 7806163, 7806347, 7806509, 7806661]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7803853 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7803853 7806661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7803853) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7806833, 7807013, 7807193, 7807361, 7807543, 7807721, 7807903, 7808051, 7808231, 7808407, 7808579, 7808747, 7808921, 7809089, 7809253, 7809433]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7806661 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7806661 7809433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7806661) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7809601, 7809757, 7809941, 7810111, 7810291, 7810457, 7810637, 7810819, 7810991, 7811173, 7811357, 7811539, 7811693, 7811861, 7812037, 7812221]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7809433 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7809433 7812221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7809433) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7812379, 7812559, 7812733, 7812907, 7813087, 7813249, 7813433, 7813613, 7813787, 7813957, 7814119, 7814299, 7814483, 7814663, 7814843, 7815013]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7812221 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7812221 7815013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7812221) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7815169, 7815341, 7815523, 7815701, 7815851, 7816033, 7816217, 7816331, 7816513, 7816687, 7816859, 7817041, 7817219, 7817393, 7817573, 7817749]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7815013 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7815013 7817749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7815013) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7817903, 7818071, 7818233, 7818397, 7818563, 7818731, 7818907, 7819087, 7819271, 7819429, 7819601, 7819753, 7819927, 7820107, 7820287, 7820429]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7817749 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7817749 7820429 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7817749) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7820611, 7820783, 7820963, 7821133, 7821301, 7821469, 7821643, 7821823, 7822007, 7822189, 7822361, 7822543, 7822723, 7822897, 7823071, 7823239]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7820429 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7820429 7823239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7820429) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7823423, 7823603, 7823779, 7823951, 7824133, 7824293, 7824469, 7824647, 7824829, 7825003, 7825133, 7825261, 7825439, 7825619, 7825789, 7825973]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7823239 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7823239 7825973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7823239) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7826123, 7826303, 7826459, 7826627, 7826809, 7826899, 7827067, 7827233, 7827403, 7827587, 7827727, 7827901, 7828049, 7828217, 7828397, 7828573]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7825973 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7825973 7828573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7825973) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7828747, 7828921, 7829093, 7829251, 7829429, 7829603, 7829779, 7829963, 7830127, 7830307, 7830481, 7830653, 7830827, 7830989, 7831163, 7831337]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7828573 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7828573 7831337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7828573) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7831517, 7831699, 7831853, 7832023, 7832203, 7832387, 7832569, 7832749, 7832911, 7833083, 7833251, 7833401, 7833563, 7833737, 7833907, 7834091]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7831337 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7831337 7834091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7831337) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7834273, 7834447, 7834627, 7834781, 7834963, 7835143, 7835297, 7835461, 7835629, 7835803, 7835983, 7836163, 7836347, 7836529, 7836713, 7836887]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7834091 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7834091 7836887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7834091) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7837069, 7837241, 7837409, 7837573, 7837723, 7837897, 7838069, 7838221, 7838387, 7838569, 7838737, 7838893, 7839059, 7839233, 7839401, 7839581]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7836887 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7836887 7839581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7836887) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7839763, 7839911, 7840081, 7840253, 7840433, 7840603, 7840783, 7840967, 7841143, 7841263, 7841429, 7841599, 7841773, 7841957, 7842139, 7842323]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7839581 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7839581 7842323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7839581) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7842503, 7842677, 7842859, 7843039, 7843201, 7843361, 7843513, 7843697, 7843879, 7844059, 7844237, 7844401, 7844567, 7844741, 7844897, 7845067]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7842323 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7842323 7845067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7842323) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7845241, 7845413, 7845587, 7845763, 7845947, 7846117, 7846283, 7846463, 7846637, 7846819, 7847003, 7847179, 7847363, 7847533, 7847713, 7847881]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7845067 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7845067 7847881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7845067) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7848041, 7848209, 7848391, 7848569, 7848749, 7848923, 7849099, 7849277, 7849453, 7849637, 7849817, 7849999, 7850177, 7850357, 7850539, 7850707]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7847881 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7847881 7850707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7847881) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7850891, 7851061, 7851227, 7851409, 7851593, 7851761, 7851941, 7852123, 7852307, 7852489, 7852661, 7852811, 7852993, 7853173, 7853357, 7853513]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7850707 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7850707 7853513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7850707) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7765343 7770761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7768081) (hi := 7770761) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7770761 7776239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7770761)
    (mid := 7773523) (hi := 7776239) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7776239 7781779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7776239)
    (mid := 7779019) (hi := 7781779) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7781779 7787333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7781779)
    (mid := 7784573) (hi := 7787333) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7787333 7792861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7787333)
    (mid := 7790093) (hi := 7792861) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7792861 7798337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7792861)
    (mid := 7795603) (hi := 7798337) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7798337 7803853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7798337)
    (mid := 7801081) (hi := 7803853) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7803853 7809433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7803853)
    (mid := 7806661) (hi := 7809433) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7809433 7815013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7809433)
    (mid := 7812221) (hi := 7815013) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7815013 7820429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7815013)
    (mid := 7817749) (hi := 7820429) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7820429 7825973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7820429)
    (mid := 7823239) (hi := 7825973) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7825973 7831337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7825973)
    (mid := 7828573) (hi := 7831337) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7831337 7836887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7831337)
    (mid := 7834091) (hi := 7836887) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7836887 7842323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7836887)
    (mid := 7839581) (hi := 7842323) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7842323 7847881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7842323)
    (mid := 7845067) (hi := 7847881) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7847881 7853513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7847881)
    (mid := 7850707) (hi := 7853513) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7765343 7776239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7770761) (hi := 7776239) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7776239 7787333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7776239)
    (mid := 7781779) (hi := 7787333) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7787333 7798337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7787333)
    (mid := 7792861) (hi := 7798337) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7798337 7809433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7798337)
    (mid := 7803853) (hi := 7809433) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7809433 7820429 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7809433)
    (mid := 7815013) (hi := 7820429) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7820429 7831337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7820429)
    (mid := 7825973) (hi := 7831337) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7831337 7842323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7831337)
    (mid := 7836887) (hi := 7842323) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7842323 7853513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7842323)
    (mid := 7847881) (hi := 7853513) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7765343 7787333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7776239) (hi := 7787333) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7787333 7809433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7787333)
    (mid := 7798337) (hi := 7809433) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7809433 7831337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7809433)
    (mid := 7820429) (hi := 7831337) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7831337 7853513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7831337)
    (mid := 7842323) (hi := 7853513) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7765343 7809433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7787333) (hi := 7809433) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7809433 7853513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7809433)
    (mid := 7831337) (hi := 7853513) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7765343 7853513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7809433) (hi := 7853513) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7765343 7853513 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block088

#print axioms B699MiddleExtension.PrimorialBlocks.Block088.joined
