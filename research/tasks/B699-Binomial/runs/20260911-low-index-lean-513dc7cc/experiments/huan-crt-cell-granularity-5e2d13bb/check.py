from pathlib import Path
import json,re,hashlib,datetime,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent;CAND=OUT/'candidate/lean/CrtStage0Pair23'
start=time.monotonic();sources={}
def read_bytes(p):
 b=p.read_bytes();sources[p.relative_to(ROOT).as_posix()]={'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()};return b
def read(p):return read_bytes(p).decode('utf-8-sig')
def js(p):return json.loads(read(p))
gen=js(OUT/'GENERATION.json');original=Path(gen['original_source']);raw=read_bytes(original);prefix=raw.split(b'theorem chunk_check :',1)[0]
assert hashlib.sha256(raw).hexdigest()==gen['original_sha256']
assert hashlib.sha256(prefix).hexdigest()==gen['definition_prefix_sha256'] and len(prefix)==gen['definition_prefix_bytes']
data=read_bytes(CAND/'Chunk000Data.lean');assert data[:len(prefix)]==prefix
original_text=raw.decode('utf-8-sig');defs=prefix.decode('utf-8-sig').replace('\r\n','\n')
# Every original lookup stays exact; check its finite index shape independently.
for a in range(1,9):
 m=re.search(r'def rowA'+str(a)+r' \(b : ℕ\) : CellData :=(.*?)(?=\n\ndef |\ntheorem |\nend )',defs,re.S);assert m
 entries=[tuple(map(int,x)) for x in re.findall(r'(?:else )?if b = (\d+) then cellA(\d+)B(\d+)',m[1])]
 assert entries==[(b,a,b) for b in range(1,69)]
chunk=re.search(r'def chunkData \(a b : ℕ\) : CellData :=(.*)',defs,re.S).group(1)
assert [tuple(map(int,x)) for x in re.findall(r'(?:else )?if a = (\d+) then rowA(\d+) b',chunk)]==[(a,a) for a in range(1,9)]
meta=js(RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb/Chunk000.json')
assert {(x['a'],x['b']) for x in meta['cells']}=={(a,b) for a in range(1,9) for b in range(1,69)}
# Extract direct numerical theorem domains; no lookup function may occur there.
numset=[];case_refs=[]
for name,record in gen['files'].items():
 p=CAND/name;s=read(p);assert hashlib.sha256(p.read_bytes()).hexdigest()==record['sha256']
 clean=re.sub(r'/-.*?-/', '',s,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 for a,b,stmt in re.findall(r'theorem cellA(\d+)B(\d+)_check :\s*(.*?) := by\s*decide \+kernel',s,re.S):
  a=int(a);b=int(b);numset.append((a,b))
  compact=' '.join(stmt.split())
  expected=f'cellCheck (2 ^ {a}) (3 ^ {b}) (heightCap Stage00.H Stage00.M (2 ^ {a})) (heightCap Stage00.H Stage00.M (3 ^ {b})) Stage00.upper cellA{a}B{b} = true'
  assert compact==expected,compact
  assert 'chunkData' not in stmt and 'rowA' not in stmt
 if re.fullmatch(r'Chunk000RowA\d{2}\.lean',name):
  a=int(name[len('Chunk000RowA'):-len('.lean')]);assert 'interval_cases b' in s
  rowpart=s.split(f'theorem rowA{a}_cell_check',1)[1]
  assert 'decide +kernel' not in rowpart
  refs=[tuple(map(int,x)) for x in re.findall(r'using cellA(\d+)B(\d+)_check',rowpart)]
  assert refs==[(a,b) for b in range(1,69)]
  case_refs+=refs
  assert f'(hb0 : 1 ≤ b) (hb1 : b ≤ 68)' in s
  assert f'blockCheck 2 3 Stage00.H Stage00.M Stage00.upper {a} 1 1 68 chunkData = true' in s
  assert f'show chunkData {a} b = rowA{a} b from rfl' in s
assert len(numset)==len(set(numset))==544 and set(numset)==set(case_refs)
main=read(CAND/'Chunk000.lean');main_sig='theorem chunk_check :'+main.split('theorem chunk_check :',1)[1].split(':= by',1)[0]
old_sig='theorem chunk_check :'+original_text.split('theorem chunk_check :',1)[1].split(':= by',1)[0]
assert ' '.join(main_sig.split())==' '.join(old_sig.split())
assert 'decide +kernel' not in main
assert main.count('append_rows_named\n')==8 # declaration plus seven uses
for a in range(2,9):
 assert f'(left := {a-1}) (right := 1) (next := {a}) (total := {a})' in main
assert 'exact h8' in main
# The first pilot defines exactly a1,b1..8 and does not import the failed chunk module.
pilot=read(CAND/'Chunk000Pilot8.lean');assert pilot.count('decide +kernel')==8
high=read(CAND/'Chunk000PilotHigh.lean');assert high.count('decide +kernel')==2
assert 'cellA1B68_high_probe' in high and 'cellA8B68_high_probe' in high
for p in CAND.glob('*.lean'):
 if p.name not in ['Chunk000.lean','Chunk000Audit.lean']:
  assert not re.search(r'^import .*\.Chunk000\s*$',p.read_text(),re.M)
# Preserve the captured red evidence without re-running it.
evp=RUN/'verification/20260911T205716357039Z/evidence.json';ev=js(evp);assert not ev['success'] and ev['exit_code']==1
rec=ev['compile_records'][-1];assert rec['source_sha256_before']=='af5430139daa92863e5deef3c97cb859464c41e9aa34a931d93aa502e235900c'
logp=ROOT/rec['log'];log=read(logp);assert "memory_exception" in log and "'interpreter'" in log
(OUT/'captured-failure.log').write_bytes(logp.read_bytes())
cache=Path(r'D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Tactic/IntervalCases.olean');assert cache.exists()
for name in ['crt-grid-rectangles','i11-crt-stage-metadata']:
 r=js(RUN/'verification/huan-prerequisites'/f'{name}.json');e=js(ROOT/r['evidence']);assert e['success'] and e['exit_code']==0
 for c in e['source_closure']:
  read_bytes(ROOT/c['source']);assert sources[c['source']]['sha256']==c['source_sha256_before']==c['source_sha256_after']
read(OUT/'build_candidate.py');read(OUT/'check.py')
for n,r in sources.items():assert hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==r['sha256']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_SOURCE_PRESERVATION_AND_COVERAGE_ONLY_NOT_RUNTIME',
 'original_definitions_prefix_byte_exact':True,'prefix_bytes':len(prefix),'prefix_sha256':gen['definition_prefix_sha256'],'public_chunk_check_signature_unchanged':True,
 'direct_cell_proofs':544,'row_case_references':544,'row_domains':[[a,1,1,68] for a in range(1,9)],'pilot_direct_cells':8,'diagnostic_high_cells':[[1,68],[8,68]],'symbolic_row_appends':7,
 'first_block_signed_rows':544*21,'full_pair_signed_rows_preserved':108*68*21,'other_blocks_signed_rows_remaining':(108-8)*68*21,
 'source_count':len(sources),'seconds':time.monotonic()-start,'failure_source_sha256':rec['source_sha256_before'],'failure_exit_code':rec['exit_code'],'failure_evidence':str(evp.relative_to(ROOT)),
 'interval_cases_cache_exists':True,'numeric_CRT_recomputations':0,'new_Lean_runs':0,'memory_fix_not_yet_tested':True,'new_B_original_results':0}
(OUT/'structural-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','direct_cell_proofs','row_case_references','prefix_bytes','first_block_signed_rows','full_pair_signed_rows_preserved','seconds']},ensure_ascii=False))
