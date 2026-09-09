import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block048
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block049
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block050
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block051
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block052
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block053
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block054
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block055
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block056
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block057
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block058
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block059
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block060
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block061
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block062
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block063

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group003

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4249327 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4337393) (hi := 4425229) B699MiddleExtension.PrimorialBlocks.Block048.joined B699MiddleExtension.PrimorialBlocks.Block049.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4425229 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4513283) (hi := 4601239) B699MiddleExtension.PrimorialBlocks.Block050.joined B699MiddleExtension.PrimorialBlocks.Block051.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4601239 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4689359) (hi := 4777681) B699MiddleExtension.PrimorialBlocks.Block052.joined B699MiddleExtension.PrimorialBlocks.Block053.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4777681 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4777681)
    (mid := 4865761) (hi := 4953797) B699MiddleExtension.PrimorialBlocks.Block054.joined B699MiddleExtension.PrimorialBlocks.Block055.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4953797 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 5042033) (hi := 5130271) B699MiddleExtension.PrimorialBlocks.Block056.joined B699MiddleExtension.PrimorialBlocks.Block057.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5130271 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5218321) (hi := 5306479) B699MiddleExtension.PrimorialBlocks.Block058.joined B699MiddleExtension.PrimorialBlocks.Block059.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5306479 5481533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5394239) (hi := 5481533) B699MiddleExtension.PrimorialBlocks.Block060.joined B699MiddleExtension.PrimorialBlocks.Block061.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5481533 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5481533)
    (mid := 5569511) (hi := 5657359) B699MiddleExtension.PrimorialBlocks.Block062.joined B699MiddleExtension.PrimorialBlocks.Block063.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4249327 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4425229) (hi := 4601239) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4601239 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4777681) (hi := 4953797) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4953797 5306479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 5130271) (hi := 5306479) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5306479 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5306479)
    (mid := 5481533) (hi := 5657359) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4249327 4953797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4601239) (hi := 4953797) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4953797 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 5306479) (hi := 5657359) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4249327 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4953797) (hi := 5657359) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 4249327 5657359 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group003

#print axioms B699MiddleExtension.PrimorialGroups.Group003.joined
