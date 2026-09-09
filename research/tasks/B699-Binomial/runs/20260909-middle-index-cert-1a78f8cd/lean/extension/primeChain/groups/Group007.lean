import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block112
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block113
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block114
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block115
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block116
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block117
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block118
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block119
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block120
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block121
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block122
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block123
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block124
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block125
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block126
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block127

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group007

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9868237 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9956003) (hi := 10043791) B699MiddleExtension.PrimorialBlocks.Block112.joined B699MiddleExtension.PrimorialBlocks.Block113.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10043791 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10043791)
    (mid := 10131529) (hi := 10218359) B699MiddleExtension.PrimorialBlocks.Block114.joined B699MiddleExtension.PrimorialBlocks.Block115.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10218359 10393651 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10305839) (hi := 10393651) B699MiddleExtension.PrimorialBlocks.Block116.joined B699MiddleExtension.PrimorialBlocks.Block117.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10393651 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10481221) (hi := 10568609) B699MiddleExtension.PrimorialBlocks.Block118.joined B699MiddleExtension.PrimorialBlocks.Block119.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10568609 10744477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10656557) (hi := 10744477) B699MiddleExtension.PrimorialBlocks.Block120.joined B699MiddleExtension.PrimorialBlocks.Block121.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10744477 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10744477)
    (mid := 10831837) (hi := 10919201) B699MiddleExtension.PrimorialBlocks.Block122.joined B699MiddleExtension.PrimorialBlocks.Block123.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10919201 11094431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 11006659) (hi := 11094431) B699MiddleExtension.PrimorialBlocks.Block124.joined B699MiddleExtension.PrimorialBlocks.Block125.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11094431 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11181839) (hi := 11268953) B699MiddleExtension.PrimorialBlocks.Block126.joined B699MiddleExtension.PrimorialBlocks.Block127.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9868237 10218359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 10043791) (hi := 10218359) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10218359 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10218359)
    (mid := 10393651) (hi := 10568609) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10568609 10919201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10744477) (hi := 10919201) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10919201 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 11094431) (hi := 11268953) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9868237 10568609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 10218359) (hi := 10568609) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10568609 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10568609)
    (mid := 10919201) (hi := 11268953) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9868237 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 10568609) (hi := 11268953) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 9868237 11268953 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group007

#print axioms B699MiddleExtension.PrimorialGroups.Group007.joined
