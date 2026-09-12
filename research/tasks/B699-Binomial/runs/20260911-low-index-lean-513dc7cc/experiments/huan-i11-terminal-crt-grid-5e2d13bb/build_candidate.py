from pathlib import Path
import json,re,hashlib
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OWN=PKG+'.experiments.«huan-i11-terminal-crt-grid-5e2d13bb»'
texts={}
texts['Block']=r'''import @PKG@.lean.I11TerminalCrt.RowCell
import @PKG@.lean.CrtGrid.Grid

/-! UNCOMPILED. Finite exponent-block checks for full CRT-parameter coverage.
CellData is reused unchanged. The checker contains no candidateMem or Common. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid B699LowIndex B699LowIndex.I11TerminalCover

def blockCoverCheck (p q H M aStart aCount bStart bCount : ℕ)
    (data : ℕ → ℕ → CellData) (candidates : List NatInterval) : Bool :=
  (List.range' aStart aCount).all (fun a =>
    (List.range' bStart bCount).all (fun b =>
      cellCoverCheck (p ^ a) (q ^ b)
        (heightCap H M (p ^ a)) (heightCap H M (q ^ b)) (data a b) candidates))

def rectangleCoverCheck (p q H M amax bmax : ℕ)
    (data : ℕ → ℕ → CellData) (candidates : List NatInterval) : Bool :=
  blockCoverCheck p q H M 1 amax 1 bmax data candidates

theorem blockCoverCheck_cell {p q H M aStart aCount bStart bCount a b : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : blockCoverCheck p q H M aStart aCount bStart bCount data candidates = true)
    (ha0 : aStart ≤ a) (ha1 : a < aStart + aCount)
    (hb0 : bStart ≤ b) (hb1 : b < bStart + bCount) :
    cellCoverCheck (p ^ a) (q ^ b) (heightCap H M (p ^ a))
      (heightCap H M (q ^ b)) (data a b) candidates = true := by
  unfold blockCoverCheck at hcheck
  have haMem : a ∈ List.range' aStart aCount := List.mem_range'_1.mpr ⟨ha0, ha1⟩
  have hbMem : b ∈ List.range' bStart bCount := List.mem_range'_1.mpr ⟨hb0, hb1⟩
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a haMem)) b hbMem

theorem blockCoverCheck_append_rows
    {p q H M aStart leftCount rightCount bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hl : blockCoverCheck p q H M aStart leftCount bStart bCount data candidates = true)
    (hr : blockCoverCheck p q H M (aStart + leftCount) rightCount bStart bCount data candidates = true) :
    blockCoverCheck p q H M aStart (leftCount + rightCount) bStart bCount data candidates = true := by
  unfold blockCoverCheck at hl hr ⊢
  rw [← List.range'_append_1 (s := aStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩

theorem blockCoverCheck_append_columns
    {p q H M aStart aCount bStart leftCount rightCount : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hl : blockCoverCheck p q H M aStart aCount bStart leftCount data candidates = true)
    (hr : blockCoverCheck p q H M aStart aCount (bStart + leftCount) rightCount data candidates = true) :
    blockCoverCheck p q H M aStart aCount bStart (leftCount + rightCount) data candidates = true := by
  unfold blockCoverCheck at hl hr ⊢
  apply List.all_eq_true.mpr
  intro a ha
  rw [← List.range'_append_1 (s := bStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr
    ⟨(List.all_eq_true.mp hl) a ha, (List.all_eq_true.mp hr) a ha⟩

theorem blockCoverCheck_transfer_data
    {p q H M aStart aCount bStart bCount : ℕ}
    {data data' : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : blockCoverCheck p q H M aStart aCount bStart bCount data candidates = true)
    (hdata : ∀ a, aStart ≤ a → a < aStart + aCount →
      ∀ b, bStart ≤ b → b < bStart + bCount → data a b = data' a b) :
    blockCoverCheck p q H M aStart aCount bStart bCount data' candidates = true := by
  unfold blockCoverCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro a ha
  apply List.all_eq_true.mpr
  intro b hb
  have haBounds := List.mem_range'_1.mp ha
  have hbBounds := List.mem_range'_1.mp hb
  rw [← hdata a haBounds.1 haBounds.2 b hbBounds.1 hbBounds.2]
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a ha)) b hb

end Math.B699.I11TerminalCRT
'''
texts['Grid']=r'''import @OWN@.Block

/-! UNCOMPILED. Complete positive-exponent rectangles imply terminal membership.
Both interval endpoints are derived from actual windows, including max below n. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid B699LowIndex B699LowIndex.I11TerminalCover

theorem rectangleCoverCheck_sound
    {p q H M amax bmax a b A C n : ℕ} {d : ℤ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (ha0 : 1 ≤ a) (ha1 : a ≤ amax) (hb0 : 1 ≤ b) (hb1 : b ≤ bmax)
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAcap : A ≤ heightCap H M (p ^ a)) (hCcap : C ≤ heightCap H M (q ^ b))
    (heq : ((p ^ a : ℕ) : ℤ) * (A : ℤ) - ((q ^ b : ℕ) : ℤ) * (C : ℤ) = d)
    (hnlo : max (p ^ a * A) (q ^ b * C) ≤ n)
    (hnhi : n ≤ min (p ^ a * A) (q ^ b * C) + 10) : candidateMem n candidates := by
  unfold rectangleCoverCheck at hcheck
  have hcell := blockCoverCheck_cell hcheck ha0 (by omega) hb0 (by omega)
  exact cellCoverCheck_sound hcell hdlo hdhi hA hC hAcap hCcap heq hnlo hnhi

theorem grid_windows_candidateMem
    {p q H M amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ a * A) (hQ : n - s = q ^ b * C) : candidateMem n candidates := by
  have hPAH := power_lt_height_of_window hA hnH hP
  have hQCH := power_lt_height_of_window hC hnH hQ
  have haMax := exponent_le_of_pow_lt hp hcutP hPAH
  have hbMax := exponent_le_of_pow_lt hq hcutQ hQCH
  have hAcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < p)) hAM hnH hP
  have hCcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < q)) hCM hnH hQ
  obtain ⟨hdlo, hdhi, hnhi⟩ := integer_window_links hr hs
  have hPi : ((n - r : ℕ) : ℤ) = ((p ^ a : ℕ) : ℤ) * (A : ℤ) := by exact_mod_cast hP
  have hQi : ((n - s : ℕ) : ℤ) = ((q ^ b : ℕ) : ℤ) * (C : ℤ) := by exact_mod_cast hQ
  have hnlo : max (p ^ a * A) (q ^ b * C) ≤ n := by
    rw [← hP, ← hQ]
    exact max_le (Nat.sub_le n r) (Nat.sub_le n s)
  apply rectangleCoverCheck_sound hcheck ha haMax hb hbMax hdlo hdhi hA hC hAcap hCcap
  · rw [hPi, hQi]
  · exact hnlo
  · simpa only [hP, hQ] using hnhi

theorem grid_windows_candidateMem_swapped
    {p q H M amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData} {candidates : List NatInterval}
    (hcheck : rectangleCoverCheck p q H M amax bmax data candidates = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ b * A) (hQ : n - s = p ^ a * C) : candidateMem n candidates := by
  exact grid_windows_candidateMem hcheck hp hq hcutP hcutQ ha hb hnH
    hs hr hC hA hCM hAM hQ hP

end Math.B699.I11TerminalCRT
'''
texts['Pair']=r'''import @OWN@.Grid
import @PKG@.lean.I11CrtStep.Meta

/-! UNCOMPILED. Existing PairGridData and cutoffCheck, with new parameter-cover
checks. No candidate membership or numerical maximum is stored in the data. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.CRTGrid Math.B699.I11CRTSixPair
open B699LowIndex B699LowIndex.I11TerminalCover

def pairGridCoverCheck (p q H M : ℕ) (data : PairGridData)
    (candidates : List NatInterval) : Bool :=
  cutoffCheck p q H data &&
    rectangleCoverCheck p q H M data.amax data.bmax data.cells candidates

theorem pairGridCoverCheck_of_parts {p q H M : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hc : cutoffCheck p q H data = true)
    (hg : rectangleCoverCheck p q H M data.amax data.bmax data.cells candidates = true) :
    pairGridCoverCheck p q H M data candidates = true := by
  unfold pairGridCoverCheck
  exact Bool.and_eq_true_iff.mpr ⟨hc, hg⟩

theorem pairGridCoverCheck_windows {p q H M n r s h k A C : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hcheck : pairGridCoverCheck p q H M data candidates = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ h * A) (hQ : n - s = q ^ k * C) : candidateMem n candidates := by
  unfold pairGridCoverCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_candidateMem hg hp hq hcutP hcutQ hh hk hnH hr hs hA hC hAM hCM hP hQ

theorem pairGridCoverCheck_windows_swapped {p q H M n r s h k A C : ℕ}
    {data : PairGridData} {candidates : List NatInterval}
    (hcheck : pairGridCoverCheck p q H M data candidates = true)
    (hnH : n < H) (hr : r < 11) (hs : s < 11) (hh : 1 ≤ h) (hk : 1 ≤ k)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ h * A) (hQ : n - s = p ^ k * C) : candidateMem n candidates := by
  unfold pairGridCoverCheck at hcheck
  obtain ⟨hc, hg⟩ := Bool.and_eq_true_iff.mp hcheck
  unfold cutoffCheck at hc
  obtain ⟨hp, hq, hcutP, hcutQ⟩ := of_decide_eq_true hc
  exact grid_windows_candidateMem_swapped hg hp hq hcutP hcutQ hk hh hnH hr hs hA hC hAM hCM hP hQ

end Math.B699.I11TerminalCRT
'''
# Reuse the accepted twelve-case routing pattern, not its n<=T conclusion.
s=(RUN/'lean/I11CrtStep/Dispatch.lean').read_text(encoding='utf-8-sig')
s=s.replace('import '+PKG+'.lean.I11CrtStep.Meta','import @OWN@.Pair')
s=s.replace('namespace Math.B699.I11CRTSixPair','namespace Math.B699.I11TerminalCRT\nopen Math.B699.I11CRTSixPair B699LowIndex B699LowIndex.I11TerminalCover')
s=s.replace('end Math.B699.I11CRTSixPair','end Math.B699.I11TerminalCRT')
s=s.replace('Math.B699.I11CRTSixPair.distinct_pair_windows_bound','Math.B699.I11TerminalCRT.distinct_pair_windows_candidateMem')
s=s.replace('distinct_pair_windows_bound','distinct_pair_windows_candidateMem')
s=s.replace('{H M T : ℕ}','{H M : ℕ} {candidates : List NatInterval}')
s=re.sub(r'pairGridCheck (\d) (\d) H M T data\.(grid\d\d)',r'pairGridCoverCheck \1 \2 H M data.\3 candidates',s)
s=s.replace('pairGridCheck_windows_swapped','pairGridCoverCheck_windows_swapped').replace('pairGridCheck_windows','pairGridCoverCheck_windows')
s=s.replace(': n ≤ T := by',': candidateMem n candidates := by')
s=re.sub(r'/-!.*?-/', '/-! UNCOMPILED. All twelve ordered pairs use the new membership interface.\nRouting is checked against the accepted bound dispatcher; the old bound theorem\nis not used as a membership theorem. -/',s,flags=re.S)
s='\n'.join(line for line in s.splitlines() if not line.startswith('#print axioms'))+'\n'
texts['Dispatch']=s
checks='\n'.join(f'    (check{p}{q} : pairGridCoverCheck {p} {q} H M data.grid{p}{q} candidates = true)' for p,q in [(2,3),(2,5),(2,7),(3,5),(3,7),(5,7)])
texts['Actual']=r'''import @OWN@.Dispatch
import @PKG@.lean.I11CrtStep.ActualStep

/-! UNCOMPILED. Actual noCommon produces terminal candidate membership.
The small branch has an explicit finite cover. No membership is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.I11CRTSixPair
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover
open B699LowIndex.I11BoundedCofactors

theorem actual_i11_candidateMem (data : SixPairGrids)
    {n j H M : ℕ} {candidates : List NatInterval}
    (hconstants : stageConstantsCheck H M = true)
@CHECKS@
    (hsmall : coverCheck 24 (max M 109) candidates = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    candidateMem n candidates := by
  have hn24 : 24 ≤ n := by omega
  by_cases hnM : n ≤ M
  · exact coverCheck_sound candidates 24 (max M 109) n hsmall hn24
      (Nat.le_trans hnM (Nat.le_max_left M 109))
  by_cases hnsmall : n < 110
  · have hn109 : n ≤ 109 := by omega
    exact coverCheck_sound candidates 24 (max M 109) n hsmall hn24
      (Nat.le_trans hn109 (Nat.le_max_right M 109))
  obtain ⟨hM, hcertificate⟩ := (stageConstantsCheck_spec H M).mp hconstants
  have hlarge : 110 ≤ n := by omega
  have hMn : M < n := Nat.lt_of_not_ge hnM
  obtain ⟨p, q, h, k, r, s, A, C, _, _, hpMem, hqMem, hpq, _, _,
    hh, hk, hr, hs, hA, hC, hAM, hCM, hP, hQ, _⟩ :=
      actual_i11_bounded_cofactor_bridge hM hlarge hMn hnH hij hjn hcertificate hno
  exact distinct_pair_windows_candidateMem data
    check23 check25 check27 check35 check37 check57 hpMem hqMem hpq hnH hr hs
    (Nat.succ_le_of_lt hh) (Nat.succ_le_of_lt hk) hA hC hAM hCM hP hQ

/-- Conditional complete terminal conclusion: all membership and witness
obligations are finite data checks; there is no membership input. -/
theorem common_of_terminal_grid_checks (data : SixPairGrids)
    {n j H M : ℕ} {candidates : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
@CHECKS@
    (hsmall : coverCheck 24 (max M 109) candidates = true)
    (hwitness : candidateIntervalsCheck candidates witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  classical
  by_contra hno
  have hmember := actual_i11_candidateMem data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact hno (candidateIntervalsCheck_sound hwitness hmember hij hjn)

end Math.B699.I11TerminalCRT
'''.replace('@CHECKS@',checks)
roots=[];modules=[]
for name,text in texts.items():
 for x,y in [('@PKG@',PKG),('@OWN@',OWN)]:text=text.replace(x,y)
 assert not re.search(r'@[A-Z_]+@',text),(name,text)
 p=OUT/(name+'.lean');p.write_text(text,encoding='utf-8',newline='\n')
 names=['Math.B699.I11TerminalCRT.'+n for n in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
 (OUT/(name+'Audit.lean')).write_text('import '+OWN+'.'+name+'\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in names)+'\n',encoding='utf-8',newline='\n')
 modules.append({'name':name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'roots':names});roots+=names
(OUT/'Audit.lean').write_text('import '+OWN+'.Actual\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in roots)+'\n',encoding='utf-8',newline='\n')
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_COMPLETE_PROOF_TEXT','modules':modules,'roots':roots,'root_count':len(roots),'main_RowCell_sha256':hashlib.sha256((RUN/'lean/I11TerminalCrt/RowCell.lean').read_bytes()).hexdigest(),'candidate_dependency_note':'RowCell and I11TerminalCover are not presumed accepted merely by being imported','Lean_runs':0,'new_B_original_results':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated Block/Grid/Pair/Dispatch/Actual and',len(roots),'typed/axiom audit roots. No Lean run.')
