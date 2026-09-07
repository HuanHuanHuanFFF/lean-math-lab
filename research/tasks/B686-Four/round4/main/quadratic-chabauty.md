# 二次 Chabauty：商曲线的障碍与原曲线尚存的条件路线

2026-09-07，第四轮收尾调研。**这是根据精确点数与公开定理作出的纸面分析，未将自同态、Néron–Severi 群或 Chabauty–Kim 理论形式化到 Lean。不能列入本轮63条 Lean 公理检查所验证的几何结论。**

## 商曲线实际上没有额外几何自同态

令 D:w²=9t⁶+64t⁵−200t³+64t+144，J=Jac(D)。前轮已通过模11良约化及
[Howe–Zhu Theorem 6](https://arxiv.org/pdf/math/0002205) 给出 J 在特征零绝对简单的纸面证明。

本轮 `prym-probe.json` 已有模7的精确点数，不需增加搜索：

P_{D,7}(T)=T⁴+8T³+29T²+56T+49
          =(T²+3T+7)(T²+5T+7)。

由有限域同源分类，J_7 同源于两个 ordinary 椭圆曲线 E_1、E_2；迹分别为−3、−5，
均与7互素。它们的几何自同态代数分别是 Q(√−19)、Q(√−3)。两个域不同，所以
E_1、E_2 即使在代数闭包上也不同源，从而

End⁰(J/F7bar) ≅ Q(√−19) × Q(√−3)。

良约化使几何自同态代数的特化为单射。这可从非7素数的 Tate 模与良约化下的
特化同构看出；自同态须先在一个共同的有限数域上定义，再在7上方的素点特化，
因此目标是几何特殊纤维，不能只用 F7 有理自同态代替。

由于 J/Qbar 绝对简单，End⁰(J/Qbar) 是除环。嵌入上面的交换代数后，它是数域；
向两个因子的投影均保单位，因此均为单射。该数域必须同时嵌入两个不同的二次域，
唯一可能是 Q。因此 End⁰(J/Qbar)=Q，进而几何 Picard 数为1；Q 上有主极化，
故 Q 上的 Picard 数也恰为1。

所用有限域、自同态与特化背景见 [Milne, Abelian Varieties](https://www.jmilne.org/math/CourseNotes/AV.pdf)，
NS⊗Q 等同于 Rosati 不动部分的准确陈述在 Chapter I, Proposition 14.2。
特化与 Rosati 的兼容也见 [Maulik–Poonen, Proposition 1.13 的证明](https://math.mit.edu/~poonen/papers/NSjumping.pdf)。

## 这个结论具体排除了什么

[Balakrishnan–Dogra, Lemma 3.2](https://arxiv.org/pdf/1601.00388) 给出二次 Chabauty
有理点集合有限的一个充分条件：r<g+ρ−1。对 D，g=2、ρ=1，而前轮20个有理点
与模7 Coleman 界16+2给出 r≥2，所以这条充分条件不成立。不能靠“也许有实乘法，
可额外提高ρ”直接启动该版本。

**充分条件失效不等于方法不可能。** 这没有证明深度2集合无限，也没有排除更高阶
非阿贝尔方法。该论文 Theorem 1.1 还讨论 r=g 的超椭圆整点方法；其适用域不同。
原 k=5 整点映到 D 的坐标 t=(m+3)/(n+3)，分母随解变化，不能当成 D 的整点
或固定有限素数集合上的 S-整点套用。

## 原 genus-6 曲线仍应另行判断

原曲线 C:f(X)=4f(Y) 的有理 involution 给出
Jac(C) ~ Jac(D) × Prym，两个因子的维数分别为2和4，且定义在 Q 上。
相应的两个独立极化方向使 ρ_Q(Jac(C))≥2；这点没有要求 Prym 含椭圆因子。

因此，若后续获得**经过证明的总秩上界 r_C≤6**，便满足
r_C<6+ρ_Q−1，二次 Chabauty 的上述充分条件可用；若 r_C≤5，普通 Chabauty
也可能可用。当前只知道商曲线秩至少2，尚无总秩或 Prym 秩的充分上界，不能把
未知秩写成维数。有限性条件成立之后，仍需构造、计算和认证相关 p-adic 函数及
有理点筛，并检查原题整点的覆盖。

下一步可检验的任务是取得秩证书并判断这条不等式，而不是因曲线简单性就宣布
所有 Chabauty 路线失效，或只因存在软件算法就声称能够解尽本曲线。

worker 的独立压力核对见 `../worker/endomorphism-qc-audit.md`，支持上述推导并
保留 ordinary、几何简单性和幺特化的假设。它另给出可定位的几何特化文献
[Costa–Mascot–Sijsling–Voight，式(7.3.2)](https://jvoight.github.io/articles/rigendos-03302020.pdf)。
尤其不能把只知 r_D≥2 的信息替换成 r_D=2，再据此估算 r_C=r_D+r_P。
