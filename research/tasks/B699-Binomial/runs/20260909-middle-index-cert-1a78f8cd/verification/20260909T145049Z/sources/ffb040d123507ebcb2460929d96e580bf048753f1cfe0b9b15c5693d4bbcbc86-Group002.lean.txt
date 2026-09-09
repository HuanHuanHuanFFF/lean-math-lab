import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block032
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block033
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block034
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block035
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block036
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block037
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block038
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block039
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block040
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block041
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block042
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block043
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block044
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block045
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block046
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block047

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group002

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2840359 3016759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 2928319) (hi := 3016759) B699MiddleExtension.PrimorialBlocks.Block032.joined B699MiddleExtension.PrimorialBlocks.Block033.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3016759 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3016759)
    (mid := 3104513) (hi := 3192887) B699MiddleExtension.PrimorialBlocks.Block034.joined B699MiddleExtension.PrimorialBlocks.Block035.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3192887 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3280703) (hi := 3368593) B699MiddleExtension.PrimorialBlocks.Block036.joined B699MiddleExtension.PrimorialBlocks.Block037.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3368593 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3368593)
    (mid := 3456977) (hi := 3545239) B699MiddleExtension.PrimorialBlocks.Block038.joined B699MiddleExtension.PrimorialBlocks.Block039.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3545239 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3632903) (hi := 3720947) B699MiddleExtension.PrimorialBlocks.Block040.joined B699MiddleExtension.PrimorialBlocks.Block041.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3720947 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3808913) (hi := 3896777) B699MiddleExtension.PrimorialBlocks.Block042.joined B699MiddleExtension.PrimorialBlocks.Block043.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3896777 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3984823) (hi := 4072867) B699MiddleExtension.PrimorialBlocks.Block044.joined B699MiddleExtension.PrimorialBlocks.Block045.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4072867 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4161349) (hi := 4249327) B699MiddleExtension.PrimorialBlocks.Block046.joined B699MiddleExtension.PrimorialBlocks.Block047.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2840359 3192887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 3016759) (hi := 3192887) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3192887 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3368593) (hi := 3545239) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3545239 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3720947) (hi := 3896777) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3896777 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 4072867) (hi := 4249327) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2840359 3545239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 3192887) (hi := 3545239) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3545239 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3545239)
    (mid := 3896777) (hi := 4249327) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2840359 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 3545239) (hi := 4249327) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 2840359 4249327 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group002

#print axioms B699MiddleExtension.PrimorialGroups.Group002.joined
