# ProB（2026-09-16→17）接收摘要

## 接收边界与证据等级

本页整理 `B699-ProB-since-OVERVIEW2026-9-16-11-to-2026-09-17.zip`（ProB 根包 SHA-256：`f1c68dbed0e16fba831d5a4b483cef4be094108fe7efd62f39f2d867505b4e9a`）中的七个阶段。原始包保留在用户下载位置，普通文件、包成员与旧路径映射见 [PACKAGE_INDEX](../PACKAGE_INDEX.md) 和 [MEMBERS.json](../MEMBERS.json)；阶段索引见 [ROUND_INDEX](../sources/ProB/ROUND_INDEX.md)。

以下“证明/闭合”均是作者纸面推导，辅以作者第二实现的精确整数回归或证书；没有本仓 Lean 编译、公理审计、独立研究者数学复核或人类审稿。有限回归没有被当作无限证明，阶段之间也没有完成与全部历史消费者并集的严格差集审计。故本页是作者成果的有界接收摘要，不提升数学接受等级。

原题的 i=3 片段为：对自然数 `n` 和 `4≤j≤⌊n/2⌋`，存在同一个奇素数 `p≥3` 同除 `C(n,3), C(n,j)`。记 `Common(n,j)` 为该命题，`NC3` 为其否定。七阶段之后完整指标仍为 `R7={3,4,5,6,7,8,9}`；没有得到一般 i=3 的绝对高度或完整闭合。

## 共用接口和不可混用的边界

完整 `NC3` 的初等必要前置在各稿中按原字节重述：

- `4∣n`、`j<n/2`；令 `g=gcd(n,j)`、`α=n/g`，则 `α=c·2^s`，`c∈{1,3}`，且 `c=3` 仅在 `v₃(n)=1` 时允许。
- 完整源幂给出
  `W1: n−1 ∣ 3j(j−1)`，
  `W2: n−2 ∣ 6j(j−1)(j−2)`。
  `p=3` 的孤立一次取消与高次 3 幂必须分开处理；不能把完整幂弱化为只剩系数 3、6 的整除。
- 置 `k=n−j`，实际 Vandermonde 内容为
  `F(Y)=Σ_{r=0}^3 C(j,r)C(k,3−r)Y^r`，
  `H=content(F)`，`L=C(n,3)/H`。阶乘恒等式和 Bézout 给 `L∣C(n,j)`，所以 `L` 是两项二项式的共同除子，不能写成实际 gcd 的等号。实际变换为
  `Φ(Z)=Z^3F(1−1/Z)=C(n,3)Z^3−jC(n−1,2)Z²+C(j,2)(n−2)Z−C(j,3)`，
  `Ψ=Φ/H=LZ³−bZ²+cZ−d`。

stage 1、3、4 的“纯整数核”只是在给定数字盒和大小条件时排除 `W1/W2`，stage 4、5 的内容核还使用 `NC3⇒L` 为 2 幂的实际输入后果；它们不是把两个弱窗口反向当成 `NC3`。`L`、`H`、共同内容商和 `Z₁` 也不能互相替换为实际 gcd。

## 七阶段时间线和精确结果

### 01 — all-odd-prime-two-digit：所有奇素数两位行

原文：[REPORT](../sources/ProB/01_all-odd-prime-two-digit/key_files/REPORT.md) · [PROOFS](../sources/ProB/01_all-odd-prime-two-digit/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/01_all-odd-prime-two-digit/key_files/HANDOFF.md)。

**RADIX2（无条件整行族）**：对任意奇素数 `P`，整数 `E>f≥1`，以及 `1≤A,B<P`，令

`n=A P^E+B P^f`。

则对**全部**合法 `4≤j≤⌊n/2⌋` 有 `Common(n,j)`；`P,A,B,E,f,n,j` 都可无界，且 `P` 不必是最终见证。这里确实要求 `f≥1`（即 `P∣n`）；不能删掉最低指数。一个非零位的情形也已包含。`P=3,f=1` 没有误用 3 进制支配，而是通过 `4∣n`、`A=B`、2 进估值和旧行界另行结束，所以 RADIX2 的量词仍覆盖所有奇素数、包括该分支。

**BLOCK（更宽的无条件整行族）**：对任意奇素数 `P`、`f≥1`、`e≥3f`、`1≤A,B<P^f` 且 `P∤B`，

`n=P^f(A P^e+B)`

的全部合法 `j` 也成立。`P=3,f=1` 回到 RADIX2 的孤立 3 分支；其他情形用纯整数 KERNEL。A、B 的每个块都可以随 `f` 增长，故不是固定非零位数表。

核心 KERNEL 仅假设 `T≥3` 为奇数、`X≥T³`、`1≤A,B<T`，`n=T(AX+B)`、`z=T(uX+v)`、`0≤u≤A`、`0≤v≤B`、`0<z<n`；在此范围 `W1/W2` 不可同时成立。把第一窗口商的余式送入第二窗口时保留完整 `T`，得到 `T(n−2)` 的大除子，再以严格大小矛盾结束。它不假设素性、偶性、`α` 形状或 `NC3`；返回原题时才使用必要前置 `NC3⇒W1,W2`。

### 02 — many-block-first-window：任意多等距块的首窗口禁形

原文：[REPORT](../sources/ProB/02_many-block-first-window/key_files/REPORT.md) · [PROOFS](../sources/ProB/02_many-block-first-window/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/02_many-block-first-window/key_files/HANDOFF.md)。

令 `p` 为素数、`f≥1`、`T=p^f`，`k≥1`，

`A(X)=Σ_{i=0}^k a_iX^i`，`a_0≥1`、`a_i≥0`、`1≤a_k<T`、`p∤a_k`；

`B(X)=Σ b_iX^i`，`0≤b_i≤a_i`，且 `B≠0,A`。记 `S=Σa_i`、`S₂=Σa_i²`。

**POLY（全次数、全 f）**：`T A−1` 在 `Q[X]` 中不整除 `(T B)(T B−1)`；不要求 `gcd(k,f)=1`，也不要求 `TA−1` 不可约。由伪除法得到纯整数的

`K_gen=6S(TS+1)(TS)^(k+1)`；若 `x≥K_gen`，`n=T A(x)`、`j=T B(x)`，则 `n−1∤3j(j−1)`。

当额外 `gcd(k,f)=1` 时，加权赋值给出不可约性和结式非零；较短的充分阈值为

`2x≥3T²S₂²`。

原题整行回传要求 **`p` 为奇素数** 且 `p≥5` 或 `f≥2`，`k≥1`，`0≤a_i<T`，端点 `a_0,a_k>0` 且 `p∤a_0a_k`，`x=p^e`（`e≥1`），并满足上面的 GENERAL-GAP 或 FAST-GAP。此时对**全部**合法 `j` 成立；`p,f,k,e` 和块数、数字均可增长，但这是带显式长间隔/高度阈值的条件消费者。纯整数 POLY 虽允许 `p=2`，不能把它带入这个奇素数原题 ROW。`p=3,f=1` 也不能直接作数字支配。

它处理的是等槽位 `0,e,2e,…,ke`（允许空槽），没有覆盖任意非等距短间隔。`gcd(k,f)=1` 不能从 FAST-GAP 删除；精确零结式例为 `9(X²+3X+1)−1=(3X+1)(3X+8)`。新成果没有给一般 i=3 高度，也没有证明与历史 ROW/TW 并集的非空差集。

### 03 — quotient-residue-unrestricted-tail：无界尾块

原文：[REPORT](../sources/ProB/03_quotient-residue-unrestricted-tail/key_files/REPORT.md) · [PROOFS](../sources/ProB/03_quotient-residue-unrestricted-tail/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/03_quotient-residue-unrestricted-tail/key_files/HANDOFF.md)。

纯整数 KERNEL 的精确量词是：`T≥3` 奇整数、`1≤A<T`、`B≥1`、`X≥3AB²`；`n=T(AX+B)`、`z=T(uX+w)`、`0≤u≤A`、`0≤w≤B`、`0<z<n`。则 `W1` 与 `W2` 不可同时成立。不要求 `B<T`、`T` 为素数幂或 `X` 为幂；关键是第一商 `q` 被压到唯一的 `0<q<T` 模代表，第二窗口给 `n−2∣L`，再以 `0<L<n−2` 矛盾。`B=1` 另有严格分解，不能直接套 `B≥2` 的粗界。

整行 ROW 要求 `P` 奇素数、`f,e≥1`、`T=P^f`、`1≤A<T`、`B≥1`、`P∤B`、`P≥5` 或 `f≥2`，并有 `P^e≥3AB²`；`n=P^f(AP^e+B)` 的全部合法 `j` 成立。B 的位数、非零位数和位置均无界；A 仍要求 `<T`，且此 ROW 明确排除 `P=3,f=1`。这是整族充分条件，不是一般尾块结论。

另有近高次幂的必要式：若 `NC3`、`P∣n`、`P` 为活跃奇源（`P≥5` 或 `v_P(n)≥2`），最低位为 `f`、最高位为 `E`、次高位为 `F`、最高数字为 `a`，写 `n=P^f(aP^(E−f)+B)`、`1≤a<P`、`P∤B`，则

`P^(E−f)<3aB²`，从 `B<P^(F−f+1)` 得 `E+f≤2F+3`。

这是必要而非充分条件；`F`、P、位数和指数仍可无界，不能称绝对高度。另有精确算术行：`P≥5`、`1≤a<P`、`E≥2`，若 `r` 为正 P 倍数、`r<P^E`、`3ar²≤P^(E+1)`，则 `n=aP^E+r` 整行成立。

### 04 — content-root-two-thirds-tail：内容有理根与带符号提升

原文：[REPORT](../sources/ProB/04_content-root-two-thirds-tail/key_files/REPORT.md) · [PROOFS](../sources/ProB/04_content-root-two-thirds-tail/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/04_content-root-two-thirds-tail/key_files/HANDOFF.md)。

**K（使用完整 NC3 内容后果）**：`T≥2`、`1≤A<T`、`B≥1`、`X≥AB`，并满足

`T X² ≥ A B²(TB+2)`。

若 `n=T(AX+B)`、`j=T(uX+w)`、`0≤u≤A`、`0≤w≤B` 且 `j` 合法，则 `Common`。简单但更强的替代条件是 `X≥AB` 与 `X²≥2AB³`。此 K 不是两个弱窗口的无条件禁形：证明要用同一实际输入的 `NC3`、内容商 `L` 为 2 幂、精确有理根分母和 `6cg(n−2)` 的余式下界。

对应 ROW 要求 `P` 奇素数、`f,e≥1`、`T=P^f`、`1≤A<T`、`B≥1`、`P∤B`、`P≥5` 或 `f≥2`，再加 `X=P^e≥AB` 与上述 `G`。B 可任意复杂。该门槛把尾部规模推进到约 `X^(2/3)`，但没有一般短间隔结论。

**THREE（无条件整行族）**：`P` 奇素数、`f≥1`、`a,b,c∈{1,…,P−1}`、`x=P^e`、`e≥4`，则

`n=P^f(ax²+bx+c)`

的全部合法 `j` 成立；`P=3` 时同一等距三位行对全部 `e,f≥1` 成立。若 `P≥5` 的该三位行仍有 NC3，则 `(e,f)` 只能是 `(2,1),(3,1),(3,2)`；P 和数字系数仍无界，三个模板没有排空。阶段 4 还给出在活跃奇源 `P` 的表示下 `NC3⇒2E+f≤3F+4` 的必要式，但同样不控制 `F`。

失败边界包括：去掉 NC3 后 `n=28,j=14` 可有实际内容有理根；真实 W1 输入 `n=3916,j=1045` 的提升 `h=-4`，所以不能假设模提升非负；`P=11,e=3,f=1,a=b=c=10` 不满足新门槛。`P≤1000` 的探针没有找到已知高 `v₂` 残余行，但不能外推到所有 P。

### 05 — irreducible-cubic-unrestricted-head：不可约性和无头块限制

原文：[REPORT](../sources/ProB/05_irreducible-cubic-unrestricted-head/key_files/REPORT.md) · [PROOFS](../sources/ProB/05_irreducible-cubic-unrestricted-head/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/05_irreducible-cubic-unrestricted-head/key_files/HANDOFF.md) · [来源采用](../dependencies/e22b252dc6bf/SOURCE_ADOPTION.md)。

**IRR**：若 `4∣n`、输入合法，实际 `H,L=C(n,3)/H` 满足 `L` 是 2 的幂，则实际 `Φ`、`Ψ=Φ/H` 在 `Q[Z]` 不可约；完整 `NC3` 蕴含该条件。不可约性来自完整 2 赋值和有理根定理：任意有理根的既约分母恰为 `L`，实际系数把候选压成 `3j/n` 或 `3j/n−1`，两者分别由正值和 `4n−9∣45` 排除。不能反向由不可约性推出 `NC3`，也不能对任意实际三次无条件称不可约；例如 `(n,j)=(68,34)` 的 `L=134` 且有根 `1/2`。

**GAP-HEAD（充分消费者）**：任意正整数 `T,A,B,X`，只要

`X²≥2AB³`，`TX≥4A²B`，

令 `n=T(AX+B)`、`j=T(uX+w)`、`0≤u≤A`、`0≤w≤B`，且输入合法，则 `Common`。允许 `A≥T`、`T=1` 和偶 T；这是实际内容不可约性加偏差展开，不要求旧 ROW 的 `A<T`。

**ROW**：P 奇素数、`f,e≥1`、`T=P^f`、`X=P^e`、`A,B` 任意正整数、`P∤B`、`P≥5` 或 `f≥2`，并满足上述两个门槛，则该行全部合法 `j` 成立。**BLOCK**：同一活跃源条件下，任意 `f,r≥1`、`1≤A,B<P^r`、`P∤B`，

`n=P^f(A P^(3r)+B)`

整行成立；r 与 f 无大小关系，内部数字任意。它是带门槛的无界族，不是一般三短槽位的闭合。

作者还完整诊断了旧同源切分对标准三短模板 `n=P^f(aP^(2e)+bP^e+c)`、`(e,f)∈{(2,1),(3,1),(3,2)}` 的能力边界：`d≤e` 或 `e<d<2e` 时至少一个 GAP-HEAD 门槛必失败，`d=2e` 时若新核可过则旧核已可过。因此不能继续只换同一两条门槛的切分来排空这三个模板；其中 P、a、b、c 仍无界。

### 06 — critical-square-odd-divisor：平方二阶矩和规范非平方

原文：[REPORT](../sources/ProB/06_critical-square-odd-divisor/key_files/REPORT.md) · [PROOFS](../sources/ProB/06_critical-square-odd-divisor/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/06_critical-square-odd-divisor/key_files/HANDOFF.md) · [来源采用](../dependencies/0895b46b68cc/SOURCE_ADOPTION.md)。

**SQ（无界数对子族）**：对全部合法 `n,j`，若

`j(n−j)(n−1)`

是整数平方，则 `Common(n,j)`。这是一个完整的算术子域，不是整行、整指标或一般 `NC3` 闭合。

**SQ-L（同层见证与量化）**：在 `4∣n` 的合法输入上定义上述实际 `H,L`，令 `V=oddpart(L)`。若平方条件成立，则 `V>1` 且 `V` 同时整除 `C(n,3),C(n,j)`。令

`V₀=gcd(V,n)`、`V₁=gcd(V,n−1)`、`V₂=gcd(V,(n−2)/2)`，则

`n−2≤162 V₀^4 V₁² V₂≤162V^4`；

若 `j` 奇，`8(n−2)≤81V₀^4V₁²V₂`；若 `V₀=1`，`n−2≤162V²`。`V=1` 时只有九个完整源状态，回收出的整数点 `(n,j)=(4,1),(4,3),(12,1),(12,11)` 全不合法，因而平方消费者没有待枚举的无限底部。

在完整 `NC3` 下另有 **NSQ**：以同一输入的规范 `λ,R,C₀,C₁,C₂` 定义，`λ R C₀C₂` 不是平方，所以整个 `R=λC₀C₂u²`（`u≥1`）分支不可能；这不控制任何 `C_s`、`R`、`min C_s`。同时实际 `Ψ'` 不可约；这不是“Ψ 不可约”的自动推论。

与 ProE 的重叠：ProE Round 2 已有完全相同的 SQ 命题，并另给真实规范商 `t` 的 `t≤100000` 消费者；见 [ProE 时间线](../sources/ProE/SESSION_TIMELINE.md)、[ProE Round 2 REPORT](../sources/ProE/rounds/02-squareclass-quadratic/REPORT.md)。因此 B06 的 SQ 不能与 E02 作为两份独立全局闭合相加；B06 应登记的增量是分源奇部 `V` 的定量下界、九状态完备底部和 NSQ 接口。E02 的 `t` 仍无界，B06 没有补上该路线的统一上界；两稿都没有给一般非平方域闭合或 R7 减少。

### 07 — cubic-ramification-ray-obstruction：分歧支持和射线类群障碍

原文：[REPORT](../sources/ProB/07_cubic-ramification-ray-obstruction/key_files/REPORT.md) · [PROOFS](../sources/ProB/07_cubic-ramification-ray-obstruction/key_files/PROOFS.md) · [HANDOFF](../sources/ProB/07_cubic-ramification-ray-obstruction/key_files/HANDOFF.md) · [工作目录来源](../sources/ProB/07_cubic-ramification-ray-obstruction/latest_workdir/SOURCES.md)。本阶段的外部数学输入是 Sutherland 的 MIT 18.785 讲义中 Hensel、射线类群精确列、导子和 Artin 互反；PDF 保存尝试有 DNS 失败记录，未伪造本地 PDF 字节。阶段包短标识为 `d0fcb78d556c`。

对同一规范输入定义

`S(R)={p≥5 素数 : 3∤v_p(R)}`，`q_R=∏_{p∈S(R)}p`。

**RAM（结构性定理）**：在完整 `NC3` 下，实际不可约三次 `Ψ` 的分裂域 `E`，相对二次预解底域 `K=Q(√Disc Ψ)`（判别式为平方时 `K=Q`），是非平凡循环三次扩张。对 `p≥5`，上方分歧恰由 `p∈S(R)` 给出；2 上方全部分裂，且 `p≥5`、`p∣U` 的上方也全部分裂；导子整除 `27q_R O_K`，无无限素点部分。这里 `R` 的整立方倍数被分歧支持消掉，`U` 的平方因子不改变底域，但没有得到 R、U 或原 `n,j` 的界。

**RAY（必要条件）**：`NC3` 必须产生射线类群 `Cl_(27q_R)(K)` 的非平凡三阶特征，杀掉 2 和 `p∣U` 的上方素理想类；若 K 为二次域，非平凡自同构 `τ` 对特征取逆。不存在该特征即可排除该输入。它是必要条件而非等价式；固定 `K,S(R)` 时群是有限对象，但 K、活动素数、`R,U,C_s` 和群中对应整数元素仍可无界，有限射线群不提供原题绝对高度。本轮没有实现一般数域类群算法。

**CUBE-1/5（完整规范分支消费者）**：`NC3` 不能同时满足

`R=3^a w³`（`a≥0`、`w≥1`、`3∤w`）

和 `3λU=z²` 或 `3λU=5z²`（`z≥1`）。这不是固定两个 `C_s`，也不是整行；`a,w,z,g,C_s` 均可无界。

**实际四系数消费者**：对任意合法 `n,j` 计算实际 `Ψ`、其不变量 `I,J,ΔΨ`，令 `G6` 为 `gcd(I,J)` 去掉全部 2、3 幂后的部分。若 `G6` 是整数立方且 `ΔΨ` 是平方或 5 倍平方，则 `Common`。即便 `j=n/2` 也可用。另有单活动素数消费者：若 `ΔΨ` 为平方、`3∤ΔΨ`、`S(G6)` 恰为单个 `p≥5`，且该 `p` 不满足“`p≡1 (mod 3)` 且 `2^((p−1)/3)≡1 (mod p)`”，则 `Common`；p 不设上界，反向不成立。

这里的 `S(G6)` 表示 `G6` 中 `p≥5` 且 `v_p(G6)` 不被 3 整除的活动素数支持；在 B07 的完整规范接口下，它与 `S(R)` 的 `p≥5` 支持一致，但不能脱离该接口对任意临时 gcd 作此替换，也不是 `rad(G6)` 的全部素数支持。

不能把这两个底域的结论推广到所有二次域。失败模型 `16Z³−23Z²+9Z−1` 的判别式为 229，在 `Q(√229)` 上确有非平凡循环三次扩张并满足一般局部形状，但实际系数恢复为 `n=672/97,j=322/97`，不是 B699 输入；实际输入还必须满足 `nI=3L(b−c)`、`jI=b(b−c)` 等整数恢复关系。另一个易错点是 `p∤R` 时不能写 `v_p(J)=v_p(R)`；正确的共同赋值只在 `p∣R` 时使用，2 上方分裂和模 27 也不能删除。

## ProB 与 ProE 的重复计数边界

ProE 的顶层时间线见 [SESSION_TIMELINE](../sources/ProE/SESSION_TIMELINE.md)。

- E Round 1 的 TB 为更一般的奇素数幂底数两块：`T=P^h`、`h≥1`、`E>F≥1`、`1≤A,B<T`，`n=A T^E+B T^F` 对全部合法 `j` 闭合，并另有移位行。它覆盖 B01 的 `h=1` 两位特例，且共享“第一商 + 第二窗口 + 完整 T 因子”的机制；B01 仍另有 `e≥3f` 的增长块族和活跃源必要式。两者不应把同一两块闭合重复计作两次全局进展。
- E Round 2 的 SQ 与 B06 的 `j(n−j)(n−1)` 平方消费者是同一命题。E02 的 `t≤100000` 完备消费者、B06 的 `V` 定量/九状态/NSQ 是不同附加接口；都不能把平方子域提升为一般 i3。
- E 的 Round 3–7（`ω`、估值差、判别式耦合、thin cofactor、R=7）与 B02–07 的新稿不能按同一作者回归样本相加。若某项接收采用 E 的结果，必须保留其原证据等级和来源依赖，并在覆盖表中去重。

## 最终 i=3 前沿、失败和未试路线

### 已消灭的整族或条件域

可登记的无界整族包括：B01 的所有奇素数两位行和 `P^f(A P^e+B)` 宽块、B04/B05 的长间隔/高头尾门槛族、B04 的等距三位 `e≥4`（以及 P=3 的全部 `e,f≥1`），以及 B06 的平方二阶矩子域。B02 的任意多块结论和 B03 的任意复杂尾块也是参数可增长的充分消费者，但各自依赖显式长间隔或尾部大小门槛。

这些成果没有减少完整 R7。剩余的 i=3 未知域至少包括：

- P≥5 的等距三位短模板 `(e,f)=(2,1),(3,1),(3,2)`；其 P、数字系数、`n` 和所有粗参数无界。
- 三块或更多非零位的短间隔、非等距字串、一般二幂行，以及不能找到活跃奇源数字盒的输入。
- 一般 `NC3` 的 `R,U,F₀,min C_s`、规范缺陷、混合窗口和完整指数；B03 的 `E+f≤2F+3`、B02/B04 的其他 leading bound 都没有控制次高位 F。
- B07 的一般二次底域、活动支持 `S(R)` 与满足实际 MOM 整数恢复的非平凡射线类群；固定类群有限不等于原 `n,j` 有限。SQ 只覆盖判别式平方相关子域。

### 已知失败边界

- 仅固定模数/同余筛不能结束无界指数：共同周期可用 CRT 保持。弱窗口解也不等于 NC3；如 `(76672,26775)` 的两个窗口和平方判别式虽通过，但 `α=128·599`，实际共同素数 599 已排除它。
- 继续只改变两条 GAP 门槛或同源切分对三个短模板没有收益；B05 已给出所有切分的失败分段。B02 的快速结式若 `gcd(k,f)≠1` 可为零，不能硬套 Hadamard 路线。
- 去掉 NC3 的内容/有理根前提会出现零余式；`n=28,j=14` 是明确反例。B04 的 W1 模型 `n=3916,j=1045` 展示负模提升，不能把 `h` 当作非负。
- B06 的“Ψ 不可约所以 Ψ' 不可约”推理是错的；一般二次域单一范数只回到旧三次判别式，没有新的 `min C_s` 控制。B07 的 229 多项式只是否定“所有一般射线类群自动为空”，不是 B699 反例。

### 未试或下一判别点

1. 对三块 `n=T(AX²+BX+C)`、`j=T(uX²+vX+w)`，把第一/第二窗口的同一商保留到完整 `T` 幂，先分类新的零余式；不能只增加数字扫描。
2. 在 B03/B04 的短间隔中保留实际提升 `h=(q−3r)/T` 及 `R/T`，联立完整内容 `L`、`α=c2^s`，判断能否得到非零整数的有效上下界或构造通过全部必要条件的弱解。
3. 对 B05 的三个短模板，检查 `E=A³Ψ(u/A)` 的额外整除/残量，而不是继续调整已知两条大小门槛。
4. 在 B06 的一般非平方二次域中联立 `λR C₀C₂`、完整源幂和 `MOM`，寻找超出旧范数恒等式的新整除。
5. 在 B07 中联立实际系数的 `I∣3(b−c)`、`L=2^s`、MOM 整数恢复与反变射线特征；目标是排除 229 型假模型或找到真正满足原输入的候选，再核对原窗口和共同素数。

## 接收结论

ProB 七阶段给出若干无界整族、条件消费者和结构性必要接口；作者证据没有形成一般 i=3 闭合，也没有形成 R7 的新减少。最可信的接续重点是短三位/短间隔的实际内容与完整源幂联立，以及 B07 的射线类群条件与原始整数恢复的共同约束。所有后续采用必须绑定本页所列普通原件和对应来源采用记录，保持作者纸面、有限证书、外部定理和 Lean 接受四类状态分离。
