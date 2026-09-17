# Pro D（2026-09-16—17）接收摘要

本摘要只整理 Pro D 七个作者交付及其来源边界，不构成仓库定向数学验收。总包入口见 [Pro D README](../sources/ProD/README.md)、[PACKAGE_INDEX.md](../PACKAGE_INDEX.md)；递归原成员到保留文件的精确对应以 [MEMBERS.json](../MEMBERS.json) 为准。以下 `dependencies/<hash>` 是按该映射定位的保留文件，不因原始 ZIP 未置于工作树而视为缺证据。

## 总体判定、目标与证据等级

- 七个原始包依次为 affine-splitting（`8b3dff…`）、residual-splitting（`1e93b6…`）、center-residual-cubic（`489628…`）、three-group-row4（`847b31…`）、paired-midpoint-square（`5384a5…`）、row3-saturation（`6aa73c…`）和 native-six-H02-closure（`816444…`）。原 ZIP 的完整 SHA-256、大小和嵌套成员均在 PACKAGE_INDEX/MEMBERS 中。
- 各轮报告所称“完成”均是作者纸面论证＋确定性整数/CRT/素性证书和同作者第二实现；没有 Lean、传递公理审计或外部独立数学审读。回归和坏证书测试只承担所列有限义务，不能替代无限证明。
- 七轮均未新增完整原题指标；`R7={3,4,5,6,7,8,9}` 不变。i5 的六族、i7 的二十四族没有因本包减少。新消费者相对全项目历史并集的严格差集也没有审计。

## 先消除三个容易混淆的边界

### 1. `H02⁺`、`D6` 与 D7 的原生 `H02_6`

- D2—D6 中的 `H02⁺` 是五窗口高幂位置条件：`n mod72∈{18,56}`，即最大完整 `2` 幂至少为 `2^3`、最大完整 `3` 幂至少为 `3^2`，两者均可在位置 `0` 与 `2` 取得且位置不同。它主要用于目标 `i=5`；原生 `i=6` 的旧 D6 还要另加 `n mod5∈{0,2}`，并从 **NC6 自身** 出发。
- D7 关闭的是 **原生 `i=6`** 的六窗口 `n,n−1,…,n−5`：`2,3,5` 各自的最大完整幂都能在位置 `0` 或 `2` 取得，允许并列。它不是 i5 结论，也不是把 NC5 转成 NC6。精确等价条件是
  `n mod8∈{0,2,6}`、`n mod9∈{0,2,6,8}`、
  `n mod25∈{0,2,7,10,12,15,17,20,22}`，共 `108` 个模 `1800` 类。
- D7 的 `H02_6` 包含低幂情形；例如 `n=8750` 的最大 2 幂只有 `4`，仍在定理内。因此不能把它缩写成 D2—D6 的 `H02⁺`。定理量词是 `n≥14`、`6<j≤⌊n/2⌋`，每个 `j` 有共同素数 `p≥6`（实际因 `i=6` 合数而 `p≥7`）。
- D7 只把旧 D6 子域的 20 个模类中的 18 个排出；余下确切为 `n mod1800∈{1280,1530}`。这两个类满足 `v5(n)=1`、`v5(n−5)≥2`，最大 5 幂在位置 5，属于 `H025`，不能误套 `H02_6`。一般 i6 并非只剩这两类；`i5` 的三底 `t` 区域也不因 D7 自动闭合。

### 2. `d_h` 的旧前置不属于 D7

旧总览中的幂次分母接口是

`d_h=n/gcd(n,j^h)=α/gcd(α,g^(h−1))`, `g=gcd(n,j)`, `α=n/g`。

旧作者消费者的精确前置是：目标 i5 需 `H02⁺` 且 `d6≤60`；目标 i7 需 `H023` 且 `d3≤420`。这是 `d_h` 的**大小上界**，不是 `d_h∣60/420`，也不是 `α` 的上界；这两项在本接收中仍只是作者材料的待定向核验声明。D7 的原生 i6/H02 定理没有 `d_h`、`d6` 或 `d3` 前置。不要用 D7 反推旧 d_h 消费者已经成立，也不要据此声称 i5 H02 已闭合。

### 3. 精确幂与 NC 方向

每轮 `q_r=(n−r)/s_i(n−r)` 都按当前目标 i 定义：删除全部 `p<i` 的完整幂，且当 i 为素数时仅删除孤立一次 i；高次端点幂完整留在 `q_r`。`q_r` 的分配是 NC_i 下的必要条件，不能把单行 NORM/部分避免回归反向当作 NC_i，也不能把完整幂降为根基。

## 七个阶段的有序结论

### D1 — 仿射分拆（2026-09-16）

入口：[REPORT](../dependencies/1e93b6d57429/sources/affine/REPORT.md) · [PROOFS](../dependencies/1e93b6d57429/sources/affine/PROOFS.md) · [SOURCE_ADOPTION](../dependencies/1e93b6d57429/sources/affine/SOURCE_ADOPTION.md)。原 ZIP 的 README 成员因字节去重保留于 [`dependencies/8b3dff1b1f3b/README.md`](../dependencies/8b3dff1b1f3b/README.md)；其余根报告/证明/采用文件映射见上述链接。

对 `i=4,…,8`，若 NC_i 且某行小部 `s_i(n−r)` 整除
`K_i=(6,60,60,420,420)`，则 `q_r` 至少分到两个不同 `b∈{0,…,r}`，即至少两个 `gcd(q_r,j−b)>1`。完整仿射消费者的量词为

`n=cQ+r, j=aQ+b, Q>r, 0≤b≤r, c∣K_i`,

其中 `Q` 任意，不预设素数、素数幂或指数；它排空了 `c∣K_i` 的全部有限模板。另有 `ω_{≥i}(C(n,i))≥2i−|H|` 的合格源素数下界（粗略门槛为 i4/5/6/7/8：6/8/9/11/12）和 `n=cP^e+r` 的完整素数幂行消费者。

这是新接口和有限小部域，不是一般 `c` 的统一上界：c 可在 `K_i` 除子域外无界，粗块的底数、完整指数、`Q`、`n` 仍无界。其新链采用固定提交 `67b494c…` 的单位窗口 `U_i` 合同；该合同所含历史 Bugeaud/Yu/格与末端未由本轮重放，不能将 D1 写成自含 Lean 证明。

### D2 — H02⁺ 残量分拆（2026-09-16）

入口：[REPORT](../dependencies/489628d85193/sources/residual-splitting/REPORT.md) · [PROOFS](../dependencies/489628d85193/sources/residual-splitting/PROOFS.md) · [SOURCE_ADOPTION](../dependencies/489628d85193/sources/residual-splitting/SOURCE_ADOPTION.md)。

本轮主域是目标 i5 的 `H02⁺`。完整 NC5 排除了 `q3` 只落在内部或只落在端点、以及 `q4` 只落在内部的分配。因此至少有

`gcd(q3,jk)>1`, `gcd(q3,(j−1)(k−1))>1`, `gcd(q4,jk)>1`。

对 `s=s5(n−1)∈{1,5}`、`g=gcd(n,j)`，规范残量
`t=sjk/(g²(n−1))=βγ/q1`（这里 q1=(n−1)/s）是正整数；完整分配给出 `e3=gcd(q3,t)>1`、`e4=gcd(q4,t)>1`、`gcd(e3,e4)=1`。故
`ω5*(t)=#{p>5:p∣t}+1_{25∣t}≥2`、`t≥77`，并排除形如 `t=2^u3^vP^a`（P 任意素数、指数任意）的单合格底数族。三条缺槽分支分别取得绝对高度并以全指数 CRT 排空 33 个末端；这不构成一般 H02 的绝对有限化。

本轮还给目标 i4 的独立短消费者，以及从 Common5 转到 i6 的桥，但桥明确要求 `n mod25≥5`、`j≥7`；没有 `NC5⇒NC6`。D2 只采用旧目标5 QIG 的正确完整幂版本，不采用旧单位窗口/Bugeaud/Yu 或 NC3 专用结果。

### D3 — 中心分配与三次乘积界（2026-09-16）

入口：[REPORT](../dependencies/489628d85193/REPORT.md) · [PROOFS](../dependencies/489628d85193/PROOFS.md) · [SOURCE_ADOPTION](../dependencies/489628d85193/SOURCE_ADOPTION.md)。

D3 补上 i5/H02⁺ 的 `q4` 中心组：`M4=gcd(q4,j−2)>1`。对任意目标自身的 `i≥5`、`n≥90`、严格半行 `i<j<n/2`，令

`W=βγ(γ−β)(j−1)(k−1)`, `H_i=∏_{p<i,p素数}p^{v_p(W)}`,
`M2=gcd(q2,j−1)`, `A_i=s_i(n−1)^2s_i(n−3)s_i(n−4)`，

其中 `H_i` 是 W 中所有 `p<i` 素数的完整幂部分，得到作者纸面必要界

`50 H_i(gM2)^3 < A_i n`。

在原生 i6 域 `D6=H02⁺+n mod5∈{0,2}`，相应为 `25H6(gM2)^3<3n`，并重新从 NC6 得到 row3 端点/内部、row4 端点/中心非空；`t6` 至少含两个不同的 `≥7` 底数，故 `t6≥77`。i5 的小 g 纯幂端依赖旧 QIG，i6 的 row4 端点依赖旧 R4_INNER 核但按目标6完整幂重新接 240 行；这些依赖均保持作者等级。

### D4 — row4 三组与两底残余（2026-09-16）

入口：[REPORT](../dependencies/847b31f41863/REPORT.md) · 原 `PROOFS.md` 因字节复用保留为 [three-group-row4 proofs](../dependencies/6aa73c2de3f4/sources/B699-ProD-three-group-row4-20260916-proofs.md) · [SOURCE_ADOPTION](../dependencies/847b31f41863/SOURCE_ADOPTION.md)。

在 i5/H02⁺ 中，row4 的端点组 `b=0,4`、近侧组 `b=1,3`、中心 `b=2` 全部非空；故 `q4` 至少三个不同底数，`ω(q4)≤2` 的整行消费者闭合。原生 i6/D6 也有对应结论。D4 还保留一般线性残量商 `V=R/(f3M4)` 和 `HR∣V`，以及两底 `t` 时 `M2=q2`；若 `q2>1`，则 `q2²f3f4∣L−s`、`Ω_i(L−s)≥3`、`L−s≥7007`。`q2=1` 的进一步去除只有在显式采用冻结单位窗口合同时才可用，默认 D4 consumer 不自动启用。

这些结论仍没有排掉 `t` 至少三底、`L−s` 多底、g 和完整指数共同无界的区域。

### D5 — 中点平方精度（2026-09-16）

入口：[REPORT](../dependencies/5384a5ddd389/REPORT.md) · 原 `PROOFS/HANDOFF` 保留为 [paired-midpoint proofs](../dependencies/6aa73c2de3f4/sources/B699-ProD-paired-midpoint-square-20260916-proofs.md) / [handoff](../dependencies/6aa73c2de3f4/sources/B699-ProD-paired-midpoint-square-20260916-handoff.md) · [SOURCE_ADOPTION](../dependencies/5384a5ddd389/SOURCE_ADOPTION.md)。

在目标自身 `i≥5`、`n≥80`、`3j≠n+2` 下，`M2=gcd(q2,j−1)`、`M4=gcd(q4,j−2)` 和分子完整小部 `H` 给出

`56 H(gM2)^2 M4 < A' n`,

其中 `A'=s_i(n−1)^3s_i(n−3)s_i(n−4)`，对应正整数商保留完整的 `(3j−n−2)(2n−3j−2)`。`H02⁺/i5` 特化为 `112T0(gM2)^2M4<375n`，D6/i6 特化为 `<3n`；两底 t 时可用 `M2=q2`。i7/H023 只有 `M6²` 的相对界，不是 H023 全域闭合。`3j=n+2` 的零分支是一般目标的显式缺口；H02⁺自动避开它。

### D6 — row3 四槽与三底门槛（2026-09-16）

入口：[REPORT](../dependencies/6aa73c2de3f4/REPORT.md) · [PROOFS](../dependencies/6aa73c2de3f4/PROOFS.md) · [SOURCE_ADOPTION](../dependencies/6aa73c2de3f4/SOURCE_ADOPTION.md)。

在 i5/H02⁺ 及独立原生 i6/D6 中，row3 的四个具体余数槽 `b=0,1,2,3` 全部非空，因此 `q3` 至少四个不同底数。结合前轮的 row4 非空，规范 `t` 至少含三个合格底数，`t≥1001`；因此上一轮的整个两底 t 区域（底数、指数、g 均无界）已闭合。i5 的合格底数计数按 `p>5` 加 `25∣t`，i6 按 `p≥7`；不能把两者混成一个目标。

有限域中 i5 的 47 个完整 CRT 末端已逐行做全部源 CRT 交集，**47 行交集全部为空**；i6 全部由 QIG/SIXG 排掉。这些数字是阶段内有限接受记录，不是全项目新增输入计数。三底以上仍是主残余：若 `t` 恰有三个合格底数，D6 继续采用 `M2=q2`；当 `q2>1` 时

`q2² B1 B2 f4 ∣ g²t−s`; 右端至少含四个合格底数，且 `g²t−s≥119119`,

其中 `B1,B2` 是 row3 的两个内部/相应完整分配块、`f4` 是 row4 近侧块。该接口尚未闭合三底区域，且 q2、`L−s`、g 和完整指数仍可无界。D6 接受 QIG/SIXG、前轮非空结果作为明确来源，未把它们重标为本轮独立人审或 Lean。

### D7 — 原生 i6 六窗口 H02 整行闭合（2026-09-17）

入口：[REPORT](../dependencies/816444993dbf/REPORT.md) · [PROOFS](../dependencies/816444993dbf/PROOFS.md) · [SOURCE_ADOPTION](../dependencies/816444993dbf/SOURCE_ADOPTION.md) · [HANDOFF](../dependencies/816444993dbf/HANDOFF.md)。

主定理只针对 `i=6` 的 `H02_6`，从 NC6 自身重建完整幂进位。使用旧 i7/H026 的 16 次整数核只作为构造数据，并重新核对目标6的 160 条 Taylor 零条件、`j,k≥7` 的 147 项严格正性、原点阶 2 以及权重 `(8,4,3,2)`；不使用旧 NC7 反设或第六位置 `n−6`。得到

`q1^8 q3^4 q4^3 q5^2 ∣ F(j,k)/g²`,
`s_6(n−1)^8s_6(n−3)^4s_6(n−4)^3s_6(n−5)^2≤2^6·3^4·5^2=129600`,

从而 `n g²<2^71` 的分支高度。该高度之后完整枚举所有小素数幂对与位置，二份恢复程序得到相同的 911 行；QIG 排 829 行、SIXG 排 81 行，唯一终端为 `n=8750`，由素数 `8747=n−3` 覆盖 `7≤j≤4375`。这是作者声称的完整 H02_6 证书，仍非 Lean/外部独立验收。

D7 的正向链对 D2—D6 的 row3/e4/f4 结论是独立的；它仅冻结采用正确目标6版本的 QIG/SIXG，并把旧 H026 核逐系数重验为构造数据。D7 不能把 i5 H02⁺或一般 i6/H025 尾部一并关闭。

## 共享接口、独立性与剩余前沿

- **可复用接口：** D2 的 `t≥77`（i5 H02⁺）、D3 的 `25H6(gM2)^3<3n`、D4 的 `M2=q2` 两底接口、D5 的中点平方界、D6 的三底门槛 `t≥1001`，以及 D7 尾部的 `(gq5)^2<2^62n`。这些都是必要条件/消费者接口，不能单独反推原题反例不存在。
- **继承关系：** D1 消费旧 `U_i` 合同；D2 仅冻结正确目标5 QIG；D3 另接旧 R4_INNER 和 QIG；D4/D5/D6 接前轮非空/端点结果，部分可选地接单位窗口；D7 主定理不依赖 D2—D6 的非空消费者，只采用正确 i6 的 QIG/SIXG 和旧 H026 核数据。所有“采用”仍保留原作者证据等级。
- **i5 状态：** i5 H02⁺已拥有中心、row4 三组、row3 四槽和两底/低底消费者；i5 的三底及以上残余、一般粗支持、g、指数仍无界。没有 i5 的完整 H02 定理，D7 不改变这一点。
- **i6 状态：** `H02_6` 的 108 类整行消费者按作者包已闭合；旧 D6 的 H025 尾部 `1280/1530` 仍有 `q5` 相对界但 5 的完整指数、q5、α、g、j 无界。一般 i6 仍未闭合。
- **下一检查：** 只能在保留目标标记、完整幂和 NC 方向的前提下联立 H025 尾部的 `n−5`、α 形状、row2–4 分配；不能增长有限样本来代替这个无界问题，也不能把 `H02_6` 套到 H025。

原成员与保留路径的特殊去重映射（D4 的根 `PROOFS.md`、D5 的根 `PROOFS/HANDOFF`）已由 MEMBERS.json 精确登记；本文不重新复制原 ZIP 字节。作者纸面、证书、来源采用、Lean/人审和发布状态仍须由 Leader 逐项定向验收。
