from pathlib import Path
import json,re,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
FULL=RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb';start=time.monotonic();sources={}
def read(p):
 sources[p.relative_to(ROOT).as_posix()]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
 return p.read_text(encoding='utf-8-sig')
def js(p):return json.loads(read(p))
manifest=js(FULL/'manifest.json');audit=js(OUT/'AUDIT_PLAN.json');src=read(OUT/'Composer.lean')
assert manifest['chunk_count']==14 and manifest['amax']==108 and manifest['bmax']==68
chunks=[]
for i,c in enumerate(manifest['chunks']):
 p=FULL/c['source'];s=read(p);actual=RUN/'lean/CrtStage0Pair23'/(c['name']+'.lean');read(actual)
 assert sources[p.relative_to(ROOT).as_posix()]['sha256']==c['source_sha256']==sources[actual.relative_to(ROOT).as_posix()]['sha256']
 ns=f'Math.B699.CRTStage0Pair23.Chunk{i:03}'
 assert f'namespace {ns}' in s and f'end {ns}' in s
 assert re.search(r'def chunkData \(a b : ℕ\) : CellData :=',s)
 check=re.search(r'theorem chunk_check :\s*blockCheck 2 3 Stage00.H Stage00.M Stage00.upper\s*(\d+) (\d+) (\d+) (\d+) chunkData = true := by',s)
 assert check and list(map(int,check.groups()))==[1+8*i,min(8,108-8*i),1,68]
 assert c['aStart']==1+8*i and c['aCount']==min(8,108-8*i)
 chunks.append({'i':i,'name':c['name'],'start':c['aStart'],'count':c['aCount'],'end_exclusive':c['aStart']+c['aCount'],'source_sha256':c['source_sha256'],'actual_target_matches':True})
# Read-only structural coverage. No CellData arithmetic or CRT is rerun.
for a in range(1,109):
 matches=[x for x in chunks if x['start']<=a<x['end_exclusive']]
 assert len(matches)==1
 chosen=next((i for i in range(13) if a<9+8*i),13)
 assert matches[0]['i']==chosen
 for b in range(1,69):assert (1<=b<69) and matches[0]['start']<=a<matches[0]['end_exclusive']
assert sum(c['count'] for c in chunks)==108 and sum(c['count']*68 for c in chunks)==7344
assert chunks[0]['start']==1 and chunks[-1]['end_exclusive']==109
assert all(a['end_exclusive']==b['start'] for a,b in zip(chunks,chunks[1:]))
assert 'if a < 1 ∨ 108 < a then outsideCell' in src
branches=re.findall(r'else if a < (\d+) then Chunk(\d{3})\.chunkData a b',src)
assert [(int(a),int(b)) for a,b in branches]==[(9+8*i,i) for i in range(13)]
assert 'else Chunk013.chunkData a b' in src
for i,c in enumerate(chunks):
 assert f'(ha0 : {c["start"]} ≤ a) (ha1 : a < {c["end_exclusive"]})' in src
 assert f'(data := Chunk{i:03}.chunkData) (data\' := globalData) Chunk{i:03}.chunk_check' in src
assert len(re.findall(r'Chunk\d{3}\.chunk_check',src))==14
appends=re.findall(r'\(start := 1\) \(left := (\d+)\) \(right := (\d+)\) \(next := (\d+)\) \(total := (\d+)\)',src)
assert len(appends)==13
previous=8
for i,vals in enumerate(appends,1):
 left,right,nxt,total=map(int,vals);assert left==previous and right==chunks[i]['count'] and nxt==chunks[i]['start'] and 1+left==nxt and left+right==total
 previous=total
assert previous==108
assert 'simpa only [rectangleCheck] using prefix_108' in src
assert 'Stage00.cutoff_2' in src and 'Stage00.cutoff_3' in src
assert 'exact pairGridCheck_of_parts cutoff_check' in src
assert 'blockCheck_append_rows hl hr\'' in src
clean=re.sub(r'/-.*?-/', '',src,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
assert not re.search(r'unfold (blockCheck|rectangleCheck|cellCheck|pairGridCheck)',clean)
# decide occurs only on explicitly typed small natural equalities or base primes.
assert 'decide +kernel' not in src
assert len(audit['roots'])==len(set(audit['roots']))==48
assert hashlib.sha256((OUT/'Composer.lean').read_bytes()).hexdigest()==audit['source_sha256']
receipts=[]
for name in ['crt-grid-rectangles','i11-crt-six-pair-meta','i11-crt-stage-metadata']:
 rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json');ev=js(ROOT/rec['evidence'])
 assert ev['success'] and ev['exit_code']==0
 for c in ev['source_closure']:
  read(ROOT/c['source']);assert sources[c['source']]['sha256']==c['source_sha256_before']==c['source_sha256_after']
 assert all(set(x['axioms'])<={'propext','Quot.sound','Classical.choice'} for x in rec['public_axiom_audit'])
 receipts.append({'name':name,'evidence':rec['evidence'],'roots':len(rec['public_axiom_audit']),'current_source_closure_matches':True})
grid=RUN/'lean/CrtGrid/Grid.lean';meta=RUN/'lean/I11CrtStages/NumericMetadata.lean';read(grid);read(meta)
assert sources[grid.relative_to(ROOT).as_posix()]['sha256']==manifest['grid_source_sha256']
assert sources[meta.relative_to(ROOT).as_posix()]['sha256']==manifest['metadata_source_sha256']
read(OUT/'build_candidate.py');read(OUT/'check.py')
for n,x in sources.items():assert hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==x['sha256']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_STRUCTURE_AND_BYTE_BINDING_NOT_LEAN','chunks':chunks,'legal_a_tested':108,'legal_ab_positions':7344,'a0_a109_excluded_by_definition':True,'b_domain':'1..68 only','append_steps':13,'tiny_count_equalities':26,'whole_CRT_numeric_checks_rerun':0,'parent_signed_rows_count_only':manifest['total_signed_rows'],'receipts':receipts,'new_chunk_Lean_acceptance_not_asserted':True,'composer_Lean_runs':0,'source_count':len(sources),'seconds':time.monotonic()-start,'new_B_original_results':0}
(OUT/'structural-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','legal_ab_positions','append_steps','tiny_count_equalities','whole_CRT_numeric_checks_rerun','source_count','seconds']},ensure_ascii=False))
