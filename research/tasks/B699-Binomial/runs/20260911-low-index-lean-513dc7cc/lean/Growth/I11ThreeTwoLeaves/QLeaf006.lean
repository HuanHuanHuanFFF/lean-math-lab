import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.QLeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (15 : ℚ) / 64
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (50045175481493571025 : ℚ) / 9903520314283042199192993792

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1829883023627132751850621674403024559004095698325 : ℚ) / 26812541982989591465837639587021809476593459681724303671296
def gapCoeff1 : ℚ := (27877602849096981686941345752036715595134675634725 : ℚ) / 10054703243621096799689114845133178553722547380646613876736
def gapCoeff2 : ℚ := (206324758689465979862272273771441835335129244650475 : ℚ) / 3770513716357911299883418066924941957645955267742480203776
def gapCoeff3 : ℚ := (988516509083049844575608335771181098970744183456825 : ℚ) / 1413942643634216737456281775096853234117233225403430076416
def gapCoeff4 : ℚ := (3446815778024869200531125890694760147949625900302375 : ℚ) / 530228491362831276546105665661319962793962459526286278656
def gapCoeff5 : ℚ := (9323348743899408112156460862257500290172301619512525 : ℚ) / 198835684261061728704789624622994986047735922322357354496
def gapCoeff6 : ℚ := (6787628047600364921777968315759426778472541034647925 : ℚ) / 24854460532632716088098703077874373255966990290294669312
def gapCoeff7 : ℚ := (12301903100474607945409965212903783004762556397248735 : ℚ) / 9320422699737268533037013654202889970987621358860500992
def gapCoeff8 : ℚ := (18870318466528968917115014965635022346168061973782023 : ℚ) / 3495158512401475699888880120326083739120358009572687872
def gapCoeff9 : ℚ := (74589915526781066317862963020970115198135685873738675 : ℚ) / 3932053326451660162374990135366844206510402760769273856
def gapCoeff10 : ℚ := (85383741029099907984338532210986099707959131789616185 : ℚ) / 1474519997419372560890621300762566577441401035288477696
def gapCoeff11 : ℚ := (85676599333075517217733150542971840038891608117977275 : ℚ) / 552944999032264710333982987785962466540525388233179136
def gapCoeff12 : ℚ := (75895777627609606648468964435749814330723335962127645 : ℚ) / 207354374637099266375243620419735924952697020587442176
def gapCoeff13 : ℚ := (59689299626221294380961403901671088869007232102206575 : ℚ) / 77757890488912224890716357657400971857261382720290816
def gapCoeff14 : ℚ := (41865524736012393244394523081814437415742446865969845 : ℚ) / 29159208933342084334018634121525364446473018520109056
def gapCoeff15 : ℚ := (8760407440039961554962534309233881396804098092374325 : ℚ) / 3644901116667760541752329265190670555809127315013632
def gapCoeff16 : ℚ := (2467814707598177784889456099761699957934862960046035 : ℚ) / 683418959375205101578561737223250729214211371565056
def gapCoeff17 : ℚ := (625211829884505804858560962422126134633991163519145 : ℚ) / 128141054882850956545980325729359511727664632168448
def gapCoeff18 : ℚ := (427971246257296029660860880763826568394564327927729 : ℚ) / 72079343371603663057113933222764725346811355594752
def gapCoeff19 : ℚ := (88024943300041685875527253224655985076881033767225 : ℚ) / 13514876882175686823208862479268386002527129174016
def gapCoeff20 : ℚ := (16325085966099792248310745820447043145805868660535 : ℚ) / 2534039415407941279351661714862822375473836720128
def gapCoeff21 : ℚ := (2729362276184183805817363317074429569158512875025 : ℚ) / 475132390388988989878436571536779195401344385024
def gapCoeff22 : ℚ := (411036592637649406207652886498536793404460797705 : ℚ) / 89087323197935435602206857163146099137752072192
def gapCoeff23 : ℚ := (27841309795247440321114187065585799723734322875 : ℚ) / 8351936549806447087706892859044946794164256768
def gapCoeff24 : ℚ := (125406363475071456262537624210217218927550855 : ℚ) / 57999559373655882553520089298923241626140672
def gapCoeff25 : ℚ := (1517250798555966160859910588223441533105725 : ℚ) / 1208324153617830886531668527060900867211264
def gapCoeff26 : ℚ := (49134709246206628821091077442995403272905 : ℚ) / 75520259601114430408229282941306304200704
def gapCoeff27 : ℚ := (39261341605548632233475211816650610635 : ℚ) / 131111561807490330569842505106434555904
def gapCoeff28 : ℚ := (85131686473868111996039064137778363551 : ℚ) / 699261662973281763039160027234317631488
def gapCoeff29 : ℚ := (15180170191478403510025858717271679575 : ℚ) / 349630831486640881519580013617158815744
def gapCoeff30 : ℚ := (348664256017324118623778577451812115 : ℚ) / 25898580110121546779228149156826578944
def gapCoeff31 : ℚ := (3872634025502003462216124553315375 : ℚ) / 1079107504588397782467839548201107456
def gapCoeff32 : ℚ := (83956584349672938180967068875282395 : ℚ) / 103594320440486187116912596627306315776
def gapCoeff33 : ℚ := (874990961626926754050707302160425 : ℚ) / 5755240024471454839828477590405906432
def gapCoeff34 : ℚ := (88460618604189985669135644500735 : ℚ) / 3836826682980969893218985060270604288
def gapCoeff35 : ℚ := (2604943571800488651613171044725 : ℚ) / 959206670745242473304746265067651072
def gapCoeff36 : ℚ := (99386563513440087421156568495 : ℚ) / 426314075886774432579887228918956032
def gapCoeff37 : ℚ := (921894325582032748270536385 : ℚ) / 71052345981129072096647871486492672
def gapCoeff38 : ℚ := (49933686060825092346593371 : ℚ) / 142104691962258144193295742972985344

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

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14, gapCoeff15, gapCoeff16, gapCoeff17, gapCoeff18, gapCoeff19, gapCoeff20, gapCoeff21, gapCoeff22, gapCoeff23, gapCoeff24, gapCoeff25, gapCoeff26, gapCoeff27, gapCoeff28, gapCoeff29, gapCoeff30, gapCoeff31, gapCoeff32, gapCoeff33, gapCoeff34, gapCoeff35, gapCoeff36, gapCoeff37, gapCoeff38,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 38) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 38)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 37) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 37)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 36) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 36)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 35) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 35)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 34) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 34)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 33) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 33)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 32) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 32)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 31) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 31)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 30) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 30)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 29) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 29)
  have h10 : BernsteinCone (Polynomial.C gapCoeff10 * bernsteinMonomial 10 28) :=
    BernsteinCone.scale gapCoeff10 (by norm_num [gapCoeff10]) (BernsteinCone.basis 10 28)
  have h11 : BernsteinCone (Polynomial.C gapCoeff11 * bernsteinMonomial 11 27) :=
    BernsteinCone.scale gapCoeff11 (by norm_num [gapCoeff11]) (BernsteinCone.basis 11 27)
  have h12 : BernsteinCone (Polynomial.C gapCoeff12 * bernsteinMonomial 12 26) :=
    BernsteinCone.scale gapCoeff12 (by norm_num [gapCoeff12]) (BernsteinCone.basis 12 26)
  have h13 : BernsteinCone (Polynomial.C gapCoeff13 * bernsteinMonomial 13 25) :=
    BernsteinCone.scale gapCoeff13 (by norm_num [gapCoeff13]) (BernsteinCone.basis 13 25)
  have h14 : BernsteinCone (Polynomial.C gapCoeff14 * bernsteinMonomial 14 24) :=
    BernsteinCone.scale gapCoeff14 (by norm_num [gapCoeff14]) (BernsteinCone.basis 14 24)
  have h15 : BernsteinCone (Polynomial.C gapCoeff15 * bernsteinMonomial 15 23) :=
    BernsteinCone.scale gapCoeff15 (by norm_num [gapCoeff15]) (BernsteinCone.basis 15 23)
  have h16 : BernsteinCone (Polynomial.C gapCoeff16 * bernsteinMonomial 16 22) :=
    BernsteinCone.scale gapCoeff16 (by norm_num [gapCoeff16]) (BernsteinCone.basis 16 22)
  have h17 : BernsteinCone (Polynomial.C gapCoeff17 * bernsteinMonomial 17 21) :=
    BernsteinCone.scale gapCoeff17 (by norm_num [gapCoeff17]) (BernsteinCone.basis 17 21)
  have h18 : BernsteinCone (Polynomial.C gapCoeff18 * bernsteinMonomial 18 20) :=
    BernsteinCone.scale gapCoeff18 (by norm_num [gapCoeff18]) (BernsteinCone.basis 18 20)
  have h19 : BernsteinCone (Polynomial.C gapCoeff19 * bernsteinMonomial 19 19) :=
    BernsteinCone.scale gapCoeff19 (by norm_num [gapCoeff19]) (BernsteinCone.basis 19 19)
  have h20 : BernsteinCone (Polynomial.C gapCoeff20 * bernsteinMonomial 20 18) :=
    BernsteinCone.scale gapCoeff20 (by norm_num [gapCoeff20]) (BernsteinCone.basis 20 18)
  have h21 : BernsteinCone (Polynomial.C gapCoeff21 * bernsteinMonomial 21 17) :=
    BernsteinCone.scale gapCoeff21 (by norm_num [gapCoeff21]) (BernsteinCone.basis 21 17)
  have h22 : BernsteinCone (Polynomial.C gapCoeff22 * bernsteinMonomial 22 16) :=
    BernsteinCone.scale gapCoeff22 (by norm_num [gapCoeff22]) (BernsteinCone.basis 22 16)
  have h23 : BernsteinCone (Polynomial.C gapCoeff23 * bernsteinMonomial 23 15) :=
    BernsteinCone.scale gapCoeff23 (by norm_num [gapCoeff23]) (BernsteinCone.basis 23 15)
  have h24 : BernsteinCone (Polynomial.C gapCoeff24 * bernsteinMonomial 24 14) :=
    BernsteinCone.scale gapCoeff24 (by norm_num [gapCoeff24]) (BernsteinCone.basis 24 14)
  have h25 : BernsteinCone (Polynomial.C gapCoeff25 * bernsteinMonomial 25 13) :=
    BernsteinCone.scale gapCoeff25 (by norm_num [gapCoeff25]) (BernsteinCone.basis 25 13)
  have h26 : BernsteinCone (Polynomial.C gapCoeff26 * bernsteinMonomial 26 12) :=
    BernsteinCone.scale gapCoeff26 (by norm_num [gapCoeff26]) (BernsteinCone.basis 26 12)
  have h27 : BernsteinCone (Polynomial.C gapCoeff27 * bernsteinMonomial 27 11) :=
    BernsteinCone.scale gapCoeff27 (by norm_num [gapCoeff27]) (BernsteinCone.basis 27 11)
  have h28 : BernsteinCone (Polynomial.C gapCoeff28 * bernsteinMonomial 28 10) :=
    BernsteinCone.scale gapCoeff28 (by norm_num [gapCoeff28]) (BernsteinCone.basis 28 10)
  have h29 : BernsteinCone (Polynomial.C gapCoeff29 * bernsteinMonomial 29 9) :=
    BernsteinCone.scale gapCoeff29 (by norm_num [gapCoeff29]) (BernsteinCone.basis 29 9)
  have h30 : BernsteinCone (Polynomial.C gapCoeff30 * bernsteinMonomial 30 8) :=
    BernsteinCone.scale gapCoeff30 (by norm_num [gapCoeff30]) (BernsteinCone.basis 30 8)
  have h31 : BernsteinCone (Polynomial.C gapCoeff31 * bernsteinMonomial 31 7) :=
    BernsteinCone.scale gapCoeff31 (by norm_num [gapCoeff31]) (BernsteinCone.basis 31 7)
  have h32 : BernsteinCone (Polynomial.C gapCoeff32 * bernsteinMonomial 32 6) :=
    BernsteinCone.scale gapCoeff32 (by norm_num [gapCoeff32]) (BernsteinCone.basis 32 6)
  have h33 : BernsteinCone (Polynomial.C gapCoeff33 * bernsteinMonomial 33 5) :=
    BernsteinCone.scale gapCoeff33 (by norm_num [gapCoeff33]) (BernsteinCone.basis 33 5)
  have h34 : BernsteinCone (Polynomial.C gapCoeff34 * bernsteinMonomial 34 4) :=
    BernsteinCone.scale gapCoeff34 (by norm_num [gapCoeff34]) (BernsteinCone.basis 34 4)
  have h35 : BernsteinCone (Polynomial.C gapCoeff35 * bernsteinMonomial 35 3) :=
    BernsteinCone.scale gapCoeff35 (by norm_num [gapCoeff35]) (BernsteinCone.basis 35 3)
  have h36 : BernsteinCone (Polynomial.C gapCoeff36 * bernsteinMonomial 36 2) :=
    BernsteinCone.scale gapCoeff36 (by norm_num [gapCoeff36]) (BernsteinCone.basis 36 2)
  have h37 : BernsteinCone (Polynomial.C gapCoeff37 * bernsteinMonomial 37 1) :=
    BernsteinCone.scale gapCoeff37 (by norm_num [gapCoeff37]) (BernsteinCone.basis 37 1)
  have h38 : BernsteinCone (Polynomial.C gapCoeff38 * bernsteinMonomial 38 0) :=
    BernsteinCone.scale gapCoeff38 (by norm_num [gapCoeff38]) (BernsteinCone.basis 38 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9) h10) h11) h12) h13) h14) h15) h16) h17) h18) h19) h20) h21) h22) h23) h24) h25) h26) h27) h28) h29) h30) h31) h32) h33) h34) h35) h36) h37) h38

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11ThreeTwoGrowth.QLeaf006

#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.actual_gap_eq
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.leafMap_eq_path
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.gapExpansion_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.local_gap_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.local_core_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.local_weight0_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.local_weight1_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.leaf_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf006.leaf_delta1
