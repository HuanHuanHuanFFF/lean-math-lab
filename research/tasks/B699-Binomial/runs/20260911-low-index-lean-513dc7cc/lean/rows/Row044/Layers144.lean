import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer144_checked :
    coverLayerCheck row044.height row044.goods { lower := 42193009915619938983785578971850699969314947072, upper := 84386019831239877967571157943701399938629894144, M := 4 } = true := by
  decide +kernel

theorem row044_layer145_checked :
    coverLayerCheck row044.height row044.goods { lower := 84386019831239877967571157943701399938629894144, upper := 168772039662479755935142315887402799877259788288, M := 4 } = true := by
  decide +kernel

theorem row044_layer146_checked :
    coverLayerCheck row044.height row044.goods { lower := 168772039662479755935142315887402799877259788288, upper := 337544079324959511870284631774805599754519576576, M := 4 } = true := by
  decide +kernel

theorem row044_layer147_checked :
    coverLayerCheck row044.height row044.goods { lower := 337544079324959511870284631774805599754519576576, upper := 675088158649919023740569263549611199509039153152, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer147_checked
