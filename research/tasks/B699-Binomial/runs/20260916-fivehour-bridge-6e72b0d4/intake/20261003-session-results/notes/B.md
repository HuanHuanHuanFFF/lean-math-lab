# B：REG4 → REG3 七轮来源整理（2026-10-03）

## 状态与阅读边界

本说明整理 `B699-ProB-REG4-REG3-R1-R7-MASTER-20261003.zip` 的本页 R1–R7 作者交付，最新端点为 R7 **HJ-COMPLEX-NONZERO / N-COORD1**。本页包号 R7 与全局剩余指标集合 `R7={3,4,5,6,7,8,9}` 是两个对象。

这条链把有理 REG4 的尺度例外排空，把允许的一般规范模型推进到零维，并在较大的复必要模型上排除 H=0 与 Jcal=0；它仍未取得全局特征零饱和 UNIT、穷尽 RUR、允许点全集或任何真实原 `(n,j)` 恢复。作者登记原题历史消费者净差 **0 / 未认证**，新增完整指标 0。不得把辅助零维、点数上界或作者重放 PASS 写成原题有限化、Lean 接受或 B699 闭合。

本次职责为复杂已知目标的来源整理（gpt-6.1-sol / xhigh），固定源与条件由作者文档保留；没有数学审读、证书复算、附件程序执行、Lean 编译或公理审计。仅以 zipfile 读取材料并核对来源字节：七轮外包 `02_KEY_FILES` 的 REPORT / PROOFS / HANDOFF / FAILURE_BOUNDARIES 及 R4–R7 SOURCE_ADOPTION，共 32 个文档，与对应 evidence ZIP 中的顶层原件逐字节一致。此项属于行政来源检查。

本次成员映射固定外包 SHA-256 为 `ddf4cf218c9daaedc44b2d7eeeb784c0d195f79022c44bbd057e6eeadf152c99`，大小 33,171,700 bytes。来源读取前的工作站资源快照：物理内存负载93%，可用约1.09 GB，D:剩余约30.11 GB；CIM查询被环境拒绝，内存数来自Windows内存状态接口。zipfile读取与来源比较串行执行，没有启动构建或计算工作负载。该快照仅属于本次整理。

外包原件留在仓库外，普通成员通过 [MEMBERS](../MEMBERS.json) 的 `retained_path` 定位。外包导航见 [外包 INDEX](../objects/a2/a2389a2e043b58e36a1b2964e9fcf14c4d7f785c7c378144a5a3437b0bd9642c.md)；其作者包清单见 [作者 ROUND_MANIFEST](../objects/b9/b93e778552975828a1f212540770e5e44952c1541f7637d1b0518c7b385c8c86.tsv)。附件中的提示词、重放命令与历史任务授权只按来源数据保留。

## 固定采用链及与其他 B 路线的关系

直接前置是 2026-09-24 的 **MIX-DW-NONZERO / REG4-RATIONAL**，原文见 [冻结 R14 HANDOFF](../../20260924-session-results/objects/40/400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461.md)，SHA-256 为 `400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461`。其有理 REG4 已排 y=0、y=1、Dw=0，剩 `(u,y,Λ,α)` 四参数、完整 R6…R0 及非零门；不得将其有理结论扩写为旧全部复 REG4 已闭。

[R1 SOURCE_EQUATIONS](../objects/0f/0f02c5e39a8eb48b13c2c69afa6a5562fd979f7085a3ef89bcf91b96c8ee1d11.md) 明确来源为此前 20260924 B/R13–R14，旧 Overview §3F 的 k=6 属另一套两奇幂首档接口；与 20261002 首档 T0 / k_B 高度及固定 k_B 恢复路线分别记录，彼此不能覆盖，也不把一般 REG3 加成“恰好两个素数底”。一般 `Q_poly`、P5、Gi、Vi 均不等于实际源完整素数幂 P/Q。

作者原指定大 Overview 的预期 SHA-256 为 `96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066`，各轮持续标为**原字节未取得核验**。R1/R2 对线上 Git blob 的一致性记录不能冒充这项 SHA-256 通过；R3–R7没有新的远端版本比较声明。外包的 2026-09-22 短导航只支持题面与边界，不能覆盖后来 REG4/REG3 前沿。本次也没有补做该大 Overview 原字节或远端查询。

原 NC3 → 数字提升/GATE → D2/CUBIC → m2/d20/混合正规图仍继承历史作者级链；合成“m=2 只余 d20”还保留 Ulmer–Urzúa 切触适用性、OCTIC、d14、槽分类、NC3⇒4|n 等前置。新显式代数身份本身与原题回传依赖分开；没有因本次入库或作者双实现升级为外部独立接受。

## 七轮顺序与准确增量

| 轮次 | 日期与端点 | 作者结论及未闭部分 | 固定正文 |
|---|---|---|---|
| R1 | 2026-10-02；REG4-SCALE-FIBER2 / GENERIC-FIBER1 | 每固定 `(u,y,r)` 至多 2 个有理/复尺度；`S K≠0` 时至多 1 个。`a=0` 保留，混合零支排除，`S=K=0` 尚开。判别式为有理平方是必要门；完整排 u=−3、y=1/2、r∈[1/2,1] 的所有实尺度。 | [R1 REPORT](../objects/49/4996e8935b4026e83c3b1b89ef689c4d045809c79a88815ef76002755a511ace.md)、[R1 PROOFS](../objects/ce/ce64c2fabb03201e0f6a4cc544636fe8f502b1283354b43a10e0e90724497450.md)、[R1 HANDOFF](../objects/47/47b4b77cd2299f0d3d8b9bdd8f005423c1102c40fbee207b047b309e93ef1b16.md) |
| R2 | 2026-10-02；REG4-EXCEPTION-EMPTY | 有理 `S=K=0` 例外全空，含 `a=0` 和解 r 的零线性系数支；较大的 R6=R5=R4 必要系统已矛盾。不是复例外全空，不是一般 REG4 全空。 | [R2 REPORT](../objects/b1/b1b94cacd9ad10880439908d8f632358e0f7973847e92f13610e131ffe753bc7.md)、[R2 PROOFS](../objects/5b/5be9bdbe8882659a38671a59aa649dde7aca0da70fed4413e2e8c03d92f4e75c.md)、[R2 HANDOFF](../objects/9e/9e942e554d7fea1675dbb4cb4e13410cb4d0ea97627b943be9bc306cfea320ee.md) |
| R3 | 2026-10-02；REG3-POLY6 / DIM≤1 / HALF-EMPTY / 269-CYLINDER | 在完整门内一般有理残差图等价六式 `P5=G4=…=G0=0`，含 a=0，Λ=N/K。允许复模型维≤1；整个有理 y=1/2 切片、指定 269-adic 圆柱退出；尚可能有曲线。 | [R3 REPORT](../objects/22/22ef6b601802fbe7a3a36f33ba5f1d3ff3c5a22510f7adbcdd7851f016f1918f.md)、[R3 PROOFS](../objects/40/40582b92fdda22b3de65c2d5566b3de85e9bdbbb907b4518e887cedb8797f4d6.md)、[R3 HANDOFF](../objects/53/5303f9aecb210bb03ae6dbd6943cf5630894ce431fa89d3fbda8e64655af3a6a.md) |
| R4 | 2026-10-02；REG3-DIM0 / AFFINE-ROOT20 / POSITIVE-MU | `X=V(P5,G4,G3,G2)∩Ω` 有限、可为空，不同复点数≤44,415。每完整规范恢复点原平移 b≤20 种，总选择≤888,300；原斜率仍无界。原正分支另保留 μ>0 与 `27μ²+560μ−2304>0`。没有列点或有理点排空。 | [R4 REPORT](../objects/af/afd4f8aae30bf0694bc72c9a6d9f399aec2f80c15ea8081a8329ceb03a056ef4.md)、[R4 PROOFS](../objects/36/364a1ebf6d3b6e01ca64f8987861ac5c681690f18ee71dde3233fb5b3b0d3cb7.md)、[R4 HANDOFF](../objects/f0/f0c601a8d2111a9e757782d958d60d34988dc1994b861fd759ac3ee5296866f6.md) |
| R5 | 2026-10-02；REG3-ISOLATED-G0 | 用 P5/G4/G0 排 Jcal=0 的全部允许实基点、A5=0 的全部允许有理基点（r甚至可复）；B9 有理支仅新增 H≠0。四个精确 RUR 复点满足六式但 K=0、N≠0，属于门外边界；不穷尽清分母零集。 | [R5 REPORT](../objects/11/1101435706dd6917af3ad7e5a357fe27a73f3e316593a7f5e8f8384b96c6ab65.md)、[R5 PROOFS](../objects/7d/7db25bc401858f28e6ab1866f89507b2ae4d26a0b10e24d7abc464313993ff5e.md)、[R5 HANDOFF](../objects/1d/1db2000ea333d35afeb73d2fbc095ed99c3563be37484247f775949856622b70.md) |
| R6 | 2026-10-02；REG3-N3-MEMBERS / BOUND36855 / NO-UNIT | 五个全局整数身份 `N³Vi=AiGi+βiP5` 给旧/新六式在 Ω 同一局部化理想；未给完整 colon 或饱和基。采用 R4 有限性与 Bézout，完整新六式允许复点≤36,855；没有枚举、删点计数或 UNIT。 | [R6 REPORT](../objects/17/17ece4a1b6b268f13cc05f4fa7d99704bfb1409b922e4dbd3d6602f746b3c5d9.md)、[R6 PROOFS](../objects/fc/fc7dd12a3865cbdb4e13ea712fe509ffac0d77a6f2c83d442e4477849efccef6.md)、[R6 HANDOFF](../objects/8b/8b13776a78a0a4aaed35bd046933199884de874958e8fcd7d427b4260f2d1476.md) |
| R7 | 2026-10-03；HJ-COMPLEX-NONZERO / N-COORD1 | 复域中 `B0N≠0 ∧ P5=V4=V0=0 ⇒ HJcal≠0`，包括特殊孤立基点。合法引入可逆 ρ_N 坐标，N 零门成为 ρ_N−1。全局饱和终端仍开，36,855 不扣减。 | [R7 REPORT](../objects/82/8237e5090162ceb341b20153143caa422698956cafd0aa889f20663a1990fcfb.md)、[R7 PROOFS](../objects/96/968b846355041d8fecdc7e5dd04609bdb59972eb4555fc40c1b403ad1d269ec7.md)、[R7 HANDOFF](../objects/36/3622348426c8ff901c87cb5e21b1f75cf6409f8db86d431aed402acf43bed399.md) |

七个 evidence ZIP 的 SHA-256 按本次成员映射固定如下；ZIP 本体不作为仓库普通文件保留：

| 轮次 | 固定 ZIP SHA-256 |
|---|---|
| R1 | `ccc7ffd50366e33ef859f181a48841f967f2c6951327093b9a0d429726d41ecc` |
| R2 | `3ab89f9db939ef451a9866b73c008dfef49b4654bcee649ff6dd47c3d630baf9` |
| R3 | `6e8e87c67742440dac04c77f043003c80bdab7bc8ac8732d4d6bfee5594437e8` |
| R4 | `1fb349775f703798be07ab669b569d0b33cf11a1fbdaf2bf0eb202da86223dbc` |
| R5 | `6f11f03219cb7ee6d14ea9da49b7618dcc4f154d8965e4d341a434e6624f2af9` |
| R6 | `080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c` |
| R7 | `3c87b53853eccd223299119832eb0438adfc6b4122735fe53da0571208300aef` |

R2 曾给例外规范四元组≤53,120 与 height(u)<2^6420，已由有理例外空集取代；不派枚举旧 53,120 候选。R4 的 44,415 与 R6 的 36,855 都是上界，差 7,560 不是已删除点数。R5 的四个 K=0 点不在 Ω，也不在上述允许点上界对象里。

## 尺度、清分母与原输入合同

原题固定同一合法自然数 `(n,j)`，`4≤j≤⌊n/2⌋`，要求同一个素数 `p≥3` 同除 `C(n,3)` 和 `C(n,j)`；保留 `p=i=3`，每个源窗口保留完整实际 `p^e`，不截断到首档、不丢粗幂层，也不以辅助模数 269/32003 等替换原共同素数。

GATE 采用 f∈Z[X]、系数非负、f(0)=2、d=deg f、A=lc f、`T_work=p^e` 为奇素数幂（e≥1）、`T_work≥[2(f(1)+2)]^(2d+4)`、n=f(T_work) 偶，以及 `D(A,d)=2` 的原接口。当前图为 deg M=2、deg L_poly=8、deg Q_poly=11、deg Z=17、d20。所有变换只重编码同一输入；没有 `(n',j')` 下降，也没有辅助点 ⇒ NC3 的反向充分性。

R1 以 `r=α/Λ` 处理两个辅助尺度；α不是 n/g，r不是源位置，K=K_lin不是原 CUBIC 的 K0。尺度二次 `Q2=aΛ²+bΛ+c` 满足 `c=3ru²(u−1)²y⁴(y−1)⁴≠0`。a=0 时不能除 a；a=b=0 靠 c≠0 排除，原 R5 必须保留。R2 只在有理域关闭同时零支；R3 通过完整多项式身份将 Q2/Q3 相容性压为 P5，a=0 仍包括。

当前简洁的辅助开集是

```
H=u²−uy²+3uy−2u+(y−1)²,
Jcal=u²+uy²−3uy+y,
A=4uy²H, B=3(u−1)(y−1)²Jcal,
N=(u−1)(Ar−B), K=K_lin,
D=8ru²y²−6(u−1)²(y−1)²,
B0=ru(u−1)y(y−1), h=B0DNK, Ω={h≠0},
Λ=N/K, α=rΛ.
```

较大的 Ω 用于 R4–R7 辅助复模型；完整有理恢复继续加 **S、Wgate、T4 非零、r>0、3T4∈Q_{>0}²、原未平方 Q_poly 两符号、零槽二阶约分、同一仿射变换作用于 f/J、系数整数非负、逐位 0≤J_k≤f_k、f(0)=2、真实工作底与全部完整来源幂、同一 n,j 及合法区间**。R3 原完整门为 `r u(u−1)y(y−1)D K N Wgate T4≠0`；S≠0由身份恢复并仍在原恢复时检查。清分母后通过六式只能称规范辅助存活点。

R3 的规范未平方恢复保留 Q_poly 的 ± 号及原平方类；f_norm(0) 不自动为 2。R4 的仿射形式 `f_original(X)=f_*(aX+b)` 只把 b 限到 `f_*(b)=2` 的至多 20 根。每阶原系数还须检查 `a^k f_*^(k)(b)/k!∈Z_{≥0}`，原 J 使用同一个 a,b，不能以新尺度覆盖原源层。

269-adic 圆柱的限制准确为：u,y 的约分分母不被269整除，u mod269≠0,1，2y≡1 mod269；r 是任意有理数，分母可含269。整个有理 y=1/2 排除不升级成全实/复排除。R4 的复零维对象也不升级 R2/R14 的有理域归约。

## R7 新端点与可逆归一化

R7 主命题只需 B0N≠0 与三式 P5=V4=V0=0，不需 D/K 门、R4 有限性、原整数性或来源幂。这一较大复必要模型上的分支排除不能把剩余模型反向当原输入。

H=0 的全部允许复基点由 `u=(τ²+3)/(τ−1)², y=4/(1−τ²)` 覆盖；全部六式及 N/K 的清分母运输见 [R7 H_data 系数与运输证书](../objects/9b/9bf5066460ce798a90616322a4a7545ee16118f1e92ad20a2f2d59bd8c2b8fbb.json)。固定 r 次数 5/9 的两个 14×14 结式在特化最高项为零时仍保留零槽。公共核中的 C2/C4 由实际 N≠0 排除；F2/F4 由两个明确的 Q[τ,r] 身份 `r=UP_H+W(V4)_H+FQ` 排除，见 [R7 H_lifted_2](../objects/94/94f7282c757d1f4d49caab39b7fe608e1a440da0aee3cdaea06d9304a649d07d.json)、[R7 H_lifted_4](../objects/e9/e9a9a30cde196ca58ac43c29fbc950bb93bf310a90c32affd8b55672e521a7af.json)。这不是以实数正性排除复根。

Jcal=0 的升级使用旧完整特征零公共核及**新增实际 N 因式身份**，不是从旧实排除直接扩域，也不是倒置四点 RUR 的包含方向。两分支终端包括所有特殊孤立基点；具体实际允许点删除数未认证。

在完整允许复六式点上现可合法取

```
ρ_N=A r/B, r=Bρ_N/A,
N=3(u−1)²(y−1)²Jcal(ρ_N−1),
D=6(u−1)(y−1)²[ uJcalρ_N−(u−1)H ]/H,
E_N=uJcalρ_N−(u−1)H,
Khat=A³K(u,y,Bρ_N/A).
```

A、B已证非零；新门须保留 `u(u−1)y(y−1)HJcalρ_N(ρ_N−1)E_N Khat≠0`。每条 f 用 `A^deg_r(f) f(u,y,Bρ_N/A)` 完整运输，原 S/Wgate/T4/未平方 Q/仿射与源幂条件亦须运输。只留 ρ_N≠0,1 会丢 D/K 及附加恢复门。ρ_N 是辅助坐标，与旧原三次恢复ρ不同，也不是原 NC 下降。

## 失败、修正与未采用结果

| 轮次 | 留存的失败与处置 | 固定来源 |
|---|---|---|
| R1 | Res_r(K,S) 未返回可采用结式；有限网格仅发现/调试；未交付 2-adic 文本缺 k,d 定义和原恢复式，未采用。 | [R1 FAILURE_BOUNDARIES](../objects/2c/2c927badf3514a8639d339180fe2d1e20096710f092f40a644ec3022ccb1f672.md) |
| R2 | 初次 CAS 结式与固定 Sylvester 行序差 −1，被检查器拒绝，按明确矩阵符号修正并重验；直接高参数/伪余式膨胀不作空性证据。 | [R2 FAILURE_BOUNDARIES](../objects/42/421e0d17b70be2fbf6654b23f93b017d5e21b044378bad9f0a1dacd17d6755c8.md) |
| R3 | Wbar 有常数分母2，修为准确装载2Wbar并运输因子；结式整体符号修正；半切片/269标签测试重叠修正。大展开与局部化 Buchberger 探针止损，不给特征零终端。 | [R3 FAILURE_BOUNDARIES](../objects/08/08e1974b7e8e7af85e8943d9508ba180dce3dceb17e4b2f42135a479732b3411.md) |
| R4 | A5 分支实际次数为4/10，不能用原固定5/11结式的零误判共同根；补首项跌落审计。旧源目录 __pycache__ 污染导致清单失败，作者重新干净解压而非改源。 | [R4 FAILURE_BOUNDARIES](../objects/96/969d57947e38f5cfccc9cbca7e27cb3e738d0cc4abe048dd84deffc95254faf8.md) |
| R5 | F_32003 的 N/K colon UNIT 只作诊断，未提升到Q/C。QQ 试算到66个基多项式、系数11,632 bits触及10,000-bit限额；四点RUR只证明正向包含。 | [R5 FAILURE_BOUNDARIES](../objects/82/82236b56a6595cc40f308b14317ed2b07ecebddca8c2d6be575bc2359b676533.md) |
| R6 | Fraction文本被旧long long原型误读所打印的UNIT明确拒绝；清分母并核输入后探针均超时。降r次数余式总次数反增至58–64，未采用主模型。 | [R6 FAILURE_BOUNDARIES](../objects/bc/bcba3b3f8b1fc92d42afd2290a448173d26e186ea34c2fe2c6cb187f1fb4b217.md) |
| R7 | 模饱和内存限额、QQ超时、保留名IN造成语法错误却EXIT0、satproof不精确除法、商域未先取余，均保留失败并拒绝。修正后的分支显式身份已作者检查；有效新坐标模探针180秒超时；jets未给饱和幂下界。 | [R7 FAILURE_BOUNDARIES](../objects/84/841ccc879d6943edf2380a06984eda4af33f1c5b1f7a178fe4d8a27acfe6a1d6.md) |

TIMEOUT/OOM/COEFFICIENT_CAP 是具体算法或资源失败，不证明空集、存在、完整基或方法本质不可行。单模 UNIT 在未知分母/坏约化下不能提升为特征零 UNIT；R6 保存了明确反例。EXIT0 不等于 PASS。旧四点只知 `V(RUR)⊂V(六式)`，未证反向穷尽。

## 证据分层与来源缺口

作者各轮报告的 exact replay、消费者回归、CRC/SHA 和证书生成回执按**历史作者执行记录**采用；本次没有执行这些附件入口。R4 为大身份用了有限域完整次数网格、整数系数界及 C++ Bareiss；R7 的生成阶段使用 Singular/SymPy，默认验收用标准库整数/Fraction。它们均属于同作者不同实现，不能写成外部独立数学审读或第二形式内核。

直接来源审计见 [R1 SOURCE_EQUATIONS](../objects/0f/0f02c5e39a8eb48b13c2c69afa6a5562fd979f7085a3ef89bcf91b96c8ee1d11.md)、[R2 SOURCE_AUDIT](../objects/59/59383c753047f3f1832d670813cb568cc776b5091a8c156d00f7c38b07fc3c31.md)、[R3 SOURCE_AUDIT](../objects/37/37b40dd20fe83590c8d2c3c40763d08cb8698b15f2fb5e10426ae6460f4496d9.md)、[R4 SOURCE_ADOPTION](../objects/19/195ba98d6752c5b5a8b509235cfa398f506903adc9f7ba510c1713c6b4b35cc5.md)、[R5 SOURCE_ADOPTION](../objects/c8/c85463b6a55e9937f0804c935fd06a2929e45749f5807454f0910f3aabbeae93.md)、[R6 SOURCE_ADOPTION](../objects/e5/e58ed4e4723d6e25689176715c268d295199b098c68f8111465602d1f5309608.md)、[R7 SOURCE_ADOPTION](../objects/d4/d44f67decf0cba5b6568e6c99230109e6907755c206d373bd35d2aac6309e120.md)。R7 作者本轮确实重跑 R6（49+21）与 R5（115+26）；R4完整数学链在 R6/R7未重新跑，R4有限性与 Bézout界按冻结作者前置采用。R7 主分支命题独立于R4有限性。作者新检查/生成回执可定位到 [作者 R7 NEW_VERIFY](../objects/f4/f4f7f9cdbf7a467b06c3bb123b3ec617ad1b8c971eb60ccc8905b5cf25e6b02f.json)、[作者 R7 REGENERATION_VERIFY](../objects/d9/d985269005667f82f335b170c2d9897bd2862beb08eeb59f2acec453bffb5fa6.json)，不能冒充本次复算。

44,415/36,855 的计数接口采用标准孤立点版 Bézout；R4 SOURCE_ADOPTION 记录外部讲义核对，DIM0主结论与计数引用分开。本次未做该外部理论或旧 UU/GATE 适用链的独立审查。

外包 `05_ANCILLARY_EXTERNAL/singular-source-build.zip` 属外部发现工具源码，非新采用证明依赖、非数学阶段。作者 R7 来源说明记录官方制品 run/提交与哈希；本次只保留来源和逐成员映射，没有运行或构建。提取中的源码符号链接按主接收清单仅保存 metadata，不物化、不执行。

## 最新剩余前沿与下一项检查

已采用作者级结论是：一般规范模型的允许复点为**有限未知集合**，完整新六式在 Ω 中安全上界≤36,855，H/Jcal在允许复点上非零；规范点和原平移b只剩有限选择。没有全部点、有效坐标高度或理性分类；不能再把R3旧“无界规范曲线”作为最新状态，也不能称已经有限化原输入。

仍无一般绝对界：原仿射斜率a、原 f/J 系数和高度、T_work 的底素数与完整指数、每个实际来源完整素数幂、g、n、j。一般m≥4、D≥3、GATE门槛以下、交叉/low-low、负三槽、多底等不在本次闭合内；原整数非负与源窗口条件尚未全体消费。未取得真实原点、原题反例或同一输入有效下降。

下一最小可证伪义务固定为 `J_new=(P5,V4,V3,V2,V1,V0)`、`h=B0DNK`：给某m及完整特征零多项式乘子

```
h^m=C P5+Σ Wi Vi,
```

或者给穷尽 Ω 全部允许点的 RUR/三角分解、双向理想成员和门审计。若取得前者，R6已保存的五身份给回传

```
N³h^m=(N³C+Σ Wiβi)P5+Σ WiAiGi.
```

普通 J_new 已有四个 K=0 边界解，不能以未饱和 J_new=(1) 为目标。可在R7已合法的ρ_N坐标尝试分阶段成员证书，但新坐标曾超时，尚无更低成本保证。先固定全部整数输入、运输/除数门、所有六式与精确乘子，再安排独立数学核验；不重复已闭例外、half/269、一般曲线或H/J分支，不以更多单模探针替代缺失的特征零终端。
