# 来源、采用边与执行边界

## 基线与实际取得内容

唯一新附件：`OVERVIEW202-9-16-02.md`，原字节保存为 `sources/OVERVIEW-input.md`。以该文件的2026-09-16快照恢复，未把旧会话时长或发布授权带入本轮。

固定仓库：`HuanHuanHuanFFF/lean-math-lab`；提交：`a7468a887224e35906d8486bd18d21d0e8368393`。只通过GitHub插件读取选定文件，没有建立、修改或推送仓库工作树。历史未取得v3包的事实不因本轮读取新快照而改写；没有假定读过全部最新A/B。

令 N=`research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93`。实际通过插件读到：

|路径|采用范围|新核验状态|
|---|---|---|
|N/notes/main/03-h02-origin-seven.md|完整H02高幂域、g5/g7、完整5端点|继承，不重放旧多项式证书|
|N/notes/main/04-deficit-one-boundary.md|纯对称、统一行权、次数亏损1类T≤7的边界|仅用于选路，不计新结果|
|N/reviews/reviewer/H02_REVIEW.md|上述两界的独立AI接受范围及精确常数|已读报告；非本轮新的独立审读|
|N/notes/h023/PROOFS.md|§§1、5、6的g14界；§§3、4的形式核及未解决零支|仅g14用于正向定理；不采用形式核作非零证明|
|N/reviews/reviewer/H023_CORE_REVIEW.md|g14固定六因子链的独立AI接受范围|已读报告；非本轮重算106KB证书|
|N/experiments/h023/certificate_selected.json|开头48行的D/W/T与部分首因子|只读局部，不标成原件完整取得或已重验|
|AGENTS.md、docs/STRUCTURE.md、.agents/skills/lean-research/SKILL.md|工作流与安全读取约束|研究执行不产生仓库发布授权|

H023固定证书来源报告声明SHA256为
`f5f52a935cab94bd03e491f81f2e716475c4dcc348a1c7b6af3ccbb9e592ee20`、106245字节。
**本轮没有原字节，不能声称本机核过该哈希。** 容器直接取源因DNS/下载路径失败，记录在SOURCE_FETCH.json。完整新证据包不等于全部历史证明字节自包含：原点界作为明确冻结前置继承。

## 已挂载的旧D原件

以下三个证明文件实际从本会话先前附件复制原字节，大小和SHA256见 `sources/LOCAL_SOURCES.json`：

- quartic-gap-shifted-smooth：QIG及Q-HEIGHT的准确m、s_m和阈值；
- even-gap-cluster-closure：各目标自己的SIXG；
- two-power-closure：质量界与两最大幂恢复的旧接口。

这些证明仍为作者纸面＋旧证书等级，未全面独立审读。本轮重构了使用的阈值整数比较和全新的有限域，不重放不变的历史全链。

`sources/frozen`中的旧发现/恢复代码来自实际旧ZIP，仅供本轮探索。正式接受脚本 `code/check_*.py` 不导入它们。探索脚本所读取的确切本地文件随包保存；不存在把小摘要作为完整历史链PASS的步骤。

## 新证明的依赖图

1. 原始整数gcd恒等式 ⇒ 新d_h梯形界（采用G5/G7/G14）。
2. QIG/SIXG ⇒ 两最大幂必须乘积>n ⇒ 本轮有界完整CRT域。
3. 本轮确定性素性、无缝进位区间及完整NORM ⇒ 两个有限域排空。
4. 1+3 ⇒ d6≤60／d3≤420的无界n消费者。
5. 整数线性换元、最低次数与互素消去 ⇒ ZERO；接4排除整类合法零点。

没有采用NC3的专用C_r、R/U/z，未调用BEG、BFT、Dusart、Pell或对数形式出版定理。浏览到的插值背景没有成为正向前提。没有新增外部出版依赖。

## 验证等级与执行边界

新无限量词由PROOFS.md承担，有限程序只是该证明所列有限域的完整接收。两个实现都由本会话编写；没有Lean、外部独立数学审读、人类同行审稿或新颖性审计。

写入只发生在 `/mnt/data` 的独立交付目录。没有提交、推送、合并、调度其他会话或异步研究任务。用户没有给本轮总时限，未继承旧60分钟授权。
