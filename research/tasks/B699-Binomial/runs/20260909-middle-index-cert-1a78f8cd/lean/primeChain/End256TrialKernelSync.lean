import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.End256TrialKernelSync

def segment0Nodes : List Nat := [1953629, 1953811, 1953983, 1954159, 1954343, 1954523, 1954699, 1954877, 1955047, 1955203, 1955381, 1955543, 1955711, 1955893, 1956049, 1956217]
theorem segment0Check : trialChainCheck 322 1953451 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1953451 1956217 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1956391, 1956553, 1956737, 1956907, 1957079, 1957391, 1957573, 1957729, 1957913, 1958069, 1958249, 1958431, 1958603, 1958777, 1959091, 1959263]
theorem segment1Check : trialChainCheck 322 1956217 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1956217 1959263 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1959427, 1959599, 1959773, 1959949, 1960121, 1960303, 1960481, 1960649, 1960813, 1960993, 1961173, 1961347, 1961527, 1961683, 1961863, 1962041]
theorem segment2Check : trialChainCheck 322 1959263 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1959263 1962041 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1962211, 1962379, 1962557, 1962731, 1962911, 1963081, 1963259, 1963567, 1963751, 1963921, 1964243, 1964419, 1964603, 1964773, 1964951, 1965133]
theorem segment3Check : trialChainCheck 322 1962041 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1962041 1965133 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1965289, 1965463, 1965781, 1965959, 1966127, 1966303, 1966619, 1966793, 1966973, 1967149, 1967323, 1967501, 1967683, 1967851, 1968023, 1968203]
theorem segment4Check : trialChainCheck 322 1965133 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1965133 1968203 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1968383, 1968563, 1968739, 1968919, 1969073, 1969249, 1969423, 1969589, 1969757, 1969921, 1970083, 1970263, 1970431, 1970599, 1970783, 1970959]
theorem segment5Check : trialChainCheck 322 1968203 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1968203 1970959 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1971143, 1971313, 1971481, 1971659, 1971833, 1972013, 1972177, 1972361, 1972541, 1972721, 1972891, 1973053, 1973233, 1973417, 1973597, 1973779]
theorem segment6Check : trialChainCheck 322 1970959 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1970959 1973779 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1973957, 1974121, 1974299, 1974457, 1974641, 1974787, 1974967, 1975147, 1975321, 1975499, 1975669, 1975823, 1975997, 1976173, 1976357, 1976537]
theorem segment7Check : trialChainCheck 322 1973779 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1973779 1976537 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1976717, 1977023, 1977203, 1977361, 1977541, 1977863, 1978037, 1978219, 1978393, 1978567, 1978741, 1978913, 1979077, 1979261, 1979441, 1979617]
theorem segment8Check : trialChainCheck 322 1976537 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1976537 1979617 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1979779, 1979947, 1980113, 1980289, 1980469, 1980637, 1980821, 1980991, 1981169, 1981349, 1981523, 1981699, 1981883, 1982059, 1982219, 1982401]
theorem segment9Check : trialChainCheck 322 1979617 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1979617 1982401 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1982579, 1982741, 1982921, 1983103, 1983257, 1983439, 1983601, 1983767, 1983931, 1984109, 1984271, 1984571, 1984753, 1984921, 1985077, 1985257]
theorem segment10Check : trialChainCheck 322 1982401 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1982401 1985257 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1985441, 1985623, 1985803, 1985987, 1986169, 1986337, 1986499, 1986683, 1987003, 1987157, 1987339, 1987523, 1987703, 1987883, 1988057, 1988237]
theorem segment11Check : trialChainCheck 322 1985257 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1985257 1988237 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1988411, 1988587, 1988759, 1988941, 1989107, 1989419, 1989721, 1989899, 1990081, 1990253, 1990433, 1990607, 1990787, 1990969, 1991153, 1991293]
theorem segment12Check : trialChainCheck 322 1988237 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1988237 1991293 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1991477, 1991653, 1991837, 1991999, 1992181, 1992343, 1992527, 1992841, 1993163, 1993339, 1993513, 1993697, 1993877, 1994059, 1994227, 1994387]
theorem segment13Check : trialChainCheck 322 1991293 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1991293 1994387 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1994569, 1994743, 1994911, 1995083, 1995263, 1995431, 1995611, 1995787, 1995971, 1996129, 1996303, 1996487, 1996649, 1996829, 1997003, 1997183]
theorem segment14Check : trialChainCheck 322 1994387 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1994387 1997183 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1997351, 1997531, 1997713, 1997887, 1998067, 1998251, 1998431, 1998611, 1998793, 1998977, 1999121, 1999303, 1999471, 1999651, 1999819, 2000003]
theorem segment15Check : trialChainCheck 322 1997183 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1997183 2000003 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1953451 1959263 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1959263 1965133 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1965133 1970959 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1970959 1976537 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1976537 1982401 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1982401 1988237 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1988237 1994387 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1994387 2000003 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1953451 1965133 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1965133 1976537 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1976537 1988237 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1988237 2000003 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1953451 1976537 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1976537 2000003 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1953451 2000003 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1953451 2000003 := joinLevel3_0

end B699MiddleIndex.End256TrialKernelSync

#print axioms B699MiddleIndex.End256TrialKernelSync.joined
