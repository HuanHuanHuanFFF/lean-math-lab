import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block016
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block017
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block018
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block019
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block020
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block021
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block022
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block023
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block024
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block025
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block026
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block027
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block028
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block029
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block030
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.blocks.Block031

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex.PrimeGroups.Group001

theorem joinLevel0_0 : PrimeChain 322 739787 833299 :=
  B699MiddleIndex.PrimeBlocks.Block016.joined.trans B699MiddleIndex.PrimeBlocks.Block017.joined

theorem joinLevel0_1 : PrimeChain 322 833299 925961 :=
  B699MiddleIndex.PrimeBlocks.Block018.joined.trans B699MiddleIndex.PrimeBlocks.Block019.joined

theorem joinLevel0_2 : PrimeChain 322 925961 1018177 :=
  B699MiddleIndex.PrimeBlocks.Block020.joined.trans B699MiddleIndex.PrimeBlocks.Block021.joined

theorem joinLevel0_3 : PrimeChain 322 1018177 1111427 :=
  B699MiddleIndex.PrimeBlocks.Block022.joined.trans B699MiddleIndex.PrimeBlocks.Block023.joined

theorem joinLevel0_4 : PrimeChain 322 1111427 1204519 :=
  B699MiddleIndex.PrimeBlocks.Block024.joined.trans B699MiddleIndex.PrimeBlocks.Block025.joined

theorem joinLevel0_5 : PrimeChain 322 1204519 1299013 :=
  B699MiddleIndex.PrimeBlocks.Block026.joined.trans B699MiddleIndex.PrimeBlocks.Block027.joined

theorem joinLevel0_6 : PrimeChain 322 1299013 1392277 :=
  B699MiddleIndex.PrimeBlocks.Block028.joined.trans B699MiddleIndex.PrimeBlocks.Block029.joined

theorem joinLevel0_7 : PrimeChain 322 1392277 1486097 :=
  B699MiddleIndex.PrimeBlocks.Block030.joined.trans B699MiddleIndex.PrimeBlocks.Block031.joined

theorem joinLevel1_0 : PrimeChain 322 739787 925961 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 925961 1111427 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1111427 1299013 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1299013 1486097 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 739787 1111427 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1111427 1486097 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 739787 1486097 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 739787 1486097 := joinLevel3_0

end B699MiddleIndex.PrimeGroups.Group001

#print axioms B699MiddleIndex.PrimeGroups.Group001.joined
