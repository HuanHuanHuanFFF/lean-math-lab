# B：B-i3 14 轮行政整理

## 口径

本 note 只整理 B 根包 `B-i3-research-full-session-2026-09-24.zip` 的原件；本日较早的仓库外整理摘要只作 R1--R9 对照，不替代[会话 README](../objects/52/5260803de8073781f1da5bfcad559fcdb2dfe66504744e9f720ba826d6f9e94e.md)和[完整轮次索引](../objects/93/93ae99588c06102fd5e991399cc3d15d8cd52c0e6e5f6ec003d4e7a9e86d215d.md)。

作者交付包括纸面论证、精确证书/结式和同作者第二算术实现；R9 另采用 Ulmer--Urzúa。CRC/SHA 只说明字节完整。14 轮均无 Lean、外部独立审读或完整 i=3/B699 结论，辅助必要系统不能反向当作 NC3 参数化。[证据等级说明](../objects/94/949cf1a43aa9ba4babffa12e18b93f172b989050f23898a6d2be6a5b79074629.md)

## 14 轮表

|轮|名称|准确增量/当前余域|
|---:|---|---|
|1|OCTIC-35|GATE8 下 3+5、5+3 退出；4+4 只部分压缩。|
|2|BOUNDARY-3 / OCTIC-NO31|GATE8 的边界-3 与全部 3+1 槽型退出。|
|3|OCTIC-NO211|全部 2+1+1 退出，2+2 仅部分退出。|
|4|OCTIC-ALL|给出所声明 GATE8 域的 OCTIC-ALL；不是 i3 全题。|
|5|NONIC-REDUCE6|历史版本；后来发现商常数项步骤无效，旧 PASS 不再作当前证明。|
|6|NONIC-ALL / ERRATA|重建合法非恒定商系数，交付修正版 NONIC-ALL/GATE9。|
|7|LC-SQUARE|任意次数的首项平方障碍；D(A,d)=1 整行消费者及 D=2/4 块区间。|
|8|CENTER-5/6|D=2 必须满足 `6s>5d`，并有 LC6 首项整性和中心条带消费者。|
|9|CENTER-11/13 / M2-DEG20|加入 11/13 次数界，得 `ell≤5m−2`、`d≤13m−6`；m=2 只剩 d=8/14/20。|
|10|M2-NO14|排除完整 d=14、m=2 恢复；另给 GATE14、D2、`a13=0` 的整行消费者。|
|11|M2-D20-NOZERO / FOUR-REM2|排除 d=20 的整个零槽，以及四槽平方根余式次数 0/1。|
|12|M2-D20-NOFOUR / MIX-ONLY|排除四槽真正二次余式；d20 只余两根分槽的混合恢复。|
|13|MIX-REGULAR|混合图的四个系数退化域退出；留下五参数正规图和八条低残差。|
|14|MIX-DW-NONZERO / REG4-RATIONAL|在有理正规图中排除 `y=0`、`y=1`、`D_w=0`；合法消去 w，留下四参数和七条残差。|

## GATE、m2d14/d20 与回传

R10--R14 继承同一个原输入门槛：

```text
f=Σ a_i X^i ∈ Z[X],  a_i≥0,  f(0)=2,  d=deg f,  A=a_d,  H=f(1),
T=p^e 为奇素数幂，T ≥ [2(H+2)]^(2d+4)，n=f(T) 为偶数，D(A,d)=2,
D(A,d)=∏_ℓ ℓ^min(v_ℓ(d), floor(v_ℓ(A)/2)).
```

固定同一个 `4≤j≤floor(n/2)`。反设同一个原输入是 NC3 后，冻结链给出 `j=J(T)`、`0≤J_i≤a_i`、最高位平分，并定义 `Z=2J−f`、`s=deg Z` 以及同源 `K,Q,L,M`。必须保留未平方的 `Q`、原完整素数幂和共同素数 `3` 的可能性。其必要恒等式为

```text
(K+1)M=L(L+4),
M Q²=L³+4L²−5ML+M²,
ell=4s−3d,  m=6s−5d>0,  d=3ell−2m.
```

完整槽分配写成 `M=M0M4`、`M0|L`、`M4|L+4`。此时
`f*=2+(L+4)(L²+4L−4M)/M²` 为多项式当且仅当 `M0² | L−M`；这只判定有理多项式恢复，不保证整数非负系数、`f(0)=2`、`J`、GATE 或真实 NC3。CUBIC 和后续图是 NC3 反设的必要系统，不能反向构造 NC3。

R9 的几何界在 m=2 时给 `(d,s,ell,m)=(8,7,4),(14,12,6),(20,17,8)`；OCTIC-ALL 已处理 d8。故 R10 的 d14 定义是 `deg M=2, deg L=6, m=2` 加上述同源 CUBIC、完整 REC 和 GATE/D2；R10 的特征零定理排除这一整个恢复域。另一个独立原题消费者是 GATE14、D2 且 `a13=0`：在冻结 LC/CENTER 链下所有合法 j 有 Common3，它不是“d14 所有情况”无条件结论。

R11--R14 的 d20 定义是 `deg M=2, deg L=8, s=17, ell=8, m=2`，仍带同一 GATE/D2/NC3 同源关系。零槽是 `M|L`、`L=M+M²S`、`deg S=4`；四槽是 `M|L+4`、`S=(L+4)/M` 六次。R11 排除整个零槽并排除四槽平方根余式次数 0/1，R12 再排除余式恰为 2 的整个四槽，因此只剩 M 的两个不同根分别进入零、四槽。对有理原恢复，这要求 M 分裂为两个不同有理线性因子，判别式为非零有理平方；它是必要条件，不是 NC3 的充分条件。

## R10--R14 新增与 REG4 图

**R10（M2-NO14）。** `degM=2,degL=6`、CUBIC、`M|L(L+4)`、REC 在 `C[X]` 中无解。四种完整恢复图以 `t²,t³,t⁶,a³` 进入精确理想，故整个 m2,d14 删除。[REPORT](../objects/a9/a9df40a09c98f520c68a2e4934862ebfae663b67a4c652a0cb0a73d116b22247.md) · [HANDOFF](../objects/d5/d56663d7c0d030a5bcbf052b784a60e7556b485b705335d112eeb2365c7ef89c.md) · [PROOFS](../objects/8e/8e6f14726c2271b138855fd95e195bc8b945a0b26dd0be166702fcdc00c33892.md)

**R11（零槽/低余式）。** Z20 排除 `degM=2,degL=8,M|L,REC` 的整个无界零槽；F20-low 排除 `M|L+4` 且六次 S 的平方根余式次数≤1。零槽证书目标为 `t⁴`，低余式由次数差及 `8(E7−2hE8)=−c³` 关闭。[REPORT](../objects/de/de6856f9892b124a96e451ae47dcc35f32a1b97bede82ef2c08be70961a3b27d.md) · [HANDOFF](../objects/50/5080962d89f580d07a2f4a67c231511d1d9b3f4cd36ad2c567720b738773d0f9.md) · [PROOFS](../objects/8a/8a2c8534b4f108c1ab9c19dcf28911e77ccf5252f113cdb7e64427ca28ecacd2.md)

**R12（MIX-ONLY）。** 四槽真正二次余式的完整图中，证书给出 `(Theta*z)²` 属于十条残差理想，故整个四槽退出；与 R11 合并后只余混合根。[REPORT](../objects/3d/3d6e2c75a71a714bd491d92f9333ffef756d591edd8d02fc7018aeeeec696850.md) · [HANDOFF](../objects/35/350793797e9b221360c618d04e7b8087a168c7fc07210183bba55f836bf642d0.md) · [PROOFS](../objects/f6/f6f2da05654e82ab4a0ae281142c227c137b11718552b640e3252acdcbc2b492.md)

**R13（MIX-REGULAR）。** 混合规范图 `M=μx(x−1)`、`L(0)=0`、`L'(0)=−μ`、`L(1)=−4`、`degL=8` 下，完整平方方程推出
`ell(2k−3ell)(eta−h ell)(eta−(h+1)ell)≠0`。四个无界退化域各有精确 QQ 证书。合法正规图可逆地重编码成五参数 `(w,u,y,Lambda,alpha)`，但仍有八条真实残差、原 `t≠0` 和全部非零条件，因此不是充分刻画。[REPORT](../objects/9d/9df7e3159e9b16dbc1ed9a6e73ed4d4e8841a6159fdac410cd5c881e75c5f3ce.md) · [HANDOFF](../objects/bf/bf4393648f55f433898a8497536943530eaf2dd82be97702a0681eae88b9c0dd.md) · [PROOFS](../objects/3a/3ac7656c2b763fcb40ce8bc4216faa8e8c6da4e99dcffb45ebd5d2c4acf0101c.md)

**R14（REG4-RATIONAL）。** 证明域明确为 `Q`。在 R13 五参数图中
`D_w=8alpha*u²*y²−6Lambda*(u−1)²*(y−1)²`，完整结式及有理根证书排除 `y=0`、`y=1`、`D_w=0`。于是由最高剩余式可合法取 `w=N_w/D_w`，但只得到四个有理参数 `(u,y,Lambda,alpha)` 和七条保留残差；还必须保留 `Lambda*alpha*u*(u−1)*y*(y−1)*D_w≠0`、`2N_w−3D_w≠0`、原 `t≠0`。这是四参数有理必要图，不是有限化或复系数排除。[REPORT](../objects/6d/6d6eb0936e67e41d37f267d0c6873ca07d09ac1e9d01bc3e3a3afa832c5a8e3f.md) · [HANDOFF](../objects/40/400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461.md) · [PROOFS](../objects/fe/fe76512a46f2460c62aa71ab37eda1249a900a7c7e4215a6ce8f78fbda34bfcd.md)

## 依赖、勘误、失败、缺项

R9 的 `13s>11d` 和 m2 次数表依赖 Ulmer--Urzúa *Bounding tangencies of sections on elliptic surfaces*，采用的是定理 8.7 证明中的交数估计，不是本包 Python 重新证明的定理；其适用链、极小化和非挠性仍是作者级外部输入。[R9 证明](../objects/6f/6fdb8c9173d98c5b052d9a565666807eb57a0695ce9c57902878b172427b1941.md) · [R9 交接](../objects/cf/cf39d26b629ada4012d5c0e77f28eef970e5b5bc14ded8651b01708b8ede8d80.md)。R11--R14 的新代数排除本身没有新增外部定理；但把它们合成“m2 只余 d20”仍继承 R9 的 UU、OCTIC-ALL、R10 及冻结的作者级 `NC3⇒4|n`，不能隐去这些依赖。GATE 提升门槛也没有删除。

唯一明确的数学勘误是 R5→R6：商的常数项应为 `C0=−rho≠0`，旧 `49ab+27w1=0`、`M=0`/P8 链无效；R6 用合法 C7/C6/C5 和新十八次结式重证，旧原件保持历史状态，不把旧 PASS 追认有效。[ERRATA](../objects/82/82b60b28211072b94badc447a5cf8926c94c6a85e9417b36e70e4b76ade99457.md)

共同失败边界是：QQ/Groebner 超时没有数学含义；模探针不能提升为特征零结论；正规门和最高残差通过不充分；R14 的 D_w=0 结式只排有理图，不能扩展为复系数无解。R13 变量遮蔽已修复，R14 只计后来完成的 597 点重放。[R10 失败](../objects/fe/fe77123b6646540068bcb6ed2fad153d46f40c65f3d0b3544f5543f9cc601033.md) · [R14 失败](../objects/ee/ee3d51c7a382bdaaad179dbced4c2e2da1ee123347da6e3d9fddd445ad2128c9.md)

归档层面 14 份证据 ZIP 均在，未报告整轮缺失；但完整聊天/UI 工具结果、未交付临时文件、未保存 stdout 和隐藏过程不能恢复，不能用索引补造。[缺项说明](../objects/04/0413d4e1b75c2089b6914adcfb78431e2695b9781639bab893786b9861d146f3.md)

## 无界前沿与下一检查

当前有理正规图仍有四个无界参数 `u,y,Lambda,alpha`，以及 `M,L,Q` 系数、原 `f,J` 整数尺度、工作素数/完整指数、`T`、`n,j`。七条低残差、零槽二阶恢复、未平方 Q、原 `t` 和非零门都必须保留。d20、m2、D2、i3、B699 均未闭；一般 `m≥4`、`D≥3`、低于 GATE、交叉/low-low/负向三槽/多底也未获新结论，R7 仍为 `{3,4,5,6,7,8,9}`。[最新未解前沿](../objects/64/6490c56e3607c40c89bcd1bab1f2408e8709c39ff497771ed8613f5cf6f7e1b0.md)

下一项只做一个可证伪检查：把 `w=N_w/D_w` 代入 R6（以及随后 R5…R0），先检查其关于 `Lambda,alpha` 的结构，必要时研究非零比值 `alpha/Lambda`；任何除法都必须把其系数为零的分支单列，保留全部七条残差和 `2N_w−3D_w`、原 `t` 条件。不要重搜 `y=0,y=1,D_w=0`，不要把这一步或四参数重编码称作有限化。R14 给出的边界模型 `u=y=2,Lambda=alpha=1,w=38/61` 满足新门和最高残差却有 `R6≠0`，说明“必要门+R7”仍不能反推完整混合恢复或 NC3。
