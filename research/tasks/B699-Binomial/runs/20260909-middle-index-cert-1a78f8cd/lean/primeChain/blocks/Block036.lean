import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block036

def segment0Nodes : List Nat := [1675217, 1675393, 1675577, 1675759, 1675943, 1676111, 1676281, 1676453, 1676629, 1676813, 1676993, 1677167, 1677349, 1677527, 1677707, 1677887]
theorem segment0Check : trialChainCheck 322 1675057 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1675057 1677887 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1678069, 1678249, 1678429, 1678613, 1678777, 1678961, 1679143, 1679323, 1679501, 1679683, 1679863, 1680023, 1680191, 1680373, 1680557, 1680709]
theorem segment1Check : trialChainCheck 322 1677887 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1677887 1680709 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1680893, 1681073, 1681247, 1681423, 1681723, 1681907, 1682081, 1682257, 1682423, 1682581, 1682753, 1682911, 1683089, 1683271, 1683433, 1683601]
theorem segment2Check : trialChainCheck 322 1680709 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1680709 1683601 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1683779, 1683949, 1684127, 1684307, 1684489, 1684667, 1684843, 1685011, 1685323, 1685503, 1685681, 1685863, 1686029, 1686203, 1686367, 1686551]
theorem segment3Check : trialChainCheck 322 1683601 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1683601 1686551 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1686871, 1687193, 1687373, 1687549, 1687729, 1687909, 1688081, 1688263, 1688443, 1688623, 1688803, 1688987, 1689167, 1689343, 1689521, 1689703]
theorem segment4Check : trialChainCheck 322 1686551 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1686551 1689703 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1689881, 1690057, 1690231, 1690393, 1690573, 1690757, 1690933, 1691113, 1691297, 1691479, 1691659, 1691843, 1692023, 1692203, 1692377, 1692541]
theorem segment5Check : trialChainCheck 322 1689703 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1689703 1692541 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1692721, 1692883, 1693067, 1693249, 1693429, 1693613, 1693777, 1693957, 1694141, 1694311, 1694467, 1694647, 1694831, 1694989, 1695163, 1695347]
theorem segment6Check : trialChainCheck 322 1692541 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1692541 1695347 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1695527, 1695709, 1695887, 1696069, 1696249, 1696423, 1696729, 1696883, 1697063, 1697243, 1697419, 1697587, 1697771, 1697953, 1698133, 1698313]
theorem segment7Check : trialChainCheck 322 1695347 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1695347 1698313 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1698497, 1698679, 1698859, 1699043, 1699223, 1699393, 1699571, 1699741, 1699921, 1700099, 1700269, 1700441, 1700617, 1700801, 1700983, 1701151]
theorem segment8Check : trialChainCheck 322 1698313 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1698313 1701151 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1701313, 1701493, 1701653, 1701829, 1702013, 1702189, 1702373, 1702553, 1702721, 1702903, 1703071, 1703237, 1703413, 1703593, 1703773, 1703957]
theorem segment9Check : trialChainCheck 322 1701151 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1701151 1703957 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1704137, 1704299, 1704613, 1704793, 1704971, 1705153, 1705331, 1705493, 1705667, 1705849, 1706009, 1706191, 1706363, 1706539, 1706701, 1706989]
theorem segment10Check : trialChainCheck 322 1703957 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1703957 1706989 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1707163, 1707347, 1707529, 1707709, 1707889, 1708067, 1708247, 1708411, 1708579, 1708741, 1708909, 1709093, 1709269, 1709453, 1709633, 1709789]
theorem segment11Check : trialChainCheck 322 1706989 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1706989 1709789 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1709971, 1710139, 1710311, 1710493, 1710677, 1710857, 1711019, 1711189, 1711351, 1711519, 1711687, 1711859, 1712017, 1712197, 1712371, 1712551]
theorem segment12Check : trialChainCheck 322 1709789 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1709789 1712551 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1712707, 1712891, 1713071, 1713251, 1713559, 1713737, 1713919, 1714091, 1714261, 1714441, 1714621, 1714793, 1714963, 1715143, 1715309, 1715627]
theorem segment13Check : trialChainCheck 322 1712551 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1712551 1715627 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1715807, 1715983, 1716163, 1716343, 1716521, 1716703, 1717007, 1717181, 1717363, 1717517, 1717687, 1717861, 1718039, 1718219, 1718401, 1718573]
theorem segment14Check : trialChainCheck 322 1715627 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1715627 1718573 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1718749, 1719059, 1719241, 1719413, 1719583, 1719763, 1719947, 1720123, 1720307, 1720471, 1720643, 1720799, 1720973, 1721149, 1721327, 1721509]
theorem segment15Check : trialChainCheck 322 1718573 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1718573 1721509 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1675057 1680709 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1680709 1686551 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1686551 1692541 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1692541 1698313 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1698313 1703957 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1703957 1709789 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1709789 1715627 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1715627 1721509 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1675057 1686551 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1686551 1698313 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1698313 1709789 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1709789 1721509 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1675057 1698313 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1698313 1721509 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1675057 1721509 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1675057 1721509 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block036

#print axioms B699MiddleIndex.PrimeBlocks.Block036.joined
