import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block192
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block193
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block194
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block195
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block196
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block197
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block198
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block199
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block200
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block201
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block202
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block203
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block204
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block205
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block206
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block207

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group012

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16867283 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 16954759) (hi := 17041757) B699MiddleExtension.PrimorialBlocks.Block192.joined B699MiddleExtension.PrimorialBlocks.Block193.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 17041757 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17041757)
    (mid := 17128897) (hi := 17215921) B699MiddleExtension.PrimorialBlocks.Block194.joined B699MiddleExtension.PrimorialBlocks.Block195.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 17215921 17391331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17303677) (hi := 17391331) B699MiddleExtension.PrimorialBlocks.Block196.joined B699MiddleExtension.PrimorialBlocks.Block197.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17391331 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17391331)
    (mid := 17479073) (hi := 17566669) B699MiddleExtension.PrimorialBlocks.Block198.joined B699MiddleExtension.PrimorialBlocks.Block199.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 17566669 17741401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17653913) (hi := 17741401) B699MiddleExtension.PrimorialBlocks.Block200.joined B699MiddleExtension.PrimorialBlocks.Block201.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 17741401 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17741401)
    (mid := 17828737) (hi := 17916013) B699MiddleExtension.PrimorialBlocks.Block202.joined B699MiddleExtension.PrimorialBlocks.Block203.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 17916013 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 18003703) (hi := 18090773) B699MiddleExtension.PrimorialBlocks.Block204.joined B699MiddleExtension.PrimorialBlocks.Block205.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18090773 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18090773)
    (mid := 18178133) (hi := 18265211) B699MiddleExtension.PrimorialBlocks.Block206.joined B699MiddleExtension.PrimorialBlocks.Block207.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16867283 17215921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 17041757) (hi := 17215921) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 17215921 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17215921)
    (mid := 17391331) (hi := 17566669) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 17566669 17916013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17741401) (hi := 17916013) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 17916013 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17916013)
    (mid := 18090773) (hi := 18265211) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16867283 17566669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 17215921) (hi := 17566669) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 17566669 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17566669)
    (mid := 17916013) (hi := 18265211) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16867283 18265211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 17566669) (hi := 18265211) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 16867283 18265211 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group012

#print axioms B699MiddleExtension.PrimorialGroups.Group012.joined
