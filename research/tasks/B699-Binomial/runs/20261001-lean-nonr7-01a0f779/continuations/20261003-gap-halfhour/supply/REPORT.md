# 限定供应检查与64点初段探针

Owner `/root/gap_supply_astra`，research / Astra max。共享预算18:08:36–18:38:36 UTC，实际接续约18:21；18:33:36数学冻结，不延期。仅写本supply目录；无本机Lean、安装、Git/权限/pins变更。当前为收尾记录。

## 已采用与实际新增

原三源13根已由S于18:23:22正式独立接受：fixed `6191c5f1c6348aee803e7e446d7750bf14cce2bb`、run37046323083，115成员、4source/raw/objectparts/实际argv绑定、13Std3、3normalchecker0。原ZIP SHA256 `54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258`；[具名接受](../reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json)。此处不重算、不提升其条件范围。

本supply新产出是 **64节点候选和精确整数实验**，没有新的Lean接受。真Gap0、完整指标新增0；完整集仍 `{1,2,11,29}∪[35,4884]`，R7未动。

## 18:32:20真实轻量运行

[生成器](prepare-pilot64.py) 先核228个旧Block源码的size/SHA，读取其已给literal池；选64点，每条边差≤2442，再对64个数逐个执行到整数平方根的精确试除。没有扫描每个y，没有生成全段大表。

[结果](pilot64-result.json)：64/64试除通过，elapsed **0.6625836999955936秒**（含读取、hash、抽取、试除和写源），first=9999889、last=10149203，全部边严格递增且≤2442。Python检查不是Lean证据；这个耗时不能外推全段Lean编译/正常checker成本。首次运行因repo祖先层数误置而FileNotFoundError，改parents[7]为parents[8]后得到本次实际输出；该错误在数学检查前发生。

[Pilot64.lean](Pilot64.lean) 共 **66候选根**：64个NormNum.Prime证明、1个实际PrimeChain、1个forward Gap消费者。准确scope为所有Nat y，`10000000≤y<10146761`，给同一个实际 `p.Prime ∧ y<p ∧ 4095*(p-y)≤y`。这146761个y目前只得到候选源与精确计算，不计kernel接受。

依据是 `4095*2442=9999990≤10000000`。已有 `PrimeChain.near_top` 在 `n=y+2442` 给 `p≤n<n′=p+2442`，即strict `y<p`，同时 `p-y≤2442`。最高n必须strict小于last，因此上界是 `last−2442=10146761`，不能取到该端点。

## 固定依赖与成本边界

旧模块 `../20261002-finite-onehour/finite/ChainCore.lean` 的repo路径为 `research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite/ChainCore.lean`，SHA256 `2a604dbaa835880ddadbc128960315903a5c837c8cb53c6eef056349845ed692`。其API被历史fixed `fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83` / run37007287888 fullfinite闭包采用；本轮没有重编它，S按旧绑定核同字节。本新Pilot不继承旧结论的kernel接受。

该API准确型：给 `PrimeChain gap lo hi`、`lo≤n`、`n<hi`，输出 `∃p, p.Prime ∧ p≤n ∧ n<p+gap`。Pilot另直接import pinned `Mathlib.Tactic.NormNum.Prime`；不import旧finite choose消费者或4k全链。

C实测旧三源窄CI为cache约103秒、编译/checker合约25秒；这不是新66根成本。新源18:32:20才就绪，已经晚于C最短6min job的18:31:36准入，Root/C明确不启动late job。新候选 compiler/AX/checker全部未运行，源审与kernel接受待下一预算。

资源：C在18:10:23记录本机物理可用2.451GiB、D28.056GiB；本任务18:24:02重读D为28.048GiB且无本机lean/lake进程。只运行约0.66秒的64点轻量检查；未据旧资源测量启动重任务。

## 未消除的数学义务

完整初段 `10M≤y<122568684` 仍未供；旧literal池只到20000093，本Pilot上端只有10146761。固定2442只是64点最小API/成本探针；全段可考虑按块提高gap或新的相对边，但须先实测本Pilot内核成本，不能把旧理想整数步数当素性/Lean成本。

无界输入仍是全实域的有效θ两侧估计，或 `∀x≥10^12, |ψ(x)−x|≤x/10000`；没有用公理、sorry或新条件包装补供应。pinned Mathlib限定搜索仅见L-series解析前置，PrimesInAP的Wiener–Ikehara提及是辅助函数及连续性，未找到可直接导入的PNT收敛供应。

外部固定PNT+ c39a751 的 `Wiener.lean` 有 `WeakPNT` 证明体（2449–2464），通过 `WienerIkeharaTheorem'`，但该文件4386行并有Fourier/SmoothExistence等项目依赖，toolchain4.34不同；本轮未移植、未做其传递AX或内核审计。即使未来接受该非有效PNT，也只能先获得未知起点的eventual族，不能当exactGap10M。没有为这条路线新增条件lemma。

下一项最短检查见 [HANDOFF.md](HANDOFF.md)。全部新源码仅候选；已知数学方法的形式化准备，不作新颖性主张。

收尾S完成[独立source-only复核](../reviews/PILOT64-SOURCE-REVIEW.json)：64literal及63个q目标逐项对应，首边2398、最大边2442、badEdges为空，shift和strict上端正确；66根实际编译/type/AX/normalchecker仍pending。S先前将首边误算为3398的reject已明确废止并保留原记录；未据此修改本源，没有生成63点修订。原d8df…源码与d7e59…计算结果保持原字节。
