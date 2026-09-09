# 研究前沿

原题保持所有自然数 `1≤i<j≤floor(n/2)`，存在素数 `p≥i` 整除实际二项式 gcd。

采用 main 两批完整 report/frontier/handoff/acceptance。旧源码仅在新消费者依赖时进入新输出根。

预期减少：对 `i>4π(i−1)` 的每个固定 i，将反例的无界 n 压为明确 `n≤H(i)`；i 本身仍可能无界。配合旧纸面 `i<10^6` 是理论有限化的候选，不等于 Lean 全题或可执行穷举。

目前实际减少：尚无新增。最小关键缺口是实际 F 的非零判别式和保留 n 次数优势的精确公式/上界。已有 Resultant API 不代表该缺口解决。

依赖：实际完整幂部分 → 每项系数整除 → 判别式缩放/整数非零单位 → 具体公式与阶乘消去 → U≤n^t → 正指数 → 明确高度消费者。完整 EEES、Dusart 和低指标旧缺口保持原状态。

## 2026-09-09T06:22Z 路线检查点（早于45分钟）

固定API已实际核对。采用独立代数路线：F'=jG、iF=X(1−X)G'+[(n−j−i+1)+(i+j−1)X]G。结果式降阶给 i^(i−2) Disc(F)=j^(i−1)C(n−j,i−1)C(n−1,i−1)Disc(G)，G=F(n−1,i−1,j−1)。由线性基例归纳非零性；不假设Jacobi源公式、正交性或可分性。

最小剩余风险已由外部解析依赖收束为固定Lean结果式自由次数、系数边界和阶乘缩放的实际编译。所有主链模块均已写无占位候选，但尚未首编，因此当前新增Lean未知范围减少仍为零。

纯Nat的明确H及精确阶乘消去见notes/integer-height.md。保持旧i≥10^6成果为纸面，保留EEES/Dusart旧缺口；不做低指标的新数学或旧全局扫描。

## 45分钟实测检查点及开发验证

截至06:46Z，通用判别式缩放/降阶、实际完整幂系数整除及整数商、内容判别式整除桥、完整阶乘消去和自然数高度算术均已实际编译成功。证据分别见 `verification/dev-20260909T063845949192Z`、`dev-20260909T063937752657Z` 和 `dev-20260909T064447443898Z`。成功模块的实际公理输出仅含标准集合；失败模块的占位错误传播没有被接受。

实际F的下降恒等式首编遇到三处cast/rw/simp接口错误，正在修复；没有发现数学反例。最小待验链为 `JacobiIdentity → ScaledDiscriminant → OriginalHeight → Acceptance`，因此尚不把完整高度界列为新增Lean结论。独立AI数学/statement审查未发现阻断，见 `reviews/independent-math-review.md`，它不替代编译。

必要旧依赖 `LinearPrimeCounting` 本轮源码编译exit0，但其四个公理输出被 `#guard_msgs` 捕获，使严格stdout审计拒绝。将使用同一新对象根的补充import消费者重新实际打印，保留原审计规则和旧源码；不从注释推断公理通过。失败见 `verification/dev-20260909T064402390996Z`。

06:49Z更新：实际 `JacobiIdentity` 与 `ScaledDiscriminant` 已开发编译通过，最初的实际公式/非零性缺口关闭。尚待验收的最小尾段只剩 `OriginalHeight → Acceptance` 及fresh整链；必要旧轮筛输出适配同步处理中。完整定理接受状态仍暂不提升。
