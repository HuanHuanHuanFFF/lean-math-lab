import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group000
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group001
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group002
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group003
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group004
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group005
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group006
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group007
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group008
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group009
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group010
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group011
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group012
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group013
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primeChain.groups.Group014

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension.PrimorialAllBlocks

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2 2840359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 1426171) (hi := 2840359) B699MiddleExtension.PrimorialGroups.Group000.joined B699MiddleExtension.PrimorialGroups.Group001.joined

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 2840359 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2840359)
    (mid := 4249327) (hi := 5657359) B699MiddleExtension.PrimorialGroups.Group002.joined B699MiddleExtension.PrimorialGroups.Group003.joined

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5657359 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 7063367) (hi := 8466611) B699MiddleExtension.PrimorialGroups.Group004.joined B699MiddleExtension.PrimorialGroups.Group005.joined

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8466611 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 9868237) (hi := 11268953) B699MiddleExtension.PrimorialGroups.Group006.joined B699MiddleExtension.PrimorialGroups.Group007.joined

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11268953 14071807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 12670139) (hi := 14071807) B699MiddleExtension.PrimorialGroups.Group008.joined B699MiddleExtension.PrimorialGroups.Group009.joined

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14071807 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14071807)
    (mid := 15470893) (hi := 16867283) B699MiddleExtension.PrimorialGroups.Group010.joined B699MiddleExtension.PrimorialGroups.Group011.joined

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16867283 19662127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 18265211) (hi := 19662127) B699MiddleExtension.PrimorialGroups.Group012.joined B699MiddleExtension.PrimorialGroups.Group013.joined

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2 5657359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 2840359) (hi := 5657359) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5657359 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5657359)
    (mid := 8466611) (hi := 11268953) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11268953 16867283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 14071807) (hi := 16867283) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16867283 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16867283)
    (mid := 19662127) (hi := 20000093) joinLevel0_6 B699MiddleExtension.PrimorialGroups.Group014.joined

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2 11268953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 5657359) (hi := 11268953) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11268953 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 16867283) (hi := 20000093) joinLevel1_2 joinLevel1_3

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2 20000093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 11268953) (hi := 20000093) joinLevel2_0 joinLevel2_1

theorem joined : B699MiddleIndex.PrimeChain 184 2 20000093 := joinLevel3_0

end B699MiddleExtension.PrimorialAllBlocks

#print axioms B699MiddleExtension.PrimorialAllBlocks.joined
