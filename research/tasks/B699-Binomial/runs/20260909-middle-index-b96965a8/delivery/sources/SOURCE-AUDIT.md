# 固定来源与读取边界

这是一份本轮证据定位记录，不是需要持续维护的外部项目活跃度地图。日期：2026-09-09。

## S1 — 三窗口结构：实际读取，主要复用来源

仓库：`HuanHuanHuanFFF/lean-math-lab`。

固定提交：`84dab4e389fb8d7fc43c2b18675d2d73e92ebaa8`。

文件：

`research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/heights/two-cutoff-theorem.md`

原文定位：

<https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/84dab4e389fb8d7fc43c2b18675d2d73e92ebaa8/research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/heights/two-cutoff-theorem.md>

实际读取了完整正文，核对：实际避免部分 D、完整 Q=p^(e+epsilon) 定位、D^lambda|Z、分母只含 p<i、全 j 大小界、整数 CERT、三方向点态权重障碍。正文报告第 2、3 节重新给出相同结构的推导；不把这部分标为本轮首创。

同提交还实际读取：

- `.../20260909-low-index-structure-b41a5a63/frontier.md`
- `.../20260909-low-index-structure-b41a5a63/report.md`
- `.../20260909-low-index-structure-b41a5a63/notes/heights/README.md`
- `.../20260909-low-index-structure-b41a5a63/notes/low-index/initial-memo.md`

用途：确认剩余 28 个低指标、中间指标的缺口、已交付证据等级和避免重复联合小素数幂路线。目录读取只用于发现精确文件名，不视为已经读取目录内全部正文。

## S2 — 已验高度报告：实际读取，仅用于接续与边界

固定提交：`24cb8dc2f1befccc5432673b34e7c5422fb4939a`。

文件：`research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/report.md`。

<https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/24cb8dc2f1befccc5432673b34e7c5422fb4939a/research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/report.md>

确认 i>=185 的原题高度消费者已按该报告验收；这里只采用该冻结检查点的状态。没有重跑 Lean，也没有把本轮代码当作对该 Lean 报告的重新认证。

U<=n^pi(i-1) 的使用由 S1/S2 的已交付说明支持，并在本报告用 Legendre 求和重新证明；本轮没有声称读取过 SmallPartBound.lean 的源码。

## S3 — Dusart 两输入：已核对原始 PDF

Pierre Dusart, *Estimates of Some Functions Over Primes without R.H.*, arXiv:1002.0442v1 (2010)。

<https://arxiv.org/pdf/1002.0442v1>

本轮实际打开解析正文，并截图查看下列页面：

- PDF 第 8 页（从 0 起页号 7），Proposition 6.8：x>=396738 时，在 x 与 x(1+1/(25 log²x)) 之间存在所述素数。
- PDF 第 9 页（从 0 起页号 8），Theorem 6.9，上界 (6.5)：x>1 时，pi(x)<=x/log x*(1+1.2762/log x)。

应用核对：

- 素数计数只在 x=i>=1000 使用；1.2762 全部按精确有理数 6381/5000 运算。
- 短区间只在 x=y=n-i>=400000 使用，不靠解析文本可能混淆的边界符号取得覆盖。
- 自然对数、正分母、无 RH 前提、上端点包含等条件均保持。
- 从不存在 (n-i,n] 内素数推出 x+ i < p，故反向不等式 X-1>25 log²x 的严格方向正确。

这正是旧百万指标纸面证明已使用的两项解析输入，不是新增加的解析定理，也没有减少其 Lean 形式化义务。

为控制版权与包体积，归档没有附整篇外部 PDF；定理采用关系与定位在此记录。

## S4 — 全方向三角格点覆盖：具体失败诊断的原始来源

Abdul Basit, Alexander Clifton, Paul Horn, *Covering triangular grids with multiplicity*, arXiv:2307.13257 (2023)。

<https://arxiv.org/abs/2307.13257>

作者站 PDF：

<https://cs.du.edu/~paulhorn/pap/grid.pdf>

本轮实际读取 23 页 PDF 的相关定义与定理，并截图查看从 0 起页号 1、3、4：分数覆盖定义允许所有仿射直线；Theorem 2.1 给 n=3m+1 的精确公式，Theorem 2.2 给另两个余类的公式。相关证明段帮助确认归一化，未把有限斜率 LP 当成全方向下界证明。

用于正文第 10 节；不是正文第 9 节主定理的外部依赖。三条公式为已发表研究结论，本轮只完成与 B699 支撑条件之间的对应和方法强度诊断。

## S5 — 旧百万指标纸面证明：实际读取，用于对比依赖

固定提交：`23c4e21096cd711be08927c0c451627c832d64c2`。

文件：

`research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md`

<https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/23c4e21096cd711be08927c0c451627c832d64c2/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md>

核对旧证明的精确阶乘消去、X<11000 与 Dusart 迭代；本轮主证明没有把其判别式公式作为输入。

## 未读取或未执行的内容

没有因为不可访问而放弃关键输入；本轮实际请求的上述正文均读到。

按所选路线没有继续读取：`prime-input/derivation.md` 的完整初等替代包、n=3j/n=4j 整包、`notes/algebra.md`、`OriginalHeight.lean`、低指标全部 S-unit/斜率文件及零指数 Matveev 包。其既有覆盖只按用户提供的基线和已读 frontier/report 标注，未宣称独立验收那些证明。

未访问主机本地盘、其他会话工作区；未更新远端实时前沿；未对仓库执行写入、commit、push 或 Lean 编译。
