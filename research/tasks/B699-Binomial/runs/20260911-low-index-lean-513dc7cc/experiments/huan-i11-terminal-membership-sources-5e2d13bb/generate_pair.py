from pathlib import Path
import json,re,hashlib,argparse,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
INPUT=RUN/'experiments/huan-i11-terminal-membership-data-5e2d13bb'
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
parser=argparse.ArgumentParser();parser.add_argument('--pair',required=True,choices=['23','25','27','35','37','57']);args=parser.parse_args();code=args.pair
out=OUT/('pair'+code);assert not (out/'FREEZE.json').exists(),'never overwrite a frozen pair'
out.mkdir(exist_ok=True);target=out/'candidate/lean/I11TerminalMembership'/('Pair'+code);target.mkdir(parents=True,exist_ok=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
manifest=json.loads((INPUT/'manifest.json').read_text());entry=next(e for e in manifest['pairs'] if f"{e['p']}{e['q']}"==code)
source=INPUT/entry['source'];assert sha(source)==entry['sha256'];table=json.loads(source.read_text())
p,q,H,M,Amax,Bmax=(table[x] for x in ['p','q','H','M','amax','bmax'])
assert H==29294603 and M==500 and len(table['cells'])==Amax*Bmax
assert {(c['a'],c['b']) for c in table['cells']}=={(a,b) for a in range(1,Amax+1) for b in range(1,Bmax+1)}
assert len({(c['a'],c['b']) for c in table['cells']})==len(table['cells'])
for c in table['cells']:
 assert c['P']==p**c['a'] and c['Q']==q**c['b']
 assert c['capA']==min(M,(H-1)//c['P']) and c['capC']==min(M,(H-1)//c['Q'])
 assert len({x['d'] for x in c['exceptions']})==len(c['exceptions']) and all(-10<=x['d']<=10 for x in c['exceptions'])
 by={x['d']:(x['lo'],x['hi']) for x in c['exceptions']}
 params=sum(max(0,max(0,by.get(d,c['default'])[1]+1)-max(0,by.get(d,c['default'])[0])) for d in range(-10,11))
 assert params==c['parameters']
ns='Math.B699.I11TerminalMembership.Pair'+code
module=PKG+'.lean.I11TerminalMembership.Pair'+code
options='set_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option maxRecDepth 100000\nset_option maxHeartbeats 5000000\nset_option exponentiation.threshold 512\n'
def header(imports):return '\n'.join('import '+x for x in imports)+'\n\n/-! UNCOMPILED complete stage04 membership table; all21 shifts and complete\nRowCell parameter ranges are retained. No whole-grid decide. -/\n'+options+'\nnamespace '+ns+'\nopen Math.B699.CRTGrid Math.B699.I11TerminalCRT Math.B699.I11CRTSixPair\nopen Math.B699.I11TerminalMembership B699LowIndex.I11CrtStageMetadata\n\n'
def emit(name,text):
 roots=[ns+'.'+x for x in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
 text+='end '+ns+'\n\n'+'\n'.join('#print axioms '+n for n in roots)+'\n'
 path=target/(name+'.lean');path.write_text(text,encoding='utf-8',newline='\n')
 return {'module':name,'source':str(path.relative_to(out)),'sha256':sha(path),'bytes':path.stat().st_size,'roots':roots}
# Data imports only existing, independently verifiable definitions and candidates.
data=header([PKG+'.lean.I11TerminalMembership.Candidates',PKG+'.lean.I11CrtStep.Meta'])
data+='def outsideCell : CellData where\n  inverse := 0\n  bounds := fun _ => ⟨0, -1⟩\n\n'
for c in sorted(table['cells'],key=lambda x:(x['a'],x['b'])):
 name=f"cellA{c['a']}B{c['b']}";fallback='⟨'+str(c['default'][0])+', '+str(c['default'][1])+'⟩'
 expr=fallback
 for ex in reversed(c['exceptions']):expr=f"if d = ({ex['d']} : ℤ) then ⟨{ex['lo']}, {ex['hi']}⟩ else "+expr
 var='d' if c['exceptions'] else '_d'
 data+=f"def {name} : CellData where\n  inverse := {c['inverse']}\n  bounds := fun {var} => {expr}\n\n"
for a in range(1,Amax+1):
 data+=f'def rowA{a} (b : ℕ) : CellData :=\n'
 for b in range(1,Bmax+1):data+=('  if ' if b==1 else '  else if ')+f'b = {b} then cellA{a}B{b}\n'
 data+='  else outsideCell\n\n'
data+='def cells (a b : ℕ) : CellData :=\n'
for a in range(1,Amax+1):data+=('  if ' if a==1 else '  else if ')+f'a = {a} then rowA{a} b\n'
data+='  else outsideCell\n\n'
records=[emit('Data',data)]
for a in range(1,Amax+1):
 s=header([module+'.Data',PKG+'.lean.I11TerminalCrt.Block','Mathlib.Tactic.IntervalCases'])
 for b in range(1,Bmax+1):
  s+=f'''theorem cellA{a}B{b}_check :
    cellCoverCheck ({p} ^ {a}) ({q} ^ {b})
      (heightCap Stage04.H Stage04.M ({p} ^ {a}))
      (heightCap Stage04.H Stage04.M ({q} ^ {b})) cellA{a}B{b} candidates = true := by
  decide +kernel

'''
 s+=f'''theorem rowA{a}_cell_check (b : ℕ) (hb0 : 1 ≤ b) (hb1 : b ≤ {Bmax}) :
    cellCoverCheck ({p} ^ {a}) ({q} ^ b)
      (heightCap Stage04.H Stage04.M ({p} ^ {a}))
      (heightCap Stage04.H Stage04.M ({q} ^ b)) (rowA{a} b) candidates = true := by
  interval_cases b
'''
 for b in range(1,Bmax+1):s+=f'  · simpa only [show rowA{a} {b} = cellA{a}B{b} from rfl] using cellA{a}B{b}_check\n'
 s+=f'''
theorem rowA{a}_block_check :
    blockCoverCheck {p} {q} Stage04.H Stage04.M {a} 1 1 {Bmax} cells candidates = true := by
  unfold blockCoverCheck
  apply List.all_eq_true.mpr
  intro aa haa
  have hab := List.mem_range'_1.mp haa
  have ha : aa = {a} := by omega
  subst aa
  apply List.all_eq_true.mpr
  intro b hb
  have hbb := List.mem_range'_1.mp hb
  have h := rowA{a}_cell_check b hbb.1 (by omega)
  simpa only [show cells {a} b = rowA{a} b from rfl] using h

'''
 records.append(emit(f'RowA{a:03}',s))
comp=header([module+f'.RowA{a:03}' for a in range(1,Amax+1)]+[PKG+'.lean.I11TerminalCrt.Pair'])
comp+=r'''private theorem append_rows_named
    {p q H M start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData} {cs : List B699LowIndex.NatInterval}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCoverCheck p q H M start left bStart bCount data cs = true)
    (hr : blockCoverCheck p q H M next right bStart bCount data cs = true) :
    blockCoverCheck p q H M start total bStart bCount data cs = true := by
  have hr' : blockCoverCheck p q H M (start + left) right bStart bCount data cs = true := by
    rw [hnext]
    exact hr
  have h := blockCoverCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

'''
comp+=f'''theorem rectangle_check :
    rectangleCoverCheck {p} {q} Stage04.H Stage04.M {Amax} {Bmax} cells candidates = true := by
'''
previous='rowA1_block_check'
for a in range(2,Amax+1):
 comp+=f'''  have h{a} : blockCoverCheck {p} {q} Stage04.H Stage04.M 1 {a} 1 {Bmax} cells candidates = true :=
    append_rows_named
      (p := {p}) (q := {q}) (H := Stage04.H) (M := Stage04.M)
      (start := 1) (left := {a-1}) (right := 1) (next := {a}) (total := {a})
      (bStart := 1) (bCount := {Bmax}) (data := cells) (cs := candidates)
      (by decide : 1 + {a-1} = {a}) (by decide : {a-1} + 1 = {a})
      {previous} rowA{a}_block_check
'''
 previous=f'h{a}'
comp+=f'  simpa only [rectangleCoverCheck] using {previous}\n\n'
comp+=f'''def pairData : PairGridData where
  amax := {Amax}
  bmax := {Bmax}
  cells := cells

theorem cutoff_check : cutoffCheck {p} {q} Stage04.H pairData = true := by
  have hp : Stage04.H ≤ ({p} : ℕ) ^ ({Amax} + 1) := by
    simpa only [Stage04.exponentMax{p}] using Stage04.cutoff_{p}
  have hq : Stage04.H ≤ ({q} : ℕ) ^ ({Bmax} + 1) := by
    simpa only [Stage04.exponentMax{q}] using Stage04.cutoff_{q}
  have hprop : 1 < ({p} : ℕ) ∧ 1 < ({q} : ℕ) ∧
      Stage04.H ≤ ({p} : ℕ) ^ ({Amax} + 1) ∧ Stage04.H ≤ ({q} : ℕ) ^ ({Bmax} + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [cutoffCheck, pairData] using (decide_eq_true hprop)

theorem pair_check : pairGridCoverCheck {p} {q} Stage04.H Stage04.M pairData candidates = true := by
  exact pairGridCoverCheck_of_parts cutoff_check
    (by simpa only [pairData] using rectangle_check)

'''
records.append(emit('Composer',comp))
roots=sum([x['roots'] for x in records],[])
audit='import '+module+'.Composer\n\n'+'\n'.join('#check '+n+'\n#print axioms '+n for n in roots)+'\n'
(target/'Audit.lean').write_text(audit,encoding='utf-8',newline='\n')
inputs={}
for path in [INPUT/'manifest.json',source,RUN/'lean/I11TerminalMembership/Candidates.lean',RUN/'lean/I11CrtStages/NumericMetadata.lean',RUN/'lean/I11TerminalCrt/RowCell.lean',RUN/'lean/I11TerminalCrt/Block.lean',RUN/'lean/I11TerminalCrt/Grid.lean',RUN/'lean/I11TerminalCrt/Pair.lean']:
 inputs[str(path.relative_to(ROOT))]={'bytes':path.stat().st_size,'sha256':sha(path)}
index={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'COMPLETE_SOURCE_TABLE_UNCOMPILED','pair':code,'p':p,'q':q,'H':H,'M':M,'amax':Amax,'bmax':Bmax,'cells':len(table['cells']),'signed_rows':21*len(table['cells']),'parameters':sum(x['parameters'] for x in table['cells']),
 'namespace':ns,'final_data':ns+'.pairData','final_check':ns+'.pair_check','candidate_list':'Math.B699.I11TerminalMembership.candidates','original_candidate_count':1055,'extended_candidate_count':1056,
 'generator_sha256':sha(Path(__file__)),'inputs':inputs,'modules':records,'roots':roots,'audit_file':str((target/'Audit.lean').relative_to(out)),'audit_sha256':sha(target/'Audit.lean'),'new_Lean_runs':0,'new_B_original_results':0}
(out/'INDEX.json').write_text(json.dumps(index,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'pair':code,'cells':index['cells'],'signed_rows':index['signed_rows'],'parameters':index['parameters'],'modules':len(records),'roots':len(roots),'final_sha256':records[-1]['sha256']},ensure_ascii=False))
