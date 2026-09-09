import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block096
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block097
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block098
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block099
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block100
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block101
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block102
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block103
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block104
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block105
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block106
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block107
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block108
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block109
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block110
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block111

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group006

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8466611 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8553877) (hi := 8641819) B699MiddleExtension.PrimorialBlocks.Block096.joined B699MiddleExtension.PrimorialBlocks.Block097.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8641819 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8641819)
    (mid := 8729939) (hi := 8817511) B699MiddleExtension.PrimorialBlocks.Block098.joined B699MiddleExtension.PrimorialBlocks.Block099.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8817511 8992411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8904499) (hi := 8992411) B699MiddleExtension.PrimorialBlocks.Block100.joined B699MiddleExtension.PrimorialBlocks.Block101.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8992411 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8992411)
    (mid := 9079943) (hi := 9167551) B699MiddleExtension.PrimorialBlocks.Block102.joined B699MiddleExtension.PrimorialBlocks.Block103.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9167551 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9255101) (hi := 9342239) B699MiddleExtension.PrimorialBlocks.Block104.joined B699MiddleExtension.PrimorialBlocks.Block105.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9342239 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9429913) (hi := 9517559) B699MiddleExtension.PrimorialBlocks.Block106.joined B699MiddleExtension.PrimorialBlocks.Block107.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9517559 9692503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9604943) (hi := 9692503) B699MiddleExtension.PrimorialBlocks.Block108.joined B699MiddleExtension.PrimorialBlocks.Block109.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9692503 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9780523) (hi := 9868237) B699MiddleExtension.PrimorialBlocks.Block110.joined B699MiddleExtension.PrimorialBlocks.Block111.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8466611 8817511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8641819) (hi := 8817511) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8817511 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8817511)
    (mid := 8992411) (hi := 9167551) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9167551 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9342239) (hi := 9517559) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9517559 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9692503) (hi := 9868237) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8466611 9167551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8817511) (hi := 9167551) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9167551 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9167551)
    (mid := 9517559) (hi := 9868237) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8466611 9868237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 9167551) (hi := 9868237) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 8466611 9868237 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group006

#print axioms B699MiddleExtension.PrimorialGroups.Group006.joined
