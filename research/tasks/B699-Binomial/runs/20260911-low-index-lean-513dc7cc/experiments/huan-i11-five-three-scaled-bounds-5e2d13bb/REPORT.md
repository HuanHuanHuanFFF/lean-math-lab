# (5,3) 实际有理缩放界与条件边消费者

唯一写入本目录；owner `/root/i18_downstream_review`。开始 2026-09-11 15:08:40 UTC，20 分钟检查点 15:28:40 UTC，不是总截止。七个源均是**未编译候选**，未运行 Lean、Git、下载或大计算。上一份 actual-pade-edge 和其他冻结源保持原字节。

预期前沿作用：补上 i11 无穷尾部路线中 (5,3) 的两条真实缩放界。实际交付：两条界、实际整数 gap 矛盾、同一最小 m 的完整条件消费者均已写出；最终仍以实际增长树和八个固定整数/有理数证书为参数，不能称无条件 edge 或初始高度已证明。B 原题仍 **0/19**。没有新常数或新颖性主张。

## 已构造的数学连接

保持原 `(p,q)=(5,3), P=625,Q=2187,a0=7,b0=2,x=1,y=4375,c=5,d=3`，原权重 `(354,228)`、m0=129、Y0=2^15359、Z=5726930071079973414170、M=213。Bool true 对 delta0，false 对 delta1。设 u=3m-delta，v=2m+delta-1，L=(1273397/1000000)^3，G 是实际 `qContent u v u`。

实际源恒等式和实际 G 下界给出

`L^m * abs(qN) <= 4375^u * abs(Q_delta(1/4375))`,
`L^m * abs(error) <= 4375^v * abs(E_delta(1/4375))`，

其中 `error=4375^(5m)*pN-4374^(5m)*qN`。使用 u<=3m、v<=2m，标准实际多项式界得到

`L^m*abs(qN) <= (4375^3*BQ)^m`,
`L^m*abs(error) <= (4375^2*BE)^m`。

这是从实际 qContent 和实际系数恒等式推出的结论，**不是假设的缩放界**。清分母只乘正的 L^m，不把 M 当乘法泛函，也不作实对数变换。

定义原有常数

`A3=625^5*L/(2^5*4375^3*BQ)=625^2*L/(7^3*2^5*BQ)`，
`W=(625*2187)^5*L/(4375^2*BE)`。

如果 A3^m>48，则第一式推出 `2*(2^(5m)*24*abs(qN))<625^(5m)`。
如果 `2187^(5m)*V=Nq` 且 `2*Nq<W^m`，则第二式乘上正的 `2187^(5m)` 后推出 `2*abs(error)*V<625^(5m)`。两式相加即实际整数 gap 右端严格小于 r=625^(5m)。V=0 也覆盖；与整数非退化消费者组合时 C>=1 自动确保实际 V>0。

`SelectedEdge.lean` 用原先定义的同一 `Nat.find` 最小 m，七个 selector 证书得到 m>=213>=129、20m<e、35m<f。A3>=1 与 A3^213>48 给 A3^m>48；W>=Z 与最小 m 阈值给 W^m>4Y；Nq<=2Y 给 2Nq<W^m。合法提取 V=3^(f-35m)C 后调用真实相邻行非退化，不假设 det。实际 gap<=24 于是产生矛盾，推出 `Y^354<=A^1000 OR Y^228<=C^1000`。gap=0 和同位置情形保持覆盖。

## 七个候选模块及审计顺序

1. `RatBounds.lean`：清分母绝对值界、带正系数取消、比值幂恒等式、两项严格半界求和。
2. `ActualBounds.lean`：实际 Q 内容恒等式、实际 E 余项恒等式、直接调用实际 G 下界；从实际标准 Q/E 界得到上述两条乘法界。
3. `ScaledGap.lean`：从 A3/W 的普通幂比较推导两个实际 gap 项各小于 r/2，再输出**整数**两项和<r。
4. `SelectedEdge.lean`：实际标准 Q/E 增长与固定数据为输入的完整最小 m 消费者。
5. `GrowthInputs.lean`：调用 `factorial_strict_k_5_3` 和 `actual_q_eval_bound`/`actual_e_eval_bound`；增长树加上四个 m=1 真实多项式不等式给全 m 标准 Q/E 界，不再假设最终 Q/E 增长。
6. `SmallCertificates.lean`：用低次真实 qPolynomial/ePolynomial 证明四个初值界，并写入 A3>=1、W>=Z 的有限有理证明。均待主任务实际编译。
7. `FixedEdge.lean`：将这些组件合成固定 (5,3) 边。**剩余参数只有实际 Q/E 增长树和八个固定证书**，没有 det、G 下界、标准增长、缩放界或目标 edge 参数。

全部共有 25 个 `#print axioms` 审计入口；允许集合 std3，不代表已有实际输出。没有 sorry、native_decide 或自造 axiom。

## 最小剩余数据及已有来源

**实际增长树两族（每族 Bool 的两行）**：固定 qLambda=`440758604932333255282947863/39614081257132168796771975168`，eLambda=`618834739845914957406423393/39614081257132168796771975168`。`GrowthInputs` 中逐字使用这些有理数，BQ=beta(5,3)*qLambda、BE=beta(5,3)*eLambda。原树位于 `experiments/huan-i11-five-three-growth-tree-5e2d13bb/candidate/lean/Growth/I11FiveThreeTree.lean`，命名空间 `Math.B699.I11FiveThreeGrowth.Tree` 的 `q_tree_delta0/q_tree_delta1/e_tree_delta0/e_tree_delta1`。5 个 Q 叶、4 个 E 叶均为固定证书。父任务需整合并验收；当前 frozen Tree 的 imports 指向尚未安装到共享 lean/Growth 的 I11FiveThreeShared/Leaves，所以本候选将精确 GrowthTree 类型作为入口，不把其存在伪装成已验。

**八个固定数值证书**：

- `(48:Q)<A3^213`；原 `log-free-selector-results.json` 的 (5,3) 行给 A3 精确分数和有限检查，本次重算同一个分数并检查成功，分子/分母约 25,635/25,593 bit。没有改 m0。
- `Z^(M-1)<=4*Y0`；以及 p 端 Jp=5^20000, alpha=646 和 q 端 Jq=3^35000, alpha=772 的各三条 rate/base/lookahead，总共七条。类型逐条写在 `FixedEdge.lean`，无打包的 HeightValid/edge field。
- 同 run 的 `experiments/huan-i11-approximation-bridge-plan-5e2d13bb/{log-free-selector-results.json,short-power-bases.json}` 是原始精确有限数据。短基 `5^512<=2^1189`、`3^128<=2^203`、`2^289<=Z^4` 和原指数余量，可通过 `lean/DiscreteSelector/ShortPowerBounds.lean` 的已写通用桥证明六个大幂条件；本次没有重新展开那些大型大幂。对应数据仍须实际 kernel 验收。

**候选导入链验收**：本目录没有将未编译文件当成 accepted。`ActualBounds` 经上一 frozen `ActualRemainder` 调用 `HomRemainder/Remainder` 和 `I11DivisorFiveThree/Threshold.qContent_five_three_lower`，`SelectedEdge` 经上一 frozen `FiveThree` 调用 `DiscreteSelector/LeastExponent`；这些具体父任务验收状态应按最新 receipt。`source-ledger.json` 留下当前字节 SHA、声明行号、实际找到的收据及其源码哈希匹配。Rows 和 Moment Identity 的接受不覆盖此新消费链。Factorial5D3 已有 accepted receipt，但仍需核验本候选的调用接口。

## 实际检查与边界

`bounded_check.py` 重用实际 P/Q/E 系数公式及 gcd 定义，检查 m=1,2,3,4,213 与 delta=0,1 共 10 个实例：真实归一化余项恒等式、实际 Q/E 标准界全部通过；m=1 的四个初值界通过；m=213 的 G 下界、两条清分母界、V=0,1,2,3 的两个严格 gap 项及其和通过。原 A3/W 精确分数相等、A3>1、A3^213>48、W>=Z 和三个短基实际通过。耗时约 0.140 秒，无大搜索。结果见 `bounded-check-results.json`。

这些是小型精确检查，不是全 m 定理或 Lean 验收。当前可交给父任务串行编译；若成功，下一最小工作是连接已有四个树根和八个固定证书，而非再设缩放不等式为假设。其他四条边、初始高度及有限全量覆盖仍未由本任务完成。
