# WindowParameters 独立技术复核

核验者：`runtime_review`，2026-10-01 14:18–14:22 UTC。固定来源基线 `4d22485e20e509e33348b33e63f6902becbae414`。本复核为 AI 技术审查，不是第二内核或人工同行复审。

接受范围：本轮 `tail/WindowParameters.lean` 中 `B699TailParameters.normalization_parameters` 的准确 Nat 参数接口。源码 SHA256 `229e1c8527141548c976626d97307e04f209b4e533a6a7a72d7ad8031b7b553c`。

公开声明是：每个自然数 `i≥1000`，存在自然数 `m,c,q,r,lam`，同时满足 `i=3m+c`、`m≥333`、`1≤c≤3`、`q=2m`、`r=m+c-1`、`i-r-1=q`、`2q-r=lam=3m-c+1`、`i-5≤lam`、`q<i`、`q≥666`、`lam≥995`。证明以 `(i-1)/3` 和 `i-3m` 构造全部参数，再由 Omega 检查自然数截断减法及端点。不是把这些等式作为假设的条件性包装。

已独立核对当前源码、实际对象、receipt、stdout 的四项 SHA256 全与 `tail/verification/20261001T141559020Z/evidence.json` 一致。对象 SHA256 `fcc5e56eea7524e183c50fc9d69a1797c4f1926d39e10c59f3c07ed8c19b034b`。实际命令使用已确认的 Lean 4.33.1，`-j1 -M768 -DElab.async=false -R <repo>`，exit 0，墙钟4.559秒，树WS461.81MiB；stdout完整公开声明与公理列表均在该证据根。

实际传递公理只有 `propext, Classical.choice, Quot.sound`；源码无 `sorry/admit/sorryAx` 或项目 axiom。Lean/Omega为唯一导入，没有Mathlib缺对象或待证外部定理。这足以接受所列整数接口，不需要为制造第二成功日志而重复已冻结同源编译。

原题覆盖新增 **0**：声明没有 `n,j`、共同素数见证或二项式整除。它可用于后续三窗口归一化参数，但EC、实际归一化N、无限短区间Gap及最终B699消费者均没有由此获得证明。`i≥4883` 的所有合法 `n,j` 仍是本轮目标的未知区；R7也未减少。此接口是已知初等算术的形式化，不主张原创新发现。

运行边界：此旧receipt生成时封装器的嵌套Job flags写入尚未修正，原生Job flags未在该次receipt读回；根进程显式Idle/affinity及工作集守卫存在。该运行层缺陷已经另行修正并Core回归，不能倒称旧receipt已具备后来新增的Job读回，但它不改变上述真实exit0、内核/公理输出和固定字节绑定。
