import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block093

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8204929, 8205103, 8205287, 8205467, 8205643, 8205817, 8205983, 8206141, 8206279, 8206463, 8206643, 8206817, 8206987, 8207161, 8207333, 8207513]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8204747 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8204747 8207513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8204747) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8207663, 8207827, 8208001, 8208181, 8208359, 8208449, 8208619, 8208803, 8208971, 8209151, 8209303, 8209483, 8209633, 8209787, 8209961, 8210141]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8207513 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8207513 8210141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8207513) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8210317, 8210497, 8210681, 8210837, 8211019, 8211197, 8211367, 8211523, 8211701, 8211883, 8212067, 8212213, 8212397, 8212553, 8212723, 8212907]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8210141 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8210141 8212907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8210141) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8213089, 8213273, 8213441, 8213603, 8213761, 8213897, 8214071, 8214253, 8214389, 8214571, 8214737, 8214911, 8215079, 8215253, 8215411, 8215579]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8212907 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8212907 8215579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8212907) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8215717, 8215897, 8216063, 8216231, 8216407, 8216573, 8216743, 8216927, 8217091, 8217271, 8217439, 8217623, 8217793, 8217973, 8218141, 8218319]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8215579 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8215579 8218319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8215579) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8218499, 8218681, 8218853, 8219033, 8219213, 8219357, 8219527, 8219711, 8219881, 8220013, 8220193, 8220341, 8220523, 8220691, 8220853, 8221027]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8218319 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8218319 8221027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8218319) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8221211, 8221391, 8221573, 8221753, 8221937, 8222119, 8222303, 8222483, 8222623, 8222807, 8222989, 8223169, 8223353, 8223499, 8223679, 8223863]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8221027 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8221027 8223863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8221027) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8224043, 8224219, 8224369, 8224543, 8224709, 8224877, 8225039, 8225207, 8225381, 8225551, 8225731, 8225873, 8226041, 8226209, 8226391, 8226553]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8223863 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8223863 8226553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8223863) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8226733, 8226899, 8227081, 8227259, 8227423, 8227607, 8227789, 8227957, 8228131, 8228293, 8228461, 8228603, 8228777, 8228959, 8229131, 8229313]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8226553 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8226553 8229313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8226553) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8229461, 8229631, 8229797, 8229959, 8230139, 8230309, 8230483, 8230643, 8230813, 8230979, 8231159, 8231341, 8231507, 8231683, 8231849, 8232017]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8229313 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8229313 8232017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8229313) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8232197, 8232373, 8232557, 8232739, 8232899, 8233039, 8233207, 8233369, 8233549, 8233723, 8233903, 8234081, 8234263, 8234419, 8234599, 8234773]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8232017 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8232017 8234773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8232017) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8234951, 8235131, 8235313, 8235473, 8235653, 8235827, 8236009, 8236181, 8236343, 8236499, 8236673, 8236843, 8237011, 8237191, 8237357, 8237533]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8234773 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8234773 8237533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8234773) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8237701, 8237881, 8238053, 8238227, 8238397, 8238563, 8238743, 8238907, 8239079, 8239261, 8239423, 8239607, 8239783, 8239967, 8240143, 8240273]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8237533 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8237533 8240273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8237533) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8240447, 8240629, 8240809, 8240989, 8241173, 8241349, 8241529, 8241703, 8241859, 8242043, 8242217, 8242363, 8242547, 8242727, 8242889, 8243069]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8240273 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8240273 8243069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8240273) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8243251, 8243429, 8243611, 8243791, 8243971, 8244139, 8244311, 8244491, 8244659, 8244829, 8245001, 8245177, 8245343, 8245519, 8245693, 8245877]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8243069 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8243069 8245877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8243069) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8246059, 8246243, 8246423, 8246599, 8246743, 8246897, 8247077, 8247257, 8247427, 8247599, 8247773, 8247949, 8248133, 8248313, 8248483, 8248663]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8245877 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8245877 8248663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8245877) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8248841, 8249023, 8249207, 8249389, 8249567, 8249723, 8249881, 8250059, 8250191, 8250373, 8250547, 8250727, 8250911, 8251049, 8251219, 8251403]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8248663 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8248663 8251403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8248663) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8251583, 8251753, 8251937, 8252093, 8252249, 8252411, 8252567, 8252747, 8252917, 8253101, 8253281, 8253461, 8253617, 8253799, 8253977, 8254139]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8251403 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8251403 8254139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8251403) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8254319, 8254457, 8254633, 8254801, 8254963, 8255147, 8255323, 8255501, 8255669, 8255837, 8256019, 8256197, 8256361, 8256541, 8256719, 8256889]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8254139 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8254139 8256889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8254139) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8257057, 8257237, 8257409, 8257589, 8257757, 8257889, 8258051, 8258233, 8258401, 8258573, 8258743, 8258911, 8259089, 8259271, 8259421, 8259571]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8256889 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8256889 8259571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8256889) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8259743, 8259907, 8260073, 8260223, 8260403, 8260547, 8260723, 8260883, 8261041, 8261177, 8261359, 8261521, 8261689, 8261857, 8262041, 8262193]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8259571 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8259571 8262193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8259571) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8262367, 8262547, 8262719, 8262889, 8263063, 8263237, 8263379, 8263553, 8263733, 8263909, 8264059, 8264239, 8264423, 8264593, 8264777, 8264959]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8262193 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8262193 8264959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8262193) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8265139, 8265311, 8265473, 8265637, 8265821, 8266003, 8266187, 8266351, 8266519, 8266703, 8266861, 8267041, 8267209, 8267393, 8267561, 8267719]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8264959 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8264959 8267719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8264959) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8267891, 8268067, 8268241, 8268419, 8268577, 8268761, 8268941, 8269117, 8269297, 8269477, 8269619, 8269763, 8269931, 8270077, 8270239, 8270419]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8267719 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8267719 8270419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8267719) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8270599, 8270767, 8270939, 8271113, 8271281, 8271457, 8271617, 8271793, 8271959, 8272129, 8272309, 8272493, 8272673, 8272853, 8272997, 8273143]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8270419 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8270419 8273143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8270419) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8273327, 8273479, 8273659, 8273831, 8274011, 8274157, 8274323, 8274499, 8274677, 8274841, 8275019, 8275187, 8275369, 8275541, 8275723, 8275903]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8273143 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8273143 8275903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8273143) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8276087, 8276231, 8276369, 8276551, 8276713, 8276893, 8277047, 8277229, 8277391, 8277553, 8277719, 8277889, 8278073, 8278247, 8278421, 8278603]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8275903 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8275903 8278603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8275903) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8278783, 8278961, 8279113, 8279291, 8279461, 8279641, 8279771, 8279933, 8280053, 8280199, 8280373, 8280557, 8280739, 8280917, 8281099, 8281249]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8278603 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8278603 8281249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8278603) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8281423, 8281597, 8281753, 8281927, 8282107, 8282291, 8282467, 8282639, 8282821, 8283001, 8283181, 8283361, 8283521, 8283697, 8283871, 8284051]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8281249 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8281249 8284051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8281249) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8284231, 8284391, 8284567, 8284739, 8284891, 8285071, 8285243, 8285411, 8285593, 8285723, 8285903, 8286037, 8286217, 8286379, 8286541, 8286713]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8284051 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8284051 8286713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8284051) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8286881, 8286997, 8287171, 8287351, 8287523, 8287693, 8287871, 8288041, 8288213, 8288353, 8288531, 8288689, 8288869, 8289053, 8289191, 8289367]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8286713 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8286713 8289367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8286713) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8289551, 8289731, 8289901, 8290081, 8290229, 8290411, 8290591, 8290771, 8290943, 8291117, 8291299, 8291483, 8291659, 8291839, 8292023, 8292203]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8289367 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8289367 8292203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8289367) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8204747 8210141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8204747)
    (mid := 8207513) (hi := 8210141) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8210141 8215579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8210141)
    (mid := 8212907) (hi := 8215579) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8215579 8221027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8215579)
    (mid := 8218319) (hi := 8221027) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8221027 8226553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8221027)
    (mid := 8223863) (hi := 8226553) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8226553 8232017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8226553)
    (mid := 8229313) (hi := 8232017) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8232017 8237533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8232017)
    (mid := 8234773) (hi := 8237533) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8237533 8243069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8237533)
    (mid := 8240273) (hi := 8243069) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8243069 8248663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8243069)
    (mid := 8245877) (hi := 8248663) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8248663 8254139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8248663)
    (mid := 8251403) (hi := 8254139) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8254139 8259571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8254139)
    (mid := 8256889) (hi := 8259571) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8259571 8264959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8259571)
    (mid := 8262193) (hi := 8264959) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8264959 8270419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8264959)
    (mid := 8267719) (hi := 8270419) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8270419 8275903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8270419)
    (mid := 8273143) (hi := 8275903) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8275903 8281249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8275903)
    (mid := 8278603) (hi := 8281249) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8281249 8286713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8281249)
    (mid := 8284051) (hi := 8286713) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8286713 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8286713)
    (mid := 8289367) (hi := 8292203) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8204747 8215579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8204747)
    (mid := 8210141) (hi := 8215579) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8215579 8226553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8215579)
    (mid := 8221027) (hi := 8226553) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8226553 8237533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8226553)
    (mid := 8232017) (hi := 8237533) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8237533 8248663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8237533)
    (mid := 8243069) (hi := 8248663) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8248663 8259571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8248663)
    (mid := 8254139) (hi := 8259571) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8259571 8270419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8259571)
    (mid := 8264959) (hi := 8270419) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8270419 8281249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8270419)
    (mid := 8275903) (hi := 8281249) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8281249 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8281249)
    (mid := 8286713) (hi := 8292203) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8204747 8226553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8204747)
    (mid := 8215579) (hi := 8226553) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8226553 8248663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8226553)
    (mid := 8237533) (hi := 8248663) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8248663 8270419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8248663)
    (mid := 8259571) (hi := 8270419) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8270419 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8270419)
    (mid := 8281249) (hi := 8292203) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8204747 8248663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8204747)
    (mid := 8226553) (hi := 8248663) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8248663 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8248663)
    (mid := 8270419) (hi := 8292203) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8204747 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8204747)
    (mid := 8248663) (hi := 8292203) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8204747 8292203 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block093

#print axioms B699MiddleExtension.PrimorialBlocks.Block093.joined
