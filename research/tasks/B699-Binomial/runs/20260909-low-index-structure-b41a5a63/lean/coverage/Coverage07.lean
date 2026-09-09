import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row167
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row168
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row169
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row170
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row171
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row172
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row173
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row174
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row175
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row176
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row177
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row178
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row179
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row180
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row181
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row182
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row183
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row184

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows07 : List FiniteCoverRow := [
  row167,
  row168,
  row169,
  row170,
  row171,
  row172,
  row173,
  row174,
  row175,
  row176,
  row177,
  row178,
  row179,
  row180,
  row181,
  row182,
  row183,
  row184
]

theorem coverRows07_checked :
    coverRows07.all finiteCoverRowCheck = true := by
  simp only [coverRows07, List.all_cons, List.all_nil,
    row167_checked,
    row168_checked,
    row169_checked,
    row170_checked,
    row171_checked,
    row172_checked,
    row173_checked,
    row174_checked,
    row175_checked,
    row176_checked,
    row177_checked,
    row178_checked,
    row179_checked,
    row180_checked,
    row181_checked,
    row182_checked,
    row183_checked,
    row184_checked,
    Bool.true_and]

#print axioms B699LowIndex.coverRows07_checked

end B699LowIndex
