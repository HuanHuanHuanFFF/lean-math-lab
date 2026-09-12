import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer104_checked :
    coverLayerCheck row044.height row044.goods { lower := 38374318970108960442108199433142272, upper := 76748637940217920884216398866284544, M := 7 } = true := by
  decide +kernel

theorem row044_layer105_checked :
    coverLayerCheck row044.height row044.goods { lower := 76748637940217920884216398866284544, upper := 153497275880435841768432797732569088, M := 7 } = true := by
  decide +kernel

theorem row044_layer106_checked :
    coverLayerCheck row044.height row044.goods { lower := 153497275880435841768432797732569088, upper := 306994551760871683536865595465138176, M := 7 } = true := by
  decide +kernel

theorem row044_layer107_checked :
    coverLayerCheck row044.height row044.goods { lower := 306994551760871683536865595465138176, upper := 613989103521743367073731190930276352, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer107_checked
