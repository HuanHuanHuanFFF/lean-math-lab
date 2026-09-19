# 来源采用、固定版本与证据等级

## 读取入口

用户指定的唯一持续入口：`OVERVIEW2026-9-18-2.md`。

Files在当前conversation未找到附件，随后在Library找到同名文件：file_id=`file_000000002b608211b0c36568d884c1ff`，version=1。完整读取266行。没有检索旧聊天或从记忆恢复旧数学状态。

Raw materialization返回“没有授权的原字节路径”。因此本包只保存采用接口的转录及本轮新文件；**没有原Overview字节副本，也没有为它编造SHA256**。

## 仓库只读快照

仓库：`HuanHuanHuanFFF/lean-math-lab`。

Overview旧分支 `huan/b699-fivehour-20260916-6e72b0d4` 返回404。main=`17b4377af46a37168cceb784d5bcbfa041834148` 与旧源基线不能提供所需新notes。通过连接器列分支找到：

- branch=`huan/b699-auto-daily-20260918-17b4377a`；
- 本轮统一固定读取 commit=`e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b`。

只读取Overview给出的指定路径及其实际所需原件；没有采纳别的会话新研究状态。已读仓库AGENTS、STRUCTURE、lean-research skill的规则。没有修改、提交、推送、PR、合并或远程写入。

下面 R 统一表示：

`research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4`

I=`R/intake/20260918-pro-results`；Broot=`I/sources/ProB/ROUNDS`。

|来源|本轮实际采用内容|阅读范围与原Git blob SHA|等级/未复核|
|---|---|---|---|
|Overview2026-9-18-2.md|目标、R7、同输入必要系统、优先级与禁止重复边界|全文266行；Library version1，没有raw字节hash|入口记录，不提升为独立验收|
|I/notes/B.md|七轮符号、规范恢复、来源导航、原行饱和、旧证据分级|读取所需各段，约1–250；blob aad591646f8d05d0e5d744018ffa33da0d5a784d|行政摘要＋作者陈述，不是数学验收|
|Broot/B699-ProB-i3-same-input-20260917/proofs/PROOFS.md|真实λ/μ、N/K/H/C、u/z/δ、完整源窗口与同输入规范|1–125；blob 746f03469847db16333180839a537af01280883d|采用作者必要系统；未重跑GAP31完备证书|
|Broot/B699-ProB-i3-reducible-recovery-20260917/proofs/PROOFS.md|两个范数、C2、ε/T/ρ、真实互素与两底指数前提|1–140；blob f77e89cc1443f31dad4785cc2d1e86653c22203a|作者纸面采用；未重跑旧小C、BAL、SIGN等链|
|Broot/B699-ProB-i3-negative-root-20260917/proofs/PROOFS.md|第一负根族、真实分母、范数归一化、完整分拆框架|1–180；blob 65a91e430844f93a4f613f1c404f5745b2a9ce64|采用作者结果；只定向核对本轮用的代数|
|Broot/B699-ProB-i3-B-saturation-20260918/proofs/PROOFS.md|两族κ记号、M/B、Q0真实原行含义、孤立3修正、完整赋值|1–160；blob bca7e63abee93f8e3e3035c01f1ad9e7e9572829|作者纸面；未复跑B-SPLIT有限终点|
|R/intake/20260917-pro-results/sources/ProB/07_cubic-ramification-ray-obstruction/key_files/REPORT.md|实际内容Ψ、ℓ为2幂/b0奇、矩恢复、不变量、活动素数的旧分歧解释|报告全文；blob d66f736951de8fa3e76f7443dd31487d2fc97488|旧作者实际内容与局部分歧定理采用；没有重审类域论或全部旧证明|

Git blob SHA 是连接器回执中的Git对象标识，**不是本包复原文件的SHA256**。本包没有下载并保存这些原件的完整字节，不能把包内转录说成原字节归档。

## 新增部分的依赖

1. PROOFS §1：由所列范数与恢复系统作有理代数消元；本轮重新展开并符号复核。
2. PROOFS §2：原始F的系数及I/J/Δ公式本轮重推。将其用于NC3的ℓ=2^s规范化，采用旧“ℓ为2幂、b0奇”。活动集合的数域含义仍依赖旧局部分歧定理；完整vp恒等式本身为本轮初等推导。
3. PROOFS §3：只用同输入互素、完整赋值、两底支持与负根参数化。本轮给出明确推导，未作全球新颖性或历史消费者差集审计。
4. PROOFS §4–6：具体有理参数化、局部逐位提升、有限域三次无根、CRT、真实gcd和阶乘赋值均自含证明，不新增出版高度/类群定理。
5. 所有局部有限样例只是作者实现回归；无限存在性由简单根逐位归纳承担。没有有限扫描外推。

## 外部资料与没有采用的内容

查阅过NIST DLMF §1.11的多项式判别式约定。公式在本轮用整数/有理多项式重算；没有把DLMF当作B699结论来源。Erdős问题网页访问受限，没有从访问失败推出题目状态。

没有新增Masser高度、Baker界、Pell表、类群表或CAS整数点集依赖。旧接口历史上是否用到这些出版结论，仍由其冻结链负责；本轮未重新审读或重跑。

没有Lean、外部独立数学审读、人类评审或全球新颖性认证。
