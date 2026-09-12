import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ELeaf001Homogeneous


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (46880976166089921083 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (138281666008669763249 : ℚ) / 237684487542793012780631851008
def gapCoeff1 : ℚ := (2621583427225845501731 : ℚ) / 118842243771396506390315925504
def gapCoeff2 : ℚ := (290285705178821234692141 : ℚ) / 713053462628379038341895553024
def gapCoeff3 : ℚ := (7816501335577551794287807 : ℚ) / 1604370290913852836269264994304
def gapCoeff4 : ℚ := (272757922707685551865673245 : ℚ) / 6417481163655411345077059977216
def gapCoeff5 : ℚ := (2772922642449755500239851099 : ℚ) / 9626221745483117017615589965824
def gapCoeff6 : ℚ := (273517561769170685753476894001 : ℚ) / 173271991418696106317080619384832
def gapCoeff7 : ℚ := (12972343606950326060550267821 : ℚ) / 1804916577278084440802923118592
def gapCoeff8 : ℚ := (1201107231471698783797317633497 : ℚ) / 43317997854674026579270154846208
def gapCoeff9 : ℚ := (53788518925790340614307202207525 : ℚ) / 584792971038099358820147090423808
def gapCoeff10 : ℚ := (310323187589078620272887774741053 : ℚ) / 1169585942076198717640294180847616
def gapCoeff11 : ℚ := (589012791102699740741781458112163 : ℚ) / 877189456557149038230220635635712
def gapCoeff12 : ℚ := (47409589075002719093944084073184403 : ℚ) / 31578820436057365376287942882885632
def gapCoeff13 : ℚ := (47084715381725151226253872420910099 : ℚ) / 15789410218028682688143971441442816
def gapCoeff14 : ℚ := (500724042598979346669540362879181415 : ℚ) / 94736461308172096128863828648656896
def gapCoeff15 : ℚ := (894028553144030796092698534427012275 : ℚ) / 106578518971693608144971807229739008
def gapCoeff16 : ℚ := (6794330856262635825200976068039461495 : ℚ) / 568418767849032576773182971891941376
def gapCoeff17 : ℚ := (1451606093886483566405863873841667335 : ℚ) / 94736461308172096128863828648656896
def gapCoeff18 : ℚ := (1117523870728503157426209308436915581 : ℚ) / 63157640872114730752575885765771264
def gapCoeff19 : ℚ := (96952473320829693231503502374608835 : ℚ) / 5263136739342894229381323813814272
def gapCoeff20 : ℚ := (15169582479378357448152706098166165 : ℚ) / 877189456557149038230220635635712
def gapCoeff21 : ℚ := (11411234278046551034389518491302825 : ℚ) / 779723961384132478426862787231744
def gapCoeff22 : ℚ := (11597163677873519112800330158981555 : ℚ) / 1039631948512176637902483716308992
def gapCoeff23 : ℚ := (331254802865700683696575910521151 : ℚ) / 43317997854674026579270154846208
def gapCoeff24 : ℚ := (3260962920386527160657210537008475 : ℚ) / 693087965674784425268322477539328
def gapCoeff25 : ℚ := (598589117351648056521094225132163 : ℚ) / 231029321891594808422774159179776
def gapCoeff26 : ℚ := (391980078353306120273321382214817 : ℚ) / 308039095855459744563698878906368
def gapCoeff27 : ℚ := (28486826030220090104510134776167 : ℚ) / 51339849309243290760616479817728
def gapCoeff28 : ℚ := (29243220514094187792486550689169 : ℚ) / 136906264824648775361643946180608
def gapCoeff29 : ℚ := (3289451266840740090836852284495 : ℚ) / 45635421608216258453881315393536
def gapCoeff30 : ℚ := (428641880029432197994140830641 : ℚ) / 20282409603651670423947251286016
def gapCoeff31 : ℚ := (26988862788209114967723135747 : ℚ) / 5070602400912917605986812821504
def gapCoeff32 : ℚ := (368211321453169833533418822333 : ℚ) / 324518553658426726783156020576256
def gapCoeff33 : ℚ := (65141008126981676262794011731 : ℚ) / 324518553658426726783156020576256
def gapCoeff34 : ℚ := (37224837546154450807310471055 : ℚ) / 1298074214633706907132624082305024
def gapCoeff35 : ℚ := (2063003326691386252863332721 : ℚ) / 649037107316853453566312041152512
def gapCoeff36 : ℚ := (1331561686832937232947299939 : ℚ) / 5192296858534827628530496329220096
def gapCoeff37 : ℚ := (69559740311666040945050419 : ℚ) / 5192296858534827628530496329220096
def gapCoeff38 : ℚ := (7062939272042124954022577 : ℚ) / 20769187434139310514121985316880384

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 38 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 37 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 36 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 35 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 34 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 33 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 32 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 31 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 30 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 29 +
  Polynomial.C gapCoeff10 * bernsteinMonomial 10 28 +
  Polynomial.C gapCoeff11 * bernsteinMonomial 11 27 +
  Polynomial.C gapCoeff12 * bernsteinMonomial 12 26 +
  Polynomial.C gapCoeff13 * bernsteinMonomial 13 25 +
  Polynomial.C gapCoeff14 * bernsteinMonomial 14 24 +
  Polynomial.C gapCoeff15 * bernsteinMonomial 15 23 +
  Polynomial.C gapCoeff16 * bernsteinMonomial 16 22 +
  Polynomial.C gapCoeff17 * bernsteinMonomial 17 21 +
  Polynomial.C gapCoeff18 * bernsteinMonomial 18 20 +
  Polynomial.C gapCoeff19 * bernsteinMonomial 19 19 +
  Polynomial.C gapCoeff20 * bernsteinMonomial 20 18 +
  Polynomial.C gapCoeff21 * bernsteinMonomial 21 17 +
  Polynomial.C gapCoeff22 * bernsteinMonomial 22 16 +
  Polynomial.C gapCoeff23 * bernsteinMonomial 23 15 +
  Polynomial.C gapCoeff24 * bernsteinMonomial 24 14 +
  Polynomial.C gapCoeff25 * bernsteinMonomial 25 13 +
  Polynomial.C gapCoeff26 * bernsteinMonomial 26 12 +
  Polynomial.C gapCoeff27 * bernsteinMonomial 27 11 +
  Polynomial.C gapCoeff28 * bernsteinMonomial 28 10 +
  Polynomial.C gapCoeff29 * bernsteinMonomial 29 9 +
  Polynomial.C gapCoeff30 * bernsteinMonomial 30 8 +
  Polynomial.C gapCoeff31 * bernsteinMonomial 31 7 +
  Polynomial.C gapCoeff32 * bernsteinMonomial 32 6 +
  Polynomial.C gapCoeff33 * bernsteinMonomial 33 5 +
  Polynomial.C gapCoeff34 * bernsteinMonomial 34 4 +
  Polynomial.C gapCoeff35 * bernsteinMonomial 35 3 +
  Polynomial.C gapCoeff36 * bernsteinMonomial 36 2 +
  Polynomial.C gapCoeff37 * bernsteinMonomial 37 1 +
  Polynomial.C gapCoeff38 * bernsteinMonomial 38 0

end Math.B699.I11ELeaf001Homogeneous
