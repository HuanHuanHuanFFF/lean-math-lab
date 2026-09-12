from pathlib import Path
import json,re,hashlib,argparse,datetime,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
ap=argparse.ArgumentParser();ap.add_argument('--pair',required=True);ap.add_argument('--freeze',action='store_true');arg=ap.parse_args();folder=OUT/('pair'+arg.pair)
assert not (folder/'FREEZE.json').exists(),'frozen pair is read-only'
start=time.monotonic();idx=json.loads((folder/'INDEX.json').read_text());target=folder/'candidate/lean/I11TerminalMembership'/('Pair'+arg.pair)
inputdir=RUN/'experiments/huan-i11-terminal-membership-data-5e2d13bb';source=inputdir/('pair'+arg.pair+'.json');data=json.loads(source.read_text());manifest=json.loads((inputdir/'manifest.json').read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
for n,v in idx['inputs'].items():assert sha(ROOT/n)==v['sha256'],n
p,q,AM,BM=idx['p'],idx['q'],idx['amax'],idx['bmax']
s=(target/'Data.lean').read_text();parsed={}
for a,b,inv,expr in re.findall(r'def cellA(\d+)B(\d+) : CellData where\s+inverse := (\d+)\s+bounds := fun \w+ => ([^\n]+)',s):
 a,b,inv=map(int,[a,b,inv]);ex=[{'d':int(d),'lo':int(lo),'hi':int(hi)} for d,lo,hi in re.findall(r'if d = \((-?\d+) : ℤ\) then ⟨(-?\d+), (-?\d+)⟩',expr)]
 tuples=re.findall(r'⟨(-?\d+), (-?\d+)⟩',expr);default=list(map(int,tuples[-1]));parsed[a,b]={'inverse':inv,'default':default,'exceptions':ex}
assert len(parsed)==AM*BM
signed=0;parameters=0
for c in data['cells']:
 x=parsed[c['a'],c['b']]
 assert all(x[k]==c[k] for k in ['inverse','default','exceptions'])
 actual={d:x['default'] for d in range(-10,11)}
 for ex in x['exceptions']:actual[ex['d']]=[ex['lo'],ex['hi']]
 count=0
 for d in range(-10,11):
  lo,hi=actual[d];count+=max(0,max(0,hi+1)-max(0,lo));signed+=1
 assert count==c['parameters'];parameters+=count
 assert c['P']==p**c['a'] and c['Q']==q**c['b']
 assert c['capA']==min(500,(29294603-1)//c['P']) and c['capC']==min(500,(29294603-1)//c['Q'])
for a in range(1,AM+1):
 part=re.search(r'def rowA'+str(a)+r' \(b : ℕ\) : CellData :=(.*?)(?=\n\ndef )',s,re.S).group(1)
 assert [tuple(map(int,x)) for x in re.findall(r'if b = (\d+) then cellA(\d+)B(\d+)',part)]==[(b,a,b) for b in range(1,BM+1)]
part=s.split('def cells (a b : ℕ)',1)[1]
assert [tuple(map(int,x)) for x in re.findall(r'if a = (\d+) then rowA(\d+) b',part)]==[(a,a) for a in range(1,AM+1)]
numeric=[];refs=[]
for m in idx['modules']:
 path=folder/m['source'];text=path.read_text();assert sha(path)==m['sha256']
 decls=[idx['namespace']+'.'+n for n in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
 assert decls==m['roots']
 assert all('#print axioms '+n in text for n in decls)
 clean=re.sub(r'/-.*?-/', '',text,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 for a,b,stmt in re.findall(r'theorem cellA(\d+)B(\d+)_check :\s*(.*?) := by\s*decide \+kernel',text,re.S):
  a,b=int(a),int(b);numeric.append((a,b));expected=f'cellCoverCheck ({p} ^ {a}) ({q} ^ {b}) (heightCap Stage04.H Stage04.M ({p} ^ {a})) (heightCap Stage04.H Stage04.M ({q} ^ {b})) cellA{a}B{b} candidates = true'
  assert ' '.join(stmt.split())==expected
  assert 'originalCandidates' not in stmt and 'rowA' not in stmt and 'cells ' not in stmt
 if m['module'].startswith('RowA'):
  a=int(m['module'][4:]);tail=text.split(f'theorem rowA{a}_cell_check',1)[1];assert 'decide +kernel' not in tail
  rr=[tuple(map(int,x)) for x in re.findall(r'using cellA(\d+)B(\d+)_check',tail)];assert rr==[(a,b) for b in range(1,BM+1)];refs+=rr
  assert f'blockCoverCheck {p} {q} Stage04.H Stage04.M {a} 1 1 {BM} cells candidates = true' in text
assert set(numeric)==set(refs)==set(parsed) and len(numeric)==len(refs)==AM*BM
comp=(target/'Composer.lean').read_text();assert 'decide +kernel' not in comp
for a in range(2,AM+1):assert f'(left := {a-1}) (right := 1) (next := {a}) (total := {a})' in comp
assert f'Stage04.cutoff_{p}' in comp and f'Stage04.cutoff_{q}' in comp
assert f'Stage04.exponentMax{p}' in comp and f'Stage04.exponentMax{q}' in comp
assert f'pairGridCoverCheck {p} {q} Stage04.H Stage04.M pairData candidates = true' in comp
assert f'1 1 {BM} cells candidates' in comp or AM>1
csfile=RUN/'lean/I11TerminalMembership/Candidates.lean';cs=csfile.read_text();arr=cs.split('def originalCandidates',1)[1].split('def candidates',1)[0]
intervals=[tuple(map(int,x)) for x in re.findall(r'\((\d+), (\d+)\)',arr)]
assert len(intervals)==1055 and intervals[0][0]==24
assert 'def candidates : List NatInterval := (0, 23) :: originalCandidates' in cs
assert idx['signed_rows']==signed and idx['parameters']==parameters
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_LITERAL_RELOAD_AND_STRUCTURAL_COVERAGE_NOT_LEAN','pair':arg.pair,'cells':len(parsed),'signed_rows':signed,'full_nonnegative_parameters':parameters,'source_numeric_theorems':len(numeric),'row_case_references':len(refs),'symbolic_appends':AM-1,'original_intervals':len(intervals),'extended_intervals':len(intervals)+1,'all_public_roots_printed':True,'roots':len(idx['roots']),'max_parameters_cell':max(c['parameters'] for c in data['cells']),'seconds':time.monotonic()-start,'full_CRT_search_or_cover_recomputed':False,'Lean_runs':0,'new_B_original_results':0}
(folder/'reload-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
if arg.freeze:
 table='\n'.join('| '+m['module']+' | '+str(len(m['roots']))+' | `'+m['sha256']+'` |' for m in idx['modules'])
 report=f'''# Stage04 pair{arg.pair} 完整会员表源码

固定H=29294603,M=500，正指数a=1..{AM},b=1..{BM}。完整{len(parsed)}格、{signed}个位移条件、{parameters}个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `{idx['final_data']}`，最终检查 `{idx['final_check']}`：`pairGridCoverCheck {p} {q} Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair{arg.pair}.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_{p}/cutoff_{q}接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，{len(idx['roots'])}个根。先Data，再RowA001..RowA{AM:03}，最后Composer/Audit。数字编译内存仍未测；最大cell含{result['max_parameters_cell']}个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载{signed}个d槽与全部参数计数，核对{len(numeric)}条唯一数字定理和同数行分支、{AM-1}次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
{table}
'''
 (folder/'REPORT.md').write_text(report,encoding='utf-8',newline='\n')
 freeze={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'FROZEN_COMPLETE_TABLE_SOURCE_UNCOMPILED','pair':arg.pair,'generator_sha256':idx['generator_sha256'],'checker_sha256':sha(Path(__file__)),'cells':len(parsed),'signed_rows':signed,'parameters':parameters,'public_roots':len(idx['roots']),'Lean_runs':0,'new_B_original_results':0,'files':{}}
 for path in sorted(folder.rglob('*')):
  if path.is_file() and path!=folder/'FREEZE.json':freeze['files'][str(path.relative_to(folder))]={'bytes':path.stat().st_size,'sha256':sha(path)}
 (folder/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
 result['freeze_sha256']=sha(folder/'FREEZE.json')
print(json.dumps(result,ensure_ascii=False))
