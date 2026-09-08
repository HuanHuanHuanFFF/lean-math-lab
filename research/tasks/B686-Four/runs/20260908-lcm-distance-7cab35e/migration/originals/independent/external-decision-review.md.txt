# 05:55 决策检查：外部路线、完整前提与接续价值

外部冻结点：`williamjblair/lean-proofs`，分支 `codex/erdos686-corrected-package-final`，commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`。只读取相关原始文件，快照在 [external/](external/)，未下载整仓。下面区分原文、源码命题、现场软件输出和我方推论；本分支未编译外部 Lean 依赖。

## 候选决策表

| 候选 | 完整关键前提 | 实际结论与剩余缺口 | 当前决策 |
|---|---|---|---|
| ELS 小素数部分分类 | 正整数序列长度 k；它逐素数及逐素数幂的出现位置来自某个连续整数块；另外每项≤k（Thm 1）或每项≤k+1（Thm 4） | ≤k 时是1,...,k的排列。≤k+1且乘积不为k!时是1,...,k+1删一项r；若k+1位于j，r=gcd(j,k+1)。不覆盖有大核心的块 | 原页已视觉核对，可作有条件路线输入；不能把“一个跨全块rough分量或偶数两半”套给所有原解 |
| ELS 与倍率4组合 | 原方程；上下小素数部分乘积A,B满足B=4A和k!|A；若还要求两块所有small_k值≤k+1 | 存在r使下集合删4r、上集合删r，4r|k+1；原解否则走大核心分支 | 排除一个明确无限配置类，但大核心未被界住。外部循环秩/反例已表明粗图聚合不闭合 |
| 通用二次条带 | 外部源码所述k≥16,d≥k及原式 | k²<18d；主任务负责源码、依赖及本地接受审计 | 本分支不重复移植，不把这一界同未经证明的Runge渐近拼接 |
| 大素数整间距幂 | k≥16,d≥k、原式；明确要求p为素数且p≥k；p^e|d，e>0 | 6p^(2e)<(13k−6)d+18(k−1)；对d=p^e的e≥2等子分支可推无解。小素数须走另外带损失阈值的dispatcher | 保留p≥k，绝不把摘要压缩句读成所有p的同一结论 |
| 给定匹配格的两层残差 | k≥16,d≥k、原式、i,j∈[1,k]、q>0、n+i=a q、n+d+j=(a+b)q | q整除带符号线性残差D；D≠0给含a²的d界，D=0给规范化A/B与非零二次残差的固定界 | 定理需要“给定会产生矛盾的owner”。未证明总能供应它，也不能重复按同一行多条边收费 |
| k5穿孔网格 | CanonicalOwnerData 5 n d t；4|(n+d+t)；原式；d≥10^1000；至少一个canonicalCell=1 | 外部终端`no_k5_tail_solution_of_proper_support`推出False。每个格的section存在定理不需要该格=1 | 最接近新的原题配置归约；仍需接受全部25端点依赖。全25格非平凡的分支没有被关闭 |
| k5高秩曲线 | 固定曲线w²=9r⁶+64r⁵−200r³+64r+144；使用本次记录的Magma脚本与默认证明选项 | 现场返回rank bound5、完整群Z⁵及PROVED=true；36点的穷尽标志仍false | 秩捷径更明确地不可用。已有MW群不提供全部有理点的高度界；不继续扩大有限搜点 |

## ELS 原页核对

已读取 [ELS 1988原PDF](https://www.renyi.hu/~p_erdos/1988-26.pdf) 的印刷507、508、521页图像。507页条件明确是 `a_i≤k`，不是严格小于；521页Thm 4明确要求全部 `a_i≤k+1`。连续整数性质包括每个p≤k及所有p幂的完整位置模式，不只是2、3频数。

因此外部`agent_t2_consecutive_property/findings.md`中大间距rough图的一组件/两半分类还依赖两块核心≤k+1，以及它给出的巨大显式d阈值。该分类不是原式无条件给出的全图分类。

## 外部失败证据的准确用途

`agent_large_owner_aggregation/findings.md`给出(k,n,d)=(22,13237302206,860968557)。该点通过精确比例窗口、二次条带、两块光滑性、反射聚合及两个平方升阶，但22个逐行整除全部失败。因此只增加这些聚合条件不能证明所需终局；必须使用同一个n下的完整行列分配。

`agent_t2_consecutive_property/findings.md`的真实位置四圈(k,n,d)=(19,239446,5198)满足四个指定行列整数等式、顺序、位移整除和反射压缩，但不满足下侧比例窗口。它没有反驳原题，只排除少用该窗口的循环行列式捷径。2s圈的incidence秩2s−1，唯一乘法依赖已经是行/列乘积相等。

## 我方已复核的软件证据

本次直接把已读过的公开纯计算脚本发给官方Magma计算器，现场版本V2.29-10。完整返回见 [magma-rank-live.xml](external/magma-rank-live.xml)：torsion空、Selmer阶32、五个Z因子、FINITE_INDEX=true、PROVED=true、RANK_BOUND=5、8个two-covers，36点但RATIONAL_POINTS_PROVED_ALL=false，搜索高度20000。

另外，我方精确代回全部36点、检查逆变换和五点坐标矩阵行列式−1，见 [independent-census-audit.json](external/independent-census-audit.json)。没有合法原题见证。矩阵行列式只认证已给定群坐标的基变换，不单独证明Mordell–Weil群的整体饱和。

[官方V2.29说明](https://magma.maths.usyd.edu.au/magma/releasenotes/2/29/)规定未指定class/unit proof level时采用rigorous结果；[当前Jacobian手册](https://magma.maths.usyd.edu.au/magma/handbook/text/1618)说明GRH须通过SetClassGroupBounds启用，传入外部RankBound也可能引入BSD条件。本次脚本均未作此类覆盖，只修改BoundC、MaxBound、MaxIndex，且RankOnly保留默认false。故可记录为官方默认语义下重新运行得到的已证明Magma结果，仍不是Lean代数几何证明。

## 从完整支持直接可复用的后继推论

以下是我方纸面推导，尚未Lean化，也尚未接受外部全依赖编译。

1. 在k=5尾部，由全部25格>1、异格互素、A_ji|(d+i−j)，五个对角格各有不同素因子且全整除d，故ω(d)≥5。更一般d+u（|u|≤4）至少有5−|u|个指定且全局不同的素因子。若再接受外部完整d<10^1000证书，可把k5的ω(d)≤4整个无限子类排除；只用穿孔结论时只能排除该子类的尾部。
2. 现成穿孔section对任意格a都存在。删去该格后的24格乘积之17次方整除非零整数W，而W≤K(6d)^84、P5(n)> (3d)^5、G≤24。因此

   `3^85 d <24^17 K6^84 a^17`，即 `d < 2^135 3^16 K a^17`，

   其中K是源码固定的70位系数范数。这是空格排除的定量版本；把25条下界相乘仅得到d^(25/17)量级，远小于总质量d^5，不能据此闭合。

## 下一项有决策意义的核查

主任务另提出偶数k路线：若通用Runge阈值可严格控制为n≤(Ck)^(c k)，且c<2，则全k²格非平凡迫使至少k²个不同素因子，给 `(k²+1)!≤P_k(n)≤(n+k)^k`，大k有望矛盾。当前正在读取真实阈值公式，不把系数范数的经验增长当作已知渐近。即使证明大偶数k有空格，仍需一般k的proper-support osculation及可控系数高度，不能直接调用仅k=5的25个证书。
