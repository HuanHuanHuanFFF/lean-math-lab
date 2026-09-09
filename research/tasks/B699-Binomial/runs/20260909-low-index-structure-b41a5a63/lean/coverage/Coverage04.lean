import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row110
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row111
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row112
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row113
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row114
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row115
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row116
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row117
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row118
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row119
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row120
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row121
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row122
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row123
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row124
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row125
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row126
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row127
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row128

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows04 : List FiniteCoverRow := [
  row110,
  row111,
  row112,
  row113,
  row114,
  row115,
  row116,
  row117,
  row118,
  row119,
  row120,
  row121,
  row122,
  row123,
  row124,
  row125,
  row126,
  row127,
  row128
]

theorem coverRows04_checked :
    coverRows04.all finiteCoverRowCheck = true := by
  simp only [coverRows04, List.all_cons, List.all_nil,
    row110_checked,
    row111_checked,
    row112_checked,
    row113_checked,
    row114_checked,
    row115_checked,
    row116_checked,
    row117_checked,
    row118_checked,
    row119_checked,
    row120_checked,
    row121_checked,
    row122_checked,
    row123_checked,
    row124_checked,
    row125_checked,
    row126_checked,
    row127_checked,
    row128_checked,
    Bool.true_and]

#print axioms B699LowIndex.coverRows04_checked

end B699LowIndex
