# (2,5) 的实际 G 下界：固定四轨道候选

状态：完整证明文本已冻结，尚未运行 Lean。本包只写本独占目录，没有修改集成源、其他候选、Git 或验证队列。

最终目标已写成 `Math.B699.I11DivisorTwoFive.qContent_two_five_lower`：对 δ=0 或1、每个自然数 m≥141，

```
(602791/500000 : ℚ)^(4m)
  < (qContent (4m−δ) (m+δ−1) (4m−δ) : ℚ).
```

源码中该 δ 形参名为 d；它只有 0/1 两个值，不是固定参数对 (c,d)=(5,4) 中的 d=4。最终声明没有 G 下界、阶乘步长、渐近估计、Padé 恒等式、增长树或高度假设。另有 `qContent_upper_row_lower` 与 `qContent_adjacent_row_lower`，分别直接对应两个实际整数行的 G。

若真正通过编译，这会消去固定 (2,5) 边的两δ、全 m≥141 的实际 G 依赖。当前只是候选及数值诊断，不增加原题覆盖；初始无界高度尚未由本包证明，B 保持 0/19。

## 固定来源与四个实际序列

参数沿用冻结 FINAL_PLAN，SHA `7ab80d1357ef87aafa1ead6fbdef0b4dadf851c09c77185c27a7f03fa4b5ab62`：Lt=602791/500000，Lm=1235039/1000000，统一 m0=141。没有优化阈值或采用 retained-gain 参数。

这里记 D_t(k) 为实际 `rationalDivisor`，它等于

```
D(u,v)=(u+floor(v/2))! floor(v/2)! / (u! v!).
```

种子差 3 只出现在下游 z=3/128 的 Hom 余项；不能额外把 3 幂乘进这里的内容或有理除数定义。

| Track | δ, m | u,v | D_t(k) 的实际阶乘式 | 合法起点/初值 |
|---|---|---|---|---|
| evenZero | 0,2k | 8k,2k−1 | (9k−1)!(k−1)! / ((8k)!(2k−1)!) | k≥1，D(1)=1 |
| evenOne | 1,2k | 8k−1,2k | (9k−1)!k! / ((8k−1)!(2k)!) | k≥1，D(1)=4 |
| oddZero | 0,2k+1 | 8k+4,2k | (9k+4)!k! / ((8k+4)!(2k)!) | k≥0，D(0)=1 |
| oddOne | 1,2k+1 | 8k+3,2k+1 | (9k+3)!k! / ((8k+3)!(2k+1)!) | k≥0，D(0)=1 |

`Actual.lean` 从真正的 floor(v/2) 定义得到四式，并用已验 `factorial_add_cast` 证明 k→k+1 的乘法比值；物理指数 m 因而前进2。偶数轨道的步长引理保留 k≥1。其定义在 k=0 的 Nat 截断值不能用来冒充未加守卫的阶乘公式或递推。

四个步长的分子/分母多项式是

```
N00=∏_{i=0}^8(9k+i) · k
T00=∏_{i=1}^8(8k+i) · (2k)(2k+1)

N10=∏_{i=0}^8(9k+i) · (k+1)
T10=∏_{i=0}^7(8k+i) · (2k+1)(2k+2)

N01=∏_{i=5}^13(9k+i) · (k+1)
T01=∏_{i=5}^12(8k+i) · (2k+1)(2k+2)

N11=∏_{i=4}^12(9k+i) · (k+1)
T11=∏_{i=4}^11(8k+i) · (2k+2)(2k+3).
```

于是 D_t(k+1)=D_t(k)·N_t(k)/T_t(k)。分母正性在各自合法 k 区间证明，最终消费者不接收“步长正确”的假设。

## 两级比值证书与阈值

共同 R∞=387420489/67108864=9⁹/(8⁸·2²)，表示一次 k 步、即两次 m 步的增长率。`Certificates.lean` 中四个11次 rough 多项式和四个10次 middle 多项式均逐系数匹配冻结源：

```
R∞ ((k+1)/(k+2))² ≤ N_t(k)/T_t(k)      k≥kMin(t)
Lm⁸ ≤ N_t(k)/T_t(k)                    k≥K(t).
```

每条证书以 x=k−起点平移，给出显式非负系数 Horner 多项式恒等式。`Bounds.lean` 清除正分母，并调用实际阶乘步长得到实际 D_t 的两个下界；没有把六个或八个比值假设放到最终 G 定理里。

归一化函数是

```
Phi_t(k)=D_t(k)/(Lt^(4*rho(t)) · (Lt⁸)^k)
        =D_t(k)/Lt^(4*(2k+rho(t))).
```

奇数轨道的额外 Lt⁴ 因子必须保留。Lt⁸≤R∞ 后，rough 递推给出 Phi(k+1)≥Phi(k)((k+1)/(k+2))²；从 K 起，middle 递推给出 Phi(k+1)≥Phi(k)R，其中 R=Lm⁸/Lt⁸，且 1+5(R−1)≥2。

| Track | kMin | K | 小初值经 telescoping 的二进制损失 T | B | 最终 k 阈值 K+B(T+1) | 原 m 阈值 |
|---|---:|---:|---:|---:|---:|---:|
| evenZero | 1 | 16 | 9 | 5 | 66 | 132 |
| evenOne | 1 | 1 | 1 | 5 | 11 | 22 |
| oddZero | 0 | 0 | 2 | 5 | 15 | 31 |
| oddOne | 0 | 15 | 10 | 5 | 70 | 141 |

有限初始证书只计算四个小 D 值、Lt 的4或8次幂和最多2¹⁰。证明在 K 的基值时没有展开 D(K) 的大阶乘。之后直接调用已验 `lower_telescoping_from_step` 与 `strict_threshold_from_step`，得到全部后续 k 的 Phi>1。

`source_track` 穷尽 δ=0/1 与 m%2=0/1，显式用 Nat 的余数分解恢复 m=2k+rho。`threshold_from_large_m` 确认 m≥141 时总能达到对应 k 阈值，特别包含 m=141 的 oddOne 边界。最后用已验 `rationalDivisor_le_qContent` 得到真正 gcd 的下界，没有交换素数层最小值与求和或假设 gcd 简单递推。

## 代码与验收入口

模块链为 `Actual → Certificates → Bounds → Threshold → Audit`。`ActualAudit.lean` 提供最小前缀入口；全 `Audit.lean` 打印39个公开定理和7个定义，共46个传递公理集合。允许范围仅 std3：propext、Classical.choice、Quot.sound。

`SOURCE_FREEZE.json` 绑定全部6个 Lean 文件。主任务可将同字节复制到短模块路径并只重映射 imports，随后串行真实编译。源码中的完整 tactic proof 还没有被执行，因此此处不声称可编译成功。任何包含 sorryAx、编译错误或缺失审计根的运行都应整体拒绝；此前已经成功的前置可按实际源 SHA 复用。

`audit_axioms.py --self-test` 已通过46根的合成输入自测，拒绝 sorry、缺失 print、自定义公理和编译错误。这不是实际 Lean 公理验收。真实日志可交给该脚本审核，或使用主任务的统一审计器。

`build_candidate.py` 在冻结前已实际运行，执行独立整数检查并生成候选；现有冻结程序仅被读取。它会写本目录候选，因此冻结后不要直接用它重写这批文件。完整来源、实际依赖 receipt、参考 (5,3) 结构和生成器打包错误记录均在 `SOURCE_MAP.json`。

## 独立检查与尚缺内容

新检查独立从四条仿射阶乘参数构造10个线性因子的 N/T，再乘开、平移并逐项核对旧正系数证书，八条恒等式全部吻合。每轨检查15个合法 k 的实际阶乘等式和 rough 下界，并检查 middle 起点及后继样本。另直接计算 m=141、142 的两个 δ：实际 D 均超过 Lt^(4m)，实际 qContent/D 均为正整数；结果保存在 `independent-check.json`。这些是有界诊断，不能替代上述全部 k 的 Lean 证明。

本包有七份已验依赖 receipt；其成功状态、根源 SHA、源闭包 SHA 和 std3 公理边界均重新核对。I11DivisorFiveThree 仅作已验结构模式，本包不导入其专用参数定理；已验 Factorial5D4 的 F 界供下游 Q/E 使用，当前 G 推导只需要 common factorial identity。

本轮开始于2026-09-11 18:10:20 UTC；20分钟检查点已经报告，它不是总截止。先前一次 Python 文本嵌套引号打包错误已修正，没有修改数学参数，也没有触发 Lean。

若这个 G 包通过，固定 (2,5) 实际边仍需 c5d4,z3/128 的四个真正 GrowthTree、两δ的实际 m=1 Q/E cap、八条固定选择器数值声明，以及保留 D=3 因子的缩放/整数间隙和实际窗口组件包装。F5D4 已验；旧 c3d2,z5/512 的 row00 树不能替代本行树。统一原参数 M=329≥141，接入时两个 δ 使用同一个 m。原 i11 的其他边、完整无界高度与最后有限消去仍属于主任务未完成前沿。
