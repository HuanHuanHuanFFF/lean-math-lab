# 可转交控制中心和 B699 研究会话

本批：`20260909-eees-chain-5a2e10`；分支 `GPT-work/b699-20260909-eees-chain`；基线 `37e42aca251c33c62cbc2c40f286daa0526d79ee`。全部改动仅在本批目录，公共模块和依赖 pins 无修改。

## 直接可用的新增结论

自然数原题范围 `1≤i<j≤n/2` 和素数边界 `p≥i` 保持不变。令 `t=π(i−1)=i.primesBelow.card`。

1. **所有原题反例，无额外理论前提：** `n^i≤j^i*n^t`。
2. **无条件原题区域：** `i≥185` 且 `j⁴<n³` 时存在所需公共素数。因此 `i≥185` 的任何剩余反例必须有 `n³≤j⁴`。
3. **无条件 EEES 子区域：** `i≥185,n>i²` 时，真实完整素数幂部分满足 `U_i(n)<V_i(n)`；再结合 `2j≤3i` 可得对应无条件原题消费者。
4. 十二例外全部合法 `j` 和 Vandermonde 不等式已无条件 Lean 验收。
5. 完整 `C(n,i)<C(j,i)²` 反例条件与全部 `2j≤3i` 原题消费者已 Lean 化，但仍显式要求 `B699Size.EEES1978`；**这个全局前提尚未证明**。

## 导入与精确接口

```lean
import research.tasks.«B699-Binomial».runs.«20260909-eees-chain-5a2e10».lean.ScaledTransfer

-- 无公共素数假设 hnone 使用原题的 gcd 表述。
#check B699Eees.counterexample_scaled_power
-- (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hnone : ¬Common n i j)
-- : n ^ i ≤ j ^ i * n ^ i.primesBelow.card

#check B699Eees.common_of_fourth_lt_cube
-- (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hregion : j ^ 4 < n ^ 3)
-- : ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)

#check B699Eees.small_prime_part_lt_large_of_quadratic
-- (hi : 185 ≤ i) (hlarge : i ^ 2 < n) :
-- B699Size.smallPrimePart i (n.choose i) < B699BridgeAudit.primePart i (n.choose i)

#check B699Size.counterexample_size
#check B699Size.common_of_twice_j_le_three_i
-- 上面两个保留 (heees : B699Size.EEES1978)。
```

注释中的 `Common` 仅为阅读缩写，不是需要导入的新代理定义。源码使用完整原题结论。

## 验证与剩余工作

最终新输出：[verification/20260908T180159Z/evidence.json](verification/20260908T180159Z/evidence.json)。9 个项目源全部新编、21 项本批公理守卫通过、固定包 pins 匹配；仅复用包缓存。传递公理仅标准逻辑公理。实际消费者另核验 `n=10000,i=200` 的全部 `200<j≤999`，没有依靠计算大二项式值来证明无限域。

复现：仓库根运行 `python3 research/tasks/B699-Binomial/runs/20260909-eees-chain-5a2e10/verify.py`。完整声明和证据边界见 [report.md](report.md)。独立 AI 审查无数学阻断项；不是人工同行评审或新颖性认证。

最小剩余理论输入仍是全局 EEES 在本批尾部以外的证明。具体障碍是近对角强素数估计、历史有限区域的新内核证书、低指标的光滑数配置完整性；详见 [依赖备忘录](notes/eees-source-review.md)。B699 新无条件区域以外仍有无界 `i<185` 和 `i≥185,n³≤j⁴`，不得作为有限全题搜索。

开始 `2026-09-08T17:41:06.887Z`，原截止 `19:41:06.887Z`；未延期。可闭合分支完成后提前整理交付。两个自有 Astra Max 子任务已完成，唯一串行 Lean 流水线已结束；未向其他独立会话发消息或控制其计算资源。
