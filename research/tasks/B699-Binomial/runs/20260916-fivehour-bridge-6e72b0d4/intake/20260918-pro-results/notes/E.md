# Pro E 2026-09-18 交付行政摘要

本摘要只整理来源材料，不做数学复验。总包入口是 [ProE README](../sources/ProE/README.md)，普通文件的原包定位见 [PACKAGE_INDEX](../PACKAGE_INDEX.md) 与 [MEMBERS.json](../MEMBERS.json)。题目级旧前沿见 [OVERVIEW.md](../../../../../OVERVIEW.md)；完整指标仍为 `R7={3,4,5,6,7,8,9}`，本批只研究 `i=3`。

## 来源和交接文件边界

ProE 五个原始 ZIP 在 `MEMBERS.json` 中均没有 `HANDOFF.md` 成员。为避免把不存在的文件写成已读，本摘要将各包的 `OVERVIEW.md` 或 `README.md` 标作续接等价入口；它们保留了原作者的下一步和失败边界。

|阶段|REPORT|PROOFS|续接等价入口（原包无 HANDOFF）|
|---|---|---|---|
|01 CUBE|[原件](../dependencies/6e08de8272a3/REPORT.md)|[原件](../dependencies/6e08de8272a3/PROOFS.md)|[OVERVIEW](../dependencies/6e08de8272a3/OVERVIEW.md)|
|02 IQ3|[原件](../dependencies/1901a18d3bed/REPORT.md)|[索引映射原件](../dependencies/179e0d668a96/sources/PREVIOUS_IQ3_PROOFS.md)|[README](../dependencies/1901a18d3bed/README.md) 与 [映射 OVERVIEW](../dependencies/179e0d668a96/sources/PREVIOUS_IQ3_OVERVIEW.md)|
|03 SPLIT|[原件](../dependencies/179e0d668a96/REPORT.md)|[原件](../dependencies/179e0d668a96/PROOFS.md)|[OVERVIEW](../dependencies/179e0d668a96/OVERVIEW.md)|
|04 TP|[原件](../dependencies/1e8c65ad8656/REPORT.md)|[索引映射原件](../dependencies/23bddc78a4c7/sources/PREVIOUS_PROOFS.md)|[README](../dependencies/1e8c65ad8656/README.md) 与 [映射 OVERVIEW](../dependencies/23bddc78a4c7/sources/PREVIOUS_OVERVIEW.md)|
|05 P2-POWER|[原件](../sources/ProE/extracted-rounds/B699-ProE-i3-power-support-closure-20260918/REPORT.md)|[原件](../sources/ProE/extracted-rounds/B699-ProE-i3-power-support-closure-20260918/PROOFS.md)|[OVERVIEW](../sources/ProE/extracted-rounds/B699-ProE-i3-power-support-closure-20260918/OVERVIEW.md) 与 [FINAL_CHECKPOINT](../sources/ProE/extracted-rounds/B699-ProE-i3-power-support-closure-20260918/notes/FINAL_CHECKPOINT.md)|

五阶段的证据都属于作者纸面证明、确定性有限算术/代数证书和同作者另一实现；没有 Lean、外部独立研究者验收、人工同行评审或全历史消费者并集的严格差集认证。有限扫描和证书只承担报告明确标出的有限义务。

## 五轮阶段次序和准确新增

### 01 · CUBE：原输入立方充分消费者

在原题合法范围 `4≤j≤⌊n/2⌋`（由此 `n≥8`、`k=n−j≥j`）上，定义

`M(n,j)=(n j k)^2 (n−2)(j−1)(k−1)`。

准确声明是：`M` 为整数立方，则同一个原始 `(n,j)` 存在素数 `p≥3` 同除 `C(n,3)` 和 `C(n,j)`。这个消费者的输入**没有把 `4|n` 写成额外前提**；证明在反设 NC3 后由必要恢复推出 `n` 偶、再推出 `4|n`。因此不能把内部必要条件误写成消费者的任意输入域。

证明把 `M` 等价改写为正有理数 `rho(n,j)=(n−2)(j−1)(k−1)/(n j k)` 为立方。NC3 下用同一原输入的 `g,α=c2^s,β,γ,λ,μ,C,H,u,z`，令 `s−1=3h+r`、`A0=c2^r`，立方匹配精确等价于

`μ u^2 z=A0 w^3`，`w` 为正整数。

当 `C>2λ` 时，恢复式和相邻整数立方间隙给矛盾；当 `C≤2λ` 时给 `n≤108`，再以 2601 个 `8≤n≤108, 4≤j≤⌊n/2⌋` 原始数对的确定性见证完成末端。所有粗素数支持、指数、`g,u,z,H` 均未预设上界。`M` 不命中只能返回 UNKNOWN，不能反推原题失败。

**与 B 的精确桥接。** 对同一个原始 `n,j` 构造实际三次式

`F(Y)=Σ binom(j,r)binom(k,3−r)Y^r`，`hF=content(F)`，`Psi(Z)=Z^3F(1−1/Z)/hF=ell Z^3−b0 Z^2+c0 Z−d0`。

令 `I=b0^2−3ell c0`、`J_B=2b0^3−9ell b0c0+27ell^2d0`、`Delta=Disc(Psi)`。报告给出的同一输入恒等式是

`(2Delta/ell)(n hF)^3=M(n,j)`，

所以实际 `Psi` 的 `2Delta/ell` 为正有理立方时可调用 CUBE。NC3 下还准确得到

`I=9t3/(lambda c^2)`，`J_B=54u d/(c^3 lambda mu)`，`Delta=27u^2 z/(c^4 lambda^3 mu^2)`，`d=m/g>0`；去掉 2、3 幂后 `gcd(I,J_B)_(6)=u_(6)`，而 `Delta` 的平方类是 `3lambda z`。恢复约束 `nI=3ell(b0−c0)`、`jI=b0(b0−c0)` 必须保留；任意虚构三次式不能替代由这个 `n,j` 生成的实际式。

### 02 · IQ3：整数原始窗口比值排除 `g=1,u=1` 两底切片

准确的原始比值为

`Q=(n−1)(n−2)/(j k)`，`Theta=Q/2`。

IQ3 的证明/消费者域写为 `4|n`、`4≤j≤⌊n/2⌋`，并在同一 NC3 原输入上假设 `Q` 为整数；结论是 `omega(t3)≥3`。等价的消费者表述是：在 `4|n` 的合法输入上，若 `Q` 为整数且 `t3` 至多含两个不同素因子，则原始两个二项式有共同奇素数。这里 `Q` 整数会推出 `g=1`，不是漏掉一个 `g^2`。

证明给出 `Q=2D`、`D` 正奇且 `D≥3`，再把同一原始 `(j,k)` 放进递推系数为 `P=2(D−1)` 的辅助二次曲线。所有正整数点由两个种子和完整韦达轨道分类；非最低奇指标时，`t3` 分解为三个大于 1、两两互素的奇因子，强迫至少三个不同素数。最低端点族 `n=8D^2−6D+2,j=4D−1` 也直接回到原始二项式：`D` 有 `p≥5` 因子时由源进位给见证，`D=3^a` 时保留完整高次 3 幂。

接回规范式时，`Q=2lambda mu H/(u g^2)`；`Q` 整数等价于 `g=1` 且 `u|lambda mu`。在两底域采用旧前置 `L,R>1` 后，`u` 的支持已经在 `C=LR` 内，且 `gcd(u,lambda mu)=1`，所以 `u` 为奇数又整除 `lambda mu∈{1,3}` 时只能为 1。故 IQ3 实际删除的是

`NC3 ∧ omega(t3)=2 ∧ (g,u)=(1,1)`，

其中 `n,H`、两个素数底和全部完整指数仍无界。它没有删除 `g=1,u>1`、`g>1,u=1` 或 `g>1,u>1`，也没有闭合所有两底输入。

### 03 · SPLIT：非负整数平方 `S` 的完整分裂支

该阶段的原始合法域明确为 `4|n`、`4≤j≤⌊n/2⌋`，`k=n−j`，并定义

`S=(n−1)(n−2)((n−2j)^2−3n+2)`、
`Theta=(n−1)(n−2)/(2j k)`。

准确消费者是：若 `S` 为非负整数平方，则同一个原始 `(n,j)` 有共同奇素数 `p≥3`。更强的证明是，在同一原始输入上若两个完整窗口

`N=(n−1)/lambda | j(j−1)`，
`K=(n−2)/(2mu) | j(j−1)(j−2)`

同时成立，则这个平方条件不可能成立；因此若平方判据命中，至少一个完整窗口失败，取失败窗口中的完整素数幂即可回到同一个原始两个二项式。`p=3` 时保留完整源 3 幂并只在 `3!` 处取消一次。

恒等式 `Theta(Theta−2)=S/(2jk)^2`，所以这正是 `Theta(Theta−2)` 为有理平方的全部分支，而不是固定平方自由核的有限表。证明给出 `Theta=A/delta` 最简后 `A=rho^2`、`A−2delta=sigma^2`，`rho>sigma≥1` 为互素奇数，随后用同一窗口恢复 `H=rho^2`、`u g^2=lambda mu delta`，得到相反的 n 上下界。没有 alpha 形状、CUBE、IQ3 或绝对高度前提，也没有可待扫的有限端点。

此域不属于 IQ3 的整数 `Q` 域：平方分裂强迫 `4|delta`，所以 `Q=2Theta` 的最简分母为 `delta/2≥2`。报告还给出合法且分母无界的展示族 `rho=16h+1`、`n=(9rho^3+3rho^2+4)/4`、`j=3(rho^2−1)(3rho−2)/8`；它只说明 SPLIT 谓词非空，不说明相对全部历史消费者是新覆盖。

### 04 · TP：原韦达反射不是 NC 保持下降

本轮没有新增原始 NC3 区域。原始合法输入仍为 `4≤j≤k`；若

`r=(j−1)(j−2)/k` 是整数且 `r≥4`，

辅助反射输入是明确的新数对 `(n*,j*)=(j+r,r)`，满足 `n*<n`，不能把它与原 `(n,j)` 混写。

若奇素数 `p` 同除原 `j−1,k−1`，记 `a=v_p(n−2)≥1`、`e=v_p(j−1)≥1`，则准确运输为

`v_p(n*−1)=a+e`，`v_p(C(n*,3))=a+e−1_{p=3}`，`v_p(C(n*,j*))≥a`。

因此 `p^a` 是反射后两个二项式的共同因子。采用完整窗口下的 `H=gcd(K,j−1)>1` 后，若反射为整数，`H|r`、`r≥H≥5`，所以 NC3 原输入会被送到较小的**非 NC3**新输入。即使在 `g=2,u=1` 切片真实 gcd 仍可保持，新的第一窗口源幂赋值增加，NC 条件仍不保持。

作者还构造了两个完整窗口、`g=2,u=1,H=5` 且 n 无界的弱模型；其成员有原共同素数 197，并不满足 `alpha=c2^s`，不是原题反例。该轮的用途是精确否定“单次整数韦达反射保持 NC”的方法假设；它没有证明复合变换或经过非 NC 中间态的路线不可能。

### 05 · P2-POWER：五类纯二幂行的 `g=2,u=1` 两底切片

准确主定理仍在同一个原始 NC3 输入上：若 `g=gcd(n,j)=2`、规范 `u=1`，且

`n=2^(M e+1)`，`e≥1`，`M∈{4,6,10,14,22}`，

则 `omega(t3)≥3`。所以这些五类幂行上的 `g=2,u=1,omega(t3)=2` 分支闭合；它不是这些 n 的所有 j 都已闭合，也不是整个 `g=2,u=1` 域或一般两底域闭合。

证明实际保留同一原输入恢复量 `m=(n/2−j)/H`。在额外 `16|n`、两个完整窗口、真实 `g=2,u=1` 下，整数平方间隙给出

`H^4 < 16n/(lambda mu^2)`。

这是**相对界**，适用范围不能扩成所有 NC3：它依赖 `g=2,u=1`、完整窗口、`16|n` 和真实恢复关系；只有 `4|n` 时可得较弱的 `lambda mu H<4z+6`，不能直接使用四次界。对 `M=4,6,10`，纸面大根部分覆盖任意偶数根的相应无限段；对 `M=14,22`，无限段入口分别为偶根 `x≥256`、`x≥2048`，小端点只核了二幂根。准确有限端点是 82 个表示、去重 80 个 n、1780 个 `(n,C)` 选择；最大 `n=2^221`，不等于扫描全部 `n≤2^221`。

变奇素数 `ell` 的同源余式统一消费 `ell=5,7,11`，对应 `M=10,14,22`；`ell≥13` 的二阶余式没有终点，不能靠扩大扫描修复。一般 `g=2,u=1`、`n=3·2^v`、其他 g/u 和一般两底仍无界。

## 与旧 E 前沿、B 重叠和符号隔离

旧 [OVERVIEW](../../../../../OVERVIEW.md) 把 B/E 的平方数对子族、两块族和 `t3>100000, omega(t3)≥2` 的规范恢复列为既有前沿，同时明确 `t3`、粗支持、指数和一般绝对高度仍开放。本五轮之后准确增量是：CUBE 增加新的 `M` 立方消费者；IQ3 删除整数 `Q` 域的 `g=1,u=1` 两底切片；SPLIT 删除全部有理分裂平方支；TP 把单步韦达 NC 下降路线改为已知的否定边界；P2-POWER 再删除五类 `g=2,u=1` 纯二幂行。没有一个结果把完整 i3 变成已闭合，R7 不变。

与 B 的重叠需要按原输入和符号分别登记：

- B 旧平方消费者是 `(n−1)j(n−j)` 为完全平方；E1 的 `M` 是 `(njk)^2(n−2)(j−1)(k−1)` 为完全立方，二者没有在本批被声明为包含关系。E1 的 `2Delta/ell` 桥只对由同一个 `n,j` 构造的实际三次式成立。
- B 的残量使用 `epsilon=lambda mu H−2u g^2`、`A=lambda^3 mu^2`、`T=(z epsilon^2+A)/(u g^2)`、`rho=epsilon T`，并有恢复三次 `P_rho(Y)=rho Y^3−2A Y^2−2A Y+A`。E1 的 `rho(n,j)` 是一个有理比值；E3 的 `rho` 是 `A=rho^2` 中的奇数平方根；E2 的 `P=2(D−1)` 是韦达递推系数而非素数；E2 的两底素数另写 `p1,p2`。这些同形符号不可跨报告代换。
- D 的 `t` 是 i5/H02⁺ 残量 `beta(alpha−beta)/q1`；E 的 `t3=beta gamma/N` 是 i3 规范残量，不能合并。E 的 `q=mu C`、E5 的 `ell`（辅助奇素数）也不能当成 D 的 q4、HG 指数或其 `H`。

任何 E 恢复候选都必须回到同一原始 `(n,j)`，保留

`N=(n−1)/lambda`、`K=(n−2)/(2mu)`、`N=ab`、`K=LHR`、`C=gcd(K,t3)=LR`、`H=K/C`、`u=t3/C`、`z=(j−1)(k−1)/(N H^2)`，

以及

`C u g^2−zH^2=lambda`、`n=2mu C H+2`、`j=(mu C−m)H+1`、`1≤m<mu C`、`g|m`、`lambda(mu^2C^2−m^2)H^2=(t3 g^2−lambda)(2mu C H+1)`。

反向生成后仍须检查真实 gcd、`alpha=c2^s`（`c=3` 时 `v3(n)=1`）、孤立 3、所有完整源幂、整数性、合法区间和原始二项式；弱模型或辅助轨道不能反向称为 NC3。

## 失败边界和下个明确检查

尚未闭合的参数包括一般 `n,j,g,t3,C,u,z,H`、两底的非 IQ3/非 SPLIT 区域、`g=2,u=1` 的其余 n、粗素数支持和完整指数；没有全局绝对高度，也没有原题精确反例。所有五轮都未认证相对全历史消费者并集的非空新覆盖差集。

下一步应先做定向数学审读：核对 CUBE 的原始合法域与 NC 下推导 `4|n` 的位置，SPLIT 的窗口失败到同一原始素数的回传，IQ3 的 `Q` 整数到 `g=1,u=1` 的两底桥，以及 P2-POWER 的 `H^4` 假设范围。对剩余 g=2/u=1 路线，任何新推导都要保留 `m` 和判别式；对 B/E 联合使用，先固定变量命名并保留三次式的两条原始恢复约束。不要重复 CUBE、SPLIT、IQ3 已删去的分支，也不要把有限端点、弱模型或同作者第二实现升级为完整研究接受。
