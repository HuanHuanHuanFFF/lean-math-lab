import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block111

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9780647, 9780829, 9781007, 9781183, 9781361, 9781529, 9781711, 9781879, 9782041, 9782209, 9782389, 9782573, 9782743, 9782917, 9783101, 9783283]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9780523 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9780523 9783283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9780523) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9783451, 9783601, 9783779, 9783937, 9784111, 9784283, 9784459, 9784633, 9784811, 9784991, 9785159, 9785333, 9785507, 9785689, 9785851, 9785989]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9783283 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9783283 9785989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9783283) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9786163, 9786323, 9786487, 9786643, 9786827, 9787003, 9787177, 9787343, 9787513, 9787667, 9787849, 9788029, 9788203, 9788377, 9788551, 9788717]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9785989 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9785989 9788717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9785989) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9788899, 9789083, 9789257, 9789431, 9789607, 9789781, 9789953, 9790133, 9790279, 9790463, 9790639, 9790819, 9791003, 9791149, 9791329, 9791461]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9788717 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9788717 9791461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9788717) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9791641, 9791777, 9791959, 9792143, 9792301, 9792479, 9792659, 9792841, 9793019, 9793187, 9793369, 9793519, 9793697, 9793877, 9794051, 9794219]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9791461 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9791461 9794219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9791461) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9794371, 9794503, 9794647, 9794809, 9794989, 9795169, 9795347, 9795523, 9795683, 9795847, 9795979, 9796159, 9796327, 9796511, 9796691, 9796847]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9794219 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9794219 9796847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9794219) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9797017, 9797191, 9797371, 9797551, 9797731, 9797903, 9798083, 9798251, 9798403, 9798563, 9798743, 9798917, 9799099, 9799277, 9799457, 9799613]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9796847 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9796847 9799613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9796847) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9799789, 9799969, 9800149, 9800327, 9800491, 9800663, 9800839, 9801019, 9801203, 9801383, 9801563, 9801713, 9801889, 9802073, 9802249, 9802433]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9799613 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9799613 9802433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9799613) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9802607, 9802781, 9802963, 9803137, 9803317, 9803491, 9803669, 9803813, 9803987, 9804167, 9804343, 9804521, 9804689, 9804859, 9805001, 9805177]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9802433 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9802433 9805177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9802433) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9805361, 9805529, 9805709, 9805891, 9806047, 9806231, 9806389, 9806561, 9806729, 9806911, 9807089, 9807247, 9807431, 9807599, 9807779, 9807953]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9805177 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9805177 9807953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9805177) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9808111, 9808291, 9808457, 9808621, 9808783, 9808961, 9809143, 9809321, 9809497, 9809677, 9809843, 9810007, 9810181, 9810349, 9810529, 9810653]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9807953 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9807953 9810653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9807953) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9810803, 9810979, 9811157, 9811337, 9811517, 9811699, 9811859, 9812039, 9812207, 9812389, 9812573, 9812749, 9812923, 9813061, 9813241, 9813409]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9810653 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9810653 9813409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9810653) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9813593, 9813757, 9813907, 9814087, 9814247, 9814429, 9814613, 9814771, 9814943, 9815093, 9815269, 9815447, 9815629, 9815807, 9815959, 9816127]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9813409 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9813409 9816127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9813409) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9816307, 9816481, 9816647, 9816823, 9816997, 9817169, 9817351, 9817531, 9817673, 9817853, 9818023, 9818201, 9818371, 9818551, 9818729, 9818903]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9816127 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9816127 9818903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9816127) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9819083, 9819263, 9819427, 9819611, 9819791, 9819967, 9820147, 9820319, 9820493, 9820661, 9820843, 9820997, 9821173, 9821351, 9821531, 9821701]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9818903 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9818903 9821701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9818903) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9821873, 9822047, 9822203, 9822367, 9822551, 9822731, 9822907, 9823091, 9823273, 9823453, 9823633, 9823769, 9823939, 9824123, 9824299, 9824471]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9821701 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9821701 9824471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9821701) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9824651, 9824831, 9825007, 9825191, 9825373, 9825553, 9825737, 9825913, 9826093, 9826277, 9826433, 9826601, 9826777, 9826961, 9827131, 9827303]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9824471 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9824471 9827303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9824471) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9827473, 9827639, 9827821, 9828001, 9828179, 9828349, 9828493, 9828677, 9828859, 9829037, 9829189, 9829373, 9829549, 9829711, 9829889, 9830059]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9827303 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9827303 9830059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9827303) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9830243, 9830413, 9830533, 9830713, 9830897, 9831077, 9831259, 9831443, 9831617, 9831799, 9831953, 9832133, 9832313, 9832441, 9832619, 9832777]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9830059 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9830059 9832777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9830059) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9832909, 9833069, 9833237, 9833363, 9833533, 9833717, 9833893, 9834073, 9834247, 9834413, 9834581, 9834763, 9834941, 9835117, 9835297, 9835471]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9832777 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9832777 9835471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9832777) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9835627, 9835811, 9835981, 9836159, 9836317, 9836501, 9836683, 9836839, 9837019, 9837187, 9837343, 9837521, 9837697, 9837871, 9838033, 9838207]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9835471 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9835471 9838207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9835471) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9838379, 9838553, 9838727, 9838879, 9839021, 9839201, 9839353, 9839537, 9839707, 9839887, 9840071, 9840253, 9840431, 9840601, 9840781, 9840899]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9838207 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9838207 9840899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9838207) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9841081, 9841261, 9841441, 9841619, 9841789, 9841939, 9842123, 9842297, 9842477, 9842653, 9842837, 9843019, 9843203, 9843373, 9843553, 9843721]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9840899 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9840899 9843721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9840899) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9843877, 9844039, 9844217, 9844361, 9844537, 9844699, 9844871, 9845053, 9845233, 9845417, 9845599, 9845777, 9845951, 9846131, 9846311, 9846469]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9843721 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9843721 9846469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9843721) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9846649, 9846833, 9847009, 9847157, 9847337, 9847507, 9847637, 9847819, 9847997, 9848171, 9848353, 9848537, 9848659, 9848843, 9849019, 9849197]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9846469 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9846469 9849197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9846469) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9849337, 9849517, 9849701, 9849877, 9850013, 9850193, 9850369, 9850543, 9850727, 9850889, 9851071, 9851249, 9851431, 9851591, 9851759, 9851929]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9849197 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9849197 9851929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9849197) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9852113, 9852277, 9852443, 9852617, 9852743, 9852917, 9853073, 9853241, 9853423, 9853607, 9853783, 9853967, 9854087, 9854261, 9854431, 9854591]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9851929 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9851929 9854591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9851929) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9854771, 9854941, 9855119, 9855271, 9855451, 9855611, 9855793, 9855977, 9856153, 9856313, 9856493, 9856633, 9856817, 9856963, 9857147, 9857327]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9854591 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9854591 9857327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9854591) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9857489, 9857669, 9857849, 9857983, 9858157, 9858319, 9858503, 9858683, 9858859, 9859039, 9859207, 9859379, 9859559, 9859697, 9859867, 9860023]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9857327 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9857327 9860023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9857327) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9860197, 9860381, 9860549, 9860723, 9860897, 9861079, 9861253, 9861433, 9861613, 9861781, 9861953, 9862133, 9862283, 9862451, 9862631, 9862793]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9860023 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9860023 9862793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9860023) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9862961, 9863131, 9863311, 9863479, 9863647, 9863809, 9863951, 9864133, 9864277, 9864457, 9864637, 9864817, 9864989, 9865171, 9865343, 9865523]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9862793 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9862793 9865523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9862793) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9865651, 9865819, 9865993, 9866167, 9866327, 9866509, 9866693, 9866867, 9867043, 9867211, 9867371, 9867551, 9867731, 9867883, 9868063, 9868237]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9865523 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9865523 9868237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9865523) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9780523 9785989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9780523)
    (mid := 9783283) (hi := 9785989) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9785989 9791461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9785989)
    (mid := 9788717) (hi := 9791461) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9791461 9796847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9791461)
    (mid := 9794219) (hi := 9796847) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9796847 9802433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9796847)
    (mid := 9799613) (hi := 9802433) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9802433 9807953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9802433)
    (mid := 9805177) (hi := 9807953) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9807953 9813409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9807953)
    (mid := 9810653) (hi := 9813409) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9813409 9818903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9813409)
    (mid := 9816127) (hi := 9818903) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9818903 9824471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9818903)
    (mid := 9821701) (hi := 9824471) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9824471 9830059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9824471)
    (mid := 9827303) (hi := 9830059) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9830059 9835471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9830059)
    (mid := 9832777) (hi := 9835471) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9835471 9840899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9835471)
    (mid := 9838207) (hi := 9840899) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9840899 9846469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9840899)
    (mid := 9843721) (hi := 9846469) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9846469 9851929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9846469)
    (mid := 9849197) (hi := 9851929) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9851929 9857327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9851929)
    (mid := 9854591) (hi := 9857327) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9857327 9862793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9857327)
    (mid := 9860023) (hi := 9862793) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9862793 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9862793)
    (mid := 9865523) (hi := 9868237) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9780523 9791461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9780523)
    (mid := 9785989) (hi := 9791461) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9791461 9802433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9791461)
    (mid := 9796847) (hi := 9802433) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9802433 9813409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9802433)
    (mid := 9807953) (hi := 9813409) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9813409 9824471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9813409)
    (mid := 9818903) (hi := 9824471) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9824471 9835471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9824471)
    (mid := 9830059) (hi := 9835471) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9835471 9846469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9835471)
    (mid := 9840899) (hi := 9846469) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9846469 9857327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9846469)
    (mid := 9851929) (hi := 9857327) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9857327 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9857327)
    (mid := 9862793) (hi := 9868237) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9780523 9802433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9780523)
    (mid := 9791461) (hi := 9802433) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9802433 9824471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9802433)
    (mid := 9813409) (hi := 9824471) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9824471 9846469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9824471)
    (mid := 9835471) (hi := 9846469) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9846469 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9846469)
    (mid := 9857327) (hi := 9868237) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9780523 9824471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9780523)
    (mid := 9802433) (hi := 9824471) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9824471 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9824471)
    (mid := 9846469) (hi := 9868237) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9780523 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9780523)
    (mid := 9824471) (hi := 9868237) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9780523 9868237 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block111

#print axioms B699MiddleExtension.PrimorialBlocks.Block111.joined
