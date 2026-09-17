# 来源采用与核验边界

## 唯一总览

用户上传 `OVERVIEW-2026-9-17.md` 已完整读取，实际本地字节SHA256：`360cbf89666044cd0f2bd21ff2a955f0c8fc2c53bb9f5ab40763c08894961c11`，大小25738字节。未改写原附件。总览是唯一持续更新的接续入口；本包OVERVIEW_DELTA只是待合入增量。

## 实际仓库读取

仓库：HuanHuanHuanFFF/lean-math-lab。
分支：huan/b699-fivehour-20260916-6e72b0d4。
本轮通过GitHub连接器解析并固定到提交：`f232982bc5d27ba4de68cc3abb916796f771dec6`。

先读AGENTS.md、docs/STRUCTURE.md、.agents/skills/lean-research/SKILL.md及其open-problem-workflow。最新A固定根路径：

```
research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260917-pro-results/sources/ProA/07_QUADRATIC_CLOSURE50/B699-ProA-leading-linear-20260917
```

实际读取的数学原件：

| 文件 | Git blob SHA-1 |
|---|---|
| REPORT.md |7a4e1718a4fcc29e82b57d651e5135c13691a0f9|
| notes/PROOFS.md，完整§0–9 |e4b0b5fa9b79a70a104dc40f31549e2ec9f49269|
| FAILURE_BOUNDARIES.md |6afe79a86404bb22f82d30f7beb6a1172ccf3a2c|
| SOURCE_ADOPTION.md |873e35544cdb23ce0a05d1bc0e035c419b8eea5c|

上述Git blob值来自连接器元数据，**不是本轮取得旧ZIP字节后的SHA256复核**。没有旧证据全链重新接受。

## 精确依赖拆分

P/E、BC、R5/W5、BOOT12、K152、二元因子范数来自上述固定原证明。正文列出完整接口及本轮使用位置。

R5的泛化接口并非只凭旧报告的“G因子”措辞外推：旧PROOFS §1的BC以一般有界H陈述；§3–5的秩排除只使用这些次数/范数、完整NC9和H(n,J)=0条件。本轮沿用该逐步论证，所以可陈述新的有界不可约H消费者。BOOT12也在原§6明确适用于任意z12潜在载点不可约H。

P/E上游包含H013位置链、完整局部立方块/标量与原有限末端。R5还继承旧W5、C31等接口；它们按旧作者等级采用，不因为本轮新脚本通过就升级为独立证明。PC并非本轮另做的新估计。

本轮没有使用U25/Győry统一粗余因子高度，也没有加入其未检查巨大底部。没有消费后来B/D/E新成果。

## 新外部数学输入

Jan Hilmar, Chris Smyth, *Euclid meets Bézout: Intersecting algebraic plane curves with the Euclidean algorithm*, arXiv:0907.0361（2009），Theorem 1。通过web读取作者原PDF并截图核对定理页（PDF第2页，零起始页号1）。

原文入口：https://arxiv.org/pdf/0907.0361

只采用无共同分量的经典平面Bézout。所需权(1,2)仿射版本由本文以X=Y²自由环扩张自行推导；不直接引用一个未经核对的加权射影公式。未把未下载到容器的PDF字节/hash登记为本地取得。

## 本轮证据等级

新纸面推导＋两种同会话精确枚举/消元实现＋标准库整数乘积接收。SymPy只用来发现9个小系数例外的因子，最终接收不导入SymPy。

没有Lean、外部独立全篇审稿、全题新颖性调查或“全球首次”主张。没有本地Git检出及远端写入；这是可下载交付，不是已发布仓库提交。
