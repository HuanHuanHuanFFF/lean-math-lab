import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block064
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block065
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block066
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block067
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block068
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block069
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block070
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block071
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block072
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block073
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block074
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block075
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block076
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block077
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block078
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block079

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group004

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5657359 5833001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5745379) (hi := 5833001) B699MiddleExtension.PrimorialBlocks.Block064.joined B699MiddleExtension.PrimorialBlocks.Block065.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5833001 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5833001)
    (mid := 5921177) (hi := 6009167) B699MiddleExtension.PrimorialBlocks.Block066.joined B699MiddleExtension.PrimorialBlocks.Block067.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6009167 6185143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6097031) (hi := 6185143) B699MiddleExtension.PrimorialBlocks.Block068.joined B699MiddleExtension.PrimorialBlocks.Block069.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6185143 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6185143)
    (mid := 6273053) (hi := 6361013) B699MiddleExtension.PrimorialBlocks.Block070.joined B699MiddleExtension.PrimorialBlocks.Block071.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6361013 6536441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6448639) (hi := 6536441) B699MiddleExtension.PrimorialBlocks.Block072.joined B699MiddleExtension.PrimorialBlocks.Block073.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6536441 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6624439) (hi := 6712421) B699MiddleExtension.PrimorialBlocks.Block074.joined B699MiddleExtension.PrimorialBlocks.Block075.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6712421 6888019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6799907) (hi := 6888019) B699MiddleExtension.PrimorialBlocks.Block076.joined B699MiddleExtension.PrimorialBlocks.Block077.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6888019 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6888019)
    (mid := 6975769) (hi := 7063367) B699MiddleExtension.PrimorialBlocks.Block078.joined B699MiddleExtension.PrimorialBlocks.Block079.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5657359 6009167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 5833001) (hi := 6009167) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6009167 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6009167)
    (mid := 6185143) (hi := 6361013) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6361013 6712421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6536441) (hi := 6712421) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6712421 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6712421)
    (mid := 6888019) (hi := 7063367) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5657359 6361013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 6009167) (hi := 6361013) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6361013 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6712421) (hi := 7063367) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5657359 7063367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 6361013) (hi := 7063367) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 5657359 7063367 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group004

#print axioms B699MiddleExtension.PrimorialGroups.Group004.joined
