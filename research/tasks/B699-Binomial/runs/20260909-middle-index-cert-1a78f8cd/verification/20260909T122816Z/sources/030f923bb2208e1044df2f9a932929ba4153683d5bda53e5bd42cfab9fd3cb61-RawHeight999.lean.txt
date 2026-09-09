import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699Middle
theorem raw_height_999 : RawHeightValid 999 333 699 2000000 168 := by
  decide +kernel
end B699Middle
#print axioms B699Middle.raw_height_999
