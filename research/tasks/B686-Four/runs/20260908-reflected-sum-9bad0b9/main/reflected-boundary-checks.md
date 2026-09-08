# 反射链的定义边界与恢复原探针

主任务，2026-09-08 01:30—01:31 UTC。目的为验收原题对应及保留失败证据，不作为新增前沿。

## Lean输入与实际结果

在固定工具链、仓库根、正确LEAN_PATH下，以 `bash scripts/lean-work.sh lake env lean --stdin` 执行以下完整输入。01:30:48前收到exit0；除了最后两项标准传递公理列表，无错误或警告。

```lean
import research.tasks.«B686-Four».round9.main.SumCofactorBounds
import research.tasks.«B686-Four».round9.main.PrimeReflectedSum
open B686Target B686Reflected B686ReflectedA
example : reflectedSum 1 0 3 = 5 ∧ product 1 3 = 4 * product 1 0 ∧ 0 + 1 ≤ 3 := by decide
example : reflectedSum 6 1 2 = 10 ∧ product 6 2 = 4 * product 6 1 ∧ ¬ (1 + 6 ≤ 2) := by decide
example : reflectedSum 2 1 4 = 8 ∧ product 2 4 = 5 * product 2 1 ∧ 1 + 2 ≤ 4 := by decide
example : reflectedCoefficient 2 = 3 ∧ reflectedCoefficient 3 = 5 ∧
    reflectedContact 3 0 1 1 = 0 := by decide
example (k n m p : ℕ) (hk : 2≤k) (hm : n+k≤m) (hp : p.Prime)
    (hs : reflectedSum k n m=p^0) : product k m ≠ 4*product k n :=
  not_four_prime_power_reflected_sum k n m p 0 hk hm hp hs
#print axioms not_four_prime_power_reflected_sum
#print axioms original_sum_quotient_bounds
```

实际stdout：

```text
'B686Reflected.not_four_prime_power_reflected_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'B686Reflected.original_sum_quotient_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
```

第一例证明k≥2不能任意删去；第二例是重叠控制而非合法686解；第三例说明倍率4不能换成任意整数；第四例核奇偶系数及失去分离后接触可为零；最后一例实际调用完整消费者的指数0边界。它们不是用样本替代全称证明，也没有复制主证明的中间等式充当独立数值核验。

## 恢复原探针的复跑

在阅读三个原始脚本后，01:31 UTC按原范围分别执行，全部exit0，没有增大搜索：

- `python3 research/tasks/B686-Four/round9/a/cofactor-unit-audit-probe.py`：367个调和位置、五组原多项式逐位提升，包含零调和分子和不能约去的109因子。[完整输出](recovered-a-unit-output.txt)。
- `python3 research/tasks/B686-Four/round9/b/central_three_moment_probe.py`：五个预选模板、真实/自由矩区别、旧商次数上限对照及5-adic分母反例。[完整输出](recovered-b-moment-output.txt)。
- `python3 research/tasks/B686-Four/round9/main/factorial_ratio_probe.py`：两个合法但非倍率4对照，单尺度整数不推出所有尺度整数，两种精确平方范数计算一致。[完整输出](recovered-factorial-output.txt)。

这些原文件在掉线后曾无法访问，后来从保留的本地工作树恢复；这次执行是新的复现，不追认掉线期间有shell执行。与四份V8/Node脚本的逐字节复现分别记账。D7/D9曾主动中止的重矩阵消元仍没有结果，未重跑，也未借本次小模板成功改写其状态。
