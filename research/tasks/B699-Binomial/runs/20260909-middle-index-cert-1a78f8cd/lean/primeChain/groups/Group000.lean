import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block000
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block001
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block002
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block003
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block004
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block005
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block006
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block007
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block008
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block009
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block010
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block011
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block012
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block013
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block014
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block015

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex.PrimeGroups.Group000

theorem joinLevel0_0 : PrimeChain 322 2 91541 :=
  B699MiddleIndex.PrimeBlocks.Block000.joined.trans B699MiddleIndex.PrimeBlocks.Block001.joined

theorem joinLevel0_1 : PrimeChain 322 91541 183763 :=
  B699MiddleIndex.PrimeBlocks.Block002.joined.trans B699MiddleIndex.PrimeBlocks.Block003.joined

theorem joinLevel0_2 : PrimeChain 322 183763 276257 :=
  B699MiddleIndex.PrimeBlocks.Block004.joined.trans B699MiddleIndex.PrimeBlocks.Block005.joined

theorem joinLevel0_3 : PrimeChain 322 276257 369029 :=
  B699MiddleIndex.PrimeBlocks.Block006.joined.trans B699MiddleIndex.PrimeBlocks.Block007.joined

theorem joinLevel0_4 : PrimeChain 322 369029 461891 :=
  B699MiddleIndex.PrimeBlocks.Block008.joined.trans B699MiddleIndex.PrimeBlocks.Block009.joined

theorem joinLevel0_5 : PrimeChain 322 461891 554531 :=
  B699MiddleIndex.PrimeBlocks.Block010.joined.trans B699MiddleIndex.PrimeBlocks.Block011.joined

theorem joinLevel0_6 : PrimeChain 322 554531 647659 :=
  B699MiddleIndex.PrimeBlocks.Block012.joined.trans B699MiddleIndex.PrimeBlocks.Block013.joined

theorem joinLevel0_7 : PrimeChain 322 647659 739787 :=
  B699MiddleIndex.PrimeBlocks.Block014.joined.trans B699MiddleIndex.PrimeBlocks.Block015.joined

theorem joinLevel1_0 : PrimeChain 322 2 183763 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 183763 369029 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 369029 554531 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 554531 739787 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 2 369029 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 369029 739787 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 2 739787 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 2 739787 := joinLevel3_0

end B699MiddleIndex.PrimeGroups.Group000

#print axioms B699MiddleIndex.PrimeGroups.Group000.joined
