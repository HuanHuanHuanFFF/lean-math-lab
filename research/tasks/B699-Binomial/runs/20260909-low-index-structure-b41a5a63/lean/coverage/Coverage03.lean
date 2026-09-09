import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row091
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row092
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row093
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row094
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row095
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row096
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row097
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row098
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row099
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row100
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row101
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row102
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row103
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row104
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row105
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row106
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row107
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row108
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row109

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows03 : List FiniteCoverRow := [
  row091,
  row092,
  row093,
  row094,
  row095,
  row096,
  row097,
  row098,
  row099,
  row100,
  row101,
  row102,
  row103,
  row104,
  row105,
  row106,
  row107,
  row108,
  row109
]

theorem coverRows03_checked :
    coverRows03.all finiteCoverRowCheck = true := by
  simp only [coverRows03, List.all_cons, List.all_nil,
    row091_checked,
    row092_checked,
    row093_checked,
    row094_checked,
    row095_checked,
    row096_checked,
    row097_checked,
    row098_checked,
    row099_checked,
    row100_checked,
    row101_checked,
    row102_checked,
    row103_checked,
    row104_checked,
    row105_checked,
    row106_checked,
    row107_checked,
    row108_checked,
    row109_checked,
    Bool.true_and]

#print axioms B699LowIndex.coverRows03_checked

end B699LowIndex
