import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block160
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block161
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block162
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block163
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block164
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block165
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block166
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block167
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block168
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block169
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block170
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block171
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block172
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block173
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block174
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block175

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group010

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14071807 14246261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14159111) (hi := 14246261) B699MiddleExtension.PrimorialBlocks.Block160.joined B699MiddleExtension.PrimorialBlocks.Block161.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14246261 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14334283) (hi := 14421731) B699MiddleExtension.PrimorialBlocks.Block162.joined B699MiddleExtension.PrimorialBlocks.Block163.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14421731 14596247 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14509081) (hi := 14596247) B699MiddleExtension.PrimorialBlocks.Block164.joined B699MiddleExtension.PrimorialBlocks.Block165.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14596247 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14596247)
    (mid := 14684029) (hi := 14771563) B699MiddleExtension.PrimorialBlocks.Block166.joined B699MiddleExtension.PrimorialBlocks.Block167.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14771563 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14859521) (hi := 14946719) B699MiddleExtension.PrimorialBlocks.Block168.joined B699MiddleExtension.PrimorialBlocks.Block169.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14946719 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14946719)
    (mid := 15033701) (hi := 15121081) B699MiddleExtension.PrimorialBlocks.Block170.joined B699MiddleExtension.PrimorialBlocks.Block171.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15121081 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15208187) (hi := 15296269) B699MiddleExtension.PrimorialBlocks.Block172.joined B699MiddleExtension.PrimorialBlocks.Block173.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15296269 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15383653) (hi := 15470893) B699MiddleExtension.PrimorialBlocks.Block174.joined B699MiddleExtension.PrimorialBlocks.Block175.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14071807 14421731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14246261) (hi := 14421731) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14421731 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14421731)
    (mid := 14596247) (hi := 14771563) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14771563 15121081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 14946719) (hi := 15121081) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15121081 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15296269) (hi := 15470893) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14071807 14771563 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14421731) (hi := 14771563) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14771563 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14771563)
    (mid := 15121081) (hi := 15470893) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14071807 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 14771563) (hi := 15470893) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 14071807 15470893 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group010

#print axioms B699MiddleExtension.PrimorialGroups.Group010.joined
