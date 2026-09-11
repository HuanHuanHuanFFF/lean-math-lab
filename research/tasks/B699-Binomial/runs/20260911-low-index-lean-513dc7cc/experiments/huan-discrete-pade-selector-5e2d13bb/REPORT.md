# 纯自然数的最小指数与双端容量

本目录提供两个**未编译 Lean 候选**，共 17 个公开定义/定理及对应 audit 指令。核心实际使用 `Nat.find`，同时得到误差阈值和两个端点的容量；辅助模块把短 dyadic basis 转成三个容量前提。未运行 Lean/Git，未重算五行大幂，未生成任何五行数据的伪验收。

## 实际最小选择器

`LeastExponent.lean` 定义

`leastExponent Z Y hZ := Nat.find (exists_power_above_four_mul Z Y hZ)`，

其中 Z,Y∈Nat，hZ 为 `1<Z`。存在性给出见证 `m=4Y`，直接调用当前 Lean core 已有的 `Nat.lt_pow_self` 证明 `4Y<Z^(4Y)`；并不展开这个幂，也不把此见证当选出的 m。

由真实 `Nat.find_spec` 和 `Nat.find_min`，候选依次证明：

1. `4Y<Z^m`；
2. 对所有 k<m，`Z^k≤4Y`；
3. Y>0 时 m>0，因此 `Z^(m−1)≤4Y`；
4. 若 `Y0≤Y`、M>0 且 `Z^(M−1)≤4Y0`，则 M≤m；
5. 若另有 `4Y<Z^M`，两个相邻幂证书给 m=M。

第 4 点不假设 M 已经是 Y0 处的最小值，也不需要那个额外阈值。反设 m<M，利用 Z>0 的指数单调性，有 `Z^m≤Z^(M−1)≤4Y0≤4Y`，与第 1 点矛盾。

Y=0 的细节保留：此时 m=0，阈值仍成立，但自然数截断的前项是 `Z^(0−1)=1`，不能断言它≤0。因此前项定理明确要求 Y>0；主容量定理通过 `0<Y0≤Y` 满足此条件。

## 容量的两个分支

设 J,alpha,M 为任意自然数，给定

`J≤Z^alpha`，`J^M≤Y0^alpha`，`4^alpha*J^(M+1)≤Z^(alpha*M)`。

在 `Y≥Y0>0`、M>0 和上述 M 前项条件下，同一个最小 m 满足 `J^m≤Y^alpha`。

m=M 时，`J^m=J^M≤Y0^alpha≤Y^alpha`。

m>M 时写 `m=M+1+k`，k≥0。由 rate 和 lookahead，

`4^alpha*J^m ≤ Z^(alpha*M)*(Z^alpha)^k = (Z^(m−1))^alpha ≤ (4Y)^alpha`。

右边等于 `4^alpha*Y^alpha`。只取消正常数 `4^alpha` 即得结论；没有除法或截断负指数。

`lookahead_rate_extend` 单独证明这个后续延伸式，`capacity_of_previous_bound` 单独证明两分支算术，再由 `leastExponent_capacity` 代入真实最小 m。末端 `leastExponent_two_capacities` 把同一定义、同一 Z,Y,hZ 的 m 同时用于 `Jp,alphaP` 和 `Jq,alphaQ`；两端没有各自选择不同的指数。

J=0 和 alpha=0 都在声明范围内，不额外要求它们为正。唯一被取消的因子是始终正的 `4^alpha`；自然数约定 `0^0=1` 与所有边界一致。

## 短幂基桥

`ShortPowerBounds.lean` 独立采用正自然数 b,v 和实际基础不等式

`p^b≤2^a`，`2^u≤Z^v`。

它证明下列**一般整数指数条件**分别足以得到 selector 输入，未实例化冻结五行：

| 小指数条件 | 得到的容量输入 |
|---|---|
| `a*v*N≤u*b*alpha` | `p^N≤Z^alpha` |
| `a*N*M≤b*H*alpha` | `(p^N)^M≤(2^H)^alpha` |
| `2*alpha*b*v+a*v*N*(M+1)≤u*b*alpha*M` | `4^alpha*(p^N)^(M+1)≤Z^(alpha*M)` |

rate 和 lookahead 两侧取 bv 次幂，base 两侧取 b 次幂；用短基础界比较到同底 2 的幂，再利用 b,v>0 的幂比较反推。所有重排都是自然数的乘加与幂恒等式。冻结数据里的严格 rate 指数比较可以直接弱化成这里足够的≤；没有把严格/非严格边界混用。

`conditions_from_short_bases` 合并三个结论。调用方取 `J=p^N,Y0=2^H` 后即可交给 selector 核心；种子里 `N=1000*c*k` 与 `J=(p^k)^(1000*c)` 的重排仍是直接的整数幂恒等式。该模块不证明 p 素性、不证明 Z=floor(W)、不接受任何新的具体数值行。

## 源接口与接受边界

实际读取了指定冻结目录的 `REPORT.md`、`NEXT_LEMMA.md`、`short-power-bases.json` 和实际义务文件名 `OBLIGATIONS.json`，并绑定其 FREEZE。只采用该计划的 selector 任务范围，未换 m0、权重或 seed。

核对的 API 是本机固定源码：

- mathlib `Data/Nat/Find.lean:72,75,80,83`：实际 find 定义、spec、min、min'；
- Lean `Init/Data/Nat/Lemmas.lean:1226`：`Nat.lt_pow_self`；
- Lean Nat.Basic 的左/右幂单调、乘法单调与正因子消去；
- Lean Nat.Lemmas 的 `Nat.pow_le_pow_iff_left`，要求被提升的指数非零。

代码依主线程真实薄导入反馈，使用显式 `Nat.le_trans`、`Nat.pow_*`、`Nat.ne_of_gt` 等，不依赖 order 的 `.trans` 解析。两个 mathlib Nat 导入、Ring 和原生 `Lean.Elab.Tactic.Omega` 的缓存均存在；没有使用缺失的 Mathlib.Tactic.Omega 模块、Real.log 或新分析缓存。

所有声明附 `#print axioms`，没有 placeholder、自造公理或 native_decide。当前只有静态检查，尚无 elaboration/kernel/传递公理验收。主线程可独立串行编译两个文件；它们没有对 run 内其他新候选的导入依赖。主线程应保留实际源 SHA、退出码和全部 audit 输出，失败时保留冻结原稿再修授权集成副本。

## 实际小检查

`check_small.py` 使用原始整数运算，在 `2≤Z≤6,0≤Y≤64,1≤Y0≤12,0≤alpha≤4,0≤J≤12` 的明确小域内核对最小值和满足三个条件的容量实例。结果：

- 325 组最小值/阈值，含 13 个前项等号边界；
- 15,003 个容量实例：m=M 有 3,564 个，m>M 有 11,439 个；含 J=0 的 4,705 个及 alpha=0 的 1,882 个；
- 515 个双端非平凡实例共用同一个 m；
- 六个小 basis 配置的 rate/base/lookahead 核对分别为 4,680、4,325、1,812 次，其中三条件同时成立 1,637 次。

合计检查脚本 0.023992 秒。它没有展开实际五行的 81k-bit basis 或 14M-bit 原始目标，也没有运行 Lean。这些数值检查支持边界审读，不能替代候选的全参数证明。

保留两个具体小反例，说明不能删掉关键机制：

1. **缺 lookahead：** Z=5,Y0=6,M=2,J=6,alpha=2,Y=7，rate、base、M 前项条件均成立，实际最小 m=3，但 `J^m=216>49=Y^alpha`。缺的 lookahead 确实失败。
2. **用存在性见证代替最小 m：** Z=2,Y0=Y=4,M=5,J=2,alpha=3，全部容量输入成立；最小 m=5 给 32≤64。但存在性见证 4Y=16 虽有 `4Y<Z^16`，却给 `J^16=65536>64`。

## 仍缺的原题依赖

这份纯 Nat 核心只解决所需 m 的统一选择与容量转译。五行短基础、M 相邻幂、A3 阈值的 kernel 数值接受，真实 Q/E/G 全参数界、实际归一化行误差、合法指数提取和五个无条件 cofactor 析取仍需接入。最终 `n<2^15360` 的全 j 原题消费者及高度以下的完整有限覆盖仍各自独立。

没有新的原题指标或新颖性声明；B 计数不变。
