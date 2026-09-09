import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block176
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block177
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block178
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block179
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block180
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block181
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block182
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block183
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block184
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block185
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block186
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block187
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block188
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block189
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block190
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block191

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group011

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15470893 15645211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15557863) (hi := 15645211) B699MiddleExtension.PrimorialBlocks.Block176.joined B699MiddleExtension.PrimorialBlocks.Block177.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15645211 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15733261) (hi := 15820417) B699MiddleExtension.PrimorialBlocks.Block178.joined B699MiddleExtension.PrimorialBlocks.Block179.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15820417 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15907571) (hi := 15995059) B699MiddleExtension.PrimorialBlocks.Block180.joined B699MiddleExtension.PrimorialBlocks.Block181.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15995059 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 16082089) (hi := 16169423) B699MiddleExtension.PrimorialBlocks.Block182.joined B699MiddleExtension.PrimorialBlocks.Block183.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16169423 16343519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16256363) (hi := 16343519) B699MiddleExtension.PrimorialBlocks.Block184.joined B699MiddleExtension.PrimorialBlocks.Block185.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16343519 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16430989) (hi := 16518329) B699MiddleExtension.PrimorialBlocks.Block186.joined B699MiddleExtension.PrimorialBlocks.Block187.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16518329 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16605467) (hi := 16692707) B699MiddleExtension.PrimorialBlocks.Block188.joined B699MiddleExtension.PrimorialBlocks.Block189.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16692707 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16692707)
    (mid := 16780091) (hi := 16867283) B699MiddleExtension.PrimorialBlocks.Block190.joined B699MiddleExtension.PrimorialBlocks.Block191.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15470893 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15645211) (hi := 15820417) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15820417 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15820417)
    (mid := 15995059) (hi := 16169423) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16169423 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16343519) (hi := 16518329) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16518329 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16692707) (hi := 16867283) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15470893 16169423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 15820417) (hi := 16169423) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16169423 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16169423)
    (mid := 16518329) (hi := 16867283) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15470893 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15470893)
    (mid := 16169423) (hi := 16867283) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 15470893 16867283 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group011

#print axioms B699MiddleExtension.PrimorialGroups.Group011.joined
