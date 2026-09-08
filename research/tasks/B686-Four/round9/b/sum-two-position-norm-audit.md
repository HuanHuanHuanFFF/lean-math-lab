# M9-9：反射和两位置整数范数 — B 独审与形式化记录

作者：B / James。正常总截止 2026-09-08 02:00 UTC；本形式化检查点 01:25，01:40 冻结。

## 当前状态与所有权

- 纸面审查已通过；00:44:29 UTC 的 V8 精确倍率 2 记账控制已实际执行。
- 新 Lean 文件 `SumTwoPositionGap.lean` 的**显式接触证书推出 k 界**已在 01:09 UTC 实际编译通过；原题几何、真实有符号误差联接在 01:17 UTC 实际通过。公理守卫与最终复编见 §8。
- 只写 `round9/b/`。不修改 main/A、旧源码、依赖或入口；不 spawn、commit/push。
- 原题的完整素数幂接触和实际光滑部分/支持到证书的连接，不是此文件已证明的结论；实际复用了主任务 `main/ReflectedGeometry.lean` 的已验证几何。A 的全 p 接口不在本文件依赖中。
- 预期证据变化：已审纸面 M9-9 的整数终结器 → 可复用 Lean 证书接口；不因形式化此终结器就宣称原题范围已在 Lean 中排除。

## 1. 原题、参数与精确范围

`P_k(x)=∏_{l=1}^k(x+l)`。假设 `k≥5,n≥0,m≥n+k,P_k(m)=4P_k(n)`，令

\[
d=m-n,\quad S=m+n+k+1,\quad A_S=\prod_{p\le k}p^{v_p(S)}.
\]

`A_S` 是 **S** 的完整 k-smooth 部分，与本轮此前距离 d 的光滑部分 A 严格区分。
只分配 **S 的粗素因子**；P_k(n) 中不整除 S 的粗素数不进入分组。

如果 S 的全部粗素数幂只命中至多两个下块位置，则纸面结论是

\[
k\le60A_S^2,\qquad A_S\text{ 偶时 }k\le15A_S^2.
\]

特别 `A_S=1,k>60` 时，任何原解至少有三个不同的粗命中位置。此排除与 m 的高度无关。
仍未处理大 A_S、三位置或更多、以及界内 k 的无界高度；不把此结论解释成对所有多项式大小 A_S 都有效。

## 2. 完整 p 幂、分组与整数 C

设 `epsilon=(-1)^k, lambda=4 epsilon, z_l=n+l`。反射恒等式为

\[
\prod_l(1-S/z_l)=\lambda.
\]

若 `p^a || S,p>k≥5`，则 p 不整除 `lambda(lambda-1)`。若 p 不命中任何 z_l，反射式模 p 就给 `lambda=1`，矛盾；命中唯一，因为两个位置之差小于 p。
取命中 i，其余因子之积 U 满足 `U∈1+p^a Z_(p)`。
由 `S/z_i=(U-lambda)/U` 且 `U-lambda` 是 p 单位，得到 **v_p(z_i)=a**。
再由

\[
R_i=(\lambda-1)z_i+S=\lambda z_i(U-1)/U
\]

得 `v_p(R_i)≥2a`。没有把完整幂替换成平方自由部分。

按唯一命中定义

\[
D_l=\prod_{\substack{p>k,\ p\mid S\\p\mid n+l}}p^{v_p(S)}.
\]

若支持至多两位置，选择不同 i,j（空组取 1），有

\[
A_SD_iD_j=S,\qquad D_i^2\mid R_i,\quad D_j^2\mid R_j.
\]

各粗组两两互素；不过把两个**已经得到的整数商**相乘并不需要额外互素假设。

## 3. 符号与严格几何

分离条件给 `S-2z_l=d+k+1-2l≥1`，所以每个反射因子小于 -1。
任意 U_l 含 k-1 个因子，`|U_l|>1`，故
`R_l=lambda z_l(1-1/U_l)` 非零，且符号为 epsilon。
令正误差 `W_l=epsilon R_l`。于是

\[
C=(R_i/D_i^2)(R_j/D_j^2)\in\mathbb Z_{>0},\qquad
CS^2=A_S^2W_iW_j.
\]

原题可独立推出 `kd<2m`：若反之，`n+k≤m` 给
`4=∏(1+d/(n+l))>(1+2/k)^k≥1+2+2(k-1)/k≥4`，矛盾。
因此 `S=2m-d+k+1>(k-1)d`。

写

\[
\Delta_l=S-2z_l=d+k+1-2l,\quad t_l=\Delta_l/S.
\]

则 `0<Delta_l≤d+k-1<2d`，故 `0<t_l<2/(k-1)`。
设 `ell=4+epsilon,c=4-epsilon`，有 `ell*c=15`，且

\[
2W_l=\ell S-c\Delta_l>0.
\]

## 4. Quarter-integer 间隙及纯整数终结器

从完整分组恒等式得到

\[
C=\frac{A_S^2}{4}(\ell-ct_i)(\ell-ct_j),
\]

所以

\[
0<\frac{\ell^2A_S^2}{4}-C
=\frac{A_S^2}{4}\bigl(15(t_i+t_j)-c^2t_it_j\bigr)
<\frac{15A_S^2}{k-1}.
\]

令 `N=ell² A_S²-4C`。它是正整数；若 A_S 偶，则 `4|N`。
适合 Lean 的不含实除法版本为

\[
NS^2=A_S^2\bigl(15S(\Delta_i+\Delta_j)-c^2\Delta_i\Delta_j\bigr)
<60A_S^2Sd.
\]

先消去正 S，再使用 `S>(k-1)d` 和 N>0，消去正 d，得到

\[
(k-1)N<60A_S^2.
\]

`N≥1` 推出 `k≤60A_S²`；偶 A_S 时 `N≥4` 推出 `k≤15A_S²`。
这是两个整数商加完整粗部分等式的机制，不是把不同模数同余当成同模相减。

## 5. 已实际执行的倍率 2 控制

2026-09-08 **00:44:29 UTC**，编排器 V8 BigInt/精确有理运算，不是 Lean：

| 参数 | 实际值 |
|---|---|
| k,n,m,倍率 | 2,13,19,2；`420=2*210`，满足不重叠 |
| S,A_S | 35,1 |
| D_i,D_j | 7,5；完整赋值均 1，组互素，乘积 35 |
| 正确 lambda,ell,c | 2,3,1，不能套倍率 4 的常数 |
| R_i,R_j | 49,50 |
| 整数商与 C | 1,2；C=2 |
| t_i,t_j | 1/5,1/7 |
| target,gap | 9/4,1/4 |

原乘积、完整赋值、平方整除、组乘积和 gap 展开均实际通过。
下块 15 的素数 3 不整除 S，所以不进入 D_j；距离 d=6 的光滑部分为 2，而 A_S=1。
此例仅检验记账和整数间隙，不冒充倍率 4 的真解或该倍率 gap 的可达性证明。

## 6. 历史与新颖性

离线纸面阶段没有核读旧 sum 文件，故当时明确不判断新颖性。
恢复后本执行者已实际读到 `../../round6/b/SumTwoPositions.lean` 的 k=5 代码：

- `negative_four_square`、`sum_slot_square` 已有反射平方接触；
- `sum_error_product_bounds`、`not_four_sum_square_tail` 已有乘积整数间隙；
- `not_four_sum_factor_groups`、`not_four_sum_two_position_support` 已有两位置分组排除；
- 范围是 k=5，使用旧固定斜率条带与有限距离依赖。

因此**反射、平方接触、两位置整数范数思想不是本轮新发现**。
本轮交付是已审跨 k 条件界及其明确的整数终结器形式化，不宣称方法新颖性，也不宣称已穷尽所有历史一般 k 陈述。

## 7. 形式化实施记录

2026-09-08 01:00 UTC 前后启动，经用户明确授权只实现证书终结器。
已完整重读 AGENTS、lean-research 技能与 open-problem-workflow；读取研究索引、结构说明、B 工作日志和旧 k=5 SumTwoPositions。

Lean 参数均取整数：`k,d,S,A,C,Wi,Wj,di,dj,c,ell`；这里 di,dj 是 Delta，不是因子组，A 在接口层只是正整数。
初版原题侧必须另行提供：A=A_S、完整粗分组、正误差、平方接触和几何条件。后续 §8 已通过的源联接只解除正误差与几何义务；A=A_S、完整粗分组及平方接触仍明确留给调用者。

指定编译命令：

```sh
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/elan/bin:$PATH" LEAN_PATH="$PWD/.lake/round9-verify/olean:$PWD" bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/round9/b/SumTwoPositionGap.lean
```

首次实现后状态：待实际编译、公理守卫与非空接口例核对。后续输出与失败在此追加，不覆盖纸面/离线证据。

## 8. 恢复后实际 Lean 执行、接口与证据

运行器实际版本：`Lean 4.33.1`，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`，Release；没有改依赖、工具链或入口。

### 8.1 连续尝试/失败记录

- **01:07:32 UTC**：用户指定命令首次退出 1，原因是聚合导入 `Mathlib.Tactic.olean` 没有缓存。改为现有的 Linarith/Positivity/Ring/NormNum 具体导入，没有安装或补建依赖。
- 第二次检查真正进入证明，报两处错误：`positivity` 未从合取提取 Delta 正性；乘法消去定理左右方向不符。分别改成显式 `hdi.1,hdj.1` 的正乘积以及 `mul_lt_mul_iff_left₀`。不是数学命题变更。
- **01:09:02 UTC** 已实际观察到四个核心定理编译退出 0、无输出。
- **01:10:28 UTC** 已实际观察到因子组桥及具体非空证书编译退出 0；七个 `#print axioms` 无 `sorryAx`。`exists_norm_of_square_contacts` 仅依赖 `[propext]`，其余依赖 `[propext, Classical.choice, Quot.sound]`。
- 曾把源几何联接放在临时 `SumTwoPositionSource.lean`；编译分别遇到首个模块根寻找不到 Gap 或 Geometry 的 olean。为不写共享缓存、不改变依赖，联接代码合并到指定的 `SumTwoPositionGap.lean` 并删除本次自建临时草稿，全部证明内容保留。只在 b/ 输出一个衍生 olean。
- **01:14:40 UTC** 已观察到整合后的原题几何联接退出 0；**01:15:25 UTC** 已观察到其九个守卫版退出 0、无输出。
- **01:17:18 UTC** 真正有符号误差联接退出 0；新增两根公理输出仍恰为 `[propext, Classical.choice, Quot.sound]`。随后为这两根也加上可执行 `#guard_msgs`，最终复编结果另记在下方，未执行前不预写通过。

### 8.2 已命名接口

所有名称位于 `B686Round9.SumTwoPositionGap`。

| 名称 | 实际含义/边界 |
|---|---|
| `norm_gap_identity` | 由三个明确等式得到纯整数 `N*S²` 展开 |
| `norm_gap_pos` | 由正误差与正 Delta 得 N>0 |
| `norm_gap_scaled_lt` | 推出更强中间不等式 `N*S<60*A²*d` |
| `contact_certificate_bounds` | 用户要求的全部显式整数参数接口，给一般界与偶 A 界 |
| `exists_norm_of_square_contacts` | 从 `A*Di*Dj=S, Di²∣Wi, Dj²∣Wj` 构造整数 C；无多余互素假设 |
| `square_contact_certificate_bounds` | 用完整因子组及平方接触替代输入 C |
| `abstract_certificate_example` | 实际调用接口的非空整数实例，不是假称原题有解 |
| `original_geometry_int` | 复用主几何；明确验证 Nat 减法转 Int 减法的顺序条件 |
| `original_equation_certificate_bounds` | 原题等式/分离/位置范围供给几何，其余证书仍显式 |
| `signed_error_geometry` | 从实际 `(-1)^k` 与源位置窗口推出正误差、2W 恒等式及 ell*c=15 |
| `reflected_factor_contact_bounds` | 原题等式加完整分组和真正 R 的两个平方接触，直接给两种 k 界 |

最后一根的接触不是抽象变量替代，而明确使用

```lean
def reflectedError (k n m i : ℕ) : ℤ :=
  (4 * (-1 : ℤ) ^ k - 1) * (n + i : ℕ) + (reflectedSum k n m : ℤ)
```

其额外假设为 `0<A, A*Di*Dj=S, Di²∣reflectedError i, Dj²∣reflectedError j`，以及原题的 `k≥5`、分离、乘积等式和两个合法位置。
不需要调用者另给 C、Wi/Wj 正性或 Delta 窗口。没有推断 A 就是真正光滑部分，也没有从“至多两个粗命中位置”构造 Di/Dj。

### 8.3 非空例及严格边界

`abstract_certificate_example` 以 `k=5,d=6,S=A=100,Di=Dj=1,Wi=125,Wj=130,Delta_i=10,Delta_j=8,c=5,ell=3` 实际调用因子组接口，所有假设由 `norm_num` 证明。
对应整数 C 可取 `16250`。这些数也可取几何 `n=44,m=50`，但**不满足/不声称满足原题乘积等式**；这里只验证抽象接口非空且空组取 1 合法。

原题支持连接仍未完成：

1. 定义并识别 `A_S` 为 S 的完整 k-smooth 部分，而非 d 的光滑部分；
2. 从至多两个粗命中位置取得完整因子组乘积 `A_S Di Dj=S`；
3. 从原题与完整 p 幂导出组的平方接触，再调用本文件最后一根。

本文件没有使用 A 尚在编写的全 p 结论作公理或黑箱，也没有把末条输入当已证明。
未做全仓验证、未改变旧 k=5 源码、未运行参数扫描或新文献搜索。lean-research 技能影响是保留条件边界、实际公理守卫、非空样例和连续失败记录，而不是升级原题结论或新颖性。

### 8.4 最终已执行检查点

**2026-09-08 01:19:33 UTC** 已取回最终十一根可执行公理守卫版的完成结果：退出 **0**、输出为空。命令为 §7 指定命令，另带 `-o research/tasks/B686-Four/round9/b/SumTwoPositionGap.olean`；衍生 olean 仅写 b/，未写共享缓存。
**01:21:31 UTC** 又已取回不带 `-o`、完全按 §7 原命令执行的复验：退出 **0**、输出为空；实际守卫计数为 **11**，源文件哈希保持不变，两个文本的行末空白扫描无命中。

最终 Lean 源文件 SHA-256：

`22e52ef30b0bd1640649a2551963c5a3a84079dfdee1554362945733f7c02f90`

实际 `rg` 扫描 `sorry|admit|axiom|sorryAx` 无命中；两份文本的 `git diff --no-index --check /dev/null ...` 无空白诊断（比较新文件本身退出 1，不冒充编译结果）。
全部十一根公理守卫均实际随最终编译执行；允许集恰为 `[propext, Classical.choice, Quot.sound]` 的子集。

本阶段稳定交付是 `SumTwoPositionGap.lean` 与本审计文档。临时 Source 草稿的内容已全部并入前者；删除后曾再次观察到旧草稿出现，原因未定位，未认领为已解决的环境问题，交付前仅清理本次自建且内容未改变的临时副本。

**预期未知范围变化**：纸面 M9-9 的整数收尾和原题几何/符号联接，升级为带完整显式因子/平方接触输入的 Lean 定理。没有升级实际全部素支持的排除范围。
**仍无界参数**：未满足完整两位置证书的 A_S、支持数与高度，以及 `k≤60A_S²` 内的全部高度仍不受本接口排除。
**下一检查**：由 main/A 对接实际 S 的光滑部分、完整粗分组与全 p 接触，再做其组合根的独立编译与公理检查；B 不提前补全这些数学义务。本文件范围内的实现、非空接口测试与公理检查已完成。
