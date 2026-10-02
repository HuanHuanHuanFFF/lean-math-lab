# 全域阶乘归一化常数独立复核

核验者：`runtime_review`，2026-10-01 14:57 UTC。AI技术审查，不是第二内核或人工同行复审。

接受 `tail/NormalizationConstants.lean` 的3个公开根，固定source SHA256 `d888de1b73bc14c2dbcbd224fa87917960d7676c023a171c8348d9daa6c3850b`。主声明对**每个**自然数m≥333、1≤c≤3，令 `i=3m+c,q=2m,λ=3m−c+1`，证明

`λ log(i!) ≤ q(q+1)log2 + 3log(sf(q)) + (λ(i+3)−3m(q+1))log i`。

这里sf是已核对的真实 `1!…q!`，不是抽象常数，也没有限制m或i上界。λ的Nat减法转换经c≤3m真实证明，λ>0与i/q≥1都由原始条件推出。总体系数表达式按实数运算解释，没有把减法截断或除法误作Nat运算。

两个配套根是真实精确常数：`5/96≤log(2/3)+(2/3)log2`；任意实数x>0,c<x、q=(2/3)(x−c)时，`q logx+q log(2/3)−2c/3≤q logq`。前者由3倍表达式等于log(32/27)及基本log下界得到；后者使用已验−log误差界。主证明组合实际阶乘/superfactorial的无界估计与四个非负残余项，不用Stirling黑箱或有限指数表。

当前源、原字节snapshot、object、receipt、stdout五hash全与 `tail/verification/20261001T144214146Z/evidence.json` 一致；object SHA256 `6446d8354d19ba8905a06a952f66a0731cb9b8df64fccd4dec90e507da92a0fa`。真实exit0、35.936秒、树WS1415.74MiB，M3132/WS1536、Native0x2030/commit0，源前后不变，全部传递axioms标准三项。

为完整显示两个配套根类型而不改冻结源，另从实际tail对象根运行 `runtime/AuditNormalizationConstants.lean`：fresh exit0、15.471秒、树WS1303.62MiB，三根完整类型与公理均匹配。receipt见 `.tools/b699-lean-20261001-01a0f779/runtime/logs/20261001T144812133Z-independent-normalization-types/receipt.json`。

这是消除N路线一项无界常数义务的实际前置；尚未由此得到B699 noCommon输入下的三个窗口乘积/primePart全归一化。该实际N连接、EC/IC剩余输入、Gap和最终消费者仍独立待验。完整原题覆盖新增 **0**；所有目标i≥4883的合法n,j仍未因此闭合。此结果是采用纸面路线的形式化，不主张新颖性。
