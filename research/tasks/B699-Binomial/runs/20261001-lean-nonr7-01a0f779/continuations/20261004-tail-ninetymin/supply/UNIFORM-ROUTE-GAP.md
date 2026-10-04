# 无界大尾：准确供应缺口

A：复杂已知目标形式化，Sol 6.1 / xhigh；固定基线 `297dcd3943fc6468212cc6240bc65a3b9a17ccc2`。共享开始10:22:50 UTC，proofStop11:32:50，final11:52:50；不延期，不触及R7。本文只记录本轮路线诊断，不把出版数学、条件消费者或候选源提升为本仓接受。

## 从原题消费者反查

已接受 `B699FiniteFull20261002.original_tail_of_gap` 的唯一额外数学输入是 `B699TailGap.Gap 4095 10000000`：

```lean
∀ y : Nat, 10000000 ≤ y →
  ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y
```

供应以后，旧高度估计与完整有限供应即可接所有 `i≥4883`、全部合法 `n/j`；同实际 `p≥i` 同除双完整 choose。该输入目前未供应；本轮启动时全局尚有 `i≥5001` 低比例的无界i/n/j，以及无界y。10:49 UTC检查点S已正式独立接受有限5001（见 `../reviews/TAIL5001-INDEPENDENT-ACCEPTED.json`），所以目前该大指标缺口从i≥5002开始；无界供应缺口没有变化。低23和R7不在本轮范围。

消费者固定普通源码：`../20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean`。接受链：固定be6b2df9b/run37037647747/原包29a3，对应 `../20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json`；当前5000另用固定5b42228cc/run37143741098/217e，未重编旧链。成员字节引用由本轮C/S核验，本记录不构成新接受。

## 最短已知出版路线

[Dusart 2010 v1](https://arxiv.org/pdf/1002.0442v1)，Proposition 6.8（印刷p.8），本轮重新打开原PDF并核对准确实数接口：`x>396738` 时存在实际素数，严格大于x且至多 `x*(1+1/(25*(log x)^2))`。原证明采用有效θ估计与有限素数间距资料；不能把定理的纸面引用当成Lean axiom。

仓库已经形式化这个定理**供应以后**的全部数值与Nat/Real转换：`../20261002-tail-twohour/gap/DusartAdapter.lean`，`DusartStrictInput`、`dusart_denominator_gt_4095`、`real_gap_of_dusart`、`nat_gap_of_dusart`。准确未供目标是一个无额外数学假设的 `DusartStrictInput` 证明，或更窄的上面Nat Gap证明。源码搜索范围为本run的Lean源及本地固定mathlib `Mathlib/NumberTheory`；没有检出实际供应定理。此结论是范围内缺失，不是全球Lean检索结果。

分类：已知出版数学尚未形式化；不是新的未解数学问题，不是原题接线错误，也不是本轮已观测的计算复杂度失败。90分钟中从零补有效解析数论供应没有已建立的可执行依赖链；本轮不重复已验条件包装来声称完成大尾。

补查固定mathlib `NumberTheory` 中的prime interval、theta asymptotic与primeCounting/log声明，得到Bertrand的二倍区间以及θ/ψ/π积分关系和粗界；这些结果本身没有4096/4095的双边逼近。没有找到可直接填本接口的等价供应。搜索命中只用于这个范围内路线诊断，不据此声称不存在其他形式化工作。

## 已验其他接口仍欠什么

`../20261002-terminal-gap-twohour/gap/ThetaTail.lean` 已验条件后果，但需两个真实无界输入：

```lean
∀ x : Real, 0 < x → Chebyshev.theta x - x ≤ x / 36260
∀ x : Real, 122568683 < x →
  x - Chebyshev.theta x ≤ x / (20 * (Real.log x)^2)
```

对应同论文Proposition5.1及Theorem5.2中k=2/η=.05行。即使两输入补齐，仍要实际素数的全部 `10000000≤y<122568684` 初段；64点旧pilot只覆盖 `[10000000,10146761)`，完整二项式finite供应不能反向证明这个Gap初段。

`PsiTheta.lean` 的两条无条件ψ−θ界已经接受；它的Gap后果还要 `∀real x≥10^12, |psi x-x|≤x/10000`，不能把psi−theta的小误差误当psi相对x的小误差。以上三路的源hash另见 `route-sources.json`。

## 外部提供什么才能解锁

最小有用交付是：无假设Nat Gap4095/10M，或准确Dusart实数供应的独立Lean证明及其完整依赖/公理审计；原题consumer无需重写。若采用θ路线，应提供两个上述有效误差定理的实际证明，并另交完整初段证书，不能仅返回条件定理、一般素数定理或较宽Bertrand区间。

当前没有需用户另派纸面优化的**实测复杂度故障**。若其他agent提出替代纸面路线，要求指出如何统一处理所有y≥10M及每个缺失依赖、给可直接转写的证明；同样不能以固定K、相对高度界或实验通过代替无界供应。本轮可执行备选是有限原题扩展5001→6000→按代表成本门控10000，其成功仍不消去无界大尾。

## 本轮候选和资源检查点

`EndpointLegacy.lean` 把末端条件4096K改善为4095K，旧U=20482069即可至5001，零新增prime。`RatioCore.lean` 的有限边 `4095*q≤4096*p` 与严格 `n<q` 给 `4095*n<4096*p`，再联同旧低比例 `n<4096*i` 得 `n-i<p`；`RatioEndpointLegacy.lean`接完整消费者，均待C/S实际接受。

`prepare.py` 精确试除只产生候选，不是kernel证据：0.266462秒，6000新增748prime、末端24574447；10000再新增2096prime、末端40956329，共2844prime、46块。首16随后64；先FixedPilot16和RatioCore，首64块实测峰值后再扩大。源/根/模块/哈希在 `candidates.json`。本机未执行Lean；资源行政观察D剩约24.25GiB，未见lean/lake/python活动进程，系统CIM内存读取拒绝访问，未伪造内存数字；CI实际限额由C单独记录。
