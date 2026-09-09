import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.BlockApprox

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699HeightBlock

theorem representative_4882 : B699Middle.TailRange 4882 4882 20000000 :=
  tailRange_of_block_approx_check (bits := 48) (r := 1627) (s := 3254) (t := 653)
    (by decide +kernel)
end B699HeightBlock
#print axioms B699HeightBlock.representative_4882
