import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block122

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10744639, 10744813, 10744997, 10745179, 10745363, 10745543, 10745723, 10745897, 10746053, 10746163, 10746341, 10746509, 10746683, 10746851, 10747021, 10747189]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10744477 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10744477 10747189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10744477) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10747367, 10747547, 10747687, 10747843, 10748011, 10748161, 10748333, 10748513, 10748693, 10748873, 10749029, 10749199, 10749379, 10749493, 10749677, 10749857]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10747189 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10747189 10749857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10747189) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10750037, 10750193, 10750373, 10750547, 10750723, 10750879, 10751047, 10751231, 10751413, 10751597, 10751773, 10751957, 10752139, 10752317, 10752463, 10752647]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10749857 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10749857 10752647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10749857) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10752821, 10753003, 10753159, 10753343, 10753513, 10753697, 10753879, 10754063, 10754213, 10754377, 10754561, 10754729, 10754899, 10755037, 10755211, 10755379]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10752647 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10752647 10755379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10752647) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10755553, 10755727, 10755907, 10756079, 10756259, 10756441, 10756607, 10756777, 10756957, 10757111, 10757291, 10757473, 10757653, 10757833, 10758017, 10758197]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10755379 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10755379 10758197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10755379) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10758373, 10758547, 10758721, 10758893, 10759057, 10759237, 10759421, 10759579, 10759733, 10759897, 10760063, 10760231, 10760413, 10760591, 10760767, 10760927]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10758197 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10758197 10760927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10758197) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10761109, 10761293, 10761469, 10761649, 10761827, 10762001, 10762181, 10762351, 10762519, 10762699, 10762883, 10763059, 10763239, 10763419, 10763591, 10763759]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10760927 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10760927 10763759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10760927) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10763939, 10764119, 10764301, 10764473, 10764641, 10764821, 10764997, 10765169, 10765331, 10765501, 10765669, 10765841, 10766009, 10766191, 10766363, 10766543]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10763759 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10763759 10766543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10763759) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10766687, 10766869, 10767047, 10767209, 10767373, 10767551, 10767733, 10767907, 10768091, 10768273, 10768453, 10768631, 10768799, 10768981, 10769147, 10769323]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10766543 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10766543 10769323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10766543) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10769503, 10769669, 10769851, 10770031, 10770161, 10770323, 10770499, 10770667, 10770847, 10771009, 10771177, 10771361, 10771517, 10771687, 10771819, 10771997]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10769323 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10769323 10771997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10769323) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10772171, 10772329, 10772497, 10772647, 10772831, 10773013, 10773187, 10773319, 10773493, 10773677, 10773859, 10774033, 10774207, 10774343, 10774523, 10774681]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10771997 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10771997 10774681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10771997) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10774859, 10775041, 10775213, 10775389, 10775573, 10775747, 10775911, 10776083, 10776263, 10776433, 10776613, 10776791, 10776919, 10777103, 10777253, 10777433]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10774681 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10774681 10777433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10774681) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10777607, 10777787, 10777969, 10778147, 10778303, 10778473, 10778657, 10778819, 10778993, 10779169, 10779347, 10779521, 10779673, 10779841, 10779997, 10780181]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10777433 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10777433 10780181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10777433) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10780361, 10780519, 10780699, 10780879, 10781063, 10781233, 10781399, 10781581, 10781761, 10781929, 10782103, 10782271, 10782449, 10782623, 10782767, 10782911]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10780181 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10780181 10782911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10780181) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10783093, 10783271, 10783453, 10783637, 10783819, 10784003, 10784177, 10784339, 10784519, 10784699, 10784867, 10785031, 10785193, 10785373, 10785557, 10785713]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10782911 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10782911 10785713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10782911) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10785869, 10786051, 10786229, 10786411, 10786583, 10786759, 10786921, 10787099, 10787251, 10787377, 10787549, 10787731, 10787873, 10788023, 10788199, 10788383]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10785713 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10785713 10788383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10785713) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10788559, 10788737, 10788919, 10789081, 10789249, 10789411, 10789589, 10789763, 10789939, 10790123, 10790303, 10790467, 10790623, 10790789, 10790963, 10791133]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10788383 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10788383 10791133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10788383) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10791307, 10791467, 10791647, 10791793, 10791967, 10792151, 10792319, 10792489, 10792673, 10792813, 10792987, 10793171, 10793353, 10793527, 10793689, 10793851]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10791133 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10791133 10793851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10791133) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10794013, 10794181, 10794359, 10794529, 10794703, 10794887, 10795067, 10795247, 10795427, 10795607, 10795787, 10795957, 10796141, 10796321, 10796477, 10796647]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10793851 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10793851 10796647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10793851) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10796809, 10796977, 10797161, 10797323, 10797487, 10797617, 10797763, 10797931, 10798093, 10798267, 10798439, 10798609, 10798793, 10798967, 10799141, 10799309]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10796647 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10796647 10799309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10796647) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10799491, 10799603, 10799779, 10799963, 10800143, 10800311, 10800487, 10800641, 10800793, 10800973, 10801111, 10801289, 10801459, 10801639, 10801801, 10801979]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10799309 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10799309 10801979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10799309) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10802161, 10802333, 10802509, 10802683, 10802867, 10803047, 10803227, 10803391, 10803547, 10803673, 10803853, 10804019, 10804187, 10804363, 10804529, 10804699]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10801979 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10801979 10804699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10801979) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10804883, 10805063, 10805237, 10805413, 10805573, 10805741, 10805923, 10806097, 10806233, 10806401, 10806571, 10806751, 10806931, 10807099, 10807273, 10807457]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10804699 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10804699 10807457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10804699) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10807639, 10807817, 10807997, 10808129, 10808299, 10808471, 10808653, 10808771, 10808951, 10809133, 10809307, 10809457, 10809619, 10809791, 10809961, 10810139]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10807457 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10807457 10810139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10807457) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10810321, 10810493, 10810663, 10810763, 10810937, 10811117, 10811279, 10811459, 10811639, 10811821, 10811989, 10812167, 10812341, 10812523, 10812667, 10812839]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10810139 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10810139 10812839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10810139) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10813021, 10813199, 10813379, 10813559, 10813729, 10813889, 10814047, 10814203, 10814387, 10814539, 10814719, 10814833, 10815017, 10815197, 10815377, 10815557]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10812839 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10812839 10815557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10812839) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10815737, 10815901, 10816079, 10816249, 10816409, 10816571, 10816747, 10816889, 10817057, 10817239, 10817413, 10817561, 10817743, 10817927, 10818109, 10818293]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10815557 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10815557 10818293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10815557) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10818463, 10818641, 10818779, 10818949, 10819103, 10819271, 10819433, 10819583, 10819747, 10819891, 10820057, 10820239, 10820413, 10820591, 10820749, 10820933]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10818293 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10818293 10820933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10818293) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10821101, 10821277, 10821409, 10821589, 10821763, 10821947, 10822129, 10822297, 10822477, 10822657, 10822817, 10822997, 10823173, 10823347, 10823531, 10823671]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10820933 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10820933 10823671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10820933) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10823851, 10824001, 10824179, 10824353, 10824503, 10824677, 10824857, 10825037, 10825219, 10825361, 10825537, 10825699, 10825883, 10826047, 10826213, 10826393]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10823671 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10823671 10826393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10823671) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10826573, 10826743, 10826917, 10827097, 10827269, 10827449, 10827631, 10827811, 10827983, 10828121, 10828297, 10828481, 10828627, 10828793, 10828943, 10829101]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10826393 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10826393 10829101 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10826393) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10829279, 10829461, 10829603, 10829771, 10829939, 10830103, 10830283, 10830461, 10830641, 10830823, 10831001, 10831127, 10831309, 10831489, 10831661, 10831837]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10829101 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10829101 10831837 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10829101) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10744477 10749857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10747189) (hi := 10749857) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10749857 10755379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10749857)
    (mid := 10752647) (hi := 10755379) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10755379 10760927 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10755379)
    (mid := 10758197) (hi := 10760927) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10760927 10766543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10760927)
    (mid := 10763759) (hi := 10766543) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10766543 10771997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10766543)
    (mid := 10769323) (hi := 10771997) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10771997 10777433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10771997)
    (mid := 10774681) (hi := 10777433) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10777433 10782911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10777433)
    (mid := 10780181) (hi := 10782911) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10782911 10788383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10782911)
    (mid := 10785713) (hi := 10788383) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10788383 10793851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10788383)
    (mid := 10791133) (hi := 10793851) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10793851 10799309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10793851)
    (mid := 10796647) (hi := 10799309) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10799309 10804699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10799309)
    (mid := 10801979) (hi := 10804699) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10804699 10810139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10804699)
    (mid := 10807457) (hi := 10810139) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10810139 10815557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10810139)
    (mid := 10812839) (hi := 10815557) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10815557 10820933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10815557)
    (mid := 10818293) (hi := 10820933) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10820933 10826393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10820933)
    (mid := 10823671) (hi := 10826393) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10826393 10831837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10826393)
    (mid := 10829101) (hi := 10831837) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10744477 10755379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10749857) (hi := 10755379) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10755379 10766543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10755379)
    (mid := 10760927) (hi := 10766543) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10766543 10777433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10766543)
    (mid := 10771997) (hi := 10777433) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10777433 10788383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10777433)
    (mid := 10782911) (hi := 10788383) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10788383 10799309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10788383)
    (mid := 10793851) (hi := 10799309) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10799309 10810139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10799309)
    (mid := 10804699) (hi := 10810139) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10810139 10820933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10810139)
    (mid := 10815557) (hi := 10820933) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10820933 10831837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10820933)
    (mid := 10826393) (hi := 10831837) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10744477 10766543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10755379) (hi := 10766543) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10766543 10788383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10766543)
    (mid := 10777433) (hi := 10788383) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10788383 10810139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10788383)
    (mid := 10799309) (hi := 10810139) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10810139 10831837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10810139)
    (mid := 10820933) (hi := 10831837) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10744477 10788383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10766543) (hi := 10788383) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10788383 10831837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10788383)
    (mid := 10810139) (hi := 10831837) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10744477 10831837 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10788383) (hi := 10831837) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10744477 10831837 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block122

#print axioms B699MiddleExtension.PrimorialBlocks.Block122.joined
