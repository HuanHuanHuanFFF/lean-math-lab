import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block080
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block081
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block082
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block083
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block084
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block085
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block086
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block087
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block088
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block089
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block090
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block091
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block092
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block093
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block094
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block095

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group005

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7063367 7239109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7151227) (hi := 7239109) B699MiddleExtension.PrimorialBlocks.Block080.joined B699MiddleExtension.PrimorialBlocks.Block081.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7239109 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7239109)
    (mid := 7326749) (hi := 7414621) B699MiddleExtension.PrimorialBlocks.Block082.joined B699MiddleExtension.PrimorialBlocks.Block083.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7414621 7589423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7501873) (hi := 7589423) B699MiddleExtension.PrimorialBlocks.Block084.joined B699MiddleExtension.PrimorialBlocks.Block085.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7589423 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7589423)
    (mid := 7677679) (hi := 7765343) B699MiddleExtension.PrimorialBlocks.Block086.joined B699MiddleExtension.PrimorialBlocks.Block087.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7765343 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7853513) (hi := 7941391) B699MiddleExtension.PrimorialBlocks.Block088.joined B699MiddleExtension.PrimorialBlocks.Block089.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7941391 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7941391)
    (mid := 8029271) (hi := 8116817) B699MiddleExtension.PrimorialBlocks.Block090.joined B699MiddleExtension.PrimorialBlocks.Block091.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8116817 8292203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8204747) (hi := 8292203) B699MiddleExtension.PrimorialBlocks.Block092.joined B699MiddleExtension.PrimorialBlocks.Block093.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8292203 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8292203)
    (mid := 8379557) (hi := 8466611) B699MiddleExtension.PrimorialBlocks.Block094.joined B699MiddleExtension.PrimorialBlocks.Block095.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7063367 7414621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7239109) (hi := 7414621) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7414621 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7414621)
    (mid := 7589423) (hi := 7765343) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7765343 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 7941391) (hi := 8116817) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8116817 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8116817)
    (mid := 8292203) (hi := 8466611) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7063367 7765343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7414621) (hi := 7765343) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7765343 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7765343)
    (mid := 8116817) (hi := 8466611) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7063367 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7063367)
    (mid := 7765343) (hi := 8466611) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 7063367 8466611 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group005

#print axioms B699MiddleExtension.PrimorialGroups.Group005.joined
