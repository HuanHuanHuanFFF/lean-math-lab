# 来源采用与执行边界

## 本轮指定入口

实际读取的是 **OVERVIEW202-9-16-02.md**，Files id `file_00000000460082119828a581548ec89c`，版本1，源文件99行。入口初次附带检索曾混入旧R12/R13任务；这些旧任务没有作为本轮当前前沿。

OVERVIEW采用快照：`a7468a887224e35906d8486bd18d21d0e8368393`；其指向分支 `huan/b699-paper-20260916-a1c74e93`。本轮始终读取该固定commit，不查询进行中成果，也没有以“latest main”替换来源。

OVERVIEW文本已完整读取，但原文件的raw materialize没有授权路径，text materialize返回401。因此本包**不声称保存了其原字节**；更新摘要 `OVERVIEW2026-09-16-ProB-update.md` 是本轮新文档，不是伪造的原文件副本。

## 固定仓库只读记录

仓库：`HuanHuanHuanFFF/lean-math-lab`。下列路径均相对上述固定commit。

| 文件 | 实际用途及边界 |
|---|---|
| `AGENTS.md` | 研究、资源、来源、权限规则；未执行仓库写入或发布 |
| `docs/STRUCTURE.md` | 定向读取1–110行；工具返回后部截断，不声称全面读完 |
| `.agents/skills/lean-research/SKILL.md` | 研究与证据层次要求 |
| `.agents/skills/lean-research/references/open-problem-workflow.md` | 选路、能力边界、真实增量与失败记录规则 |
| `research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/CURRENT_STATUS.md` | 定向读取当前前沿与最新B摘要；较长后部截断，未全面重审历史 |
| 同run下 `intake/20260915-daily-results/notes/B.md` | 定向读取旧B六包的来源和前沿；没有运行18包历史全链 |
| `research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93/notes/nc3/PROOFS.md` | 采用其G4、原题规范条件的重构，并读取奇素数重复源结果的范围 |
| 同目录 `FINITE_TEST_BARRIER.md` | 已读有限固定进位/模数障碍；本轮不重复计为新发现 |
| 同目录 `OVERLAP.md` | 已读ROW128严格重叠审计；本轮不得把已被覆盖的族重复计功 |
| 同run下 `notes/main/03-h02-origin-seven.md` | 只用于比较“原点阶数”方法是否可转到i3；未采用H02为新定理前提，未运行其证书 |

GitHub连接器可读上述文本。容器直接raw URL请求发生DNS解析失败；没有假称CLI fetch成功。读取源文本不等于新独立数学验收。

## 随包保留的两份数学原文

1. `sources/prime_radix_previous_PROOFS.md`，11514字节，SHA-256：
   `f0a9e8d3f8d404f49e3efa87cbbb1e0e23e247731d5054cd8c67d0431f28200c`。
   原附件 `B699-R7-ProB-prime-radix-two-digit-row-evidence-20260915.zip` 的 `notes/PROOFS.md`；原ZIP 2648935字节，SHA-256 `07e8d497b9c1fc50562a8dcab4fb8253b1b5ff430796dbb6790b238753fbbe29`。仅采用原题前置与共享数位行列式，不重跑543行旧COEFF8证据。
2. `sources/cubic_previous_PROOFS.md`，14536字节，SHA-256：
   `76decab2fc8a6267830aae84a46e3064efecea5cf71317a3e2a5da160691ddbe`。
   从本会话已挂载 `b699-prob-v4-general/new/notes/PROOFS.md` 原字节复制；与固定仓库 `deliveries/B-cubic/notes/PROOFS.md` 在OVERLAP.md记录的哈希一致。采用§3 ROW128，不将其计作本轮新增。

原ZIP及原文在原位置保持不变。本包避免继续嵌套历史大包；所需数学原文与新证明均已包含，默认重放离线完成。

## 外部核对

定向读取官方mathlib文档 `Mathlib/Data/Nat/Choose/Factorization.html` 的阶乘估值／进位表述。它仅用于核对标准公式；本轮正文重写了需要的映射，没有运行Lean。

新无限证明不使用BFT、Padé、BEG、Matveev、素数分布或不可计算常数。i5/i7旧证书、三次内容深链及其它会话当前成果不作为新依赖。

## 等级

旧输入继续为其原作者报告／证书等级。新定理为本会话作者纸面证明；新程序为确定性有限回归和作者另一实现。没有独立研究者、额外AI审稿、人类审稿、Lean或新颖性认证。
