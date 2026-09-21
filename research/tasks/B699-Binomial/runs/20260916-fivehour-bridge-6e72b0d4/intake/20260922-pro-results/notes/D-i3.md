# B699 D/i3 Round 12 接收摘要：POWER-RESULTANT / BRIDGE4096

本记录只做 D/i3 归档的身份、继承、阶段边界和作者结果导航；没有运行包内 `replay.sh`、Python/SymPy、证书生成器或 Lean，也没有独立验数学。包内 replay/PASS 只作作者侧证据，不能写成本仓数学接受。

## 1. 包身份和“今天新增”的准确范围

外层 [`PACKAGE_INDEX.md`](../PACKAGE_INDEX.md) 的 `D-i3` 段指向 `sources/D-i3/`，对应原包 `B699-D-i3-20260922-session-complete-evidence.zip`。[`MEMBERS.json`](../MEMBERS.json) 选取的 D-i3 根字段是：

- 外层 SHA-256：`b02babc426615c01e8c43c55064a2b660eeafdc9d26a801bf88e87c5452d2afd`；大小 `2,467,041` bytes；
- 直接成员 56 条，其中普通文件 44 条、嵌套归档 2 条；普通文件合计 `2,144,487` bytes，保留到 `sources/` 的普通文件 43 条；
- 整体 intake 的成员汇总为 39 个归档容器、2,558 条普通成员记录，边界字段明确写作 “Byte intake only; delivered code was not executed; no new mathematical acceptance”。

这不是 `sources/ProD/` 根。后者在同一个外层 intake 中另有 `B699-ProD-session-evidence-2026-09-22.zip` 及 C、C2、C3、C4、C5、C6 六个原生 ProD 阶段；本记录的 `D-i3` 文件明确写作 **B699 D / i=3**，不能改称原生 ProD i6，也不能把两个根的阶段数、报告或前沿合并。D-i3 根没有自己的总 `SESSION_SUMMARY` 或完整历史时间线；其实际导航由 [`meta/CONTENTS.md`](../sources/D-i3/meta/CONTENTS.md)、[`meta/TIME_BOUNDARY.md`](../sources/D-i3/meta/TIME_BOUNDARY.md)、[`meta/FINAL_DELIVERIES.md`](../sources/D-i3/meta/FINAL_DELIVERIES.md) 和 `round12/` 文件组成。

`TIME_BOUNDARY.md` 给出的接收窗口是 2026-09-22 00:00 至 00:41（+08:00）。它明确说明：今天新生成的完整最终研究交付只有 **Round 12：POWER-RESULTANT / BRIDGE4096**；Round 11 的最终交付发生在 2026-09-21 23 时段，不计入今天的新阶段。Round 12 的 `inputs/round11-evidence.zip` 是本轮实际采用的冻结前置，不能因为外层编号为 12 就把 Round 1…11 重新计成“本包今天完成的 12 个阶段”。原 Round 12 交付 ZIP 的外部 SHA-256 为 `fc5ccf910c050916843b415be131718b369223c7b9ab7773bce4e98d2ad0189c`；冻结 Round 11 输入 ZIP 的 SHA-256 为 `2b9de578595a4cb3c46f67f303bc7581aa6530b9081c811914b4240d46df4afb`。

因此本 intake 对 D-i3 的阶段计数是：**1 个今天新增的 Round 12；1 个被采用但属于前一日的 Round 11 冻结依赖**。若需追溯更早阶段，只能沿 [外层 PACKAGE_INDEX 的 D-i3 依赖映射](../PACKAGE_INDEX.md#d-i3) 到其原始嵌套来源，不能用本 `sources/D-i3/` 目录假装保存了完整历史阶段。

Round 12 自身的内部研究顺序可由 [`notes/RESEARCH_LOG.md`](../sources/D-i3/round12/notes/RESEARCH_LOG.md) 复核：先接入 Round 11 `BRIDGE256` 弱模型，再把范数写成 `H` 的二次式；对 `n=c·2^s` 降阶并计算结式得到 POWER-RESULTANT；由奇偶性恢复 `v₂(R)`，由正根大小得到 `s≥3ρ+7`；在 `d=1` 截面做 Hensel 固定行唯一性和 `xy=32+7w (mod 64)`；按同一协议完成 `ρ=8,9,10,11`；最后构造 2-adic 失败壳、生成证书并做哈希接收。这是一个阶段内部的推导顺序，不是额外的 11 个研究阶段。

## 2. 原题接口、实际采用的必要核心和证据等级

总前置 [`round12/inputs/OVERVIEW-2026-09-21.md`](../sources/D-i3/round12/inputs/OVERVIEW-2026-09-21.md) 的 SHA-256 是 `8dcf8d179fe024fd553e21797c17224997ca3c7037e8d84a72d7d5594ee8ca1b`，与本轮 baseline 总览原字节相同。原题仍要求同一个素数 `p≥3` 同时整除 `C(n,3)` 和 `C(n,j)`，保留 `4≤j≤⌊n/2⌋`、`p=3`、完整源幂和同一原始 `(n,j)`。Round 12 不声称覆盖一般 i3，也不把辅助非剩余素数当作原题共同见证。

本轮只在下列窄必要核心继续：同一个原始 `(n,j)` 的规范最小临界两底、真实 `μ=1`、平衡 `D_v=D_W=y`。冻结关系为

```text
P=Q+h v,
2ν=h d−Q,
vν²=P Q²−1,
n=P Qν+2=c·2^s,
d=Q−v,
d²+d+1=3y²,
v=A y,
W=B y,
A B=3(d−1).
```

这里 `P,Q` 仍是原输入中不同奇素数的完整幂，`c∈{1,3}`；这些关系属于 NC3 必要系统，不能当成一般 i3 的参数化或从它们的弱解反推 NC3。Round 12 的准确范围、未声明项和 `repository_actions: none` 也登记在 [`FRONTIER.json`](../sources/D-i3/round12/FRONTIER.json)。

证据等级为“冻结作者级前置 + 本轮作者纸面推导 + 精确程序证书”。`sympy 1.14.0` 只用于显式恒等式重放，有限环核验用 Python 标准库；没有 Lean、外部独立数学审读、数据库/群表输入或本仓代码修改。`layers_8_11.json` 的辅助素数只证明形式平方目标为二次非剩余，不能被写成整除 `C(n,3)`、`C(n,j)` 的共同见证。

会话元数据的 [`EVIDENCE_LEVEL.md`](../sources/D-i3/meta/EVIDENCE_LEVEL.md) 把准确等级写为“冻结作者级前置 + 本轮纸面证明 + 精确程序证书 / 完整有限环重放”，并明确排除 Lean、外部独立审读、完整 i3/B699、原题反例和历史消费者净差审计。`ROUND12_SHA256_VERIFY.txt` 和 `ROUND12_ZIP_SHA256_VERIFY.txt` 只证明收录文件及原始 ZIP 的字节哈希一致；它们是归档完整性证据，不是数学接受证据。

## 3. Round 12 的新结果和精确计数

### 3.1 POWER-RESULTANT 与 2-adic 门

令 `ν=2H`。由同一原输入的冻结关系构造二次范数式

```text
F_H=4 d v H²−4 v Q² H−(Q⁴−d)=0。
```

作者给出显式多项式 `R(d,v)`、`L(d,v)`，并在同一输入上证明

```text
R = c·v·2^(s+1)·(c d³ 2^(s−1)−L),
v₂(R)=s+1+v₂(v).
```

括号项被证明为奇数，所以它不是数值拟合或有限样本公式。高二桥中 `v₂(v)=1`，因而原二幂指数被精确恢复为 `s=v₂(R)−2`。再由正根、`Q>2d` 和 `d>2^(ρ+1)` 得到 `s≥3ρ+7`，真实输入必须满足 `v₂(R)≥3ρ+9`。

写 `v=2mxy` 后，固定 Pell 行 `q` 的 POWER/Hensel 门把 `0<m<27·2^(ρ−1)` 中的正乘子压到至多一个；其低位必要条件为

```text
mxy = θ_(ρ−2) (mod 2^(ρ−2)).
```

当 `q=2^(ρ−3)w`、`w` 奇且 `ρ≥8` 时，又有精确低位门

```text
m(32+7w) = 55 (mod 64).
```

`VROW1` 的“每个固定 Pell 行至多一个乘子”是行压缩，不是全局有限性；`q,ρ` 仍可共同增长。

### 3.2 `ρ=8,9,10,11` 的完整层排除

本轮在每个固定 `ρ` 层先枚举 `1≤m<27·2^(ρ−1)`，再施加准确 `v₂(q)=ρ−3`、真实 `q mod 3`、`m|9u`、POWER 同余和 Pell 首返周期，最后用一个或两个辅助素数证明平方目标是二次非剩余。报告给出的完整有限环状态计数是：

| `ρ` | POWER 后仍有状态的乘子 | 基础 CRT 类 | 加入非剩余见证后的状态 |
|---:|---:|---:|---:|
| 8 | 139 | 201 | 219 |
| 9 | 261 | 367 | 399 |
| 10 | 482 | 678 | 714 |
| 11 | 910 | 1256 | 1344 |
| 合计 | 1792 | 2502 | 2676 |

这些数是形式参数的有限环状态/证书状态，不是原题 `(n,j)` 候选数，也不是“剩余实例数”。`ρ=11,m=16573` 的一个状态需要辅助素数 41 与 71 联合覆盖；这些辅助素数仍不被登记为原题共同见证。结论是 `ρ=8,9,10,11` 在该必要核心内全部退出；加上冻结 Round 11 对 `ρ=3,…,7` 的排除，纯二桥的新前沿为

```text
ρ≥12,
v₂(q)=ρ−3≥9,
512 | q,
t=8q+1 ≡ 1 (mod 4096),
```

并保留 `m` 奇、`m|9u`、`A=2mx`、`B=2^ρ·9u/m` 和 `m<27·2^(ρ−1)` 等恢复条件。准确的阶段报告、证明、失败和交接分别见 [`REPORT.md`](../sources/D-i3/round12/REPORT.md)、[`PROOFS.md`](../sources/D-i3/round12/PROOFS.md)、[`FAILURES.md`](../sources/D-i3/round12/FAILURES.md)、[`HANDOFF.md`](../sources/D-i3/round12/HANDOFF.md)。

### 3.3 失败边界

作者同时保留了不能过度外推的 2-adic 壳：`ρ=8,m=1,w=1068621489 (mod 2^30), q=32w, q≡0 (mod 3), R≡0 (mod 2^33)`。它只有有限 2-adic 精度，缺少精确平方恢复、POWER 恒等式的完整奇部、`P,Q` 的完整素数幂资格、整数 `h,ν,n,j` 和 `n=c·2^s` 的准确等式。因此它不是 NC3 输入，更不是原题反例；它说明单独提高固定 2-adic 模数不能统一关闭全部高桥。`F1`–`F5` 的原始边界见 [`FAILURES.md`](../sources/D-i3/round12/FAILURES.md)。

## 4. 与旧 2026-09-20 E、2026-09-19 B 的继承和差异

### 4.1 与 ProE/E 14 阶段摘要

旧 [`20260920-pro-results/notes/E.md`](../../20260920-pro-results/notes/E.md) 是 ProE/i3 的 14 阶段接收摘要，已把规范最小支的若干低比值、`h=13`、五扭支持、纯二幂奇指数、二倍平方高侧/单槽和两槽立方门槛域排除，并把入口收窄到 `n=2^(6t)`、`n=3·2^s` 等纯二幂/三倍二幂分支，同时保留完整 `P/Q`、真实 `μ=1,ξ=2` 等条件。它还明确指出 mixed-slot low/low、三槽、非最小 `g,w,ξ` 和一般交叉域仍开放。

D-i3 Round 12 是这些旧接续条件中的一个更窄延伸：它沿用 Round 11 的 `BRIDGE256`，只研究真实 `μ=1` 的规范最小临界、平衡两底和纯二高桥，并把四个固定 `ρ` 层推进到 `BRIDGE4096`。它没有关闭 E 摘要中的 `c_α=3` 一般恢复、`n=3·2^s` 全部支、非最小参数、二倍平方 mixed-slot low/low 或三槽域；不能把 `ρ≥12` 写成 E 的全部纯二幂前沿，也不能把 2676 个形式状态当作全题有限实例。E 的 14 阶段计数与本包“1 个今天新增阶段”不相加。

### 4.2 与 ProB/B 2026-09-19 摘要

旧 [`20260919-pro-results/notes/B.md`](../../20260919-pro-results/notes/B.md) 接收的是 ProB 的 `joint-elimination` 与 `global-recovery` 两阶段。它在同一原 `(n,j)`、完整源幂和真实孤立 3 口径下，区分恢复三次 `P_ρ` 与实际内容三次 `Ψ`，并报告 GSB（两个可约负根族的 `vQ0` 平方分支）和 GNS（一般 `u z T_ρ` 平方分支）的作者级排除；这些并没有改变 `R7`。

D-i3 与旧 B 摘要共享的是输入纪律和 `P_ρ/Ψ` 不可混同的证据边界，数学路线上则是另一个“规范最小平衡核心 + POWER/Pell”分支。Round 12 没有重新证明 GSB/GNS，也没有把 `u z T_ρ` 非平方域、ProB 的局部相容失败或旧有限末端登记为自己的结果；反向也不能把 D 的 2-adic 层排除扩成 ProB 的一般 NC3 结论。两份摘要都只支持作者级纸面/证书状态，不能因为来源标签均含 D/B/i3 就合并阶段计数。

## 5. 当前前沿、剩余无界参数和下一检查

本轮实际删除的是一个真实无界的**必要核心子域**：`ρ=8,9,10,11` 的纯二高桥，并把该桥推进到 `ρ≥12,t≡1 (mod 4096)`；同时给固定 Pell 行至多一个 POWER 乘子候选。它没有减少全题 `R7`，没有给一般 i3 的绝对高度、全局有效有限化、保持 NC3 的严格下降、Lean 验收或原题反例。剩余前沿至少分为：

- `BRIDGE4096` 的 `ρ,q,t,m,d,y,A,B,h,P,Q,v,ν,n,s` 及原底素数和完整指数仍共同无界；
- 平衡 `odd--odd`（两块缺额均含非平凡奇部分）尚未处理；
- 一般两底 low/low、非最小交叉、真三槽/多槽和不可约恢复三次仍开放；
- `P,Q` 的完整素数幂、POWER 奇部、精确平方恢复和原 `n,j,α` 的同时回传仍是必要条件，不能由 2-adic 壳替代。

交接给出的下一检查是先处理完整 POWER 奇部
`R/[v·2^(s+1)]=c(c d^3 2^(s−1)−L)`，再与 `m|9u`、`P/Q` 完整幂、Pell 邻行或原平方目标联立，尝试统一排除 `ρ≥12`；若高桥停滞，则转向 `odd--odd`，但必须保留完整奇幂分配。可否证的首个检查应同时恢复整数 `h,ν,n,j`、验证 `P,Q` 原源资格和 `n=c·2^s`，而不是只生成新的固定模数相容类。

接收结论：D-i3 本次只有 Round 12 的新交付，最强作者结果是 `POWER-RESULTANT`、`VROW1`、`H8–H11` 和 `BRIDGE4096`；Round 11 是冻结前置。它是 B699 的 i=3 条件分支，不能当作原生 ProD i6，也没有把完整 i3 或 B699 问题闭合。

## 6. 原件索引和字段口径

| 用途 | 真实相对入口 |
|---|---|
| 外层来源/成员映射 | [`PACKAGE_INDEX.md`](../PACKAGE_INDEX.md)、[`MEMBERS.json`](../MEMBERS.json) |
| D-i3 外层内容/日期边界 | [`meta/CONTENTS.md`](../sources/D-i3/meta/CONTENTS.md)、[`meta/TIME_BOUNDARY.md`](../sources/D-i3/meta/TIME_BOUNDARY.md)、[`meta/FINAL_DELIVERIES.md`](../sources/D-i3/meta/FINAL_DELIVERIES.md) |
| 本轮最终前沿 | [`round12/FRONTIER.json`](../sources/D-i3/round12/FRONTIER.json) |
| 本轮总报告/交接 | [`round12/REPORT.md`](../sources/D-i3/round12/REPORT.md)、[`round12/HANDOFF.md`](../sources/D-i3/round12/HANDOFF.md) |
| 失败与证据等级 | [`round12/FAILURES.md`](../sources/D-i3/round12/FAILURES.md)、[`meta/EVIDENCE_LEVEL.md`](../sources/D-i3/meta/EVIDENCE_LEVEL.md) |
| 对照旧 ProE/E | [`../../20260920-pro-results/notes/E.md`](../../20260920-pro-results/notes/E.md) |
| 对照旧 ProB/B | [`../../20260919-pro-results/notes/B.md`](../../20260919-pro-results/notes/B.md) |
| 同批另一根 ProD | [`../sources/ProD/SESSION_SUMMARY.md`](../sources/ProD/SESSION_SUMMARY.md) |

Round 12 的 `MANIFEST.json` 登记 31 个不含自身清单的文件，合计 `3,183,289` bytes；其中 `layers_8_11.json` 的 1,977,949 bytes 是形式层证书，不应被解释成 1,977,949 个原题实例。`ROUND12_SHA256_VERIFY.txt` 全部列出的普通成员均为 `OK`，外层 ZIP 校验也为 `OK`；这些接收回执只证明原件字节完整，不能提高作者结果的数学证据等级。后续引用 D-i3 时应优先使用上述 `sources/D-i3/round12` 保留路径，并在任何综述中同时写出“平衡、真实 `μ=1`、规范最小两底必要核心”的限定。
