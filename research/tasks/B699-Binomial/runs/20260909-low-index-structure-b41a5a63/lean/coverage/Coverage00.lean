import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row029
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row035
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row036
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row037
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row038
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row039
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row040
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row041
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row042
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row043
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row044
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row045
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row046
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row047
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row048
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row049
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row050
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row051
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row052

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows00 : List FiniteCoverRow := [
  row029,
  row035,
  row036,
  row037,
  row038,
  row039,
  row040,
  row041,
  row042,
  row043,
  row044,
  row045,
  row046,
  row047,
  row048,
  row049,
  row050,
  row051,
  row052
]

theorem coverRows00_checked :
    coverRows00.all finiteCoverRowCheck = true := by
  simp only [coverRows00, List.all_cons, List.all_nil,
    row029_checked,
    row035_checked,
    row036_checked,
    row037_checked,
    row038_checked,
    row039_checked,
    row040_checked,
    row041_checked,
    row042_checked,
    row043_checked,
    row044_checked,
    row045_checked,
    row046_checked,
    row047_checked,
    row048_checked,
    row049_checked,
    row050_checked,
    row051_checked,
    row052_checked,
    Bool.true_and]

#print axioms B699LowIndex.coverRows00_checked

end B699LowIndex
