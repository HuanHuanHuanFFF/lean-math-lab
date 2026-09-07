# Genus-2 End / QC 独立审计

2026-09-07，worker；证据等级：**纸面几何推导 + 既有点数 + 精确小多项式复核，非 Lean 几何定理**。

结论：主任务的 End 推导成立，前提必须保留第三轮关于同一个 Jacobian 的**几何绝对简单性**。它排除了这个 genus-2 商靠额外 Néron–Severi 类满足通常 QC 秩判据的捷径；不排除其他 QC 实现、深度 2 集合有限性或原 genus-6 曲线路线。

## 输入对应

`round4/main/prym_probe.py` 与第三轮报告使用相同曲线

\[
D:\ y^2=9t^6+64t^5-200t^3+64t+144.
\]

7 处既有点数为 16、44，给出

\[
P_{D,7}=T^4+8T^3+29T^2+56T+49
=(T^2+3T+7)(T^2+5T+7).
\]

worker 另用纯 Python 整数多项式 Euclid 运算复核了 7、11 处 sextic 与导数 gcd=1、首项非零，以及上述因式相乘。记录在 `endomorphism-algebra-audit.json`，未增加点数计算。奇特征、首项单位和平方自由性使标准光滑射影双曲模型良约化。

11 处多项式为第三轮同一个 `T^4+5T^3+15T^2+55T+121`。这里沿用旧报告按 Howe–Zhu 作出的绝对简单性结论，没有把简单于 Q 替换成几何简单，也没有重新宣称 Lean 验证了这个几何桥。

## 代数链条

两个二次 Weil 因子对应普通椭圆同源因子：迹分别为 −3、−5，都不被 7 整除。其几何有理 End 代数分别为

\[
K_1=\mathbb Q(\sqrt{-19}),\qquad K_2=\mathbb Q(\sqrt{-3}).
\]

这里必须使用 ordinary 条件。仅知道某个有限基域上的 End 代数为二次域，并不足以在超奇异情况下推出几何 End 代数仍是二次域。普通椭圆曲线在有限扩域后仍普通，每个扩域 End 代数包含原来的二次域且仍为二次域，因此几何 End 代数不扩大。参见 [Sutherland，Lecture 14，Corollary 14.19](https://math.mit.edu/classes/18.783/2015/LectureNotes14.pdf)。

若两个椭圆因子在代数闭包上同源，其有理 End 代数必同构；两个不同虚二次域不可能同构。因此交叉 Hom 为零，约化后的几何 End 代数是 `K1 × K2`，没有被漏掉的矩阵块。

令 `B=End⁰(J_D/Qbar)`。几何简单性使 B 为除代数。良约化给出**幺** Q-代数单射 `B → K1 × K2`；可先在定义所有几何自同态的有限扩域上延拓，再特化。几何版本的单射直接见 [Costa–Mascot–Sijsling–Voight，式 (7.3.2)](https://jvoight.github.io/articles/rigendos-03302020.pdf)。

将单射与任一坐标投影复合，仍是幺同态。其核是除代数 B 的双边理想，且不是整个 B，故核为零。因此 B 同时嵌入两个二次域，首先被迫交换；作为数域，它要么是 Q，要么是一个同时同构于 K1、K2 的二次域。后者不可能，故 **B=Q**。这里用的是抽象域的非同构性，不需要不加说明地选定两个域在同一代数闭包内的位置。

由 Rosati 固定子空间与 `NS⊗Q` 的对应，几何 NS 秩为 1；Q 上的极化给出非零类，所以 Q 上的 NS 秩也为 1。对应的精确陈述见 [Milne，Abelian Varieties，Proposition 14.2](https://www.jmilne.org/math/CourseNotes/AV.pdf)。

## QC 的准确边界

第三轮给出的下界仅为 `rank J_D(Q) ≥ 2`，不是精确秩 2。于是 `g=2, rho=1` 时，通常充分条件 `r<g+rho−1=2` 不成立。该条件是**充分条件**，反向推断深度 2 集合无限无效。整点版 QC 还存在不同的判据，但这里 `t=(m+3)/(n+3)` 是分母无界的有理数，不能无桥接地转成 `D(Z)`。原文对两种范围有明确区分：[Balakrishnan–Dogra，Lemma 3.2 与 Theorem 1.1 后的讨论](https://arxiv.org/pdf/1601.00388)。

原 genus-6 曲线 C 是另一对象。Q 上的 involution 给出 `Jac(C) ~ J_D × Prym`，故 `rho_Q ≥ 2`。若未来得到经过认证的 `r_C ≤ 6`，上述 QC 充分条件成立；若 `r_C ≤ 5`，普通 Chabauty 的秩条件成立。Prym 的绝对简单性不否定这些可能性。`r_P` 未知，`r_D` 也只有下界，不能擅自把 `r_C=r_D+r_P` 写成 `2+r_P`。

首次请求 arXiv v2 PDF 返回内部错误；无版本 PDF 可读取，已对照其 Lemma 3.2 与整点/有理点讨论。没有依赖搜索结果中的非数学同名人物页面。
