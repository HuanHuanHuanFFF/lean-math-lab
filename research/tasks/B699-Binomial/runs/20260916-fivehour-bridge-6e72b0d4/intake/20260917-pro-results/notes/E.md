# Pro E（2026-09-16—17）七阶段接收摘要

本摘要只整理 Pro E 七轮作者交付、原成员映射和采用边界，不构成仓库定向数学验收。会话入口见 [Pro E README](../sources/ProE/README.md)、[SESSION_TIMELINE.md](../sources/ProE/SESSION_TIMELINE.md)、[PACKAGE_INDEX.md](../PACKAGE_INDEX.md)；递归原成员到保留路径的精确对应见 [MEMBERS.json](../MEMBERS.json)。阶段报告/证明均保留在 `sources/ProE/rounds/`，各轮 `SOURCE_ADOPTION.md` 则按 MEMBERS 映射在 `dependencies/<hash>` 下。

## 总体结论和证据等级

- 七轮都围绕 i=3 的反设 `NC3`（合法 `4≤j≤⌊n/2⌋` 且没有共同奇素数）推进；完整 i=3 没有闭合，`R7={3,4,5,6,7,8,9}` 不变。
- 报告中的“闭合”是作者纸面证明＋精确整数/周期/CRT 证书；第二实现仍由同一作者编写。没有 Lean、传递公理审计、独立研究者/人类审读，也没有全项目历史消费者的严格差集或首创性审计。
- E3 采用 Hajdu–Pintér (2000) 的固定椭圆曲线完整整点分类；E7 采用 Bugeaud–Mignotte–Siksek Theorem 9.4 的一般显式对数下界（来自 Matveev 形式）。这些是明确的外部数学输入，不应把 E3/E7 写成完全自含的初等证明。其余轮的周期/有限接收也不能替代无限纸面归约。

## 统一前置和符号防碰撞

在同一 i=3、NC3 输入中，置

`k=n−j`, `g=gcd(n,j)`, `α=n/g`, `β=j/g`, `γ=k/g`。

真实孤立 3 小部为 `λ=3` 当且仅当 `v3(n−1)=1`，为 `μ=3` 当且仅当 `v3((n−2)/2)=1`；否则相应值为 1。于是

`N=(n−1)/λ`, `K=(n−2)/(2μ)`,

在 NC3 下有完整必要窗口 `N∣j(j−1)`、`K∣j(j−1)(j−2)`，以及 `4∣n`、`α=c2^s`（`c∈{1,3}`、`s≥3`，且 `c=3` 时必须 `v3(n)=1`、`3∤g`）、`β,γ` 奇且互素。高次 3 幂保留为完整源幂，孤立一次 3 才由 3! 的小部规则移除。

### E 内部的 `t,C,u,z,a,b,L,H,R`

为避免把不同轮次的同名量混在一起，以下使用 `t₃` 表示各 E2—E7 文稿通常写作 `t` 的 i=3 规范商：

|符号|准确含义|适用边界|
|---|---|---|
|`t₃`|`βγ/N=λβγ/(n−1)`，正奇整数，`t₃≡λβ² (mod α)`|E2 起的 i=3 规范第一行商；E3 以后也可写成 `C u`|
|`C`|`gcd(K,t₃)`；E3 起由三分配推出 `C=LR`|不是旧 two-block 证明里的同名块；`C` 可与 `t₃` 一起无界|
|`H`|E2 中 `K/C`；E3 起它恰等于中间分配 `gcd(K,j−1)`|旧 two-block 文稿把这两个字母对调：旧 `C` 是中间块、旧 `H` 是两端积；不能只按字母搬运|
|`u`|`t₃/C=βγ/(NC)`，奇正整数|E4/E5/E6 的规范残量；不要与 E2 平方类中的临时根或 D 的目标专属残量混用|
|`z`|`(j−1)(k−1)/(N H²)`，正整数；满足 `t₃g²−zH²=λ`|E3 起的补商；它等于旧 two-block 的 `U`，不是本轮新命名所产生的新量|
|`a,b`|E6 第一窗口完整分配：`a=gcd(N,j)`、`b=gcd(N,j−1)=gcd(N,k)`、`N=ab`|不要与 E2 的平方根 `a` 或薄形状中的指数 `P^a` 混淆|
|`L,H,R`|第二窗口完整分配：`L=gcd(K,j)`、`H=gcd(K,j−1)`、`R=gcd(K,j−2)`，两两互素且 `LHR=K`|E3 以后 `C=LR`、`H=K/C`；E7 的 `R=7` 是此端部块，不是全局剩余集合 `R7`|
|`r`|E4 的估值差 `r=v2(n)−4v2(j)`|与 D 轮的窗口位置 `r`、E6 的端部辅助整数 `r` 分开记录|

旧 H02 记录写作 `t=β(α−β)/q1`、`q1=(n−1)/s5(n−1)`，这里的 `s5∈{1,5}` 属于目标 i=5 的五窗口；E 的 `t₃=βγ/N` 使用目标 i=3 的 `N=(n−1)/λ`、`λ∈{1,3}`。两套定义按目标分别成立，不能直接识别或搬运；个别输入上的数值巧合不构成符号等同。D 轮的 `t5,t6` 也按各自目标 i 的 `s_i,q1` 定义，不能直接当成 E 的 `t₃`。E2 的 `C=gcd(K,t₃), H=K/C` 与 E3 的 `L,H,R` 分配是同一输入上的不同层次；E3 进一步证明 `C=LR`。后续报告若只写裸 `t` 或 `H`，必须先标明轮次和定义。

## 七阶段按时间线的准确结果

### E1 — 两非零块和长低位块（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/01-two-block-closure/REPORT.md) · [PROOFS](../sources/ProE/rounds/01-two-block-closure/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/01-two-block-closure/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/fbc2e57cabd1/sources/previous-SOURCE_ADOPTION.md)。该轮根 `SOURCE_ADOPTION.md` 因去重映射到 `dependencies/fbc2e57cabd1/sources/previous-SOURCE_ADOPTION.md`，以 MEMBERS 为准。

作者证明了完整 i=3 的若干整行族：`T=P^h` 为任意奇素数幂、`E>F≥1`、`1≤A,B<T` 时，`n=A T^E+B T^F` 这一整行对所有合法 `j` 都有共同奇素数；还证明 `T≥5`、`B<T^s`、`E≥2s+2` 的长低位整块 `n=A T^E+B T`，以及移位族 `n=A T^E+1 (E≥3)`、`n=A T^E+2 (E≥2)`。P、h、块指数、A/B、s 均无界，但长空隙条件必须保留；未覆盖任意三位/多位数位输入。

机制是同一输入的第一窗口正整数商 `Q` 与第二窗口余式 `R` 联立，得到 `T(n−2)∣2μR`、`R≠0` 和严格大小矛盾。旧 `ROW-3` 只作前置重建，不计本轮新发现。若再有 `gcd(C(n,3),105)=1`，共同素数至少 11，才可把相应行返回 i=3,…,9；这不是无条件 i3→i4…i9。无限量词为作者纸面，有限回归不是全局证明。

### E2 — 平方类、二次恢复与 `t₃≤100000`（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/02-squareclass-quadratic/REPORT.md) · [PROOFS](../sources/ProE/rounds/02-squareclass-quadratic/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/02-squareclass-quadratic/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/fbc2e57cabd1/SOURCE_ADOPTION.md)。

1. 若 `(n−1)j(n−j)` 为完全平方，则该数对子族（所有合法 `j`）有共同奇素数；它不是整行结论。
2. 一般 NC3 的第二窗口可写为 `K∣t₃(j−1)`。固定 `t₃` 后，枚举 `C∣t₃`、`q=μC`、`1≤m<q`、`g∣m`，由二次方程判别式恢复 `H`、`n=2qH+2`、`j=(q−m)H+1`。反向必须重新检查真实 gcd、`α=c2^s`、真实 `λ,μ`、区间和完整进位；必要系统不等于 NC3 充分刻画。
3. 固定 `t₃` 的有效界是 `g<μt₃≤3t₃`、`λα<3μ²t₃^4`、`n<(3μ³/λ)t₃^5≤81t₃^5`。随后两份不同模根实现完整覆盖**所有正整数 `t₃≤100000`**（偶数由奇偶性排除），最终无 NC3 候选，故 `NC3⇒t₃>100000`。这里的完备性是规范商域的完整参数/模根恢复，不是扫描所有 `n` 到某上限。

理论界 `n≤81·100000^5=8.1×10^26` 只属于 `t₃≤100000` 候选域；它不是“所有 `n` 小于此数都已验证”。E2 还给出平方自由核 `D=sf((n−1)j(n−j))=sf(λt₃)≥17`、`D≡1 (mod8)` 的残余必要条件。`t₃`、`C`、`g`、`α` 和指数仍无界。

### E3 — `L,H,R` 三分配和所有素数幂 `t₃` 排除（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/03-three-allocations/REPORT.md) · [PROOFS](../sources/ProE/rounds/03-three-allocations/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/03-three-allocations/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/9d40a01c80ff/SOURCE_ADOPTION.md)。

在完整 NC3 下，`L=gcd(K,j)>1`、`H=gcd(K,j−1)>1`、`R=gcd(K,j−2)>1`；三者含完整幂、两两互素、`LHR=K`。因此 `C=gcd(K,t₃)=LR` 至少含两个不同素因子，`C∣t₃`，从而 `ω(t₃)≥2`。这排除 `t₃=1` 和**任意素数底、任意正指数的素数幂**，不是把 t 扫到某一有限值；剩余 `ω(t₃)≥2` 仍完全无界。另有 `ω(K)≤2` 的整行消费者。

补商 `z=(j−1)(k−1)/(NH²)` 与 `t₃` 满足 `t₃g²−zH²=λ`、`λ(q²−m²)=z(n−1)`，并给出
`n≤3(C²−1)≤3(t₃²−1)`。只有在采用上一轮 QT100K 后，才可再写 `C≥423`；这不是本轮重跑或 t 新上界。`z` 等于旧 two-block 的 `U`，本轮新增的是互补关系、三分配及二次高度，而不是符号本身。

`L=1` 分支使用 Hajdu–Pintér (2000) 曲线 `Y²=X³−36X+1296` 的完整整数点分类；15 个点逐项回传，但没有独立重跑文献的 SIMATH 完备性。其余分配证明与周期证书为作者纸面＋精确程序。

### E4 — 相对估值条带 VG8（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/04-valuation-gap/REPORT.md) · [PROOFS](../sources/ProE/rounds/04-valuation-gap/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/04-valuation-gap/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/7eaff780915b/SOURCE_ADOPTION.md)。

本轮准确闭合的是

`NC3 ⇒ v2(n)≥4v2(j)+9`，

即估值差 `r=v2(n)−4v2(j)≤8` 的全部无界 `n,j` 区域。e=`v2(j)`≥2 时先强迫约分奇部 `m=1`，再只剩 37 个固定系数三次方程；周期 60/180/360 覆盖所有指数剩余类，e=0,1 的小端另以完整有限证书排空。37 个方程和周期不是指数扫描上限。

VG8 的证明不依赖 E3 的出版整点、QT100K 或平方类全闭合；它只使用完整源窗口、乘积恒等式、估值和周期证书。剩余必须 `r≥9`，且 `t₃,C`、粗素数支持和完整指数仍无界；不能把相对条带写成一般 i3 高度或全题闭合。

### E5 — 同源判别式 RQ128/SQG（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/05-coupled-discriminant/REPORT.md) · [PROOFS](../sources/ProE/rounds/05-coupled-discriminant/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/05-coupled-discriminant/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/2c38391aef11/sources/previous-SOURCE_ADOPTION.md)。该轮根 SOURCE_ADOPTION 因成员复用位于 `dependencies/2c38391aef11/sources/previous-SOURCE_ADOPTION.md`。

定义行域 `F={3·2^v:v≥0}∪{2^v:v mod6∈{2,3,4,5}}`。在任意 NC 且 `n∈F` 时，E3 的同一规范 `u=t₃/C`、`z` 满足 `u²z>128`（RQ128）；两个二幂指数均无界，RQ128 不是 F 的整行闭合。一般 NC（不限制奇部）还满足

`8λμH<9u g²(1+u z g)`, `n<11u^5 z^4 g^7`（SQG），

这是固定 `g,u,z` 后的相对有效高度，不能称一般 n 的绝对上界。

RQ128 的 `u²z≤128` 反设被化成 81 个有限系数/指数类别：77 类由全双指数周期证书排除，4 类由整数因式分解或严格相邻平方间隙接到有限末端。联合系统必须使用同一个 `H` 同时满足三次式和真实判别式；只分别有两个模根，或只满足必要窗口，不能回传 NC3。`v mod6∈{0,1}` 的 `λ=μ=1` 退化支、一般 `u²z>128`、g/u/z 仍未闭合。

### E6 — 小余因子乘素数幂 THIN9（2026-09-16）

入口：[REPORT](../sources/ProE/rounds/06-thin-cofactor9/REPORT.md) · [PROOFS](../sources/ProE/rounds/06-thin-cofactor9/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/06-thin-cofactor9/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/2c38391aef11/SOURCE_ADOPTION.md)。

若 `β=j/g` 或 `γ=(n−j)/g` 可写成

`dP^a`，其中 P 任意素数、`a≥1`、`1≤d≤9`，

则所有合法 j 都有共同奇素数（THIN9）。反设 NC 时，去掉任一完整素数幂后余因子必须 `≥11`；这仍是约分侧的余因子结论，不是 β/γ 有绝对上界。因 NC 前置使相关侧为奇数，实质 d 为 `1,3,5,7,9`，至多两个不同素因子。

第一窗口两分配 `a=gcd(N,j)`、`b=gcd(N,j−1)` 的 `5,7,9` 小块全部由结果式有限恢复排空，得到 `a,b≥11`；第二窗口得到 `L≥11`、`R=7` 或 `R≥11`。R=7 的四格混合尚在本轮之后，故本轮不能把 `a,b,L,R` 全部写成 ≥11。THIN9 的新形状消费者不等于一般 `ω(t₃)=2` 闭合：β/γ 的支持与规范 `t₃` 的支持不能直接互换。所有粗因子、指数、g、`t₃,C,u,z` 仍无界。

E6 的 β 分支使用旧 `L>1`（旧 THREE 的出版依赖），γ 分支可使用初等 `R>1`；旧小块全链未在本轮重放。

### E7 — 端部 `R=7` 的 Pell 完整闭合（2026-09-17）

入口：[REPORT](../sources/ProE/rounds/07-endpoint7-closure/REPORT.md) · [PROOFS](../sources/ProE/rounds/07-endpoint7-closure/PROOFS.md) · [OVERVIEW](../sources/ProE/rounds/07-endpoint7-closure/OVERVIEW.md) · [SOURCE_ADOPTION](../dependencies/ae85d55e639c/SOURCE_ADOPTION.md)。

本轮定理是：在一般 NC3 下，第二窗口端部块
`R=gcd((n−2)/(2μ),j−2)` 不可能等于 7；没有给 n、j、二幂指数或粗素数形状设上界。R=7 时的 14 个系数元组经完整同余提升只剩 6 个非空类、360 个指数类；不应把 359 个筛掉的类当成有限指数扫描。

唯一真正送入 Pell 链的方程是 `7j(j−1)=(2^v−1)(2^v−2)`、`v≡4 (mod2520)`，变为 `X²−7Y²=−6`。完整轨道种子为 `(1,1)`、`(13,5)`，用单位 `8+3√7` 分类；一般显式对数下界先给 Pell 轨道指标 `h<10^16`，严格有理逼近证书再给两条 D=7 轨道 `h<17`。实际 95 个状态（R=7 自身 34 个）得到唯一正解 `(n,y)=(2,1),(8,3),(16,6)`；前两个不合法，`(16,6)` 的实际 `R=gcd(7,4)=1` 且 7 已同除两项，因此 R=7 空。`h` 是 Pell 轨道指标，不是原二幂指数 `v`；没有遍历 `10^16`。

同轮还用同一 Pell/对数方法解 `3y(y−1)=(n−1)(n−2)` 和 `3y(y−1)=2(n−1)(n−2)` 的全部二幂解，替换旧 `L>1` 的特定椭圆整点表依赖。这属于依赖替换，不是新消灭的一般区域；E7 仍实际采用 BMS/Matveev 型一般对数下界。

叠加 E6 的旧结果后可写 `a,b,L,R≥11`，但这条 FOUR11 是作者材料等级的逻辑叠加：E7 没有重新执行 E6 的 `a/b=5,7,9` 全部证书或其它端部链。可复用相对约束为 `ν=g/gcd(g,2)` 时 `λμL>ν`、`λμR>4ν`；它不是 L/R/g 的绝对界。E7 的 `R=7` 已从局部清单删除，但一般 `ω(t₃)=2`、大粗余因子和完整 i3 仍开放。

## 证据边界、失败与下一检查

- `t₃≤100000` 的结论是两套模根/恢复程序对规范商域的完整证书；不要改写成 n 的有限扫描或全局 n 高度。E3 的 `ω(t₃)≥2` 是任意素数幂排除，仍不等于 `ω(t₃)=2` 区域闭合。
- E4 只消灭相对估值 `r≤8`；E5 只消灭 RQ128 的 `u²z≤128` 子域并给 SQG 相对界；E6 只消灭约分侧 `dP^a,d≤9`；E7 只消灭第二窗口 `R=7`。这些边界不能相互拼成一般 i3 完成。
- 失败/未尝试路线包括：继续放大 t 扫描、把固定平方自由核或固定 Pell 形式推广到变系数、交换 `(t₃,g)` 与 `(z,H)` 后假称保持 α 的下降、把 d≤9 直接提高到11、把 `β/γ` 的素数支持当成 `t₃` 的支持。E3 的补商交换还会改变范数符号和受限的二幂坐标；E5 的 `λ=μ=1,v mod6∈{0,1}` 退化类仍未解。
- 当前最有价值的统一目标是把四个完整分配 `a,b,L,R≥11` 与 `α=c2^s`、同一个 `t₃,u,z` 联立，控制至少一个粗参数或构造保持 NC 的严格下降。所有未闭参数包括一般 `n,j,g,t₃,C,u,z`，以及四块的粗素数支持和完整指数。

作者报告、证明、SOURCE_ADOPTION、证书和原 ZIP 映射均已保留；待 Leader 做逐轮目标、固定来源、依赖和证据等级的定向仓库验收后，才可把其中任何结果提升到本仓正式数学状态。
