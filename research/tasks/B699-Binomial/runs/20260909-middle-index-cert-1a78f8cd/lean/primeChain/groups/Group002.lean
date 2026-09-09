import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block032
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block033
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block034
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block035
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block036
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block037
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block038
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block039
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block040
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block041
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block042

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex.PrimeGroups.Group002

theorem joinLevel0_0 : PrimeChain 322 1486097 1579651 :=
  B699MiddleIndex.PrimeBlocks.Block032.joined.trans B699MiddleIndex.PrimeBlocks.Block033.joined

theorem joinLevel0_1 : PrimeChain 322 1579651 1675057 :=
  B699MiddleIndex.PrimeBlocks.Block034.joined.trans B699MiddleIndex.PrimeBlocks.Block035.joined

theorem joinLevel0_2 : PrimeChain 322 1675057 1767979 :=
  B699MiddleIndex.PrimeBlocks.Block036.joined.trans B699MiddleIndex.PrimeBlocks.Block037.joined

theorem joinLevel0_3 : PrimeChain 322 1767979 1862981 :=
  B699MiddleIndex.PrimeBlocks.Block038.joined.trans B699MiddleIndex.PrimeBlocks.Block039.joined

theorem joinLevel0_4 : PrimeChain 322 1862981 1956391 :=
  B699MiddleIndex.PrimeBlocks.Block040.joined.trans B699MiddleIndex.PrimeBlocks.Block041.joined

theorem joinLevel1_0 : PrimeChain 322 1486097 1675057 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1675057 1862981 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1862981 2000003 :=
  joinLevel0_4.trans B699MiddleIndex.PrimeBlocks.Block042.joined

theorem joinLevel2_0 : PrimeChain 322 1486097 1862981 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel3_0 : PrimeChain 322 1486097 2000003 :=
  joinLevel2_0.trans joinLevel1_2

theorem joined : PrimeChain 322 1486097 2000003 := joinLevel3_0

end B699MiddleIndex.PrimeGroups.Group002

#print axioms B699MiddleIndex.PrimeGroups.Group002.joined
