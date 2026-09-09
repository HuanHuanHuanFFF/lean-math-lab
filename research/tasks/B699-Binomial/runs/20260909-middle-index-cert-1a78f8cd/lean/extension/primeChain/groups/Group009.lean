import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block144
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block145
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block146
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block147
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block148
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block149
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block150
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block151
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block152
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block153
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block154
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block155
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block156
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block157
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block158
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block159

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group009

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12670139 12845351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12757981) (hi := 12845351) B699MiddleExtension.PrimorialBlocks.Block144.joined B699MiddleExtension.PrimorialBlocks.Block145.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12845351 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12845351)
    (mid := 12932957) (hi := 13020431) B699MiddleExtension.PrimorialBlocks.Block146.joined B699MiddleExtension.PrimorialBlocks.Block147.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13020431 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13107581) (hi := 13195447) B699MiddleExtension.PrimorialBlocks.Block148.joined B699MiddleExtension.PrimorialBlocks.Block149.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13195447 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13282949) (hi := 13370297) B699MiddleExtension.PrimorialBlocks.Block150.joined B699MiddleExtension.PrimorialBlocks.Block151.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13370297 13545799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13458043) (hi := 13545799) B699MiddleExtension.PrimorialBlocks.Block152.joined B699MiddleExtension.PrimorialBlocks.Block153.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13545799 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13633891) (hi := 13721599) B699MiddleExtension.PrimorialBlocks.Block154.joined B699MiddleExtension.PrimorialBlocks.Block155.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13721599 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13808869) (hi := 13896823) B699MiddleExtension.PrimorialBlocks.Block156.joined B699MiddleExtension.PrimorialBlocks.Block157.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13896823 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13896823)
    (mid := 13984363) (hi := 14071807) B699MiddleExtension.PrimorialBlocks.Block158.joined B699MiddleExtension.PrimorialBlocks.Block159.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12670139 13020431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 12845351) (hi := 13020431) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13020431 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13195447) (hi := 13370297) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13370297 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13545799) (hi := 13721599) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13721599 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13896823) (hi := 14071807) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12670139 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 13020431) (hi := 13370297) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13370297 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13370297)
    (mid := 13721599) (hi := 14071807) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12670139 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12670139)
    (mid := 13370297) (hi := 14071807) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 12670139 14071807 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group009

#print axioms B699MiddleExtension.PrimorialGroups.Group009.joined
