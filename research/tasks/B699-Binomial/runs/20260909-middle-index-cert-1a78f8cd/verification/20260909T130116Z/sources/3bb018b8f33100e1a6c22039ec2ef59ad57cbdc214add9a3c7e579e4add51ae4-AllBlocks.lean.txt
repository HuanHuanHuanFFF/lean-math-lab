import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.groups.Group000
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.groups.Group001
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.groups.Group002

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex.AllPrimeBlocks

theorem joinLevel0_0 : PrimeChain 322 2 1486097 :=
  B699MiddleIndex.PrimeGroups.Group000.joined.trans B699MiddleIndex.PrimeGroups.Group001.joined

theorem joinLevel1_0 : PrimeChain 322 2 2000003 :=
  joinLevel0_0.trans B699MiddleIndex.PrimeGroups.Group002.joined

theorem joined : PrimeChain 322 2 2000003 := joinLevel1_0

end B699MiddleIndex.AllPrimeBlocks

#print axioms B699MiddleIndex.AllPrimeBlocks.joined
