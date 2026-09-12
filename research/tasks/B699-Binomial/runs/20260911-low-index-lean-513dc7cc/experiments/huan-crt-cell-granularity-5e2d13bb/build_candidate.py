from pathlib import Path
import json,re,hashlib
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
BASE=PKG+'.lean.CrtStage0Pair23'
TARGET=OUT/'candidate/lean/CrtStage0Pair23';TARGET.mkdir(parents=True,exist_ok=True)
ORIGINAL=RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb/candidate/lean/CrtStage0Pair23/Chunk000.lean'
raw=ORIGINAL.read_bytes();mark=b'theorem chunk_check :';assert raw.count(mark)==1
prefix,old_tail=raw.split(mark,1);ns='Math.B699.CRTStage0Pair23.Chunk000'
assert b'def chunkData (a b :' in prefix
# The entire existing definition prefix is copied byte-for-byte, including options/imports.
data_bytes=prefix+f'end {ns}\n'.encode('utf-8')
(TARGET/'Chunk000Data.lean').write_bytes(data_bytes)
metadata=json.loads((RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb/Chunk000.json').read_text())
assert (metadata['aStart'],metadata['aCount'],metadata['bStart'],metadata['bCount'])==(1,8,1,68)
assert {(c['a'],c['b']) for c in metadata['cells']}=={(a,b) for a in range(1,9) for b in range(1,69)}

options='set_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option maxRecDepth 100000\nset_option maxHeartbeats 5000000\nset_option exponentiation.threshold 512\n'
def header(imports):return '\n'.join('import '+x for x in imports)+'\n\n/-! UNCOMPILED direct-cell granularity candidate; no data values changed. -/\n'+options+'\nnamespace '+ns+'\nopen Math.B699.CRTGrid\nopen B699LowIndex.I11CrtStageMetadata\n\n'
def goal(a,b,data):return f'cellCheck (2 ^ {a}) (3 ^ {b})\n      (heightCap Stage00.H Stage00.M (2 ^ {a}))\n      (heightCap Stage00.H Stage00.M (3 ^ {b})) Stage00.upper {data} = true'
def numeric(a,b):return f'theorem cellA{a}B{b}_check :\n    '+goal(a,b,f'cellA{a}B{b}')+' := by\n  decide +kernel\n\n'
def finish(s,roots):return s+'end '+ns+'\n\n'+'\n'.join('#print axioms '+ns+'.'+r for r in roots)+'\n'
records=[]
pilot=header([BASE+'.Chunk000Data'])
for b in range(1,9):pilot+=numeric(1,b)
pilot=finish(pilot,[f'cellA1B{b}_check' for b in range(1,9)])
(TARGET/'Chunk000Pilot8.lean').write_text(pilot,encoding='utf-8',newline='\n')
records.append({'name':'Chunk000Pilot8','kind':'first eight direct cell proofs','numeric_cells':[[1,b] for b in range(1,9)],'imports':['Chunk000Data']})
high=header([BASE+'.Chunk000Data'])
for a,b in [(1,68),(8,68)]:
 high+=numeric(a,b).replace(f'cellA{a}B{b}_check',f'cellA{a}B{b}_high_probe')
high=finish(high,['cellA1B68_high_probe','cellA8B68_high_probe'])
(TARGET/'Chunk000PilotHigh.lean').write_text(high,encoding='utf-8',newline='\n')
records.append({'name':'Chunk000PilotHigh','kind':'diagnostic two high-b direct cells; not needed by final block','numeric_cells':[[1,68],[8,68]],'imports':['Chunk000Data']})

for a in range(1,9):
 dep='Chunk000Pilot8' if a==1 else 'Chunk000Data'
 text=header([BASE+'.'+dep,'Mathlib.Tactic.IntervalCases'])
 first=9 if a==1 else 1
 for b in range(first,69):text+=numeric(a,b)
 text+=f'''/-- The 68 cases use existing direct cell proofs, never a row-wide decide. -/
theorem rowA{a}_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ 68) :
    {goal(a,'b',f'(rowA{a} b)')} := by
  interval_cases b
'''
 for b in range(1,69):
  text+=f'  · simpa only [show rowA{a} {b} = cellA{a}B{b} from rfl] using cellA{a}B{b}_check\n'
 text+=f'''
/-- The original chunkData is used after a symbolic, eight-branch a lookup. -/
theorem rowA{a}_block_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper {a} 1 1 68 chunkData = true := by
  unfold blockCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = {a} := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA{a}_cell_check b hbb.1 (by omega)
  simpa only [show chunkData {a} b = rowA{a} b from rfl] using h

'''
 text=finish(text,[f'rowA{a}_cell_check',f'rowA{a}_block_check'])
 (TARGET/f'Chunk000RowA{a:02}.lean').write_text(text,encoding='utf-8',newline='\n')
 records.append({'name':f'Chunk000RowA{a:02}','kind':'direct cell proofs and symbolic row composition','numeric_cells':[[a,b] for b in range(first,69)],'imports':[dep],'row_domain':[a,1,1,68]})
main=header([BASE+f'.Chunk000RowA{a:02}' for a in range(1,9)])
main+=r'''private theorem append_rows_named
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
# Preserve the exact existing public chunk_check statement text.
original_tail=old_tail.decode('utf-8-sig')
statement='theorem chunk_check :'+original_tail.split(':= by',1)[0]
main+=statement+':= by\n'
previous='rowA1_block_check'
for a in range(2,9):
 main+=f'''  have h{a} : blockCheck 2 3 Stage00.H Stage00.M Stage00.upper 1 {a} 1 68 chunkData = true :=
    append_rows_named
      (p := 2) (q := 3) (H := Stage00.H) (M := Stage00.M) (T := Stage00.upper)
      (start := 1) (left := {a-1}) (right := 1) (next := {a}) (total := {a})
      (bStart := 1) (bCount := 68) (data := chunkData)
      (by decide : 1 + {a-1} = {a}) (by decide : {a-1} + 1 = {a})
      {previous} rowA{a}_block_check
'''
 previous=f'h{a}'
main+='  exact h8\n\n'
main=finish(main,['chunk_check'])
(TARGET/'Chunk000.lean').write_text(main,encoding='utf-8',newline='\n')
records.append({'name':'Chunk000','kind':'seven symbolic row appends','numeric_cells':[],'imports':[f'Chunk000RowA{a:02}' for a in range(1,9)],'block_domain':[1,8,1,68]})
audit='import '+BASE+'.Chunk000\n\n#check '+ns+'.chunkData\n#check '+ns+'.chunk_check\n#print axioms '+ns+'.chunk_check\n'
(TARGET/'Chunk000Audit.lean').write_text(audit,encoding='utf-8',newline='\n')
manifest={'status':'UNCOMPILED_NEW_GRANULARITY','original_source':str(ORIGINAL),'original_sha256':hashlib.sha256(raw).hexdigest(),'definition_prefix_sha256':hashlib.sha256(prefix).hexdigest(),'definition_prefix_bytes':len(prefix),
 'definition_prefix_copied_byte_exact':True,'chunk_check_statement':statement.strip(),'shared_namespace':ns,'pilot':'Chunk000Pilot8','progression':['Chunk000Data','Chunk000Pilot8','Chunk000PilotHigh','Chunk000RowA01','Chunk000RowA02..08','Chunk000','Chunk000Audit'],
 'direct_cell_proofs':544,'diagnostic_high_cell_proofs':2,'signed_conditions_first_block':11424,'unchanged_full_pair_cell_count':7344,'unchanged_full_pair_signed_conditions':154224,'modules':records,'files':{},'new_Lean_runs':0}
for p in sorted(TARGET.glob('*.lean')):manifest['files'][p.name]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
(OUT/'GENERATION.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated data, pilot8, eight row modules, final unchanged-signature Chunk000 and audit;',len(manifest['files']),'Lean files; 544 direct cell proofs. No Lean run.')
