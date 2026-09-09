import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block000
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block001
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block002
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block003
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block004
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block005
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block006
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block007
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block008
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block009
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block010
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block011
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block012
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block013
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block014
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.blocks.Block015

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialGroups.Group000

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2 180097 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 90353) (hi := 180097) B699MiddleExtension.PrimorialBlocks.Block000.joined B699MiddleExtension.PrimorialBlocks.Block001.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 180097 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 180097)
    (mid := 269749) (hi := 359311) B699MiddleExtension.PrimorialBlocks.Block002.joined B699MiddleExtension.PrimorialBlocks.Block003.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 359311 537769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 448451) (hi := 537769) B699MiddleExtension.PrimorialBlocks.Block004.joined B699MiddleExtension.PrimorialBlocks.Block005.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 537769 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 537769)
    (mid := 626887) (hi := 716143) B699MiddleExtension.PrimorialBlocks.Block006.joined B699MiddleExtension.PrimorialBlocks.Block007.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 716143 893939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 805159) (hi := 893939) B699MiddleExtension.PrimorialBlocks.Block008.joined B699MiddleExtension.PrimorialBlocks.Block009.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 893939 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 893939)
    (mid := 982939) (hi := 1071641) B699MiddleExtension.PrimorialBlocks.Block010.joined B699MiddleExtension.PrimorialBlocks.Block011.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 1071641 1248857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1160251) (hi := 1248857) B699MiddleExtension.PrimorialBlocks.Block012.joined B699MiddleExtension.PrimorialBlocks.Block013.joined

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 1248857 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1248857)
    (mid := 1337813) (hi := 1426171) B699MiddleExtension.PrimorialBlocks.Block014.joined B699MiddleExtension.PrimorialBlocks.Block015.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2 359311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 180097) (hi := 359311) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 359311 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 359311)
    (mid := 537769) (hi := 716143) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 716143 1071641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 893939) (hi := 1071641) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 1071641 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 1071641)
    (mid := 1248857) (hi := 1426171) joinLevel0_6 joinLevel0_7

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2 716143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 359311) (hi := 716143) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 716143 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 716143)
    (mid := 1071641) (hi := 1426171) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2 1426171 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 716143) (hi := 1426171) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 2 1426171 := joinLevel3_0

end B699MiddleExtension.PrimorialGroups.Group000

#print axioms B699MiddleExtension.PrimorialGroups.Group000.joined
