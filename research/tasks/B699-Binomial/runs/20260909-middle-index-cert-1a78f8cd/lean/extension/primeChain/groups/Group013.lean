import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block208
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block209
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block210
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block211
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block212
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block213
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block214
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block215
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block216
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block217
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block218
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block219
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block220
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block221
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block222
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block223

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group013

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18265211 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18351923) (hi := 18439831) B699MiddleExtension.PrimorialBlocks.Block208.joined B699MiddleExtension.PrimorialBlocks.Block209.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18439831 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18439831)
    (mid := 18526961) (hi := 18614311) B699MiddleExtension.PrimorialBlocks.Block210.joined B699MiddleExtension.PrimorialBlocks.Block211.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18614311 18789059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18701623) (hi := 18789059) B699MiddleExtension.PrimorialBlocks.Block212.joined B699MiddleExtension.PrimorialBlocks.Block213.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18789059 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18789059)
    (mid := 18876197) (hi := 18963281) B699MiddleExtension.PrimorialBlocks.Block214.joined B699MiddleExtension.PrimorialBlocks.Block215.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18963281 19137751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 19050467) (hi := 19137751) B699MiddleExtension.PrimorialBlocks.Block216.joined B699MiddleExtension.PrimorialBlocks.Block217.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 19137751 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19137751)
    (mid := 19224967) (hi := 19312373) B699MiddleExtension.PrimorialBlocks.Block218.joined B699MiddleExtension.PrimorialBlocks.Block219.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 19312373 19487431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19400023) (hi := 19487431) B699MiddleExtension.PrimorialBlocks.Block220.joined B699MiddleExtension.PrimorialBlocks.Block221.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 19487431 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19487431)
    (mid := 19574683) (hi := 19662127) B699MiddleExtension.PrimorialBlocks.Block222.joined B699MiddleExtension.PrimorialBlocks.Block223.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18265211 18614311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18439831) (hi := 18614311) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18614311 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18614311)
    (mid := 18789059) (hi := 18963281) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18963281 19312373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 19137751) (hi := 19312373) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 19312373 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 19312373)
    (mid := 19487431) (hi := 19662127) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18265211 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18614311) (hi := 18963281) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18963281 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18963281)
    (mid := 19312373) (hi := 19662127) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18265211 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18265211)
    (mid := 18963281) (hi := 19662127) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 18265211 19662127 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group013

#print axioms B699MiddleExtension.PrimorialGroups.Group013.joined
