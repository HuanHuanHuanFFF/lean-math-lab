# 独立数学审查与待验收交接

结论：输入纸面路线在 `u,v∈ℕ`、`0≤h≤u`、`q_h=qMagnitude u v u h` 的范围内成立。当前交付四个未编译 Lean 候选，已经写到实际内容 `G=qContent u v u` 的 `G/D` 正整数和 `D≤G`。这些文件尚未启动 Lean，不能记为已验定理。

## 逐条对应

| Claim | Domain / assumptions | Source / construction | Actual check and gap |
|---|---|---|---|
| 两个除法分解等式 | 自然数 `a,b,f,n`，`n>0` | `FloorLayers.lean`；本机 Lean `Init/Data/Nat/Div/Basic.lean:233` 的 `div_add_mod` 与 `Init/Data/Nat/Lemmas.lean:1563` 的 `mul_add_div` | 代数分配及取整恒等式已独立目读；6,050 层小检查；Lean 未编译 |
| 四个分母层之和不超过两个分子层 | 同上；不要求 `n` 是素数幂 | `factorial_floor_layer`；余数中点被两外点之一控制 | 全参数纸面证明；候选不假定该不等式；Lean 未编译 |
| 四阶乘积整除两阶乘积 | 所有 `a,b,f∈ℕ` | `FactorialDivisibility.lean`；缓存 mathlib `Data/Nat/Choose/Factorization.lean:42` 的 Legendre；`Data/Nat/Factorization/Defs.lean:161` 的整除判据 | 共同上界 `S=2a+2b+2f`，截断 `log_p(S)+1`，逐素数求和；非素数坐标为零；Lean 未编译 |
| 放宽第二个分子阶乘 | `2f≤v`，其余自然数 | `factorial_product_dvd_of_two_mul_le`；`Data/Nat/Factorial/Basic.lean:76` | 阶乘单调整除；`f=v/2` 自动覆盖奇偶两支 |
| 实际 q 清分母等式 | `h≤u` | `Coefficients.lean`；真实 `lean/PadeInteger.lean:52`；`Data/Nat/Choose/Basic.lean:140` | 组合数阶乘恒等式与正因子取消；1,183 个实际系数商小检查；Lean 未编译 |
| `N∣V*q_h` | 同上 | 具体阶乘积整除已在前一候选证明，末端没有整除假设 | 所有自然参数范围明确，`h>u` 不在结论中 |
| `N∣V*G` | 所有 `u,v∈ℕ` | `Content.lean`；真实 `qContent` 定义 `PadeInteger.lean:72`；`Algebra/GCDMonoid/Finset.lean:144,211` | 每项缩放整除及 gcd 缩放，不假定 gcd 已有下界；Lean 未编译 |
| `D>0`、`q_h/D` 与 `G/D` 是正整数 | `u,v∈ℕ`；系数要求 `h≤u` | `rationalDivisor` 是具体阶乘比；正缩放整除见证；`qContent_pos` 来源 `PadeInteger.lean:99` | 169 组小参数、含 123 组非整数 D；Lean 未编译 |
| 有符号系数商是整数 | 同上 | 真实 `qCoefficient` 定义 `PadeInteger.lean:55`，单独乘 `(-1)^u` | `u=1,v=h=0` 给商 `-2`，所以不能宣称该商总正 |
| `D≤G` | 所有 `u,v∈ℕ`，比较在 ℚ 中 | 正整数商至少为 1 | 无增长率或 θ 前提；Lean 未编译 |

候选的精确声明行号、所有导入及 audit roots 在 `candidate-static-checks.json`。源绑定在 `small-checks.json` 和 `FREEZE_V1.json`。

## 核心纸面证明

设 `A=a%n,B=b%n,F=f%n`。自然数商余分解后原层差仅余

`(2A+B)/n + (2F+B)/n − (A+B+F)/n`。

若 `A≤F`，有 `A+B+F≤2F+B`，故第三商不超过第二商；否则不超过第一商。另一个商非负，因此不等式成立。注意证明既不把 floor 线性化，也不把两个 floor 的和无条件替换成和的 floor。

对于素数 `p`，六个阶乘参数均不超过 `S=2a+2b+2f`。在共同有限范围 `1≤i<log_p(S)+1` 上使用 Legendre 公式，逐项应用上述不等式。阶乘均非零，factorization 比较给出

`a!b!(a+b+f)!f! ∣ (2a+b)!(2f+b)!`。

取 `a=u-h,b=h,f=v/2`，第二分子可由 `2f≤v` 增大到 `(v+h)!`。乘回两个实际组合数的阶乘分母并取消正的 `(u-h)!h!`，得到 `N∣V*q_h`。有限 gcd 对共同正因子的缩放给出 `N∣V*G`。若 `VG=Nk`，则 `V,G,N>0` 强制 `k>0`，而 `G/D=GV/N=k`。整个论证不要求 `D∈ℕ`。

## 检查与成本

实际执行只运行了 `check_small.py`：modulus `1..10` 的全部余数三元组，再分别加商向量 `(0,0,0)` 与 `(1,2,3)`，共 6,050 层；`0≤u,v≤12`、每个 `0≤h≤u`，共 169 组及 1,183 系数。结果全部通过，最终记录耗时 0.017359 秒。使用 Python 标准库 `int`、`Fraction` 和 `math.factorial/comb/gcd`，数据规模很小，没有扩大前输入已有的有限扫描。

四文件静态检查包括：每个公开 `def/theorem` 都有对应 `#print axioms`；没有占位证明、`native_decide` 或自造公理声明；新增 mathlib 导入的本机 `.olean` 均存在。静态检查不代表 elaboration、kernel check 或公理审计通过。未重复先前大检查，也未运行 Lean。

## 验收顺序与剩余依赖

主线程可将四个文件按原字节复制到本 run `lean/RationalDivisor/`，顺序为 `FloorLayers`、`FactorialDivisibility`、`Coefficients`、`Content`。候选导入已经指向这四个预期位置。每一步保留实际命令、exit code、完整日志、源 SHA 和全部 audit 输出；前一模块未通过时，不把后一模块的结果列为接受。若需要修复，保留冻结候选，修复集成副本并由主线程授权唯一写权。

最可能的实现风险是有限和展开的 rewrite 细节、Finsupp 的 factorization 加法简化，以及 gcd 的 normalize 简化；没有已发现的数学反例。主线程传回真实报错后再做最小修复。当前没有运行结果可断言这些接口已经 elaboration 成功。

这条结果会解除“完全没有实际 G 下界”的障碍，但**不会直接得到旧方案所需的强 `L^(dm)`**。输入来源的渐近可行性记录表明，以本 D 的较弱增长直接替换 G，十个原权重方案的领先高度系数均失败。余下需要新的参数/权重或更强公因子估计、它们与增长/误差项的全参数闭合，以及最终原题消费者。修正 G/θ 路线仍独立存在；本实验不声明取代它，不声明新颖性，不改变 B 原题 `0` 的计数边界。

最终检查点：2026-09-11 10:23 UTC；从 10:02:02 UTC 起约 20 分钟完成候选准备和有界检查，等待主线程实际 Lean 验收。
