import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block224
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block225
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block226
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block227

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group014

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 19662127 19836799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19749593) (hi := 19836799) B699MiddleExtension.PrimorialBlocks.Block224.joined B699MiddleExtension.PrimorialBlocks.Block225.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 19836799 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19836799)
    (mid := 19924579) (hi := 20000093) B699MiddleExtension.PrimorialBlocks.Block226.joined B699MiddleExtension.PrimorialBlocks.Block227.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 19662127 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19662127)
    (mid := 19836799) (hi := 20000093) joinLevel0_0 joinLevel0_1

theorem joined : B699MiddleIndex.PrimeChain 184 19662127 20000093 := joinLevel1_0

end B699MiddleExtension.PrimorialGroups.Group014

#print axioms B699MiddleExtension.PrimorialGroups.Group014.joined
