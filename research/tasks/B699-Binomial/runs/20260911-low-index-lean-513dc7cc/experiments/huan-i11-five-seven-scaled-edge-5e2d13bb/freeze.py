from pathlib import Path
from datetime import datetime,timezone
import re,json,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
text='''# 固定原 i11 (5,7) 实际边

完整候选文本，未运行Lean。唯一写入本目录，其他源只读。开始2026-09-11 21:17:26 UTC，21:37:26是检查点而非总截止。原B仍0/19。

## 准确目标与参数

最初FINAL_PLAN row04：p5/q7，P25/Q49，a2/b1/D1，y50，z1/50，c11/d7，Lt1303943/1000000，m0=149，M194，Z719422706382292314227864，Y0=2^15359，权重352/216。两端使用同一leastExponent Z Y并严格提取22m<e、22m<f。所有参数已与真实row04逐项核对，未优化。

最终Math.B699.I11FiveSevenScaled.five_seven_edge_of_fixed_certificates：
Y^352≤A^1000 或 Y^216≤C^1000，其中A,C是余因子。普通前提为Y0≤Y、1≤C、Y≤5^e*A、Y≤7^f*C≤2Y、整数绝对差≤24。差可正/负/零，窗口可重合；没有互素、相异位置、指数上界假设。

## a=2 引起的关键缩放

uδ=7m−δ，vδ=4m+δ−1。每δ的Gδ是实际qContent(uδ,vδ,uδ)，从已集成Math.B699.I11DivisorFiveSeven.qContent_lower直接取得m≥149的下界。父任务已报告实际G链接受；本包仍绑定当前源/receipt，自己没有编译。不交换两δ的G。

真实Hom：
Gδ·Qhatδ=50^(7m−δ)Qδ(1/50)；
Gδ·rowErrorδ=50^(4m+δ−1)Eδ(1/50)；
rowErrorδ=50^(11m)Phatδ−49^(11m)Qhatδ。

整数桥的参数是r=25^(11m)、s=49^(11m)、a=2^(11m)、b=1。只在余项里把25^(11m)·2^(11m)合成50^(11m)。整数下界仍为25^(11m)≤24|Qhatδ|+|rowErrorδ||V|，V=7^(f−22m)C。不能把下界也改成50^(11m)。

所以Q/E统一尺度分别为50^7、50^4；
qRate=25^11 Lt^7/(50^7 β qLambda)=25^4 Lt^7/(2^7 β qLambda)；
wRate=(25·49)^11 Lt^7/(50^4 β eLambda)。
这两率与原row04的Omega3、49^11·Omega4精确相同。

## 真正阶乘前缀

Factorial11D7只调用已验FactorialCommon。真实比值：
18 prod(i1..17)(18m+i) /
[4·7²·m(m+1) prod(i1..6)(7m+i)² prod(i1..3)(4m+i)]。
x=m−1的16次余式17个正系数与冻结QE数据逐项相同；Lean候选通过ring证明恒等式，再用已验望远镜工具。

全m≥1、δ0/1：
Fδ(m)≤Kδ β^m m/(m+1)<β^m/2，并另有Fδ(m)<Kδβ^m。
δ0 F1=42007680，K0=8243801450479595/22236242266222092；
δ1 F1=28588560，K1=403946271073500155/1601009443167990624。
两K单独保留，均<1/2；其比49/72来自实际delta factorial恒等式。

## 最后保留的特别前提

四个实际GrowthTree：c11d7,z1/50 的Q/E各两δ，true=δ0、false=δ1。
qLambda=5962730782212565018186393/79228162514264337593543950336；
eLambda=4645474555000655291530615/79228162514264337593543950336。
四个m1 Q/E初值cap有实际整数多项式证明文本，不是最后假设。

八数值：
48<qRate(qBase)^194；
Z^193≤4Y0；
5^22000≤Z^648；
(5^22000)^194≤Y0^648；
4^648(5^22000)^195≤Z^(648·194)；
7^22000≤Z^784；
(7^22000)^194≤Y0^784；
4^784(7^22000)^195≤Z^(784·194)。

最终无外部F/G、Hom、行列式、标准全m Q/E增长、所求边假设。内部SelectedEdge的raw-growth输入已在FixedEdge通过真实Factorial/Normalization和四树消去。

## 有界精确检查与失败边界

未跑Lean；Python精确检查通过：17个阶乘余式系数；m1..24两δ48项F递推/加强界；m1..6两δ12项P/Q/E、G内容整除、Hom余项；a=2的真实整数线性恒等式；四m1 cap；qRate≥1与wRate≥Z。

qRate=N/D：
N=597437736012881227951062430964110589645194856223359405848312938496；
D=520943374216082296273222463705031396332518779672682285308837890625。
2D^32≤N^32成立，最大6993bit。六个32块给R^192≥64>48，再用R≥1及192≤194；不必展开194次幂。

辅助selector自检最初沿用了粗v256基底，p5 lookahead余量为−96645120；它只排除那套粗dyadic证明，不反驳原数值目标。读回原冻结row04后，采用2^81153≤Z^1024、5^4096≤2^9511、7^256≤2^719，所有余量正，最大basis81154bit；没有改M、Lt或权重。见basis-diagnostic。首次PowerShell JSON对象解析因S/s大小写键冲突而失败，实际采用的数据均由保留大小写的Python JSON解析。

## 验收与交接

9实现模块、42公开候选定理，连定义共66项公理审计，9分层Audit加总Audit共19Lean文件。审计器合成自测拒绝缺根、sorryAx、额外axiom、编译错误；这不是实际Lean验收。

父任务按AUDIT_PLAN串行：FactorialAudit，Parameters/SourceRows，ActualRows，GrowthInputs，ScaledGap，SmallCertificates，SelectedEdge，FixedEdge，总Audit。Factorial11D7映射lean/Factorial，其余映射lean/I11FiveSevenEdge，仅改imports。F前缀保留先前冻结字节。

INPUT_SOURCES绑定当前G与实际模板/固定计划/原短幂证书及receipt。所有绑定hash在冻结时重新检查。旧7/2源模板现已由父任务报告全链通过；本包仍须独立验收。

下一步在另一独占remaining-final-consumers目录接实际四树/八证书及primeWindow组件边。本包只补(5,7)cofactor边，完整i11、初始全局高度和原B699仍需独立拼装；没有新颖性声明、Git或共享源改动。
'''
(out/'README.md').write_text(text,encoding='utf-8')
(out/'CHECKPOINT.md').write_text('''# Checkpoint
Start2026-09-11 21:17:26 UTC; planned21:37:26 UTC, not a total deadline.
Complete 9-module fixed five-seven candidate and66-root audit; exact finite diagnostics passed. No Lean/Git.
Expected: eliminate actual F/G/Hom/scaling glue for this edge; remaining four trees/eight finite numerical inputs and ordinary windows are explicit.
Original B remains0/19. Next parent serial acceptance; then actual certificate/primeWindow consumers in separate authorized directory.
''',encoding='utf-8')
# Prevent a future accidental invocation of the one-time checker repair after freeze.
p=out/'repair_checker.py';s=p.read_text();anchor="p=out/'check.py';s=p.read_text()"
s=s.replace(anchor,"assert not (out/'FREEZE.json').exists(), 'Frozen package'\n"+anchor)
p.write_text(s,encoding='utf-8')
for rec in json.loads((out/'INPUT_SOURCES.json').read_text())['source_bindings']:
    assert sha(root/rec['path'])==rec['sha256'],rec['path']
assert sha(out/'Factorial11D7.lean')=='8bfb1f0f099fb94e48c6ea56385f4fb0724bc959a19214681523a883573bab9a'
for p in out.glob('*.lean'):
    s=p.read_text()
    assert s.count('(')==s.count(')') and s.count('/-')==s.count('-/'),p
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*(axiom|unsafe)\b',s,re.M),p
mods=['Factorial11D7','Parameters','SourceRows','ActualRows','GrowthInputs','ScaledGap','SmallCertificates','SelectedEdge','FixedEdge']
freeze={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/pade_construction','status':'FROZEN_COMPLETE_PROOF_TEXT_UNCOMPILED',
 'start_utc':'2026-09-11T21:17:26Z','checkpoint_utc':'2026-09-11T21:37:26Z','implementation_modules':9,
 'public_theorems':42,'all_audit_roots':66,'lean_files':len(list(out.glob('*.lean'))),
 'new_Lean_invocations':0,'new_Git_invocations':0,'new_original_B_results':0,'all_input_hashes_rechecked':True,'factorial_prefix_unchanged':True,
 'remaining':'parent serial proof acceptance; actual four trees/eight numbers and window/component consumer',
 'files':{p.name:{'bytes':p.stat().st_size,'sha256':sha(p)} for p in sorted(out.iterdir()) if p.is_file()}}
(out/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'FREEZE':sha(out/'FREEZE.json'),'README':sha(out/'README.md'),
 'core':{m:sha(out/(m+'.lean')) for m in mods}},indent=2))
