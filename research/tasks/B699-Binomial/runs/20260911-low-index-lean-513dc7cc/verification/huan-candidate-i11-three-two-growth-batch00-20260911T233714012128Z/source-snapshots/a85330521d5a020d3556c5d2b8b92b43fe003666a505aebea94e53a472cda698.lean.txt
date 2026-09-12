import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Affine
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.ELeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 23
def seedD : ℕ := 15
def seedZ : ℚ := (1 : ℚ) / 9
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (7 : ℚ) / 16
def lam : ℚ := (46880976166089921083 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (7062939272042124954022577 : ℚ) / 20769187434139310514121985316880384
def gapCoeff1 : ℚ := (263468057883069040489186051 : ℚ) / 20769187434139310514121985316880384
def gapCoeff2 : ℚ := (19128938823162551336287658399 : ℚ) / 83076749736557242056487941267521536
def gapCoeff3 : ℚ := (112548503104194602967677122269 : ℚ) / 41538374868278621028243970633760768
def gapCoeff4 : ℚ := (7721393452117700659067720824455 : ℚ) / 332306998946228968225951765070086144
def gapCoeff5 : ℚ := (51430002689397814851366097309419 : ℚ) / 332306998946228968225951765070086144
def gapCoeff6 : ℚ := (1107640157003883232514842724791593 : ℚ) / 1329227995784915872903807060280344576
def gapCoeff7 : ℚ := (309621328118446935602754299438223 : ℚ) / 83076749736557242056487941267521536
def gapCoeff8 : ℚ := (18769665196931891131959526814779201 : ℚ) / 1329227995784915872903807060280344576
def gapCoeff9 : ℚ := (550222334274131150378000050482516655 : ℚ) / 11963051962064242856134263542523101184
def gapCoeff10 : ℚ := (18698070595052134106149571565985476469 : ℚ) / 143556623544770914273611162510277214208
def gapCoeff11 : ℚ := (69669672487876202488724227669341649643 : ℚ) / 215334935317156371410416743765415821312
def gapCoeff12 : ℚ := (3668856591064311093858458175271704175097 : ℚ) / 5168038447611752913850001850369979711488
def gapCoeff13 : ℚ := (21452084278724341204688797004925600525707 : ℚ) / 15504115342835258741550005551109939134464
def gapCoeff14 : ℚ := (447646934548448454915987789463452838710575 : ℚ) / 186049384114023104898600066613319269613568
def gapCoeff15 : ℚ := (174238691579934032890828946402253027807587 : ℚ) / 46512346028505776224650016653329817403392
def gapCoeff16 : ℚ := (23379706606453275817472349450439309851682879 : ℚ) / 4465185218736554517566401598719662470725632
def gapCoeff17 : ℚ := (88187218872755247373349031064844540925006223 : ℚ) / 13395555656209663552699204796158987412176896
def gapCoeff18 : ℚ := (3595605788862234368526477614548441688183929259 : ℚ) / 482240003623547887897171372661723546838368256
def gapCoeff19 : ℚ := (5506697945584461185387189405161312673719890055 : ℚ) / 723360005435321831845757058992585320257552384
def gapCoeff20 : ℚ := (121674709068203922460227587641645919689904477075 : ℚ) / 17360640130447723964298169415822047686181257216
def gapCoeff21 : ℚ := (302941922227928250054157769704901314180174153885 : ℚ) / 52081920391343171892894508247466143058543771648
def gapCoeff22 : ℚ := (2717370787746626831280300674960911503698030570245 : ℚ) / 624983044696118062714734098969593716702525259776
def gapCoeff23 : ℚ := (685075097720881975988909035072094566672146755465 : ℚ) / 234368641761044273518025287113597643763446972416
def gapCoeff24 : ℚ := (244968225942418352480014140250370697753756728935 : ℚ) / 138885121043581791714385355326576381489450057728
def gapCoeff25 : ℚ := (14700934795583845588131840036882421572269739793 : ℚ) / 15431680115953532412709483925175153498827784192
def gapCoeff26 : ℚ := (9442385314125119185154029512250149032610814411 : ℚ) / 20575573487938043216945978566900204665103712256
def gapCoeff27 : ℚ := (74791960041721872609621412198633891378432073 : ℚ) / 381029138665519318832332936424077864168587264
def gapCoeff28 : ℚ := (25106725758112046649529653062763329579086861 : ℚ) / 338692567702683838962073721265846990372077568
def gapCoeff29 : ℚ := (2770820951474405155233825459481439641956935 : ℚ) / 112897522567561279654024573755282330124025856
def gapCoeff30 : ℚ := (39364689018273257348521672669427535245393 : ℚ) / 5575186299632655785383929568162090376495104
def gapCoeff31 : ℚ := (2432318308025029142509581090164611967055 : ℚ) / 1393796574908163946345982392040522594123776
def gapCoeff32 : ℚ := (32569731325365225492132044859860025185049 : ℚ) / 89202980794122492566142873090593446023921664
def gapCoeff33 : ℚ := (5656053538652184256371084653915723848395 : ℚ) / 89202980794122492566142873090593446023921664
def gapCoeff34 : ℚ := (3173198016608715517936690267386495315255 : ℚ) / 356811923176489970264571492362373784095686656
def gapCoeff35 : ℚ := (172677130035587826548700569262547105245 : ℚ) / 178405961588244985132285746181186892047843328
def gapCoeff36 : ℚ := (109454361518019443779553022730207563887 : ℚ) / 1427247692705959881058285969449495136382746624
def gapCoeff37 : ℚ := (5616080919274787368667292386886356515 : ℚ) / 1427247692705959881058285969449495136382746624
def gapCoeff38 : ℚ := (560184108430167566457503637240508481 : ℚ) / 5708990770823839524233143877797980545530986496

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

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
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

end Math.B699.I11ThreeTwoGrowth.ELeaf002

#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.actual_gap_eq
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.leafMap_eq_path
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.gapExpansion_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.local_gap_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.local_core_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.local_weight0_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.local_weight1_cone
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.leaf_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.ELeaf002.leaf_delta1
