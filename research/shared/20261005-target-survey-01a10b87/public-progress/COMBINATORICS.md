# 组合与几何：公开推进、工具边界与下一项判别检查

调查日：2026-10-05（Asia/Shanghai）。执行者：`/root/bounty_screen`，复杂文献与题面审读，Sol / xhigh。唯一写入本文件；不编译、不运行证书或批量搜索、不安装、不提交平台、不联系作者。本轮没有开放研究总预算或自行设定的研究截止时间。

本文件是来源与范围审读，不是数学接受记录。论文中的定理、作者计算声明、论坛推导和本轮建议分别标记；这里的“首检”是下一轮能改变决策的工作，不代表已经执行。平台金额会变，下面仅记录访问时仍显示主赏金。资格以[具体提交条款 Reward review](https://github.com/conjectures-io/conjectures-validator/blob/main/docs/SUBMISSION_TERMS.md#reward-review)为准，不采用 FAQ 的笼统概括：`NOT_NOVEL` 的外部来源分支要求提交获接收之前的有日期公开来源、同一直接目标，以及提交证明实质实现来源的区别性数学论证；结论相同或使用标准策略不足以成立。`PRIOR_EXTERNAL_FORMALIZATION` 还需早于提交获接收、有日期且可检查的完整目标完成记录，单有形式化公告不够。**701 的公开谱证明对应完整题面；照该稿形式化有实质 `NOT_NOVEL` 风险，不视为可靠主奖路线，但不能推断所有外部已解题的独立证明或形式化都必无奖。**

读取入口：本仓 `docs/STRUCTURE.md`、本目录上一轮 `BOUNTY-ONLY.md`；平台目录及各题原始 Lean 类型；下面的原论文、作者贡献说明和原讨论。Erdős 网站的部分页面被直接访问拒绝，个别论坛内容由搜索引擎保存的原页面取得，日期会明确记录。没有把检索未命中解释成全球无人解决。

## 目录范围与总判断

| 题号 | 完整主目标 | 本轮的关键差距 | 全题状态判断 |
|---|---|---|---|
| [128](https://conjectures.io/problems/erdos128-erdos-128) | 每个三角形自由图都有足够大的稀疏半集，边数至多 \(N^2/50\) | 已排掉很多自然图族；一般尖锐常数仍缺 | 保留未覆盖图族，不能重搜强正则／高独立数族 |
| [23](https://conjectures.io/problems/erdos23-erdos-23) | 每个 \(5n\) 点三角形自由图删至多 \(n^2\) 边可二分 | 新证书误差只容许 \(n\le40\)；全阶需消去误差或新结构定理 | 有具体有限证书，未有全题证书 |
| [617](https://conjectures.io/problems/erdos617-erdos-617) | 对每个 \(r\ge3\)，\(K_{r^2+1}\) 的任意 \(r\) 边色都有漏色 \((r+1)\) 点集 | 五色论文及新分割 API 不供全 \(r\) 的严格余量矛盾 | 全 \(r\) 仍未知；五色先审已有证明 |
| [835](https://conjectures.io/problems/erdos835-erdos-835) | 存在 \(k>2\) 的合法 \((k+1)\) 色 Johnson 着色 | 剩余素数参数域已触及大型 Steiner 设计 | 一个见证可全闭合；发现难度没有因有限可验而下降 |
| [982](https://conjectures.io/problems/erdos982-erdos-982) | 任意凸 \(n\) 点集有一个顶点确定至少 \(\lfloor n/2\rfloor\) 距离 | 已知顶点距离下界约 \(0.3612n\)，不是 \(n/2\) | 精确坐标反例可全闭合；一般上界仍缺 |
| [624](https://conjectures.io/problems/erdos624-erdos-624) | 最小局部满射阈值 \(H(n)-\log_2n\to\infty\) | 原文的避集映射与平台任意函数有语义差别；常数缺色不等于发散余量 | 先锁定定义与有效下界，不把相邻问题的定理移入 |
| [156](https://conjectures.io/problems/erdos156-erdos-156) | 每个大 \(N\) 有大小 \(O(N^{1/3})\) 的包含极大 Sidon 子集 | Ruzsa 随机提升的全覆盖 union bound 带来 \(\log^{1/3}N\) | 对数缺口已定位；有限极值不消去它 |
| [701](https://conjectures.io/problems/erdos701-erdos-701) | 任意有限下闭族的每个相交子族不大于同一最大星 | 9 月新论文声明全证明；剩余是审读与形式化，不是原数学空白 | **照公开谱稿形式化有实质 NOT_NOVEL 风险，不视为可靠主奖路线** |
| [107，新查](https://conjectures.io/problems/erdos107-erdos-107) | 对所有 \(k\ge3\)，\(ES(k)=2^{k-2}+1\) | 2026 split／可分解结果没有覆盖一般凸位置目标 | 真坐标有限反例可全闭合；抽象超图反例不能直接转入 |
| [213，新查](https://conjectures.io/problems/erdos213-erdos-213) | 对所有 \(n\ge4\) 构造无三共线、无四共圆的整数距离 \(n\) 点集 | 已知七点；高度依赖的稀疏界不是统一基数上界 | 一个八点例仅是局部；全构造或统一反证仍缺 |

金额观察（2026-10-05 的页面读取，不是付款承诺）：128 显示 $6,826，23 $6,775，982 $6,819，624 $6,819，156 $6,758，701 $6,794；617 浏览器实时显示 $6,758（同日网页提取的金额较旧）；107、213 的返回缓存分别截至 10 月 3／4 日，仍显示主赏金，须按总目录再次刷新金额。835 的目录仍为开放主赏金。完整目录机器记录见同目录 `CATALOG.json`。

## 128：稀疏半图，尖锐常数与剩余图族

**精确目标。** 平台类型是：对所有有限顶点类型 \(V\) 和图 \(G\)，若每个 \(S\subseteq V\) 满足 \(2|S|+1\ge N\) 时均有 \(50e(G[S])>N^2\)，则 \(G\) 含三角形。等价反例要三角形自由且全部这些半集严格超过阈值。端点是 \(\lfloor N/2\rfloor\)，不能把奇数阶改成 \(\lceil N/2\rceil\)。

**固定来源与覆盖。** Razborov，[More about sparse halves in triangle-free graphs](https://arxiv.org/pdf/2104.09406)，2021 预印本／2022 Sbornik，§3 定理 3.2–3.8，给一般 \(27N^2/1024\) 界；尖锐 \(N^2/50\) 覆盖无诱导 \(2K_2\)、\(\rho\le(33-\sqrt{161})/116\)、强正则、\(\alpha\ge2N/5\)、girth 至少 5 等族，\(\rho=2e/N^2\)。[Norin–Yepremyan](https://arxiv.org/abs/1311.5818)，2013／2015，提供密度靠近 \(e/N^2=1/5\) 的尖锐结论；稳定性不是任意中密度图的分类。

**工具边界。** Razborov 的 flag-algebra 不等式先在平衡 blow-up 上应用，再接具体半集构造；正文区分加权半集、整数半集和奇数阶舍入。其若干符号化步骤依赖 Maple 及附属文件，本轮没复核。浮点 SDP 可发现候选，只有精确系数、PSD 分解和每条组合恒等式核查才是证书；对某一模板／权重族的证书不涵盖所有图。

**首检与收益。** 为准备的候选图族建立适用性表：是否含诱导 \(2K_2\)、四圈，是否 \(\alpha<2N/5\)，是否处于未覆盖密度域、非强正则；全部通过后才设计完整半集最小边数证书。若筛掉一族，是无限子族消除；若找到合法严格反例，一个图可反驳全题。剩余无界参数是阶数 \(N\)、图结构，以及 weighted blow-up 的模板阶数／权重分母，不能只界定其中一个。

## 23：新的有理证书为何停在 200 点

**精确目标。** \(\forall n\in\mathbb N\)，每个 \(5n\) 顶点三角形自由图存在二分子图 \(H\le G\)，删边数 \(e(G)-e(H)\le n^2\)。9 月 1 日平台两项贡献只是 \(C_5\) 与 \(n=5\) 的紧性见证；紧性不是所有图的上界。

**原始来源。** [Balogh–Clemen–Lidícký](https://arxiv.org/pdf/2103.14179)，2021，定理 2 用 flag algebra／SDP 处理边密度 \(p=2e/N^2\le0.2486\) 或 \(p\ge0.3197\) 的两尾及一般 \(N^2/23.5\) 界。新 [Ferudun 2606.28041v1](https://arxiv.org/html/2606.28041v1)，2026-06-26，§2–7 声明 order-10 有理证书给 \(d_{mono}\le2/25+\delta\)，\(\delta\approx4.8558\cdot10^{-5}\)，据 blow-up 恒等式和整数舍入覆盖 \(1\le n\le40\)。附属原件：[manifest 与证书入口](https://arxiv.org/abs/2606.28041)。本轮读论文与附属清单，未运行验证器；有限覆盖仍是作者声明。

**真正卡点。** 舍入要求 \((25/2)n^2\delta<1\)，所以固定正误差不能覆盖无界 \(n\)。新论文称其当前 root-cut／Horn／moment relaxation 在该阶数附近停滞；这只限制这个 relaxation，不证明所有 SDP／更高阶方法无效。§7 的 \(\Gamma\le N^2\) 在 connected cut-graph 上仍是待证核心，不能把重写后的同等难题记为已消除。其“first eleven multiples”一句与定理 \(n\le40\) 不一致，正式接入应以定理、精确 \(\delta\) 和实际证书范围重核。

**首检与收益。** 先固定 ancillary manifest，核查 envelope 是一项合法全局切分的期望、PSD／系数为精确有理数、误差归一化和两尾移植；下一判别问题是现有 relaxation 的正误差是否有精确下界，还是可加一条来源清楚的新约束消为 0。只有 \(\delta=0\) 或能独立处理近极值图的稳定性／整数结构桥才可能覆盖全阶；扩大有限 \(n\) 不改变主目标的无界尾。

## 617：全颜色数、五色论文与分割余量

**精确目标。** \(\forall r\ge3\)，对 \(r^2+1\) 点和任意 \(r\) 边色，存在 \(r+1\) 点集漏一种色。给定一组合法反例可反驳全题；\(r^2\) 点的仿射平面构造不满足本题点数。

**新原件。** [Gebendorfer 非计算证明](https://www.researchgate.net/publication/414009962_A_Noncomputational_Proof_of_the_Five-Colour_Case_of_the_Erdos-Gyarfas_Balanced-Colouring_Conjecture)，2026-09-05，定理 1.1 只声明 \(r=5\)，正文明确不声明其他 \(r\)。它取最小色图／极小超独立数核心，用 Turán 等号、Brooks 以及 Kang–Pikhurko 非多部极值界；后者在文中仅用于 \((N,s)=(16,5)\)，必须保留其参数范围和非 \(s\)-partite 假设，不能替换成任意 \(r\)。原计算版和本版论证独立，本轮均未技术验收。

**最新平台固定贡献。** 2026-09-19 [a42828d…／sources.md](https://github.com/conjectures-io/conjectures-contribution/blob/main/contributions/erdos-617/a42828d35af07fc6555806b68d2bbf20eebcf3bdadce894a8d038dd07e09205e/sources.md) 已读：它在同一最小缺口分割上给稳定性、转移和余量记账。统一界只是 \(t_j\ge r-1\)，强界 \(t_j\ge\binom r2+1\) 需要该色图有孤立点；没有证明孤立点存在。\(\sum_jt_j=r\binom r2\) 是守恒，缺严格矛盾。等价目标定理只证明等价，没有证明任一开放命题。

**首检与收益。** 全 \(r\) 路线先审“某色具有强余量”所需的真实结构前提，特别是孤立点、近 Turán 分割、极小核心范围能否由 balanced colouring 推出；不能把附加前提放入消费者后宣称全题。固定 \(r\) 的 SAT 可检验局部结构，但群对称性限制的 UNSAT 只排该对称类；有限任意着色的 UNSAT 需完备编码／可复核证明。\(r=5\) 验收是局部覆盖；\(r\)、核心阶数随 \(r\) 增长仍无界。

## 835：编码界已达到哪里，设计障碍剩在哪里

**精确目标。** 存在 \(k>2\) 的 \([2k]\) 上所有 \(k\)-子集的 \(k+1\) 着色，使每个 \((k+1)\)-子集的 \(k\)-子集出现全部颜色；等价 \(\chi(J(2k,k))=k+1\)。完整见证可闭合；否定要覆盖所有无界 \(k\)。

**原来源与更新。** [Ma–Tang 作者短文](https://github.com/QuanyuTang/erdos-problem-835/blob/main/On_Problem_835.pdf) 及[原讨论](https://www.erdosproblems.com/forum/thread/835)，网站记录其排除 \(k+1\) 合数。PDF 直读受到下载类型限制，本轮不把其证明当独立验收。论坛 2026-05-30 的设计推导指出颜色类各为 \(S(k-1,k,2k)\)，且需分割成 large set；导出设计排 \(k=10,12\)，首个仍留的 \(k=16\) 导出 \(S(4,5,21)\)。[Östergård–Pottonen 原非存在论文](https://citeseerx.ist.psu.edu/document?doi=b8773b10f091999b162b5532e7800c304ced7cdf&repid=rep1&type=pdf) 讨论 \(S(4,5,17)\)；导出链和现时 \(S(4,5,21)\) 状态仍应另审。

**标准工具的边界。** \(A(2k,4,k)\) 的 constant-weight-code 上界只有严格小于 \(\binom{2k}{k}/(k+1)\) 才排色。论坛曾声称排 \(k\le500\)，后因浮点误差撤回；不采用。Hoffman 等号／Johnson scheme 可强制补集同色，仍不构造全部颜色类。已存在一个 Steiner 设计也不等于存在所需 large set。

**首检与收益。** 将候选 \(k\) 的精确整除条件、导出设计与编码界列全，再决定是否还存在未被覆盖的自由度。SAT／ILP 的群轨道构造只给对称见证；要反证任意着色，需完整性证明，不得默认任意解有指定群。排某一 \(k\) 只是局部；成功的一个色表解决全存在命题。\(k\)、设计阶数／轨道结构仍无界。

## 982：顶点距离不是全局距离

**精确目标。** \(\forall n\ge3\)，任意 \(n\) 个互异平面点在凸位置时，存在其中一点到其余点的距离种数至少 \(\lfloor n/2\rfloor\)。不能用 Altman 的“全点集距离种数”定理替代这个 pinned 结论。

**原论文。** [Nivasch–Pach–Pinchasi–Zerbib 1207.1266v2](https://arxiv.org/pdf/1207.1266)，2013-03-22，定理 1 与等腰三角形计数改进给 \((13/36+\varepsilon)n-O(1)\)；论文末尾具体估计／摘要给约 \(\varepsilon=1/22701\)。[原题与参考记录](https://www.erdosproblems.com/982) 保留 Moser、Dumitrescu 较弱界，及“某顶点每个同心圆至多两点”强化已假的事实。正多边形说明目标尖锐，不构成反例。

**卡点与首检。** 现行双计数控制等腰三角形总数，没有得到尖锐 \(n/2\) 的逐顶点保证。先对拟用的距离重复模式核查：能否由严格凸实坐标实现，所有等距关系是否精确，以及是否真正让**每个**顶点种数不足。代数坐标要给凸包／行列式符号与平方距离证书；抽象等距图、浮点近等距、非凸配置均无效。一个合法反例可全闭合；参数 \(n\)、坐标代数次数／高度仍无界。降低已有下界的误差常数通常不消去主差距。

## 624：局部满射阈值与原文定义的对应缺口

**平台全目标。** \(H(n)\) 是任意 \(f:\mathcal P([n])\to[n]\) 使所有 \(|Y|\ge m\) 均有 \(f(\mathcal P(Y))=[n]\) 的最小 \(m\)；求 \(\forall C\in\mathbb R\)，最终 \(H(n)-\log_2n>C\)。当前 [Formal Conjectures 定义](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ErdosProblems/624.lean) 已用浏览器读 `ExistsEventuallySurjective`／`H`：没有 `f(A) ∉ A`，\(n=0\) 特定义 0，极限只关心大 \(n\)。

**原件实读。** [Erdős–Hajnal 1968 原文](https://users.renyi.hu/~p_erdos/1968-01.pdf)，Mat. Lapok 19，345–348，英文摘要在最后页要求合法输入的映射值来自 \(S\setminus A\)；原 set-mapping 约定只给 proper subsets 取值，不能对 \(A=S\) 要求选出 \(S\setminus S\) 的元素。计数／随机构造给 \(\log_2n\) 附近的 \(O(\log\log n)\) 上界；下界发散仍未证。[Gyárfás 作者回顾 §3.2](https://www.renyi.hu/~gyarfas/Cikkek/ar2erdos.pdf) 同样保留避集条件。平台任意函数更一般；原避集下界不能不经对应证明转移到平台最小值。这是待核语义桥，不是已确认 misformalization。

**后继证据与首检。** [原讨论](https://www.erdosproblems.com/forum/thread/624) 所记 Alon 结果是个人通信：对 \(n=2^k\) 的 \(k\)-子集有固定比例缺色；没有取得该个人通信的完整公开证明。固定比例缺色只强制常数量级阈值提升，尚不等于任意加法余量发散。先核原避集版本与当前任意函数版本是否有不改变阈值的桥，再选择能对每个固定偏移 \(C\) 控制 \(|Y|\le\log_2n+C\) 的证据。SAT 可核固定 \((n,m)\)，但不能代替无界 \(n\) 与任意 \(C\)；二者是全题剩余参数。

## 156：对数因子确实来自全覆盖，而非验证昂贵

**精确目标。** 存在绝对常数 \(C,N_0\)，\(\forall N\ge N_0\) 存在包含极大（不是最大基数）Sidon 集 \(A\subseteq[1,N]\)，\(|A|\le C N^{1/3}\)。所有二项和含重复项的 Sidon 约定必须和 Lean 定义对应；有限群特征 2 的“互异项和”不能直接替换。

**原构造实读。** Ruzsa，[A small maximal Sidon set](https://doi.org/10.1023/A:1009757824153)，1998，55–58；本轮读了[扫描原件 PDF 页 27–29](https://rexresearch1.com/ErdosMath/Analytic%20and%20Elementary%20Number%20Theory%20A%20Tribute%20to%20Mathematical%20Legend%20Paul%20Erdos.pdf)。取 \(q=p^2+p+1\) 的 Singer Sidon 模型，每个模类随机提升到整数区间。对每个待覆盖 \(m\)，选至少 \(p/8\) 个互不共用变量的三元表示，使覆盖事件独立；未覆盖概率指数下降。为了同时覆盖全部约 \(N\) 个目标，原文将单点失败压到 \(<1/N\)，并选 \(p\asymp(N\log N)^{1/3}\)，再把少数允许模类的剩余点扩为 maximal。因此该证明的 log 在随机提升加全目标 union bound 中出现；不是计算证书本身的 log，也没有证明最优构造必须带 log。

**更新及边界。** [Redman–Rose–Walker 2109.00292](https://arxiv.org/pdf/2109.00292)，2021／2022，有限群 analogue 仍为 \(O((n2^n)^{1/3})\)，也用互不共用三元组与 union bound；其 maximality、进位和 Sidon 约定不能无损迁到整数。[2026 有限报告](https://erdosproblemaday.com/day/156-maximal-sidon-log-factor) 只提供精确小区间极值导航，未关闭 asymptotic log gap；原脚本本轮没执行。

**首检与收益。** 对一个拟替换的覆盖构造，先审是否仍有完整 Sidon 性、全区间饱和性和尾部扩集大小界；只有三项同时保持且不需把单点失败压至 \(1/N\)，才可能接近消 log 的全路线。确定性／相关覆盖方案目前仅是待评估入口，没有本轮新定理。\(N\)、模素数 \(p\)、提升高度及边界覆盖均随 \(N\) 无界；一张小 maximal 集不闭合主目标。

## 701：9 月完整数学声明、语义对应和赏金资格风险

**完整类型与固定证据。** [平台](https://conjectures.io/problems/erdos701-erdos-701) 是 \(\forall X\) 非空有限，\(\forall\mathcal D\subseteq\mathcal P(X)\) 下闭，\(\exists x\in X\)，\(\forall\mathcal I\subseteq\mathcal D\) 相交，\(|\mathcal I|\le|\mathcal D(x)|\)。目标 source-type SHA256：`ca0ae541b657e550f538d41a62a6ebd5d370b8cbde8971ccc3066b1e8ff687b8`；tasks 合成源版本 `6a786f997e18e8f095762a2830d191b7e25e505e`。该合成提交的 GitHub blob 返回无有效 ref，不能由此说源码不存在；平台 exact type 与本地同 pin 依赖为本轮可读证据，正式检查要按官方流程重建 bundle。

**新原论文。** [Chang–Liu–Liu 2609.19123v1](https://arxiv.org/html/2609.19123v1)，2026-09-16，§4 定理 1.1 推出任意有限 hereditary 族的最大星界；[Ellis–Filmus–Friedgut 2609.28404v1](https://arxiv.org/html/2609.28404v1)，2026-09-23，定理 1 与 §2 给直接谱证明，没有 \(\tau\le2\)、均匀族、压缩等附加假设。它以 Boolean Fourier 算子和受限矩阵平方迹，把相交子族大小夹在同一最大星界之下；这是作者全数学证明声明，本輪未 Lean 化或技术接受。

**语义核对已做。** 本地 `.lake/packages/mathlib/Mathlib/Combinatorics/SetFamily/Intersecting.lean:46–61` 的 `Set.Intersecting` 是所有 \(A,B\)（含同一成员）均非 disjoint；`bot_notMem` 排空集成员，`intersecting_empty` 允许空子族。它匹配论文 \(A\cap B\ne\varnothing\) 的 self 约定，不是单纯 distinct-pair predicate。文件 SHA256：`d5c68ba75a892f7eb7fe1b92f62fcb686afc9f48c439fef054323ed3ece73aff`；本地 manifest 的 Mathlib pin：`0df444a360eaa60ab8c11dca51a86af692955474`。另见[公开 mathlib 定义](https://leanprover-community.github.io/mathlib4_docs/Mathlib/Combinatorics/SetFamily/Intersecting.html)。选 \(\mathcal D\) 的最大星中心即可保持同一 \(x\) 对所有子族；空族／只有空集的下闭族也只有空相交子族，非空底集保证可选中心。这里没有发现 self／零阶漏洞。

**旧工具与新剩余。** [Frankl–Kupavskii 2201.03865](https://arxiv.org/pdf/2201.03865)，2022／2023，定理 7 的 \(\tau\le2\) 是对相交子族 \(\mathcal I\)，不是含空集的整个下闭族；一般 matching 只给 \(|\mathcal I|\le|\mathcal D|/2\)，不等于最大星。新论文 §4 的 weighted Hoffman／inertia tightness 是额外猜想，不是其定理 1 的输入。形式化首检应锁 paper v1 与任务 bundle，核 Fourier 归一化、线性独立性、\(\pm1\) 特征空间维数和 trace/rank 桥；不要扩到未证谱强化。若接受，可覆盖所有有限底集，而不是小阶 SAT；剩余是 proof engineering 与独立审读，不再自称新的数学发现。

**已有议题与资格。** 浏览器实时检查 [仓库 `701` 查询](https://github.com/google-deepmind/formal-conjectures/issues?q=701) 返回旧题面 issue [#904](https://github.com/google-deepmind/formal-conjectures/issues/904)、添加题面的 [#3805](https://github.com/google-deepmind/formal-conjectures/pull/3805)、修有限底集的 [#4037](https://github.com/google-deepmind/formal-conjectures/pull/4037)；没有在该限定查询中发现 9 月全证明的 formalization PR，这不是全网不存在认证。平台零 attempt／金额不是资格证明。Root／inventory 已 fresh 对应 LIVE v6 与具体条款 v3；[Reward review](https://github.com/conjectures-io/conjectures-validator/blob/main/docs/SUBMISSION_TERMS.md#reward-review) 要求来源日期、直接目标相同和提交证明实质实现其区别性论证，不能仅由数学结果已公开判为 `NOT_NOVEL`。若照本节公开谱稿实现，其 Fourier 算子、特征空间与迹夹逼对应会带来实质资格风险，故不视可靠主奖路线；这是对该实现路线的判断，不是所有独立证明／形式化都无奖的规则。`PRIOR_EXTERNAL_FORMALIZATION` 须有可检查的目标完成工件或记录，本轮限定查询的结果与公告都不足以单独确认它。可以正确署名地审读或形式化，但不承诺奖励。

## 新候选 107：split 精确阈值与真正凸多边形仍不同

**完整目标。** 对每个 \(k\ge3\)，最小保证凸 \(k\)-边形的一般位置点数 \(ES(k)=2^{k-2}+1\)。已知小 \(k\le6\)；下一固定 \(k\) 成功仍不证明无界 \(k\)，但一个真实平面反例可反驳全称主目标。

**最新原件。** Baek–Balko，[SoCG 2025 全文](https://drops.dagstuhl.de/storage/00lipics/lipics-vol332-socg2025/LIPIcs.SoCG.2025.13/LIPIcs.SoCG.2025.13.pdf)／[2026 JCTA 版本](https://doi.org/10.1016/j.jcta.2026.106195)。定理 3 的 split \(k\)-gon 阈值恰为 \(2^{k-2}+1\)，但 split 可能有 \(k+1\) 点，两链只共用一端，未必形成凸 \(k\)-边形。论文另覆盖 decomposable 点集，并否定一个更一般的 ordered-hypergraph 猜想；该抽象反例不自动是平面可实现序型。文中给仍有指数小阶误差的已知一般上界，而非 exact threshold。

**首检与收益。** 先按其可分解性定义核拟构造是否已被定理覆盖，及抽象方向关系是否满足真实点集可实现性。SAT／ASP 得到的符号序型需要精确代数／有理坐标或独立 realizability 证明；只验证局部方向公理不能冒充平面点集。UNSAT 只解决锁定 \(k\) 的完备编码范围；要全正解需统一结构论证。无界参数是 \(k\)、点集阶数和坐标高度／代数复杂度。

## 新候选 213：代数曲面工具给高度界，未给全基数界

**完整目标。** \(\forall n\ge4\)，存在 \(n\) 个平面点，互异、任意三点不共线、任意四点不共圆、全部距离为整数。七点例和八点新例都不是任意 \(n\) 构造。

**最新可读原件。** [Greenfeld–Iliopoulou–Peluse 2401.10821v3](https://arxiv.org/html/2401.10821v3)，2025-08-25，定理 1.1／推论 1.3 在 \([-R,R]^2\) 内给 \(|S|=O((\log R)^{O(1)})\) 或几乎全部点在线／圆上的结构；论文记七点构造仍是最大已知。工具是把整距离条件编码为有理曲面上的点、用 determinant-method／有理点计数，再区分低度曲线。作者区分这种高度定量控制与 uniform 基数上界。[Ascher–Braune–Turchet](https://arxiv.org/abs/1901.02616)，2019／2020，只在 Lang 猜想下给统一基数上界，不能当无条件反证。

**首检与收益。** 新构造要核不是“多点在线或圆上”的旧族，平方距离、非共线、非共圆都能独立精确验证；固定直径搜索的完备性只关于该直径。若拟用曲面路线反证主目标，必须指出怎样消去高度 \(R\) 依赖；只有 polylog 稀疏性不禁止巨大高度的更大点集。正方向需任意 \(n\) 的构造族，负方向需高度无关基数上界或一个确定 \(n\) 的不可能性定理。\(n\)、直径／坐标高度与数域复杂度仍无界。

## 可接续判别与本轮未完成的技术接受

### 624 与 156：哪个更适合第一次结构探针

这里比较的是“是否已有一个来源清楚、能辨别下一步的结构检查”，不是成功率或所需时长。

| 项目 | 可复用的确切输入 | 第一检查及判定标准 | 若成功，对完整主目标的作用 | 目前不能声称的事 |
|---|---|---|---|---|
| 156 | Ruzsa 的 Singer 模类、独立三元覆盖、随机提升与剩余扩集计数，均有原构造 | 固定原构造，逐项定位单点失败概率、独立组数、union bound 与扩集代价；评估拟用的相关／确定性覆盖工具能否同时保 Sidon 与全区间饱和，且参数可对每个大 N 选择 | 若真的去掉 log 且保住剩余扩集大小界，会直接建立任意大 N 的目标构造，能接全题 | 本轮没有一个已适用的新定理替代 union bound；只改数值 p 或多算小 N 不去 log；去掉 union bound 一词也不供覆盖证明 |
| 624 | 原 1968 避集映射上界；当前 generic H 定义；Alon 固定比例缺色的公开记载 | 先完成 proper-domain、避集条件与 generic 最小阈值的语义桥；再问一个工具能否对每个固定加法偏移 C（而非只有 C=0）提供统一缺色证据 | 若获得任意 C 的最终阈值排除，直接证明所需发散；只完成定义桥是前置解锁，不是新渐近下界 | 未取得 Alon 个人通信的完整证明；常数缺色不能自动迭代为发散余量；尚无已匹配的平台版谱／压缩／熵定理 |

因此，**156 的首个结构检查比 624 更具体**：log 的来源已经在原证明中定位，覆盖与保持 Sidon 的义务可以一起检查。这个判断不等于 156 比有限见证题容易，也不等于已经找到可用的消 log 方法。624 当前应先做定义／来源对应；若要求直接启动全数学未知的进攻，工具适用性仍是 unknown。两题都需要统一处理无界 N／n；相比 835、213 的大规模有限子例，它们避免把下一个小参数冒充主奖收益，但也没有现成廉价闭合证据。

1. 701 的公开全证明已改变“数学未知”判断；照公开谱稿形式化有实质 `NOT_NOVEL` 风险，不视可靠主奖路线。资格须具体对应来源与提交证明，不以已公开结论或网页金额作一概判定。
2. 23 的首要新信息是正误差证书明确止于 \(n=40\)，156 的首要新信息是 log 在随机全覆盖步骤出现。它们各提供一个具体可审的瓶颈，不是本轮新的突破。
3. 128、617、835 先排除已覆盖结构再设计试探；982、107、213 必须保留真实几何条件及坐标证书。任意设定的群作用、模板、维数或高度限制都要标记为子族。
4. 624 原文避集条件与当前任意函数定义的桥仍 pending；平台所指合成版本要通过 bundle 重建再固定定义。835 原作者短文 PDF 和某些个人通信没有取得完整可提取文本，不能将此文献记录提升为独立证明验收。
5. 未运行任何 Lean／SAT／SDP／ILP／证书检查，未重现任何作者计算范围，未执行开放研究。技术验收、来源对应、创新、发表与赏金资格仍是不同状态。

环境观察：本机为 Windows，CIM 内存读取拒绝；D: 查询当时约有 17.16 GB 可用。没有重型构建或计算，因此未依据宿主总内存安排并发。本文所有网页事实来自本轮读取；缓存访问日期与原论证日期分别给出，不把旧摘要当最新接受状态。
