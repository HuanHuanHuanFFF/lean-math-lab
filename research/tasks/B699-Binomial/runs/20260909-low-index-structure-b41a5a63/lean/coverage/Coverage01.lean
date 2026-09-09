import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row053
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row054
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row055
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row056
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row057
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row058
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row059
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row060
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row061
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row062
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row063
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row064
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row065
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row066
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row067
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row068
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row069
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row070
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.coverage.rows.Row071

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def coverRows01 : List FiniteCoverRow := [
  row053,
  row054,
  row055,
  row056,
  row057,
  row058,
  row059,
  row060,
  row061,
  row062,
  row063,
  row064,
  row065,
  row066,
  row067,
  row068,
  row069,
  row070,
  row071
]

theorem coverRows01_checked :
    coverRows01.all finiteCoverRowCheck = true := by
  simp only [coverRows01, List.all_cons, List.all_nil,
    row053_checked,
    row054_checked,
    row055_checked,
    row056_checked,
    row057_checked,
    row058_checked,
    row059_checked,
    row060_checked,
    row061_checked,
    row062_checked,
    row063_checked,
    row064_checked,
    row065_checked,
    row066_checked,
    row067_checked,
    row068_checked,
    row069_checked,
    row070_checked,
    row071_checked,
    Bool.true_and]

#print axioms B699LowIndex.coverRows01_checked

end B699LowIndex
