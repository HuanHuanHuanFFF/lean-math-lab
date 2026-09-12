from pathlib import Path
import json,re,hashlib
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
chunks=RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb'
manifest=json.loads((chunks/'manifest.json').read_text())
assert (manifest['p'],manifest['q'],manifest['amax'],manifest['bmax'],manifest['chunk_count'])==(2,3,108,68,14)
for i,c in enumerate(manifest['chunks']):
 assert c['name']==f'Chunk{i:03}' and c['aStart']==1+8*i and c['aCount']==min(8,109-c['aStart'])
 assert c['bStart']==1 and c['bCount']==68
 assert hashlib.sha256((chunks/c['source']).read_bytes()).hexdigest()==c['source_sha256']
imports=[f'import {PKG}.lean.CrtStage0Pair23.Chunk{i:03}' for i in range(14)]
imports += [f'import {PKG}.lean.I11CrtStep.Meta']
s='\n'.join(imports)+r'''

/-! UNCOMPILED. Composition of exactly fourteen fixed stage0 pair23 checks.
No full rectangle or cell arithmetic is evaluated here. Counts are normalized
symbolically before appending; only tiny integer equalities use decide. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTStage0Pair23.Composer
open Math.B699.CRTGrid Math.B699.I11CRTSixPair
open B699LowIndex.I11CrtStageMetadata

/-- This is only a total value outside the covered exponent rectangle. -/
def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def globalData (a b : ℕ) : CellData :=
  if a < 1 ∨ 108 < a then outsideCell
'''
for i in range(13):s+=f'  else if a < {9+8*i} then Chunk{i:03}.chunkData a b\n'
s+='  else Chunk013.chunkData a b\n\n'
for i,c in enumerate(manifest['chunks']):
 start=c['aStart'];count=c['aCount'];end=start+count
 s+=f'''theorem globalData_eq_chunk{i:03} (a b : ℕ) (ha0 : {start} ≤ a) (ha1 : a < {end}) :
    globalData a b = Chunk{i:03}.chunkData a b := by
  have hout : ¬ (a < 1 ∨ 108 < a) := by omega
'''
 for j in range(i):s+=f'  have h{j:02} : ¬ a < {9+8*j} := by omega\n'
 if i<13:s+=f'  have hin : a < {9+8*i} := by omega\n'
 simplifiers=['globalData','if_neg hout']+[f'if_neg h{j:02}' for j in range(i)]+(['if_pos hin'] if i<13 else [])
 s+='  simp only ['+', '.join(simplifiers)+']\n\n'
partition=' ∨\n      '.join(f'({c["aStart"]} ≤ a ∧ a < {c["aStart"]+c["aCount"]})' for c in manifest['chunks'])
s+=f'''/-- Exactly the fourteen consecutive row intervals cover every legal a. -/
theorem row_partition (a : ℕ) (ha0 : 1 ≤ a) (ha1 : a ≤ 108) :
    {partition} := by
  omega

'''
for i,c in enumerate(manifest['chunks']):
 start=c['aStart'];count=c['aCount']
 s+=f'''theorem global_check_{i:03} :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper {start} {count} 1 68 globalData = true := by
  exact blockCheck_transfer_data
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (aStart := {start}) (aCount := {count}) (bStart := 1) (bCount := 68)
    (data := Chunk{i:03}.chunkData) (data' := globalData) Chunk{i:03}.chunk_check
    (by
      intro a ha0 ha1 b _hb0 _hb1
      exact (globalData_eq_chunk{i:03} a b ha0 (by omega)).symm)

'''
s+=r'''/-- Normalize the two index sums while all quantities and data are variables.
This prevents closed certificate lookup from being used to justify an append. -/
private theorem append_rows_named
    {p q H M T start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCheck p q H M T start left bStart bCount data = true)
    (hr : blockCheck p q H M T next right bStart bCount data = true) :
    blockCheck p q H M T start total bStart bCount data = true := by
  have hr' : blockCheck p q H M T (start + left) right bStart bCount data = true := by
    rw [hnext]
    exact hr
  have h := blockCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

'''
left=8;previous='global_check_000'
for i,c in enumerate(manifest['chunks'][1:],1):
 count=c['aCount'];total=left+count;name=f'prefix_{total:03}'
 s+=f'''theorem {name} :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 {total} 1 68 globalData = true := by
  exact append_rows_named
    (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
    (start := 1) (left := {left}) (right := {count}) (next := {c['aStart']}) (total := {total})
    (bStart := 1) (bCount := 68) (data := globalData)
    (by decide : 1 + {left} = {c['aStart']}) (by decide : {left} + {count} = {total})
    {previous} global_check_{i:03}

'''
 left=total;previous=name
assert left==108
s+=r'''theorem rectangle_check :
    rectangleCheck 2 3 Stage00.H Stage00.M Stage00.upper 108 68 globalData = true := by
  simpa only [rectangleCheck] using prefix_108

def pairData : PairGridData where
  amax := 108
  bmax := 68
  cells := globalData

theorem cutoff_check : cutoffCheck 2 3 Stage00.H pairData = true := by
  have h2 : Stage00.H ≤ (2 : ℕ) ^ (108 + 1) := by
    simpa only [Stage00.exponentMax2] using Stage00.cutoff_2
  have h3 : Stage00.H ≤ (3 : ℕ) ^ (68 + 1) := by
    simpa only [Stage00.exponentMax3] using Stage00.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage00.H ≤ (2 : ℕ) ^ (108 + 1) ∧ Stage00.H ≤ (3 : ℕ) ^ (68 + 1) :=
    ⟨by decide, by decide, h2, h3⟩
  simpa only [cutoffCheck, pairData] using (decide_eq_true hprop)

theorem pair_check : pairGridCheck 2 3 Stage00.H Stage00.M Stage00.upper pairData = true := by
  exact pairGridCheck_of_parts cutoff_check
    (by simpa only [pairData] using rectangle_check)

end Math.B699.CRTStage0Pair23.Composer
'''
(OUT/'Composer.lean').write_text(s,encoding='utf-8',newline='\n')
roots=['Math.B699.CRTStage0Pair23.Composer.'+x for x in re.findall(r'^(?:theorem|def)\s+(\w+)',s,re.M)]
(OUT/'Audit.lean').write_text(f'import {PKG}.experiments.«huan-crt-stage0-pair23-composer-5e2d13bb».Composer\n\n'+'\n'.join('#print axioms '+n for n in roots)+'\n',encoding='utf-8',newline='\n')
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_COMPOSER','source_sha256':hashlib.sha256((OUT/'Composer.lean').read_bytes()).hexdigest(),'roots':roots,'private_helper':'append_rows_named audited transitively by every prefix','chunk_proof_dependencies':[f'Math.B699.CRTStage0Pair23.Chunk{i:03}.chunk_check' for i in range(14)],'current_future_module':'lean/CrtStage0Pair23/Composer.lean','range':[1,108,1,68],'Lean_runs':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated Composer.lean with',len(roots),'public roots; exactly fourteen transferred chunk proofs and thirteen appends.')
