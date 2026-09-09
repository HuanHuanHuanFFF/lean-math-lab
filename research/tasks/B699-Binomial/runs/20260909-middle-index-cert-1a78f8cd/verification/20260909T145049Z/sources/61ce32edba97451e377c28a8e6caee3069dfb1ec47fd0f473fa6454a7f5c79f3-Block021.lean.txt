import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block021

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [1869449, 1869631, 1869793, 1869971, 1870147, 1870327, 1870511, 1870669, 1870853, 1871029, 1871213, 1871383, 1871561, 1871743, 1871927, 1872109]
theorem check0 : primorialChainCheck 4473 primorial4473 184 1869293 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 1869293 1872109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1869293) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [1872289, 1872473, 1872631, 1872799, 1872971, 1873147, 1873321, 1873499, 1873681, 1873849, 1874021, 1874189, 1874351, 1874527, 1874699, 1874881]
theorem check1 : primorialChainCheck 4473 primorial4473 184 1872109 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 1872109 1874881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1872109) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [1875061, 1875241, 1875403, 1875583, 1875751, 1875901, 1876081, 1876261, 1876417, 1876597, 1876781, 1876951, 1877111, 1877279, 1877461, 1877621]
theorem check2 : primorialChainCheck 4473 primorial4473 184 1874881 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 1874881 1877621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1874881) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [1877801, 1877983, 1878139, 1878323, 1878493, 1878677, 1878841, 1878991, 1879151, 1879301, 1879477, 1879643, 1879817, 1879967, 1880129, 1880309]
theorem check3 : primorialChainCheck 4473 primorial4473 184 1877621 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 1877621 1880309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1877621) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [1880467, 1880647, 1880831, 1880993, 1881163, 1881343, 1881521, 1881697, 1881881, 1882063, 1882247, 1882429, 1882607, 1882787, 1882963, 1883129]
theorem check4 : primorialChainCheck 4473 primorial4473 184 1880309 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 1880309 1883129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1880309) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [1883293, 1883477, 1883659, 1883773, 1883941, 1884121, 1884293, 1884469, 1884611, 1884793, 1884973, 1885153, 1885321, 1885501, 1885673, 1885847]
theorem check5 : primorialChainCheck 4473 primorial4473 184 1883129 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 1883129 1885847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1883129) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [1886029, 1886197, 1886351, 1886527, 1886701, 1886869, 1887049, 1887229, 1887409, 1887577, 1887757, 1887923, 1888097, 1888279, 1888463, 1888633]
theorem check6 : primorialChainCheck 4473 primorial4473 184 1885847 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 1885847 1888633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1885847) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [1888807, 1888981, 1889143, 1889317, 1889501, 1889677, 1889831, 1889999, 1890173, 1890337, 1890521, 1890701, 1890877, 1891049, 1891223, 1891391]
theorem check7 : primorialChainCheck 4473 primorial4473 184 1888633 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 1888633 1891391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1888633) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [1891567, 1891739, 1891909, 1892089, 1892257, 1892441, 1892621, 1892783, 1892927, 1893083, 1893223, 1893403, 1893587, 1893757, 1893937, 1894121]
theorem check8 : primorialChainCheck 4473 primorial4473 184 1891391 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 1891391 1894121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1891391) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [1894283, 1894439, 1894609, 1894793, 1894969, 1895141, 1895321, 1895501, 1895657, 1895833, 1896017, 1896199, 1896353, 1896529, 1896689, 1896871]
theorem check9 : primorialChainCheck 4473 primorial4473 184 1894121 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 1894121 1896871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1894121) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [1897037, 1897219, 1897403, 1897583, 1897751, 1897871, 1898053, 1898227, 1898389, 1898573, 1898749, 1898921, 1899101, 1899281, 1899437, 1899589]
theorem check10 : primorialChainCheck 4473 primorial4473 184 1896871 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 1896871 1899589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1896871) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [1899769, 1899949, 1900121, 1900303, 1900487, 1900667, 1900831, 1900981, 1901147, 1901329, 1901507, 1901681, 1901857, 1902037, 1902221, 1902403]
theorem check11 : primorialChainCheck 4473 primorial4473 184 1899589 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 1899589 1902403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1899589) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [1902569, 1902743, 1902917, 1903091, 1903271, 1903441, 1903619, 1903801, 1903981, 1904143, 1904311, 1904489, 1904647, 1904831, 1904999, 1905181]
theorem check12 : primorialChainCheck 4473 primorial4473 184 1902403 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 1902403 1905181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1902403) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [1905361, 1905517, 1905697, 1905863, 1906043, 1906211, 1906393, 1906559, 1906739, 1906909, 1907071, 1907249, 1907431, 1907611, 1907783, 1907963]
theorem check13 : primorialChainCheck 4473 primorial4473 184 1905181 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 1905181 1907963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1905181) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [1908133, 1908317, 1908499, 1908679, 1908857, 1909027, 1909199, 1909381, 1909561, 1909741, 1909909, 1910087, 1910269, 1910429, 1910611, 1910767]
theorem check14 : primorialChainCheck 4473 primorial4473 184 1907963 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 1907963 1910767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1907963) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [1910941, 1911121, 1911289, 1911467, 1911641, 1911787, 1911961, 1912139, 1912307, 1912489, 1912661, 1912843, 1913017, 1913201, 1913377, 1913551]
theorem check15 : primorialChainCheck 4473 primorial4473 184 1910767 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 1910767 1913551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1910767) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [1913719, 1913903, 1914067, 1914247, 1914427, 1914593, 1914769, 1914949, 1915117, 1915289, 1915471, 1915649, 1915817, 1915997, 1916179, 1916363]
theorem check16 : primorialChainCheck 4473 primorial4473 184 1913551 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 1913551 1916363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1913551) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [1916543, 1916689, 1916867, 1917049, 1917203, 1917373, 1917557, 1917739, 1917899, 1918079, 1918247, 1918429, 1918607, 1918771, 1918933, 1919063]
theorem check17 : primorialChainCheck 4473 primorial4473 184 1916363 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 1916363 1919063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1916363) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [1919231, 1919387, 1919549, 1919719, 1919891, 1920049, 1920227, 1920407, 1920587, 1920769, 1920923, 1921103, 1921277, 1921457, 1921631, 1921813]
theorem check18 : primorialChainCheck 4473 primorial4473 184 1919063 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 1919063 1921813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1919063) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [1921981, 1922153, 1922329, 1922507, 1922689, 1922873, 1923049, 1923221, 1923403, 1923547, 1923709, 1923893, 1924067, 1924243, 1924409, 1924579]
theorem check19 : primorialChainCheck 4473 primorial4473 184 1921813 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 1921813 1924579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1921813) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [1924753, 1924921, 1925087, 1925257, 1925431, 1925611, 1925779, 1925933, 1926097, 1926269, 1926439, 1926623, 1926803, 1926973, 1927157, 1927337]
theorem check20 : primorialChainCheck 4473 primorial4473 184 1924579 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 1924579 1927337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1924579) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [1927507, 1927691, 1927867, 1928041, 1928219, 1928401, 1928569, 1928753, 1928929, 1929113, 1929289, 1929467, 1929649, 1929827, 1929973, 1930147]
theorem check21 : primorialChainCheck 4473 primorial4473 184 1927337 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 1927337 1930147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1927337) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [1930309, 1930493, 1930667, 1930823, 1930969, 1931143, 1931323, 1931497, 1931681, 1931851, 1932017, 1932197, 1932379, 1932563, 1932739, 1932923]
theorem check22 : primorialChainCheck 4473 primorial4473 184 1930147 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 1930147 1932923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1930147) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [1933103, 1933277, 1933457, 1933577, 1933759, 1933931, 1934113, 1934297, 1934459, 1934633, 1934797, 1934969, 1935149, 1935317, 1935481, 1935641]
theorem check23 : primorialChainCheck 4473 primorial4473 184 1932923 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 1932923 1935641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1932923) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [1935823, 1935991, 1936171, 1936349, 1936523, 1936679, 1936859, 1937041, 1937207, 1937389, 1937557, 1937731, 1937891, 1938073, 1938257, 1938427]
theorem check24 : primorialChainCheck 4473 primorial4473 184 1935641 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 1935641 1938427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1935641) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [1938611, 1938791, 1938973, 1939151, 1939331, 1939499, 1939681, 1939841, 1939999, 1940173, 1940339, 1940509, 1940683, 1940849, 1941031, 1941193]
theorem check25 : primorialChainCheck 4473 primorial4473 184 1938427 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 1938427 1941193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1938427) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [1941377, 1941559, 1941739, 1941889, 1942067, 1942207, 1942387, 1942571, 1942753, 1942909, 1943093, 1943273, 1943443, 1943597, 1943743, 1943923]
theorem check26 : primorialChainCheck 4473 primorial4473 184 1941193 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 1941193 1943923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1941193) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [1944079, 1944223, 1944401, 1944583, 1944763, 1944937, 1945121, 1945303, 1945487, 1945661, 1945843, 1946017, 1946183, 1946299, 1946473, 1946657]
theorem check27 : primorialChainCheck 4473 primorial4473 184 1943923 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 1943923 1946657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1943923) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [1946839, 1946999, 1947151, 1947311, 1947493, 1947667, 1947851, 1948021, 1948187, 1948369, 1948553, 1948729, 1948909, 1949081, 1949257, 1949417]
theorem check28 : primorialChainCheck 4473 primorial4473 184 1946657 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 1946657 1949417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1946657) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [1949581, 1949741, 1949911, 1950089, 1950271, 1950449, 1950629, 1950803, 1950979, 1951153, 1951321, 1951501, 1951669, 1951843, 1952023, 1952207]
theorem check29 : primorialChainCheck 4473 primorial4473 184 1949417 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 1949417 1952207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1949417) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [1952381, 1952563, 1952747, 1952921, 1953101, 1953277, 1953451, 1953629, 1953811, 1953983, 1954159, 1954343, 1954523, 1954699, 1954877, 1955047]
theorem check30 : primorialChainCheck 4473 primorial4473 184 1952207 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 1952207 1955047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1952207) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [1955203, 1955381, 1955543, 1955711, 1955893, 1956049, 1956217, 1956391, 1956553, 1956737, 1956907, 1957079, 1957243, 1957391, 1957573, 1957729]
theorem check31 : primorialChainCheck 4473 primorial4473 184 1955047 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 1955047 1957729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 1955047) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1869293 1874881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1869293)
    (mid := 1872109) (hi := 1874881) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1874881 1880309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1874881)
    (mid := 1877621) (hi := 1880309) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1880309 1885847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1880309)
    (mid := 1883129) (hi := 1885847) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1885847 1891391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1885847)
    (mid := 1888633) (hi := 1891391) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 1891391 1896871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1891391)
    (mid := 1894121) (hi := 1896871) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 1896871 1902403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1896871)
    (mid := 1899589) (hi := 1902403) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1902403 1907963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1902403)
    (mid := 1905181) (hi := 1907963) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1907963 1913551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1907963)
    (mid := 1910767) (hi := 1913551) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 1913551 1919063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1913551)
    (mid := 1916363) (hi := 1919063) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 1919063 1924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1919063)
    (mid := 1921813) (hi := 1924579) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 1924579 1930147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1924579)
    (mid := 1927337) (hi := 1930147) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 1930147 1935641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1930147)
    (mid := 1932923) (hi := 1935641) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 1935641 1941193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1935641)
    (mid := 1938427) (hi := 1941193) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 1941193 1946657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1941193)
    (mid := 1943923) (hi := 1946657) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 1946657 1952207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1946657)
    (mid := 1949417) (hi := 1952207) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 1952207 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1952207)
    (mid := 1955047) (hi := 1957729) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1869293 1880309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1869293)
    (mid := 1874881) (hi := 1880309) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1880309 1891391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1880309)
    (mid := 1885847) (hi := 1891391) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 1891391 1902403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1891391)
    (mid := 1896871) (hi := 1902403) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1902403 1913551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1902403)
    (mid := 1907963) (hi := 1913551) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 1913551 1924579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1913551)
    (mid := 1919063) (hi := 1924579) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 1924579 1935641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1924579)
    (mid := 1930147) (hi := 1935641) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 1935641 1946657 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1935641)
    (mid := 1941193) (hi := 1946657) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 1946657 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1946657)
    (mid := 1952207) (hi := 1957729) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1869293 1891391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1869293)
    (mid := 1880309) (hi := 1891391) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 1891391 1913551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1891391)
    (mid := 1902403) (hi := 1913551) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 1913551 1935641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1913551)
    (mid := 1924579) (hi := 1935641) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 1935641 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1935641)
    (mid := 1946657) (hi := 1957729) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1869293 1913551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1869293)
    (mid := 1891391) (hi := 1913551) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 1913551 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1913551)
    (mid := 1935641) (hi := 1957729) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 1869293 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1869293)
    (mid := 1913551) (hi := 1957729) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 1869293 1957729 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block021

#print axioms B699MiddleExtension.PrimorialBlocks.Block021.joined
