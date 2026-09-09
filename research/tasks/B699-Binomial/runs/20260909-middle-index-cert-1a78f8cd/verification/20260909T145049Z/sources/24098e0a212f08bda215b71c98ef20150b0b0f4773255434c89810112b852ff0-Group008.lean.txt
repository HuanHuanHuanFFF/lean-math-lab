import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block128
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block129
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block130
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block131
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block132
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block133
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block134
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block135
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block136
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block137
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block138
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block139
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block140
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block141
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block142
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block143

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group008

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11268953 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11356693) (hi := 11444687) B699MiddleExtension.PrimorialBlocks.Block128.joined B699MiddleExtension.PrimorialBlocks.Block129.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11444687 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11444687)
    (mid := 11532659) (hi := 11620051) B699MiddleExtension.PrimorialBlocks.Block130.joined B699MiddleExtension.PrimorialBlocks.Block131.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11620051 11794907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11707711) (hi := 11794907) B699MiddleExtension.PrimorialBlocks.Block132.joined B699MiddleExtension.PrimorialBlocks.Block133.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11794907 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11794907)
    (mid := 11882477) (hi := 11969879) B699MiddleExtension.PrimorialBlocks.Block134.joined B699MiddleExtension.PrimorialBlocks.Block135.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11969879 12144961 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 12057499) (hi := 12144961) B699MiddleExtension.PrimorialBlocks.Block136.joined B699MiddleExtension.PrimorialBlocks.Block137.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12144961 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12144961)
    (mid := 12232471) (hi := 12319843) B699MiddleExtension.PrimorialBlocks.Block138.joined B699MiddleExtension.PrimorialBlocks.Block139.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12319843 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12407509) (hi := 12495421) B699MiddleExtension.PrimorialBlocks.Block140.joined B699MiddleExtension.PrimorialBlocks.Block141.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12495421 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12582767) (hi := 12670139) B699MiddleExtension.PrimorialBlocks.Block142.joined B699MiddleExtension.PrimorialBlocks.Block143.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11268953 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11444687) (hi := 11620051) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11620051 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11620051)
    (mid := 11794907) (hi := 11969879) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11969879 12319843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 12144961) (hi := 12319843) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12319843 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12319843)
    (mid := 12495421) (hi := 12670139) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11268953 11969879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11620051) (hi := 11969879) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11969879 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11969879)
    (mid := 12319843) (hi := 12670139) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11268953 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11969879) (hi := 12670139) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 11268953 12670139 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group008

#print axioms B699MiddleExtension.PrimorialGroups.Group008.joined
