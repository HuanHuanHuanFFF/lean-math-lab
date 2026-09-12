import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.ELeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (15 : ℚ) / 32
def leafB : ℚ := (31 : ℚ) / 64
def lam : ℚ := (46880976166089921083 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (30185678866857721659700966072332385958415724097 : ℚ) / 1569275433846670190958947355801916604025588861116008628224
def gapCoeff1 : ℚ := (1107372650472988738708397292713211200630002593811 : ℚ) / 1569275433846670190958947355801916604025588861116008628224
def gapCoeff2 : ℚ := (79058826601418072136704953484457442088569654832639 : ℚ) / 6277101735386680763835789423207666416102355444464034512896
def gapCoeff3 : ℚ := (457332329665994901903231981282988164802344442667709 : ℚ) / 3138550867693340381917894711603833208051177722232017256448
def gapCoeff4 : ℚ := (30842881702984158430514861036387308155315960840255255 : ℚ) / 25108406941546723055343157692830665664409421777856138051584
def gapCoeff5 : ℚ := (201916709517242427410669322496019757121193875090688859 : ℚ) / 25108406941546723055343157692830665664409421777856138051584
def gapCoeff6 : ℚ := (4273412055359400311767891401331524378975239410266639273 : ℚ) / 100433627766186892221372630771322662657637687111424552206336
def gapCoeff7 : ℚ := (1173668177511316223606155089753500174889028218061394703 : ℚ) / 6277101735386680763835789423207666416102355444464034512896
def gapCoeff8 : ℚ := (69890957673358697364634702878172917485485443187387330961 : ℚ) / 100433627766186892221372630771322662657637687111424552206336
def gapCoeff9 : ℚ := (2012136221196757138141540747805960110006787559042587819455 : ℚ) / 903902649895682029992353676941903963918739184002820969857024
def gapCoeff10 : ℚ := (67137912991407510592049089545495015803700510863648293613909 : ℚ) / 10846831798748184359908244123302847567024870208033851638284288
def gapCoeff11 : ℚ := (245558920774897806149545824403283909896754107782469569765323 : ℚ) / 16270247698122276539862366184954271350537305312050777457426432
def gapCoeff12 : ℚ := (12690062706373280565052527375854507492753752229190875138091817 : ℚ) / 390485944754934636956696788438902512412895327489218658978234368
def gapCoeff13 : ℚ := (72793764687684106379994590026784802266591826227254389238052027 : ℚ) / 1171457834264803910870090365316707537238685982467655976934703104
def gapCoeff14 : ℚ := (1489745488355720043915851946907010699081878964132034668212219375 : ℚ) / 14057494011177646930441084383800490446864231789611871723216437248
def gapCoeff15 : ℚ := (568488396538172976240672984724451719796709771458261543634728867 : ℚ) / 3514373502794411732610271095950122611716057947402967930804109312
def gapCoeff16 : ℚ := (74757193703366938731948812324931822192495251490213247432423461935 : ℚ) / 337379856268263526330586025211211770724741562950684921357194493952
def gapCoeff17 : ℚ := (276235453307550853640254930975339841389486894730363148449811607135 : ℚ) / 1012139568804790578991758075633635312174224688852054764071583481856
def gapCoeff18 : ℚ := (11028434721226441419120711567688083772407934493509364874839091843595 : ℚ) / 36437024476972460843703290722810871238272088798673971506577005346816
def gapCoeff19 : ℚ := (16530775527616808618519226934373349833190700633134188114606020967335 : ℚ) / 54655536715458691265554936084216306857408133198010957259865508020224
def gapCoeff20 : ℚ := (357303294453600633638820991134903636682112903348842694287718258711011 : ℚ) / 1311732881171008590373318466021191364577795196752262974236772192485376
def gapCoeff21 : ℚ := (869733376684818553310207735083750370227914028828354568913795088426285 : ℚ) / 3935198643513025771119955398063574093733385590256788922710316577456128
def gapCoeff22 : ℚ := (7622544177787259623575409690681835366620044467009151572714161509815045 : ℚ) / 47222383722156309253439464776762889124800627083081467072523798929473536
def gapCoeff23 : ℚ := (1876396381180331182562991548842595396739729226043868744663891597251465 : ℚ) / 17708393895808615970039799291286083421800235156155550152196424598552576
def gapCoeff24 : ℚ := (1963985934292168483341744416912293103478673936605792449830708548912965 : ℚ) / 31481589148104206168959643184508592749867084722054311381682532619649024
def gapCoeff25 : ℚ := (344725428891892682450221820682712912921541079086094034344838196707465 : ℚ) / 10493863049368068722986547728169530916622361574018103793894177539883008
def gapCoeff26 : ℚ := (647047897565627765883239264402895215812432457620877903800536584938313 : ℚ) / 41975452197472274891946190912678123666489446296072415175576710159532032
def gapCoeff27 : ℚ := (14963333325190668013940368203709189480667377390929749499454035578681 : ℚ) / 2331969566526237493997010606259895759249413683115134176420928342196224
def gapCoeff28 : ℚ := (14649970472714117986779806031170936793673307157424354741876556275367 : ℚ) / 6218585510736633317325361616693055357998436488307024470455808912523264
def gapCoeff29 : ℚ := (4710216607320398308315162247764947133710442826139677776695731716895 : ℚ) / 6218585510736633317325361616693055357998436488307024470455808912523264
def gapCoeff30 : ℚ := (194711156100718354673090787779579424573335475445325579184361637947 : ℚ) / 921271927516538269233386906176748941925694294564003625252712431484928
def gapCoeff31 : ℚ := (3884431046261978737724052113752664916227023857121018486515906487 : ℚ) / 76772660626378189102782242181395745160474524547000302104392702623744
def gapCoeff32 : ℚ := (150918576104049423287196655494215580441984143952411404720058588739 : ℚ) / 14740350840264612307734190498827983070811108713024058004043398903758848
def gapCoeff33 : ℚ := (2811843402986853932004340942184952256644831654441570159743961697 : ℚ) / 1637816760029401367526021166536442563423456523669339778227044322639872
def gapCoeff34 : ℚ := (506832163820070667402107322326530090376697748332891107118929095 : ℚ) / 2183755680039201823368028222048590084564608698225786370969392430186496
def gapCoeff35 : ℚ := (26530808716966216109336467892669457576262679255078714429212109 : ℚ) / 1091877840019600911684014111024295042282304349112893185484696215093248
def gapCoeff36 : ℚ := (1793503338493381801246410577106348731647930678332284951453559 : ℚ) / 970558080017423032608012543132706704250937199211460609319729968971776
def gapCoeff37 : ℚ := (29371270161375197289448095211547456449798204056170491008313 : ℚ) / 323519360005807677536004181044235568083645733070486869773243322990592
def gapCoeff38 : ℚ := (2797648996826956619293767315931004009334681034005796960579 : ℚ) / 1294077440023230710144016724176942272334582932281947479092973291962368

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
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9, gapCoeff10, gapCoeff11, gapCoeff12, gapCoeff13, gapCoeff14, gapCoeff15, gapCoeff16, gapCoeff17, gapCoeff18, gapCoeff19, gapCoeff20, gapCoeff21, gapCoeff22, gapCoeff23, gapCoeff24, gapCoeff25, gapCoeff26, gapCoeff27, gapCoeff28, gapCoeff29, gapCoeff30, gapCoeff31, gapCoeff32, gapCoeff33, gapCoeff34, gapCoeff35, gapCoeff36, gapCoeff37, gapCoeff38,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
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
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11ThreeTwoGrowth.ELeaf004

#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.actual_gap_eq
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.leafMap_eq_path
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.gapExpansion_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.local_gap_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.local_core_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.local_weight0_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.local_weight1_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.leaf_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf004.leaf_delta1
