import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block123

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10831969, 10832153, 10832321, 10832477, 10832659, 10832837, 10833019, 10833187, 10833371, 10833551, 10833731, 10833899, 10834079, 10834249, 10834433, 10834601]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10831837 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10831837 10834601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10831837) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10834781, 10834963, 10835147, 10835329, 10835471, 10835653, 10835831, 10835971, 10836149, 10836317, 10836491, 10836673, 10836851, 10837033, 10837159, 10837303]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10834601 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10834601 10837303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10834601) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10837471, 10837639, 10837819, 10837973, 10838147, 10838323, 10838507, 10838689, 10838869, 10838981, 10839163, 10839347, 10839527, 10839701, 10839869, 10840021]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10837303 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10837303 10840021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10837303) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10840201, 10840369, 10840553, 10840733, 10840913, 10841093, 10841263, 10841431, 10841603, 10841783, 10841959, 10842137, 10842257, 10842437, 10842619, 10842803]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10840021 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10840021 10842803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10840021) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10842967, 10843117, 10843291, 10843463, 10843631, 10843801, 10843979, 10844143, 10844321, 10844501, 10844651, 10844833, 10845017, 10845187, 10845353, 10845529]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10842803 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10842803 10845529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10842803) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10845697, 10845871, 10846037, 10846219, 10846403, 10846579, 10846751, 10846933, 10847113, 10847297, 10847471, 10847633, 10847807, 10847983, 10848163, 10848307]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10845529 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10845529 10848307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10845529) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10848491, 10848671, 10848823, 10849001, 10849183, 10849357, 10849541, 10849673, 10849841, 10850023, 10850183, 10850327, 10850473, 10850629, 10850813, 10850993]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10848307 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10848307 10850993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10848307) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10851163, 10851343, 10851497, 10851671, 10851851, 10852033, 10852213, 10852381, 10852559, 10852739, 10852921, 10853093, 10853267, 10853449, 10853611, 10853789]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10850993 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10850993 10853789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10850993) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10853963, 10854131, 10854307, 10854461, 10854637, 10854821, 10855003, 10855181, 10855349, 10855531, 10855711, 10855879, 10856009, 10856173, 10856347, 10856507]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10853789 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10853789 10856507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10853789) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10856669, 10856831, 10857001, 10857167, 10857337, 10857521, 10857703, 10857871, 10858051, 10858213, 10858391, 10858567, 10858751, 10858933, 10859113, 10859287]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10856507 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10856507 10859287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10856507) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10859461, 10859603, 10859767, 10859939, 10860119, 10860299, 10860481, 10860649, 10860809, 10860973, 10861139, 10861307, 10861489, 10861663, 10861817, 10861999]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10859287 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10859287 10861999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10859287) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10862179, 10862363, 10862479, 10862659, 10862837, 10863019, 10863169, 10863353, 10863511, 10863691, 10863871, 10863973, 10864157, 10864339, 10864507, 10864691]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10861999 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10861999 10864691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10861999) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10864859, 10865033, 10865191, 10865357, 10865471, 10865641, 10865819, 10866001, 10866173, 10866343, 10866521, 10866683, 10866839, 10866997, 10867177, 10867321]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10864691 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10864691 10867321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10864691) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10867469, 10867651, 10867817, 10867991, 10868173, 10868353, 10868537, 10868699, 10868867, 10869037, 10869211, 10869367, 10869541, 10869713, 10869889, 10870073]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10867321 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10867321 10870073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10867321) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10870253, 10870423, 10870591, 10870757, 10870921, 10871099, 10871243, 10871417, 10871593, 10871771, 10871953, 10872137, 10872317, 10872497, 10872671, 10872853]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10870073 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10870073 10872853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10870073) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10872991, 10873171, 10873337, 10873517, 10873697, 10873879, 10874053, 10874233, 10874393, 10874557, 10874723, 10874887, 10875071, 10875253, 10875437, 10875617]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10872853 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10872853 10875617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10872853) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10875791, 10875959, 10876121, 10876301, 10876469, 10876643, 10876823, 10876997, 10877179, 10877357, 10877527, 10877693, 10877863, 10878031, 10878209, 10878389]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10875617 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10875617 10878389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10875617) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10878541, 10878709, 10878883, 10879051, 10879223, 10879403, 10879579, 10879751, 10879931, 10880099, 10880281, 10880461, 10880593, 10880777, 10880959, 10881137]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10878389 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10878389 10881137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10878389) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10881313, 10881491, 10881631, 10881803, 10881979, 10882133, 10882303, 10882481, 10882661, 10882819, 10882997, 10883177, 10883357, 10883533, 10883699, 10883881]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10881137 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10881137 10883881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10881137) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10884059, 10884241, 10884409, 10884593, 10884767, 10884949, 10885111, 10885291, 10885471, 10885621, 10885793, 10885943, 10886087, 10886269, 10886441, 10886599]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10883881 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10883881 10886599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10883881) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10886767, 10886899, 10887077, 10887241, 10887421, 10887593, 10887757, 10887941, 10888093, 10888277, 10888457, 10888613, 10888783, 10888961, 10889119, 10889303]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10886599 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10886599 10889303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10886599) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10889441, 10889623, 10889779, 10889953, 10890127, 10890301, 10890479, 10890637, 10890821, 10890989, 10891163, 10891337, 10891519, 10891703, 10891879, 10892059]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10889303 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10889303 10892059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10889303) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10892243, 10892423, 10892591, 10892773, 10892957, 10893101, 10893271, 10893451, 10893629, 10893811, 10893979, 10894159, 10894321, 10894493, 10894673, 10894843]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10892059 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10892059 10894843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10892059) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10894993, 10895153, 10895333, 10895513, 10895671, 10895837, 10896013, 10896121, 10896293, 10896467, 10896649, 10896829, 10897001, 10897169, 10897333, 10897487]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10894843 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10894843 10897487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10894843) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10897657, 10897801, 10897981, 10898141, 10898311, 10898491, 10898663, 10898821, 10899001, 10899181, 10899353, 10899529, 10899701, 10899883, 10900067, 10900231]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10897487 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10897487 10900231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10897487) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10900403, 10900583, 10900753, 10900937, 10901083, 10901257, 10901431, 10901599, 10901741, 10901911, 10902077, 10902239, 10902403, 10902587, 10902757, 10902937]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10900231 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10900231 10902937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10900231) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10903121, 10903297, 10903481, 10903631, 10903813, 10903993, 10904149, 10904287, 10904471, 10904639, 10904821, 10904989, 10905173, 10905353, 10905533, 10905709]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10902937 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10902937 10905709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10902937) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10905889, 10906073, 10906253, 10906429, 10906573, 10906751, 10906933, 10907093, 10907263, 10907417, 10907581, 10907759, 10907917, 10908061, 10908217, 10908349]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10905709 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10905709 10908349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10905709) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10908529, 10908697, 10908871, 10909049, 10909231, 10909369, 10909541, 10909697, 10909879, 10910051, 10910201, 10910381, 10910561, 10910743, 10910917, 10911079]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10908349 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10908349 10911079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10908349) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10911247, 10911431, 10911601, 10911779, 10911961, 10912063, 10912247, 10912427, 10912607, 10912723, 10912907, 10913081, 10913263, 10913423, 10913597, 10913723]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10911079 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10911079 10913723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10911079) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10913899, 10914083, 10914247, 10914427, 10914599, 10914781, 10914961, 10915141, 10915321, 10915493, 10915657, 10915831, 10915997, 10916177, 10916333, 10916497]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10913723 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10913723 10916497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10913723) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10916663, 10916833, 10917017, 10917187, 10917329, 10917503, 10917679, 10917839, 10917971, 10918151, 10918321, 10918499, 10918681, 10918849, 10919023, 10919201]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10916497 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10916497 10919201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10916497) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10831837 10837303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10831837)
    (mid := 10834601) (hi := 10837303) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10837303 10842803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10837303)
    (mid := 10840021) (hi := 10842803) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10842803 10848307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10842803)
    (mid := 10845529) (hi := 10848307) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10848307 10853789 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10848307)
    (mid := 10850993) (hi := 10853789) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10853789 10859287 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10853789)
    (mid := 10856507) (hi := 10859287) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10859287 10864691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10859287)
    (mid := 10861999) (hi := 10864691) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10864691 10870073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10864691)
    (mid := 10867321) (hi := 10870073) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10870073 10875617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10870073)
    (mid := 10872853) (hi := 10875617) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10875617 10881137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10875617)
    (mid := 10878389) (hi := 10881137) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10881137 10886599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10881137)
    (mid := 10883881) (hi := 10886599) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10886599 10892059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10886599)
    (mid := 10889303) (hi := 10892059) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10892059 10897487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10892059)
    (mid := 10894843) (hi := 10897487) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10897487 10902937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10897487)
    (mid := 10900231) (hi := 10902937) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10902937 10908349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10902937)
    (mid := 10905709) (hi := 10908349) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10908349 10913723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10908349)
    (mid := 10911079) (hi := 10913723) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10913723 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10913723)
    (mid := 10916497) (hi := 10919201) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10831837 10842803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10831837)
    (mid := 10837303) (hi := 10842803) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10842803 10853789 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10842803)
    (mid := 10848307) (hi := 10853789) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10853789 10864691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10853789)
    (mid := 10859287) (hi := 10864691) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10864691 10875617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10864691)
    (mid := 10870073) (hi := 10875617) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10875617 10886599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10875617)
    (mid := 10881137) (hi := 10886599) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10886599 10897487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10886599)
    (mid := 10892059) (hi := 10897487) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10897487 10908349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10897487)
    (mid := 10902937) (hi := 10908349) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10908349 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10908349)
    (mid := 10913723) (hi := 10919201) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10831837 10853789 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10831837)
    (mid := 10842803) (hi := 10853789) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10853789 10875617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10853789)
    (mid := 10864691) (hi := 10875617) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10875617 10897487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10875617)
    (mid := 10886599) (hi := 10897487) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10897487 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10897487)
    (mid := 10908349) (hi := 10919201) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10831837 10875617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10831837)
    (mid := 10853789) (hi := 10875617) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10875617 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10875617)
    (mid := 10897487) (hi := 10919201) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10831837 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10831837)
    (mid := 10875617) (hi := 10919201) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10831837 10919201 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block123

#print axioms B699MiddleExtension.PrimorialBlocks.Block123.joined
