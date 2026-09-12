import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (57 : ℚ) / 256
def leafB : ℚ := (29 : ℚ) / 128
def lam : ℚ := (50045175481493571025 : ℚ) / 9903520314283042199192993792

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (104857768160753597501475087128815775463113399373372670982352246700813 : ℚ) / 2025898393296084155130797953712003635800811651710047308434349889802448116180320256
def gapCoeff1 : ℚ := (2689559166439987064926743268761749248514670177671972407945162198265537 : ℚ) / 1519423794972063116348098465284002726850608738782535481325762417351836087135240192
def gapCoeff2 : ℚ := (168640322087070520394555672064165134980743378808345549022987286587168899 : ℚ) / 4558271384916189349044295395852008180551826216347606443977287252055508261405720576
def gapCoeff3 : ℚ := (1007741760250743797620510888623617308833941283683404047044775833412076607 : ℚ) / 1709351769343571005891610773444503067706934831130352416491482719520815598027145216
def gapCoeff4 : ℚ := (74454578766541365041583171187483242172390767164034730967724655721586445835 : ℚ) / 10256110616061426035349664640667018406241608986782114498948896317124893588162871296
def gapCoeff5 : ℚ := (532845696516952030772291633980676717416516046208827044673519114261613234745 : ℚ) / 7692082962046069526512248480500263804681206740086585874211672237843670191122153472
def gapCoeff6 : ℚ := (4010453277788995846196401157898971321902255329615127269563511850367418091255 : ℚ) / 7692082962046069526512248480500263804681206740086585874211672237843670191122153472
def gapCoeff7 : ℚ := (1141646073085333523366677663994573081284725756061149461532218181592190812535 : ℚ) / 360566388845909509055261647523449865844431565941558712853672136148922040208850944
def gapCoeff8 : ℚ := (68575808014749373463172151118667304397059397346818972040622067650021379021215 : ℚ) / 4326796666150914108663139770281398390133178791298704554244065633787064482506211328
def gapCoeff9 : ℚ := (648204937712347917580240430628852573429165464612315662051320527294389246467005 : ℚ) / 9735292498839556744492064483133146377799652280422085247049147676020895085638975488
def gapCoeff10 : ℚ := (6958214630960812315339096867844147643593436434292208812754734298340684514330067 : ℚ) / 29205877496518670233476193449399439133398956841266255741147443028062685256916926464
def gapCoeff11 : ℚ := (8047723877298503859017983576622274720192828649484380154664846165993426496647049 : ℚ) / 10952204061194501337553572543524789675024608815474845902930291135523506971343847424
def gapCoeff12 : ℚ := (129604175989386274279030344690678887088086295028404531412669432426470191534084471 : ℚ) / 65713224367167008025321435261148738050147652892849075417581746813141041828063084544
def gapCoeff13 : ℚ := (228816381289318865140128621268474576687487678653668453623055384810333822814309441 : ℚ) / 49284918275375256018991076445861553537610739669636806563186310109855781371047313408
def gapCoeff14 : ℚ := (1426041595043047354667218325540241490888297923322283610373726513565119880819226905 : ℚ) / 147854754826125768056973229337584660612832219008910419689558930329567344113141940224
def gapCoeff15 : ℚ := (164216820957018468459493554572901471709607868634685759665782916549850375575950817 : ℚ) / 9240922176632860503560826833599041288302013688056901230597433145597959007071371264
def gapCoeff16 : ℚ := (6465883784175692820922764671544196596774397804007999750430824877074784025792263361 : ℚ) / 221782132239188652085459844006376990919248328513365629534338395494351016169712910336
def gapCoeff17 : ℚ := (7105686010192029407036572249622742529461806463373071477571993528373246709331309373 : ℚ) / 166336599179391489064094883004782743189436246385024222150753796620763262127284682752
def gapCoeff18 : ℚ := (83881678636203848891746375302866802676207570259979275809990833584406996231856882541 : ℚ) / 1497029392614523401576853947043044688704926217465217999356784169586869359145562144768
def gapCoeff19 : ℚ := (36990960585016537099115402883117050822998615205679794588840656755933453670364953565 : ℚ) / 561386022230446275591320230141141758264347331549456749758794063595076009679585804288
def gapCoeff20 : ℚ := (234214894071370025646703803365044612888265611668424491801580838926020676050951080093 : ℚ) / 3368316133382677653547921380846850549586083989296740498552764381570456058077514825728
def gapCoeff21 : ℚ := (166391995133277529573674593837121118099877902050422089816553596698284046673245557207 : ℚ) / 2526237100037008240160941035635137912189562991972555373914573286177842043558136119296
def gapCoeff22 : ℚ := (424275043701292802912127005042277679282950844455320047692205640541033049110078379699 : ℚ) / 7578711300111024720482823106905413736568688975917666121743719858533526130674408357888
def gapCoeff23 : ℚ := (30305471181092210038516226771693907737317534017259148020555862020666582575255313123 : ℚ) / 710504184385408567545264666272382537803314591492281198913473736737518074750725783552
def gapCoeff24 : ℚ := (3061303480637759386058512867929608687771448578264057104063823433149536040874344825 : ℚ) / 105259879168208676673372543151464079674565124665523140579773886924076751814922338304
def gapCoeff25 : ℚ := (51765182490174416269122927059773271057355096177388197424265137623589413279476675 : ℚ) / 2923885532450241018704792865318446657626809018486753904993719081224354217081176064
def gapCoeff26 : ℚ := (9347403839394766648528344316473687976247289929428952867374161811986941331946925 : ℚ) / 974628510816747006234930955106148885875603006162251301664573027074784739027058688
def gapCoeff27 : ℚ := (20774295614675575469440514132721374159732408659581741644672983860801558682675 : ℚ) / 4512169031559013917754309977343281879053717621121533804002652903124003421421568
def gapCoeff28 : ℚ := (1953366979798815968392270325044799631549517802582376309140245922090592440675 : ℚ) / 1002704229235336426167624439409618195345270582471451956445033978472000760315904
def gapCoeff29 : ℚ := (60296281575634794236383281829094139984677549242305787928258409407808659125 : ℚ) / 83558685769611368847302036617468182945439215205954329703752831539333396692992
def gapCoeff30 : ℚ := (239299190690543022887029764843706114946637045747022787257756885798347175 : ℚ) / 1031588713205078627744469587869977567227644632172275675354973228880659218432
def gapCoeff31 : ℚ := (458480024294569320249433469675245500501395730936862972043471621669725 : ℚ) / 7163810508368601581558816582430399772414198834529692189965091867226800128
def gapCoeff32 : ℚ := (1711845290790950713796336379114562847244108105643589746109841385804975 : ℚ) / 114620968133897625304941065318886396358627181352475075039441469875628802048
def gapCoeff33 : ℚ := (3068136435233870275068047238875322823385566381803791967776228379275 : ℚ) / 1061305260499052086156861715915614781098399827337732176291124721070637056
def gapCoeff34 : ℚ := (53271279194608477672718500846863581501764640671656410776170723875 : ℚ) / 117922806722116898461873523990623864566488869704192464032347191230070784
def gapCoeff35 : ℚ := (269069918479463762163411847814762209035104343122973210758690575 : ℚ) / 4913450280088204102578063499609327690270369571008019334681132967919616
def gapCoeff36 : ℚ := (1758761631354865726035538523971038194016553739230571720479475 : ℚ) / 363959280006533637228004703674765014094101449704297728494898738364416
def gapCoeff37 : ℚ := (2791872712412006138132033068205845877410970989839826435475 : ℚ) / 10109980000181489923000130657632361502613929158452714680413853843456
def gapCoeff38 : ℚ := (25852162288955073181136770388216877140136278815573021775 : ℚ) / 3369993333393829974333376885877453834204643052817571560137951281152

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

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight := by
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

end Math.B699.I11ThreeTwoGrowth.QLeaf004

#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.actual_gap_eq
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.leafMap_eq_path
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.gapExpansion_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.local_gap_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.local_core_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.local_weight0_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.local_weight1_cone
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.leaf_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.QLeaf004.leaf_delta1
