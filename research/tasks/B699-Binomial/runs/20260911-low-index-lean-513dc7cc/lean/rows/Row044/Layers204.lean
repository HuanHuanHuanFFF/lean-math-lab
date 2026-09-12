import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer204_checked :
    coverLayerCheck row044.height row044.goods { lower := 48645228475808153621206276459351674303552129027792704710243254272, upper := 97290456951616307242412552918703348607104258055585409420486508544, M := 2 } = true := by
  decide +kernel

theorem row044_layer205_checked :
    coverLayerCheck row044.height row044.goods { lower := 97290456951616307242412552918703348607104258055585409420486508544, upper := 194580913903232614484825105837406697214208516111170818840973017088, M := 2 } = true := by
  decide +kernel

theorem row044_layer206_checked :
    coverLayerCheck row044.height row044.goods { lower := 194580913903232614484825105837406697214208516111170818840973017088, upper := 389161827806465228969650211674813394428417032222341637681946034176, M := 2 } = true := by
  decide +kernel

theorem row044_layer207_checked :
    coverLayerCheck row044.height row044.goods { lower := 389161827806465228969650211674813394428417032222341637681946034176, upper := 778323655612930457939300423349626788856834064444683275363892068352, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer207_checked
