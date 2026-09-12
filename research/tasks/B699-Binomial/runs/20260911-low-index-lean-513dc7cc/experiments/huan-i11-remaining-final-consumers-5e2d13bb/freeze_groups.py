from pathlib import Path
from datetime import datetime,timezone
import re,json,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-remaining-final-consumers-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def put(p,x):p.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
assert 7**256<=2**719
results=[]
for group,p,q,wp,wq,M in [('ThreeTwo',3,2,226,268,162),('FiveSeven',5,7,352,216,194)]:
    sub=out/group;assert not (sub/'FREEZE.json').exists()
    changes=[{'owner':'parent integrated copy only','file':'lean/I11'+group+'Numeric/Selector.lean',
      'change':'Normalize p_base repeated Nat type annotation to one annotation',
      'from':f'({p} : ℕ : ℕ)','to':f'({p} : ℕ)','status':'parent announced; final actual integrated hash/receipt pending here',
      'effect':'No theorem statement arithmetic, M, weights, or public API change'}]
    if group=='FiveSeven':
        changes.append({'owner':'parent integrated copy only','file':'lean/I11FiveSevenNumeric/Basis.lean',
         'change':'Add missing public basis_seven and its audit root',
         'declaration':'Math.B699.I11FiveSevenNumeric.basis_seven : (7 : Nat)^256 <= (2 : Nat)^719',
         'exact_integer_diagnostic':True,'source':'original short-power-bases row04, already bound by FiveSeven fixed-edge package',
         'status':'missing in original frozen candidate; parent adds the theorem in the integrated copy',
         'effect':'Discharges the existing selector reference; no new final hypothesis or changed numeric target'})
    mapfile=sub/'SOURCE_MAP.json';mp=json.loads(mapfile.read_text())
    mp['upstream_integration_differences']=changes
    mp['upstream_original_compile_boundary']='Do not compile or accept the original frozen selector unchanged: use the parent repaired integrated copy. Frozen originals remain source records.'
    put(mapfile,mp)
    inpfile=sub/'INPUT_SOURCES.json';inp=json.loads(inpfile.read_text())
    inp['upstream_integration_differences']=changes
    inp['source_states']={'frozen_original':'hash-bound and source-correspondence checked; known integration omissions remain',
      'parent_integrated_copy':'normalization and FiveSeven basis addition announced; bind its actual verification source/receipt separately',
      'this_group':'complete own proof text, no Lean invocation; imports must be remapped to the repaired integrated upstream'}
    put(inpfile,inp)
    strategy='64D^32≤N^32，R^32≥64，再单调到162' if group=='ThreeTwo' else '2D^32≤N^32，六块得R^192≥64，再单调到194'
    readme=f'''# ({p},{q}) 最终四层消费者

完整的自有证明文本，尚未运行Lean。先前RateBasis/RateBasisAudit/RATE_FREEZE全部字节保留。最终公开入口是Math.B699.I11{group}FinalConsumers.actual_{'three_two' if group=='ThreeTwo' else 'five_seven'}_component_edge。

它对所有自然数n仅假设2^15360≤n，得到Xp^1000·((n+1)/2)^{wp}≤n^1000，或Xq^1000·((n+1)/2)^{wq}≤n^1000。Xp/Xq是已验primeComponent定义，分别是{p}、{q}在完整choose(n,11)中的全部素数幂，含零指数情形；不是余因子。

RateBasis使用真实固定边的精确N/D，策略为{strategy}。M={M}，最终大幂保持符号；数值与源码hash见rate-exact-checks。

ActualNumeric先构造八个原始类型证书的And.intro bundle，随后只展开Z/M/Y0别名，再把同一实际类型的证书解包交给FixedEdge，避免巨大幂的defeq展开。
ActualInstance使用正式重冻结的新命名Shared/Tree源：false=δ1，true=δ0，c/d/z/λ及四种weight定义已逐项对齐。旧I11Row02/04文件只作历史材料，不导入。
Component只用一般CeilHalf和实际PrimeWindow：n≥2^15360给20≤n和ceil(n/2)≥2^15359；正余因子窗口允许重合；差正/负/零都涵盖；最后用primeWindow_graph_capacity转成实际组件边。无G、Hom、树、数值、cofactor、window、noCommon或HeightValid的最终外部前提。

22条公开候选定理和3个定义，共25项公理审计。4层实现+4分层Audit+总Audit，共9Lean文件。审计器仅作合成自测，拒绝缺根、sorryAx、额外axiom与编译错误；这不等于Lean验收。独立检查还覆盖n20..200、两个素数的362个真实binomial窗口。

重要的上游状态边界：本包采用主任务确认的正式新名称和固定数学数据，但原冻结Selector仍有主任务发现的集成遗漏。p_base的重复Nat类型标注由主任务在集成副本规范化；FiveSeven另须补已有原始短基7^256≤2^719的basis_seven及audit。它在原冻结Basis中缺声明，而数学不等式已精确检查成立。消费者公开API不变，没有把该遗漏改成额外假设。

SOURCE_MAP/INPUT_SOURCES分别记录原冻结源、主修正后的集成目标、后续实际receipt。不能把原冻结Selector未经修正直接标为可编译接受。这里的imports仍指原实验文件，父任务集成时映射到修复过的lean/I11{group}Numeric及对应Growth/Edge模块，明确不复制旧RowNN。每组Leaves映射到自己的I11{group}Leaves目录，避免冲突。

当前源绑定与正式重冻结所有文件hash一致；目标参数与实际七selector陈述/四树声明已静态逐项核对。独立字符串检查器曾不识别重复的Nat标注，规范化后匹配；它不是Lean运行，也不是形式化语法接受的证据。

下一步由父任务串行验证真实上游修正及本组ActualNumeric/ActualInstance/Component/Audit，绑定实际集成hash与公理日志。此单边组件结果仍不等于完整i11或原B699，原B仍0/19。没有新颖性声明、Lean/Git运行或外部文件改动。
'''
    (sub/'README.md').write_text(readme,encoding='utf-8')
    for rec in inp['adopted_active_sources']:
        assert sha(root/rec['path'])==rec['sha256'],rec['path']
    rate=json.loads((sub/'RATE_FREEZE.json').read_text())
    for f,rec in rate['files'].items():assert sha(sub/f)==rec['sha256'],f
    for f in sub.glob('*.lean'):
        s=f.read_text()
        assert s.count('(')==s.count(')') and s.count('/-')==s.count('-/'),f
        assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|unsafe)\b',s,re.M),f
        assert not re.search(r'I11TwoFive|twoFive|two_five|I11Row02|I11Row04',s),f
    freeze={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/pade_construction',
      'status':'FROZEN_OWN_PROOF_TEXT_UNCOMPILED_UPSTREAM_INTEGRATION_DELTAS_REQUIRED','group':group,
      'public_theorems':22,'all_audit_roots':25,'implementation_modules':4,'lean_files':len(list(sub.glob('*.lean'))),
      'new_Lean_invocations':0,'new_Git_invocations':0,'new_original_B_results':0,'rate_prefix_unchanged':True,
      'all_source_bindings_rechecked':True,'upstream_changes':changes,
      'final_only_hypothesis':'n:Nat and2^15360<=n','next':'parent fresh verification of repaired integrated upstream and this complete consumer',
      'files':{f.name:{'sha256':sha(f),'bytes':f.stat().st_size} for f in sorted(sub.iterdir()) if f.is_file()}}
    put(sub/'FREEZE.json',freeze)
    results.append({'group':group,'FREEZE':sha(sub/'FREEZE.json'),'core':{n:sha(sub/(n+'.lean')) for n in ['RateBasis','ActualNumeric','ActualInstance','Component','Audit']}})
(out/'README.md').write_text('''# Remaining i11 final consumers

Owner: pade_construction, only this directory. ThreeTwo and FiveSeven are separately frozen complete own proof-text packages, with unchanged earlier rate prefixes.

Each has22 public candidate theorems/25 audit roots. Each actual raw choose(n,11) component edge retains only n>=2^15360. No Lean/Git ran; originalB still0/19.

Official re-frozen sources are adopted after parent confirmation; oldRowNN files are excluded. Known upstream integration differences remain explicit: bothSelector p_base type annotation normalization and FiveSeven missing basis_seven declaration. The parent owns those repaired copies and actual verification. Do not claim that original upstream frozen sources compile unchanged.

See each README, FREEZE, SOURCE_MAP, INPUT_SOURCES and AUDIT_PLAN. Both groups must be verified with their repaired source closure; the original B699 target remains incomplete.
''',encoding='utf-8')
(out/'CHECKPOINT.md').write_text('Started2026-09-11 21:30:15 UTC, planned checkpoint21:50:15 UTC. Both groups now have complete own four-layer proof text, separately frozen,25-root audit and unchanged independent rate prefix. Official source correspondence and all hashes checked. Parent-owned upstream compile omissions are explicitly recorded; no Lean/Git or originalB acceptance claimed. Next: primary serial verification of amended upstream and both final consumers.\n',encoding='utf-8')
put(out/'FREEZE.json',{'utc':datetime.now(timezone.utc).isoformat(),'state':'both independent groups frozen, no Lean','groups':results,
 'new_Lean_invocations':0,'new_original_B_results':0})
print(json.dumps({'root_freeze':sha(out/'FREEZE.json'),'groups':results},indent=2))
