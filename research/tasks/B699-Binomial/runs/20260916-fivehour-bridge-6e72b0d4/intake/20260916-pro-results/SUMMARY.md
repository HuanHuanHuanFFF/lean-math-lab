# B699 三份 Pro 外部交付摘要

更新：2026-09-16。本文是给下一位 AI 的 intake 导航，不是数学验收。

## 先看结论与证据等级

材料来自 ProA、ProB、ProD 三个独立上传包。下面的“闭合”“排除”“定理”均是作者报告/作者纸面证明的准确声明；本次只做了字节 intake 和文档读取，**没有执行附件代码、没有重跑证书、没有独立数学核验、没有 Lean**。因此三路新结果全部保持“作者纸面/作者证书交付，待定向核验”状态。

本次接收时的累计前沿参见[题目级 OVERVIEW](../../../../OVERVIEW.md)：R7 仍为 `{3,4,5,6,7,8,9}`；已有 i8/i9 单位窗口、i3 平方分支等局部闭合，H023 仍有未闭合底部。A 的 `58→57`、B 的 i3 路线压缩、D 的条件消费者都不能改写为整指标完成。

## 来源与归档映射

根包及固定字节信息来自同目录 [MEMBERS.json](MEMBERS.json)：

| 交付 | 原始包 | SHA-256 | 字节数 | 根包成员 |
|---|---|---|---:|---:|
| ProA | `E:/Download/B699-ProA-i9-H013-closure-evidence-20260916.zip` | `b71cc095bf8fe01afd6b8a5e4dd684e17fc350a29a92f4c0cfe27c3257195db2` | 56,829,019 | 65（63 个普通文件；2 个嵌套成员按映射保存） |
| ProB | `E:/Download/B699-ProB-origin-rigidity-and-prime-digit-refinement-20260916.zip` | `e3ff10f2b4fc4079acd1345b8cb1fa3f2903d360a7983f2cd08c0e1595008378` | 52,757 | 33（全部普通文件） |
| ProD | `E:/Download/B699-ProD-denominator-ladder-20260916.zip` | `8475c48ae4b6fbdadfa92b68729d18954db30cdc9ac1483b4cfb77dc0562a326` | 175,486 | 90（全部普通文件） |

ProA 根包中 `inputs/A-cyclotomic-adjacent-original.zip` 和 `evidence/modular_D55_probe.npz` 没有普通文件 `retained_path`；这是嵌套容器/二进制去重，不是凭空缺失。应按 [MEMBERS.json](MEMBERS.json) 的 SHA 映射读取；NPZ 的六个成员位于 `dependencies/ed442d4d53c6/`。摘要中的普通文件链接均指向当前实际存在的路径。

## ProA：H013 双核结式，作者声称 i9 一族 `58→57`

入口：[REPORT](sources/ProA/REPORT.md)、[notes/PROOFS](sources/ProA/notes/PROOFS.md)、[SOURCE_ADOPTION](sources/ProA/SOURCE_ADOPTION.md)、[HANDOFF](sources/ProA/HANDOFF.md)、[FAILURE_BOUNDARIES](sources/ProA/FAILURE_BOUNDARIES.md)。证据原入口为[双核证书](sources/ProA/evidence/two_kernel_certificate.json)、[精确左关系](sources/ProA/evidence/exact_left_relations.json)和作者[重放入口脚本](sources/ProA/code/reproduce.py)；报告声称入口状态 `PASS_COMPLETE_NEW_H013_CLOSURE_REPLAY`，本次未复跑。

**准确声明。** 合法范围是 `10≤j≤⌊n/2⌋`，`k=n−j`，`NC9` 指不存在同一素数 `p≥9`（因 9 合数，实际共同素数须 `p≥11`）同时整除 `C(n,9)`、`C(n,j)`。`H013` 指九个窗口 `n,n−1,…,n−8` 中 2、3、5、7 的最大完整幂都可选在位置 `{0,1,3}`，允许并列。作者声称

```text
NC9 ∧ H013  ⇒  n < 2^6400000,
```

不限制 `g=gcd(n,j)`、`α=n/g`、`β=j/g`、粗素数支持或幂指数。证明使用六条自由行 `r={2,4,5,6,7,8}`，行权 `(18,10,9,7,6,6)`，固定 `649×650` 整数 Taylor 矩阵。作者证书给两条精确整数左关系、647 阶子式模 `1000003` 的值 `943556≠0`，以此声称 `rank_Q=647` 并定义两个整数核；`N=0` 限制的 48 阶 Sylvester 行列式模辅助素数非零（报告值 `413371`）。单核非零分支给 `n<2^133908`，双核同时为零则 `n` 整除固定非零 `R0`，给 `n<2^6397824`，合为上述高度。

再接作者采用的旧 `A9-FINITE`、`A9-SCALAR`、`A14-CUBIC-BLOCKS`，作者声称 H013 的全部合法 `j` 都满足 Common9；这一步不是由 i14 整指标结论直接跨指标引用，而是依赖旧的局部立方契约。接冻结的 58 族位置分类后，作者声称：

- `α=3·2^a5^b`（`a≥4,b≥2`）的唯一 `(3,1)` 位置分支整体闭合，族计数 `58→57`；
- `α=2^a5^b` 的 `(1,3)`、`(3,1)` 被删除，只剩 `(1,2)`、`(2,1)`；56 个单高幂族仍在；
- 另有依赖旧 PC/QX 四位置接口的 `1200|n` 全行推论，不能并入无旧 content 依赖的 H013 主链。

**与当前前沿的关系。** 这是当前未闭合 i9 58 模板中的一个位置/双高幂方向，因而在作者声明成立时是对当前前沿的直接加强；它与当前已记的 i8/i9 `q_8/q_9` 单位窗口条件不是同一前提，输入重叠和历史消费者差集没有审计。`1200|n` 推论可能重合旧 400 倍数四位置结果，不应重复计功。

**失败边界/定向核验入口。** H012 只做过 13 个指定 `D=W` 对称模板的满列秩探针；不能推广为所有次数、权重、非对称核或联合算术均失败。剩余 `α=2^a5^b` 的 `a,b,g,β` 与粗支持仍无界，56 个单高幂族未动，没有保持 NC 的下降。需要核验时先查 `notes/PROOFS.md` §§2–7、证书的精确秩与零分支，再核对旧 A9/局部立方契约的实际来源；不要把作者重放日志或有限诊断当作 Lean/独立接受。

## ProB：i3 原点阶数刚性与两位奇素数行压缩

入口：[REPORT](sources/ProB/REPORT.md)、[notes/PROOFS](sources/ProB/notes/PROOFS.md)、[SOURCE_ADOPTION](sources/ProB/SOURCE_ADOPTION.md)、[HANDOFF](sources/ProB/HANDOFF.md)。证据入口包括[刚性输出](sources/ProB/outputs/rigidity.json)、[算术输出](sources/ProB/outputs/arithmetic.json)、[独立实现输出](sources/ProB/outputs/independent.json)、[重叠探针](sources/ProB/outputs/overlap_probe.json)和作者[重放脚本](sources/ProB/code/reproduce.py)；本次未执行。

**准确声明一：全次数方法边界。** 对任意非零 `F∈Q[X,Y]`，总次数 `D`、原点消失阶 `T`，若 `X+Y=1` 的 `(1,0),(0,1)` 至少 `a` 重消失，`X+Y=2` 的 `(2,0),(1,1),(0,2)` 至少 `b` 重消失，则作者声称

```text
T ≤ 4(D−a−b).
```

取等号时令 `d=D−a−b`，作者给出完整刚性分类：`a≥3d`、`b≥2d`，且恰为
`c[X²Y²(X−1)(Y−1)]^d (X+Y−1)^(a−3d)(X+Y−2)^(b−2d)`，`c≠0`。这说明“同一两源行统一重数 + 原点 g 消去 + 总次数”方法不能仅靠提高次数获得比 `1/4` 更好的指数效率；作者明确不把结论扩大到变量系数、非统一权、精确取整、更多窗口或完整 NC3。

**准确声明二：奇部行列式。** 在同一输入表示
`n=T(AX+B)`、`j=T(uX+v)`，其中 `T` 奇、`1≤A<T`、`B,X≥1`、`0≤u≤A`、`0≤v≤B`，令 `Δ=Av−Bu`、`m0=oddpart(AX+B)`。在 NC3 下作者声称

```text
T·m0² = oddpart(n)²/T ≤ |Δ| ≤ AB.
```

该式依赖旧 `ROW128`（随包保存的 [cubic_previous_PROOFS](sources/ProB/sources/cubic_previous_PROOFS.md)），不能只用较弱的 G4 代替。

**准确声明三：两位奇素数表示。** 对 `P` 奇素数、`E>f≥1`、`1≤A,B<P` 的
`n=AP^E+BP^f`，若存在 NC3，作者声称 `P≥5`、`f=1`、`E∈{4,5}`，并有
`P·oddpart(AP^(E−1)+B)^2≤AB`。因此该指定两位域的全部 `f≥2` 行被作者纸面链排除；`E=5` 还需 `λ=3`、`3A>P`、`Δ>0`、`Q∈{1,2}` 及 [Handoff 中的同一输入方程](sources/ProB/HANDOFF.md)。`P,A,B` 及剩余 E=4/5 参数仍无界。

**与当前前沿的关系。** R7 不变，也没有一般 i3 绝对高度或整指标闭合。当前本轮已有 i3 的 `b=3` 平方分支等局部结果；ProB 的奇素数两位表示和方法刚性是一般 i3 的互补路线，不声称覆盖或重开该平方分支。其 `f≥2` 行族是否相对于历史 ROW128/TW/旧消费者有严格新增差集，作者的约 2,437,420 条有限重叠探针未命中，但这不是全历史差集审计；不可计作已认证的新原题覆盖。

**失败边界/定向核验入口。** 不要把 `D≤12` 的矩阵检查当任意次数证明，也不要把作者另一实现当独立研究者。首个高收益核验是纸面刚性不等式及其等号分类，其次是 `ROW128` 的适用前提、完整 3 进位边界和 `f=1,E=4/5` 方程；E=5 之外没有被排空。

## ProD：幂次分母阶梯、条件 i5/i7 消费者与零分支

入口：[REPORT](sources/ProD/REPORT.md)、[PROOFS](sources/ProD/PROOFS.md)、[SOURCE_ADOPTION](sources/ProD/SOURCE_ADOPTION.md)、[HANDOFF](sources/ProD/HANDOFF.md)、[FAILURE_BOUNDARIES](sources/ProD/FAILURE_BOUNDARIES.md)。有限证据入口为[H02/H023 证书](sources/ProD/evidence/finite_certificate.json)、[高段完整性](sources/ProD/evidence/high_complete.json)、[回归](sources/ProD/evidence/regression.json)、[负测试](sources/ProD/evidence/negative_tests.json)及作者[分阶段检查入口](sources/ProD/code/run_checks.py)；本次未执行。

**准确声明一：分母阶梯。** 对 `g=gcd(n,j)`、`α=n/g` 定义
`d_h(n,j)=n/gcd(n,j^h)=α/gcd(α,g^(h−1))`，作者推导 `d_(h+1)|d_h` 和 `n/d_h≤g^h`。若同一输入已有 `g^T<K n^δ` 且 `T>δh`，则
`n^(T−δh)<K^h d_h^T`；这是把已有原点界转成可固定 `d_h` 的高度接口，不是 NC 保持的降阶变换。

**准确声明二：两个条件消费者。**

- `H02⁺`：五窗口中 2、3 的最大完整幂至少为 `8,9`，唯一最大位置分别为不同的 `0,2`（作者给出等价 `n mod72∈{18,56}`）；合法 `6≤j≤⌊n/2⌋`。H02⁺ 且 `d_6≤60` 的全部合法输入满足 Common5（即不存在满足这些前提的 NC5）。
- `H023`：七窗口中 2、3、5 的最大完整幂可在 `{0,2,3}` 取得，允许并列；合法 `8≤j≤⌊n/2⌋`。H023 且 `d_3≤420` 的全部合法输入满足 Common7（即不存在满足这些前提的 NC7）。

等价的作者接口是分别存在 `1≤c≤60` 或 `1≤c≤420` 使 `n|c j^6` 或 `n|c j^3`。条件是 `d_h` 的上界，不能改写成 `α≤60/420`，也不能遗漏完整 `p=i` 幂。作者为消费者接入的有限域是：H02⁺/NC5 且 `d_6≤60` 时 `n<2^132·60^7`（一般式为 `n<2^132 d_6^7`）；H023/NC7 且 `d_3≤420` 的路径下 `n<2^886`；后者**不是**所有 H023/NC7 的全局上界。

**准确声明三：完整零分支接口。** 对整系数非零 `F(J,K)`，若原点最低总次数为 `T` 且 `F(U,−U)=cU^d≠0`，则任意整数零点 `F(j,n−j)=0` 满足
`d_(d−T+1)(n,j)|c`。因此在 H02⁺ 中若 `d−T≤5`、`|c|≤60`，在 H023 中若 `d−T≤2`、`|c|≤420`，作者声称零分支可分别回传 Common5/Common7；要求实际证明整数系数、最低次数和反对角线单项式条件。

**与当前前沿的关系。** D 明确复用了当前本轮已记的 G5/G7/G14 原点界、QIG/SIXG 和 CRT/完整幂必要条件；新的候选增量是 `d_h` 梯形接口、有限末端接合和 ZERO 零分支，而不是重新验收这些旧前置。它没有关闭完整 i5/i7，也没有向 i6/i8 自动升级。当前 OVERVIEW 中 H023 的 `n<2^6572261` 是另一条更宽的 NC7/H023 记录；D 的 `2^886` 只在其 `d_3≤420` 消费者路径成立，二者无矛盾。

**失败边界/定向核验入口。** H02 剩余 `d_6≥61` 且 H023 剩余 `d_3≥421`；相关高幂底数不整除 `g` 时，增加 `h` 不会使分母阶梯下降。H023 约 311 次形式核尚未构造，也未证明其反对角线条件；受控低次原子池没有得到严格下降。两套有限程序由同一作者编写，不能当独立复核；20 类损坏测试和小回归不能替代无限证明。首个定向核验应检查候选多项式的 `F(U,−U)`、`T`、`d−T` 和 `|c|`，再核对其是否真的落入同一输入的 H02⁺/H023 前提。

## 给下一位 AI 的合并判定

1. **可优先核验的 A 入口：** `sources/ProA/notes/PROOFS.md` §§2–7 → `evidence/two_kernel_certificate.json` → 旧局部立方契约。若成立，它直接减少一个 i9 双高幂位置族，但仍留下 H012、56 个单高幂族和所有无界外层参数。
2. **可优先核验的 B 入口：** `sources/ProB/notes/PROOFS.md` §§2–6 → `sources/ProB/sources/cubic_previous_PROOFS.md` 的 ROW128 前提。它主要改变 i3 路线选择，不改变 R7；E=4/5 与一般混合块仍待处理。
3. **可优先核验的 D 入口：** `sources/ProD/PROOFS.md` §§2、4–7 → 当前本轮 G5/G7/G14 记录。它是条件消费者增强；核验通过后才考虑把 ZERO 用到现有多项式，不能把 `2^886` 当成全 H023 的界。

本次未新增 Lean、独立数学审稿或数学接受；包内源码与作者日志原样归档，发布与数学状态分开。本文件只记录作者声明、来源和可复用的核验入口。
