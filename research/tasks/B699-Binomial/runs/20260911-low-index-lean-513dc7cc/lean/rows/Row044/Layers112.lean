import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer112_checked :
    coverLayerCheck row044.height row044.goods { lower := 9823825656347893873179699054884421632, upper := 19647651312695787746359398109768843264, M := 6 } = true := by
  decide +kernel

theorem row044_layer113_checked :
    coverLayerCheck row044.height row044.goods { lower := 19647651312695787746359398109768843264, upper := 39295302625391575492718796219537686528, M := 6 } = true := by
  decide +kernel

theorem row044_layer114_checked :
    coverLayerCheck row044.height row044.goods { lower := 39295302625391575492718796219537686528, upper := 78590605250783150985437592439075373056, M := 6 } = true := by
  decide +kernel

theorem row044_layer115_checked :
    coverLayerCheck row044.height row044.goods { lower := 78590605250783150985437592439075373056, upper := 157181210501566301970875184878150746112, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer115_checked
