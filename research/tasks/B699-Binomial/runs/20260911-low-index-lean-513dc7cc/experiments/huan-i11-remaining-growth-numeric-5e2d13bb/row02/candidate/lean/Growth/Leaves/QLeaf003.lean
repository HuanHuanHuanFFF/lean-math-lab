import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (7 : ℚ) / 32
def leafB : ℚ := (57 : ℚ) / 256
def lam : ℚ := (50045175481493571025 : ℚ) / 9903520314283042199192993792

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (75291093264468711097423377628082218156203753475 : ℚ) / 9183051350959555935143820406623739974398854776500904787968
def gapCoeff1 : ℚ := (3616955927431780331939343810634657979893571556275 : ℚ) / 12244068467946074580191760542164986632531806368667873050624
def gapCoeff2 : ℚ := (1013650914187765402974426484632371556066288928704275 : ℚ) / 195905095487137193283068168674639786120508901898685968809984
def gapCoeff3 : ℚ := (68994774551076211485903406030129539046488836802254675 : ℚ) / 1175430572922823159698409012047838716723053411392115812859904
def gapCoeff4 : ℚ := (2025962916016916182887992942763665332875951342143279125 : ℚ) / 4179308703725593456705454265058982103904189907171967334612992
def gapCoeff5 : ℚ := (155770547726203672051396997738374284124083097505952123475 : ℚ) / 50151704444707121480465451180707785246850278886063608015355904
def gapCoeff6 : ℚ := (38678775675884639842280022810896090820866994042688303956775 : ℚ) / 2407281813345941831062341656673973691848813386531053184737083392
def gapCoeff7 : ℚ := (13832426220282017964509777209231871448120029537239412947075 : ℚ) / 200606817778828485921861804722831140987401115544254432061423616
def gapCoeff8 : ℚ := (1071278612948681242127517630238605419873474963431943244380075 : ℚ) / 4279612112615007699666385167420397674397890464944094550643703808
def gapCoeff9 : ℚ := (120176084374749959991243779067052271746591263072734254999437125 : ℚ) / 154066036054140277187989866027134316278324056737987403823173337088
def gapCoeff10 : ℚ := (1733588627165919275225362600456305146593244218070421394176841075 : ℚ) / 821685525622081478335945952144716353484394969269266153723591131136
def gapCoeff11 : ℚ := (8211057724470641831445100898592083266445293510920978883176027575 : ℚ) / 1643371051244162956671891904289432706968789938538532307447182262272
def gapCoeff12 : ℚ := (1645731408282022994941061259786645928790112315617588231670961721825 : ℚ) / 157763620919439643840501622811785539869003834099699101514929497178112
def gapCoeff13 : ℚ := (1353549585490019245022830794767548350074308391489039619632975910025 : ℚ) / 70117164853084286151334054583015795497335037377644045117746443190272
def gapCoeff14 : ℚ := (107018775857517502321334209450037640517560870208632195787701333028625 : ℚ) / 3365623912948045735264034619984758183872081794126914165651829273133056
def gapCoeff15 : ℚ := (472269956889417404899050502022741862496727446505154470160088071819407 : ℚ) / 10096871738844137205792103859954274551616245382380742496955487819399168
def gapCoeff16 : ℚ := (26534485077399199795212897984664265656082215065244563242997120976016047 : ℚ) / 430799860857349854113796431358049047535626469648245013203434146961031168
def gapCoeff17 : ℚ := (41777653084743160208097285829027561893121302050262185230466965374644167 : ℚ) / 574399814476466472151728575144065396714168626197660017604578862614708224
def gapCoeff18 : ℚ := (236184543310680733458030968822178487033285439412398579248734359188071701 : ℚ) / 3063465677207821184809219067435015449142232673054186760557753933945110528
def gapCoeff19 : ℚ := (149886198542930141510127591392404637085095379097787776948169261413847785 : ℚ) / 2042310451471880789872812711623343632761488448702791173705169289296740352
def gapCoeff20 : ℚ := (1366464168584313412969715976516546770969493332923624166205286935315712217 : ℚ) / 21784644815700061758643335590648998749455876786163105852855139085831897088
def gapCoeff21 : ℚ := (465669205541632111818642784365188628316837830888159751049203809502882117 : ℚ) / 9682064362533360781619260262510666110869278571628047045713395149258620928
def gapCoeff22 : ℚ := (1705937388093713223117845634528694491859442457970559586329285579944927393 : ℚ) / 51637676600177924168636054733390219257969485715349584243804774129379311616
def gapCoeff23 : ℚ := (174581861000830698908915216616567922205332998888913334801390707605150197 : ℚ) / 8606279433362987361439342455565036542994914285891597373967462354896551936
def gapCoeff24 : ℚ := (6115279133981134704158833778762381802520278794276962152891710617420719005 : ℚ) / 550801883735231191132117917156162338751674514297062231933917590713379323904
def gapCoeff25 : ℚ := (3962985806741779474351643756456574814118808377925287622679943468433620225 : ℚ) / 734402511646974921509490556208216451668899352396082975911890120951172431872
def gapCoeff26 : ℚ := (9079685677626358604937133339848590269211073106494084364034029606149327695 : ℚ) / 3916813395450532914717282966443821075567463212779109204863413978406252969984
def gapCoeff27 : ℚ := (2284828039183985918064449715739916652425308616678164530562775659798742165 : ℚ) / 2611208930300355276478188644295880717044975475186072803242275985604168646656
def gapCoeff28 : ℚ := (8024249205739808180955614959042285662085228285770391077310174614557946775 : ℚ) / 27852895256537122949100678872489394315146405068651443234584277179777798897664
def gapCoeff29 : ℚ := (3044892577785822318453904035630203946388433082062207684727690420264737845 : ℚ) / 37137193675382830598800905163319192420195206758201924312779036239703731863552
def gapCoeff30 : ℚ := (1316682673490500806348150706056748431139916771214476896665927747959530927 : ℚ) / 66021677645125032175646053623678564302569256459025643222718286648362189979648
def gapCoeff31 : ℚ := (89963678732838742203169917020504979273317926272144329321291787749654419 : ℚ) / 22007225881708344058548684541226188100856418819675214407572762216120729993216
def gapCoeff32 : ℚ := (1302818737400841968433664614741835554110253104035730579406494913557693731 : ℚ) / 1877949941905778692996154414184634717939747739278951629446209042442302292754432
def gapCoeff33 : ℚ := (716141003955751674335790341778144908241680155729365911004916430110462121 : ℚ) / 7511799767623114771984617656738538871758990957115806517784836169769209171017728
def gapCoeff34 : ℚ := (413494528670692260708665570046179655631843883855874654832712436708474035 : ℚ) / 40062932093989945450584627502605540649381285104617634761519126238769115578761216
def gapCoeff35 : ℚ := (22747718854020486280836540109469305313183276909015382401754902814438499 : ℚ) / 26708621395993296967056418335070360432920856736411756507679417492512743719174144
def gapCoeff36 : ℚ := (14687080393155087710790721416442138322850317325031035235281496465516471 : ℚ) / 284891961557261834315268462240750511284489138521725402748580453253469266337857536
def gapCoeff37 : ℚ := (821833404680741998164334174395187488220698396652567459512228965920201 : ℚ) / 379855948743015779087024616321000681712652184695633870331440604337959021783810048
def gapCoeff38 : ℚ := (104857768160753597501475087128815775463113399373372670982352246700813 : ℚ) / 2025898393296084155130797953712003635800811651710047308434349889802448116180320256

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

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfLeft := by
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

end Math.B699.I11ThreeTwoGrowth.QLeaf003

#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.actual_gap_eq
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.leafMap_eq_path
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.gapExpansion_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.local_gap_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.local_core_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.local_weight0_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.local_weight1_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.leaf_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf003.leaf_delta1
