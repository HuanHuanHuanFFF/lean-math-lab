import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block022

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1957913, 1958069, 1958249, 1958431, 1958603, 1958777, 1958959, 1959091, 1959263, 1959427, 1959599, 1959773, 1959949, 1960121, 1960303, 1960481]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1957729 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1957729 1960481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1957729) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1960649, 1960813, 1960993, 1961173, 1961347, 1961527, 1961683, 1961863, 1962041, 1962211, 1962379, 1962557, 1962731, 1962911, 1963081, 1963259]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1960481 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1960481 1963259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1960481) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1963433, 1963567, 1963751, 1963921, 1964101, 1964243, 1964419, 1964603, 1964773, 1964951, 1965133, 1965289, 1965463, 1965647, 1965781, 1965959]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1963259 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1963259 1965959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1963259) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1966127, 1966303, 1966463, 1966619, 1966793, 1966973, 1967149, 1967323, 1967501, 1967683, 1967851, 1968023, 1968203, 1968383, 1968563, 1968739]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1965959 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1965959 1968739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1965959) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1968919, 1969073, 1969249, 1969423, 1969589, 1969757, 1969921, 1970083, 1970263, 1970431, 1970599, 1970783, 1970959, 1971143, 1971313, 1971481]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1968739 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1968739 1971481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1968739) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1971659, 1971833, 1972013, 1972177, 1972361, 1972541, 1972721, 1972891, 1973053, 1973233, 1973417, 1973597, 1973779, 1973957, 1974121, 1974299]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1971481 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1971481 1974299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1971481) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1974457, 1974641, 1974787, 1974967, 1975147, 1975321, 1975499, 1975669, 1975823, 1975997, 1976173, 1976357, 1976537, 1976717, 1976869, 1977023]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1974299 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1974299 1977023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1974299) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1977203, 1977361, 1977541, 1977721, 1977863, 1978037, 1978219, 1978393, 1978567, 1978741, 1978913, 1979077, 1979261, 1979441, 1979617, 1979779]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1977023 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1977023 1979779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1977023) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1979947, 1980113, 1980289, 1980469, 1980637, 1980821, 1980991, 1981169, 1981349, 1981523, 1981699, 1981883, 1982059, 1982219, 1982401, 1982579]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1979779 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1979779 1982579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1979779) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1982741, 1982921, 1983103, 1983257, 1983439, 1983601, 1983767, 1983931, 1984109, 1984271, 1984453, 1984571, 1984753, 1984921, 1985077, 1985257]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1982579 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1982579 1985257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1982579) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1985441, 1985623, 1985803, 1985987, 1986169, 1986337, 1986499, 1986683, 1986839, 1987003, 1987157, 1987339, 1987523, 1987703, 1987883, 1988057]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1985257 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1985257 1988057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1985257) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1988237, 1988411, 1988587, 1988759, 1988941, 1989107, 1989277, 1989419, 1989583, 1989721, 1989899, 1990081, 1990253, 1990433, 1990607, 1990787]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1988057 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1988057 1990787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1988057) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1990969, 1991153, 1991293, 1991477, 1991653, 1991837, 1991999, 1992181, 1992343, 1992527, 1992691, 1992841, 1992983, 1993163, 1993339, 1993513]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1990787 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1990787 1993513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1990787) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1993697, 1993877, 1994059, 1994227, 1994387, 1994569, 1994743, 1994911, 1995083, 1995263, 1995431, 1995611, 1995787, 1995971, 1996129, 1996303]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1993513 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1993513 1996303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1993513) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1996487, 1996649, 1996829, 1997003, 1997183, 1997351, 1997531, 1997713, 1997887, 1998067, 1998251, 1998431, 1998611, 1998793, 1998977, 1999121]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1996303 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1996303 1999121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1996303) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1999303, 1999471, 1999651, 1999819, 2000003, 2000177, 2000353, 2000521, 2000699, 2000863, 2001037, 2001211, 2001371, 2001553, 2001731, 2001911]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1999121 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1999121 2001911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1999121) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [2002093, 2002267, 2002417, 2002579, 2002747, 2002927, 2003087, 2003269, 2003447, 2003627, 2003803, 2003971, 2004137, 2004313, 2004479, 2004661]
theorem check16 : primorialChainCheck 4473 primorial4473 184 2001911 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 2001911 2004661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2001911) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [2004839, 2005021, 2005193, 2005373, 2005547, 2005723, 2005903, 2006087, 2006239, 2006393, 2006573, 2006707, 2006891, 2007067, 2007251, 2007433]
theorem check17 : primorialChainCheck 4473 primorial4473 184 2004661 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 2004661 2007433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2004661) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [2007617, 2007791, 2007961, 2008141, 2008313, 2008493, 2008673, 2008823, 2008973, 2009113, 2009251, 2009407, 2009543, 2009719, 2009897, 2010061]
theorem check18 : primorialChainCheck 4473 primorial4473 184 2007433 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 2007433 2010061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2007433) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [2010241, 2010413, 2010583, 2010733, 2010901, 2011081, 2011259, 2011441, 2011613, 2011769, 2011951, 2012123, 2012299, 2012471, 2012641, 2012821]
theorem check19 : primorialChainCheck 4473 primorial4473 184 2010061 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 2010061 2012821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2010061) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [2013001, 2013181, 2013359, 2013541, 2013721, 2013899, 2014081, 2014237, 2014393, 2014567, 2014739, 2014921, 2015089, 2015269, 2015443, 2015627]
theorem check20 : primorialChainCheck 4473 primorial4473 184 2012821 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 2012821 2015627 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2012821) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [2015801, 2015977, 2016139, 2016323, 2016493, 2016673, 2016857, 2017027, 2017189, 2017369, 2017549, 2017727, 2017909, 2018077, 2018251, 2018413]
theorem check21 : primorialChainCheck 4473 primorial4473 184 2015627 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 2015627 2018413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2015627) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [2018593, 2018773, 2018957, 2019137, 2019317, 2019487, 2019659, 2019827, 2020003, 2020181, 2020321, 2020493, 2020663, 2020831, 2021009, 2021191]
theorem check22 : primorialChainCheck 4473 primorial4473 184 2018413 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 2018413 2021191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2018413) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [2021339, 2021519, 2021699, 2021879, 2022049, 2022233, 2022403, 2022583, 2022767, 2022893, 2023067, 2023223, 2023393, 2023577, 2023753, 2023921]
theorem check23 : primorialChainCheck 4473 primorial4473 184 2021191 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 2021191 2023921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2021191) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [2024101, 2024263, 2024419, 2024599, 2024779, 2024933, 2025109, 2025281, 2025437, 2025593, 2025767, 2025949, 2026121, 2026303, 2026487, 2026669]
theorem check24 : primorialChainCheck 4473 primorial4473 184 2023921 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 2023921 2026669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2023921) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [2026841, 2027023, 2027177, 2027359, 2027537, 2027719, 2027903, 2028077, 2028241, 2028413, 2028589, 2028773, 2028947, 2029123, 2029301, 2029483]
theorem check25 : primorialChainCheck 4473 primorial4473 184 2026669 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 2026669 2029483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2026669) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [2029667, 2029843, 2030009, 2030183, 2030363, 2030533, 2030711, 2030881, 2031059, 2031229, 2031409, 2031593, 2031767, 2031937, 2032111, 2032273]
theorem check26 : primorialChainCheck 4473 primorial4473 184 2029483 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 2029483 2032273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2029483) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [2032439, 2032621, 2032799, 2032973, 2033111, 2033287, 2033461, 2033639, 2033807, 2033989, 2034173, 2034343, 2034521, 2034689, 2034869, 2035043]
theorem check27 : primorialChainCheck 4473 primorial4473 184 2032273 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 2032273 2035043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2032273) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [2035213, 2035391, 2035567, 2035729, 2035879, 2036051, 2036219, 2036393, 2036569, 2036747, 2036929, 2037083, 2037253, 2037437, 2037619, 2037803]
theorem check28 : primorialChainCheck 4473 primorial4473 184 2035043 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 2035043 2037803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2035043) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [2037979, 2038163, 2038319, 2038499, 2038661, 2038831, 2038979, 2039161, 2039339, 2039509, 2039671, 2039837, 2040019, 2040193, 2040377, 2040559]
theorem check29 : primorialChainCheck 4473 primorial4473 184 2037803 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 2037803 2040559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2037803) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [2040743, 2040919, 2041097, 2041231, 2041387, 2041561, 2041729, 2041891, 2042059, 2042237, 2042419, 2042603, 2042783, 2042933, 2043109, 2043289]
theorem check30 : primorialChainCheck 4473 primorial4473 184 2040559 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 2040559 2043289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2040559) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [2043467, 2043647, 2043817, 2043997, 2044169, 2044351, 2044519, 2044697, 2044873, 2045053, 2045213, 2045377, 2045557, 2045731, 2045909, 2046073]
theorem check31 : primorialChainCheck 4473 primorial4473 184 2043289 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 2043289 2046073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2043289) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1957729 1963259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 1960481) (hi := 1963259) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1963259 1968739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1963259)
    (mid := 1965959) (hi := 1968739) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1968739 1974299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1968739)
    (mid := 1971481) (hi := 1974299) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1974299 1979779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1974299)
    (mid := 1977023) (hi := 1979779) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1979779 1985257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1979779)
    (mid := 1982579) (hi := 1985257) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1985257 1990787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1985257)
    (mid := 1988057) (hi := 1990787) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1990787 1996303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1990787)
    (mid := 1993513) (hi := 1996303) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1996303 2001911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1996303)
    (mid := 1999121) (hi := 2001911) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 2001911 2007433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2001911)
    (mid := 2004661) (hi := 2007433) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 2007433 2012821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2007433)
    (mid := 2010061) (hi := 2012821) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 2012821 2018413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2012821)
    (mid := 2015627) (hi := 2018413) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 2018413 2023921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2018413)
    (mid := 2021191) (hi := 2023921) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 2023921 2029483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2023921)
    (mid := 2026669) (hi := 2029483) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 2029483 2035043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2029483)
    (mid := 2032273) (hi := 2035043) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 2035043 2040559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2035043)
    (mid := 2037803) (hi := 2040559) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 2040559 2046073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2040559)
    (mid := 2043289) (hi := 2046073) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1957729 1968739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 1963259) (hi := 1968739) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1968739 1979779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1968739)
    (mid := 1974299) (hi := 1979779) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1979779 1990787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1979779)
    (mid := 1985257) (hi := 1990787) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1990787 2001911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1990787)
    (mid := 1996303) (hi := 2001911) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 2001911 2012821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2001911)
    (mid := 2007433) (hi := 2012821) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 2012821 2023921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2012821)
    (mid := 2018413) (hi := 2023921) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 2023921 2035043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2023921)
    (mid := 2029483) (hi := 2035043) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 2035043 2046073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2035043)
    (mid := 2040559) (hi := 2046073) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1957729 1979779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 1968739) (hi := 1979779) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1979779 2001911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1979779)
    (mid := 1990787) (hi := 2001911) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 2001911 2023921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2001911)
    (mid := 2012821) (hi := 2023921) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 2023921 2046073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2023921)
    (mid := 2035043) (hi := 2046073) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1957729 2001911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 1979779) (hi := 2001911) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 2001911 2046073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2001911)
    (mid := 2023921) (hi := 2046073) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1957729 2046073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 2001911) (hi := 2046073) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1957729 2046073 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block022

#print axioms B699MiddleExtension.PrimorialBlocks.Block022.joined
