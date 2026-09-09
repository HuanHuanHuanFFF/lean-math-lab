import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block033

def segment0Nodes : List Nat := [1533293, 1533463, 1533643, 1533817, 1533977, 1534153, 1534331, 1534513, 1534667, 1534843, 1535011, 1535179, 1535363, 1535543, 1535719, 1535879]
theorem segment0Check : trialChainCheck 322 1533109 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1533109 1535879 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1536049, 1536221, 1536401, 1536583, 1536737, 1536907, 1537061, 1537241, 1537561, 1537729, 1537897, 1538081, 1538261, 1538441, 1538617, 1538777]
theorem segment1Check : trialChainCheck 322 1535879 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1535879 1538777 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1538951, 1539127, 1539301, 1539479, 1539661, 1539821, 1540003, 1540177, 1540499, 1540681, 1540859, 1541009, 1541191, 1541363, 1541539, 1541707]
theorem segment2Check : trialChainCheck 322 1538777 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1538777 1541707 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1541873, 1542043, 1542221, 1542383, 1542551, 1542727, 1542911, 1543081, 1543259, 1543441, 1543741, 1543909, 1544227, 1544407, 1544729, 1544903]
theorem segment3Check : trialChainCheck 322 1541707 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1541707 1544903 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1545073, 1545253, 1545433, 1545617, 1545799, 1545983, 1546157, 1546327, 1546499, 1546679, 1546861, 1547027, 1547207, 1547389, 1547573, 1547893]
theorem segment4Check : trialChainCheck 322 1544903 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1544903 1547893 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1548073, 1548251, 1548433, 1548593, 1548769, 1548949, 1549129, 1549283, 1549463, 1549631, 1549787, 1549957, 1550141, 1550321, 1550503, 1550669]
theorem segment5Check : trialChainCheck 322 1547893 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1547893 1550669 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1550851, 1551019, 1551203, 1551383, 1551551, 1551733, 1551917, 1552087, 1552241, 1552417, 1552597, 1552781, 1552963, 1553147, 1553329, 1553509]
theorem segment6Check : trialChainCheck 322 1550669 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1550669 1553509 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1553653, 1553837, 1554019, 1554193, 1554367, 1554529, 1554697, 1554881, 1555061, 1555243, 1555423, 1555607, 1555787, 1555969, 1556147, 1556329]
theorem segment7Check : trialChainCheck 322 1553509 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1553509 1556329 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1556509, 1556671, 1556839, 1557151, 1557313, 1557481, 1557653, 1557833, 1558009, 1558189, 1558357, 1558541, 1558717, 1558901, 1559059, 1559227]
theorem segment8Check : trialChainCheck 322 1556329 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1556329 1559227 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1559407, 1559581, 1559759, 1560077, 1560257, 1560421, 1560593, 1560913, 1561069, 1561247, 1561429, 1561607, 1561919, 1562101, 1562279, 1562447]
theorem segment9Check : trialChainCheck 322 1559227 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1559227 1562447 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1562753, 1562933, 1563109, 1563293, 1563469, 1563649, 1563829, 1564007, 1564183, 1564363, 1564543, 1564721, 1564877, 1565059, 1565233, 1565413]
theorem segment10Check : trialChainCheck 322 1562447 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1562447 1565413 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1565591, 1565747, 1565929, 1566107, 1566289, 1566451, 1566613, 1566793, 1566953, 1567133, 1567303, 1567487, 1567667, 1567847, 1567999, 1568179]
theorem segment11Check : trialChainCheck 322 1565413 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1565413 1568179 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1568353, 1568533, 1568687, 1568867, 1569047, 1569209, 1569391, 1569553, 1569731, 1569901, 1570081, 1570241, 1570421, 1570603, 1570781, 1570963]
theorem segment12Check : trialChainCheck 322 1568179 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1568179 1570963 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1571137, 1571309, 1571477, 1571657, 1571839, 1572023, 1572203, 1572379, 1572559, 1572731, 1572911, 1573087, 1573399, 1573577, 1573753, 1573937]
theorem segment13Check : trialChainCheck 322 1570963 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1570963 1573937 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1574107, 1574269, 1574437, 1574611, 1574791, 1574957, 1575139, 1575307, 1575481, 1575659, 1575829, 1576013, 1576177, 1576357, 1576537, 1576721]
theorem segment14Check : trialChainCheck 322 1573937 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1573937 1576721 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1576891, 1577071, 1577383, 1577567, 1577729, 1577909, 1578091, 1578257, 1578439, 1578611, 1578793, 1578961, 1579141, 1579321, 1579469, 1579651]
theorem segment15Check : trialChainCheck 322 1576721 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1576721 1579651 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1533109 1538777 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1538777 1544903 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1544903 1550669 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1550669 1556329 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1556329 1562447 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1562447 1568179 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1568179 1573937 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1573937 1579651 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1533109 1544903 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1544903 1556329 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1556329 1568179 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1568179 1579651 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1533109 1556329 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1556329 1579651 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1533109 1579651 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1533109 1579651 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block033

#print axioms B699MiddleIndex.PrimeBlocks.Block033.joined
