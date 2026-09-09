import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block070

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6185303, 6185483, 6185651, 6185831, 6186007, 6186163, 6186347, 6186529, 6186709, 6186877, 6187039, 6187219, 6187393, 6187561, 6187739, 6187891]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6185143 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6185143 6187891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6185143) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6188071, 6188249, 6188411, 6188551, 6188717, 6188893, 6189077, 6189257, 6189433, 6189613, 6189793, 6189977, 6190153, 6190337, 6190489, 6190661]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6187891 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6187891 6190661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6187891) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6190843, 6190999, 6191153, 6191323, 6191501, 6191681, 6191849, 6192031, 6192211, 6192379, 6192541, 6192707, 6192883, 6193067, 6193249, 6193427]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6190661 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6190661 6193427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6190661) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6193609, 6193793, 6193973, 6194147, 6194329, 6194509, 6194663, 6194833, 6195017, 6195181, 6195353, 6195521, 6195697, 6195863, 6196037, 6196193]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6193427 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6193427 6196193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6193427) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6196369, 6196549, 6196733, 6196909, 6197089, 6197267, 6197447, 6197617, 6197801, 6197963, 6198139, 6198323, 6198497, 6198679, 6198859, 6199043]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6196193 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6196193 6199043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6196193) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6199211, 6199381, 6199559, 6199729, 6199891, 6200071, 6200239, 6200399, 6200581, 6200749, 6200923, 6201103, 6201287, 6201451, 6201599, 6201781]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6199043 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6199043 6201781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6199043) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6201941, 6202121, 6202291, 6202459, 6202633, 6202817, 6202993, 6203143, 6203311, 6203479, 6203663, 6203837, 6204019, 6204179, 6204353, 6204533]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6201781 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6201781 6204533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6201781) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6204703, 6204851, 6205033, 6205189, 6205369, 6205547, 6205711, 6205891, 6206069, 6206227, 6206393, 6206561, 6206737, 6206917, 6207101, 6207283]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6204533 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6204533 6207283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6204533) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6207427, 6207611, 6207793, 6207977, 6208159, 6208337, 6208513, 6208693, 6208861, 6209041, 6209213, 6209383, 6209551, 6209729, 6209911, 6210067]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6207283 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6207283 6210067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6207283) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6210247, 6210419, 6210599, 6210779, 6210949, 6211091, 6211259, 6211427, 6211609, 6211781, 6211963, 6212147, 6212321, 6212491, 6212671, 6212851]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6210067 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6210067 6212851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6210067) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6213029, 6213203, 6213367, 6213533, 6213689, 6213869, 6214051, 6214223, 6214399, 6214573, 6214757, 6214937, 6215101, 6215281, 6215459, 6215639]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6212851 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6212851 6215639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6212851) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6215813, 6215987, 6216149, 6216311, 6216479, 6216599, 6216779, 6216961, 6217103, 6217283, 6217457, 6217637, 6217817, 6217999, 6218161, 6218323]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6215639 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6215639 6218323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6215639) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6218489, 6218669, 6218837, 6219001, 6219173, 6219319, 6219503, 6219679, 6219853, 6220003, 6220187, 6220369, 6220519, 6220693, 6220871, 6221041]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6218323 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6218323 6221041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6218323) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6221213, 6221377, 6221561, 6221693, 6221869, 6222053, 6222233, 6222409, 6222551, 6222707, 6222883, 6223057, 6223211, 6223391, 6223561, 6223741]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6221041 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6221041 6223741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6221041) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6223909, 6224093, 6224269, 6224447, 6224629, 6224791, 6224971, 6225137, 6225319, 6225487, 6225649, 6225829, 6226007, 6226177, 6226361, 6226523]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6223741 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6223741 6226523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6223741) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6226687, 6226867, 6227033, 6227209, 6227393, 6227569, 6227747, 6227927, 6228091, 6228263, 6228413, 6228589, 6228773, 6228949, 6229133, 6229303]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6226523 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6226523 6229303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6226523) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6229471, 6229649, 6229829, 6229957, 6230131, 6230311, 6230443, 6230617, 6230797, 6230981, 6231151, 6231301, 6231481, 6231661, 6231833, 6231949]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6229303 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6229303 6231949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6229303) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6232099, 6232279, 6232459, 6232619, 6232801, 6232981, 6233153, 6233333, 6233503, 6233687, 6233867, 6234031, 6234211, 6234377, 6234559, 6234743]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6231949 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6231949 6234743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6231949) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6234923, 6235081, 6235241, 6235423, 6235601, 6235777, 6235961, 6236137, 6236309, 6236459, 6236639, 6236819, 6236999, 6237167, 6237331, 6237509]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6234743 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6234743 6237509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6234743) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6237689, 6237817, 6237949, 6238123, 6238307, 6238489, 6238667, 6238831, 6238987, 6239143, 6239327, 6239501, 6239683, 6239839, 6240019, 6240197]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6237509 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6237509 6240197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6237509) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6240373, 6240527, 6240701, 6240869, 6241043, 6241219, 6241399, 6241559, 6241733, 6241913, 6242087, 6242263, 6242443, 6242609, 6242779, 6242941]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6240197 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6240197 6242941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6240197) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6243109, 6243287, 6243469, 6243631, 6243791, 6243967, 6244099, 6244261, 6244439, 6244621, 6244793, 6244969, 6245153, 6245333, 6245513, 6245683]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6242941 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6242941 6245683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6242941) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6245831, 6245989, 6246161, 6246341, 6246523, 6246697, 6246881, 6247061, 6247243, 6247411, 6247583, 6247739, 6247919, 6248089, 6248269, 6248399]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6245683 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6245683 6248399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6245683) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6248579, 6248743, 6248899, 6249059, 6249227, 6249409, 6249571, 6249751, 6249923, 6250099, 6250261, 6250429, 6250597, 6250759, 6250919, 6251071]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6248399 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6248399 6251071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6248399) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6251237, 6251417, 6251599, 6251783, 6251963, 6252143, 6252247, 6252427, 6252611, 6252791, 6252959, 6253141, 6253321, 6253483, 6253633, 6253817]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6251071 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6251071 6253817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6251071) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6253993, 6254153, 6254329, 6254503, 6254687, 6254867, 6255013, 6255181, 6255349, 6255533, 6255713, 6255859, 6256043, 6256223, 6256381, 6256553]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6253817 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6253817 6256553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6253817) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6256729, 6256907, 6257089, 6257267, 6257431, 6257611, 6257791, 6257969, 6258137, 6258313, 6258481, 6258653, 6258821, 6259003, 6259177, 6259333]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6256553 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6256553 6259333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6256553) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6259471, 6259651, 6259831, 6259973, 6260153, 6260323, 6260503, 6260629, 6260803, 6260983, 6261121, 6261301, 6261449, 6261623, 6261799, 6261977]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6259333 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6259333 6261977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6259333) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6262147, 6262301, 6262453, 6262631, 6262801, 6262973, 6263137, 6263317, 6263501, 6263683, 6263849, 6264023, 6264199, 6264383, 6264553, 6264733]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6261977 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6261977 6264733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6261977) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6264917, 6265097, 6265271, 6265439, 6265601, 6265783, 6265967, 6266147, 6266329, 6266503, 6266683, 6266849, 6267031, 6267193, 6267377, 6267539]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6264733 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6264733 6267539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6264733) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6267719, 6267901, 6268063, 6268247, 6268403, 6268523, 6268693, 6268849, 6269033, 6269213, 6269383, 6269551, 6269717, 6269899, 6270083, 6270241]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6267539 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6267539 6270241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6267539) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6270419, 6270601, 6270769, 6270947, 6271129, 6271303, 6271477, 6271651, 6271817, 6271987, 6272171, 6272347, 6272531, 6272689, 6272873, 6273053]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6270241 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6270241 6273053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6270241) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6185143 6190661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6187891) (hi := 6190661) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6190661 6196193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6190661)
    (mid := 6193427) (hi := 6196193) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6196193 6201781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6196193)
    (mid := 6199043) (hi := 6201781) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6201781 6207283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6201781)
    (mid := 6204533) (hi := 6207283) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6207283 6212851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6207283)
    (mid := 6210067) (hi := 6212851) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6212851 6218323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6212851)
    (mid := 6215639) (hi := 6218323) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6218323 6223741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6218323)
    (mid := 6221041) (hi := 6223741) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6223741 6229303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6223741)
    (mid := 6226523) (hi := 6229303) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6229303 6234743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6229303)
    (mid := 6231949) (hi := 6234743) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6234743 6240197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6234743)
    (mid := 6237509) (hi := 6240197) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6240197 6245683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6240197)
    (mid := 6242941) (hi := 6245683) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6245683 6251071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6245683)
    (mid := 6248399) (hi := 6251071) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6251071 6256553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6251071)
    (mid := 6253817) (hi := 6256553) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6256553 6261977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6256553)
    (mid := 6259333) (hi := 6261977) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6261977 6267539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6261977)
    (mid := 6264733) (hi := 6267539) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6267539 6273053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6267539)
    (mid := 6270241) (hi := 6273053) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6185143 6196193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6190661) (hi := 6196193) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6196193 6207283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6196193)
    (mid := 6201781) (hi := 6207283) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6207283 6218323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6207283)
    (mid := 6212851) (hi := 6218323) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6218323 6229303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6218323)
    (mid := 6223741) (hi := 6229303) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6229303 6240197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6229303)
    (mid := 6234743) (hi := 6240197) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6240197 6251071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6240197)
    (mid := 6245683) (hi := 6251071) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6251071 6261977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6251071)
    (mid := 6256553) (hi := 6261977) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6261977 6273053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6261977)
    (mid := 6267539) (hi := 6273053) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6185143 6207283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6196193) (hi := 6207283) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6207283 6229303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6207283)
    (mid := 6218323) (hi := 6229303) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6229303 6251071 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6229303)
    (mid := 6240197) (hi := 6251071) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6251071 6273053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6251071)
    (mid := 6261977) (hi := 6273053) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6185143 6229303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6207283) (hi := 6229303) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6229303 6273053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6229303)
    (mid := 6251071) (hi := 6273053) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6185143 6273053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6229303) (hi := 6273053) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6185143 6273053 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block070

#print axioms B699MiddleExtension.PrimorialBlocks.Block070.joined
