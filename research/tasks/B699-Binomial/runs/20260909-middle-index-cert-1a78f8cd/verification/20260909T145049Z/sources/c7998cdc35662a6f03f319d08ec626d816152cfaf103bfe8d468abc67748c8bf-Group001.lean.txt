import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block016
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block017
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block018
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block019
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block020
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block021
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block022
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block023
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block024
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block025
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block026
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block027
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block028
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block029
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block030
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block031

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group001

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 1426171 1603421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1514971) (hi := 1603421) B699MiddleExtension.PrimorialBlocks.Block016.joined B699MiddleExtension.PrimorialBlocks.Block017.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 1603421 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1603421)
    (mid := 1691659) (hi := 1780663) B699MiddleExtension.PrimorialBlocks.Block018.joined B699MiddleExtension.PrimorialBlocks.Block019.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 1780663 1957729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1869293) (hi := 1957729) B699MiddleExtension.PrimorialBlocks.Block020.joined B699MiddleExtension.PrimorialBlocks.Block021.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 1957729 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1957729)
    (mid := 2046073) (hi := 2134201) B699MiddleExtension.PrimorialBlocks.Block022.joined B699MiddleExtension.PrimorialBlocks.Block023.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 2134201 2310593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2222219) (hi := 2310593) B699MiddleExtension.PrimorialBlocks.Block024.joined B699MiddleExtension.PrimorialBlocks.Block025.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 2310593 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2310593)
    (mid := 2399143) (hi := 2487319) B699MiddleExtension.PrimorialBlocks.Block026.joined B699MiddleExtension.PrimorialBlocks.Block027.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 2487319 2663953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2575861) (hi := 2663953) B699MiddleExtension.PrimorialBlocks.Block028.joined B699MiddleExtension.PrimorialBlocks.Block029.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 2663953 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2663953)
    (mid := 2751857) (hi := 2840359) B699MiddleExtension.PrimorialBlocks.Block030.joined B699MiddleExtension.PrimorialBlocks.Block031.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 1426171 1780663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1603421) (hi := 1780663) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 1780663 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1780663)
    (mid := 1957729) (hi := 2134201) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 2134201 2487319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2310593) (hi := 2487319) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 2487319 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2487319)
    (mid := 2663953) (hi := 2840359) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 1426171 2134201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 1780663) (hi := 2134201) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 2134201 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2134201)
    (mid := 2487319) (hi := 2840359) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 1426171 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1426171)
    (mid := 2134201) (hi := 2840359) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 1426171 2840359 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group001

#print axioms B699MiddleExtension.PrimorialGroups.Group001.joined
