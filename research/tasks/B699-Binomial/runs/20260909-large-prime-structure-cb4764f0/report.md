# B699 本轮研究报告

记录时间：2026-09-08 20:29:04 UTC。本轮基于37e42aca251c33c62cbc2c40f286daa0526d79ee，使用独立分支codex/b699-large-prime-20260909；未合并main。**B699全题仍未解决。**

## 最重要的实际进展

本轮把原来无界的指标i，在纸面数学层压到i<1,000,000，并排除了整个n=3j比例族及一整片近中心区域。与此同时，新的实际完整素数幂转移、原题消费者和有限边界证书已完成Lean专项验收。数学证明、计算与Lean验收的范围不同，下面逐项区分。

原题始终为自然数1≤i<j≤⌊n/2⌋，存在素数p≥i整除gcd(C(n,i),C(n,j))。记d=n−2j，V_i(n)为C(n,i)中p≥i的完整素数幂部分；p=i没有删除。

| 精确结果 | 证据等级 | 剩余范围或依赖 |
|---|---|---|
| 所有i≥1,000,000的原题合法输入成立 | 已核对来源的纸面证明，两个数学角色交叉核对；34个小实例只检验公式与缩放 | Jacobi判别式和两项Dusart估计尚未接入Lean；不依赖EEES |
| d≥i≥2时，反例的实际V_i(n)整除C(d,i)C(d+i−1,i−1) | Lean已验收，含无需反例假设的实际avoidingPart D版本、p=i及逆否Common消费者 | 尚未证明全部剩余输入违反该必要整除 |
| U_i(n)≤n^π(i−1)，以及相应原题大小障碍 | Lean已验收，无EEES或解析素数分布前提 | 明确的算术充分条件；其补集仍可无界 |
| d≤i区域成立 | 纸面证明；完整Lean消费者显式接受Laishram–Shorey定理为参数 | 没有把该出版定理本身写成已证明Lean依赖 |
| d≤⌊171i/50⌋+1区域成立 | 纸面证明；完整条件Lean消费者、全部新小范围边界和五例外消费者已验收 | 另显式接受Nair–Shorey合数窗口定理；原2016PDF未直接取得，同作者及独立复述已核对 |
| 全部n=3j比例族成立 | 纸面归约＋已验收旧素数间隔事实＋新精确证书；关键D/V归约、S3消费者和最后36例已Lean验收 | 4097线性界、Dusart尾部和全部有限压缩链未整体Lean闭合 |
| 反例在d≥i时须有ni³<81d²(d+i−1)²<324d⁴ | 纸面交叉核对 | 使用EEES平方优势；数值大小链尚未Lean化。保留更强的K_i²C(d+i−1,2i−1)²比较 |

这里“已验收”指本轮实际新输出编译、源码检查及传递公理检查；不是人类同行评审、新颖性认定或赏金平台接受。

## 全局大指标排除为何成立

构造实际多项式
\[
F(X)=\sum_{r=0}^{i}\binom jr\binom{n-j}{i-r}X^r .
\]
组合恒等式使实际avoidingPart D整除每个系数；若原题没有公共素数，则D=V_i(n)。原合法范围使F对应的Jacobi参数均为正，并有非零判别式。因此V_i(n)的2i−2次幂不超过该整数判别式。

[DLMF的Jacobi公式](https://dlmf.nist.gov/18.16.E19)给出精确乘积。关键步骤是在代入C(n,i)=(n)_i/i!时，先精确消去判别式中的阶乘分母，避免损失归一化。令r=π(i−1)/i、X=n/i，得到
\[
(1/2-2r)\log X<\log2+2r\log i+\frac{\log i}{i-1}.
\]
对i≥10^6，已发表素数计数界使X<11000。另一方面，原题反例强迫顶端窗口无素数；[Dusart短区间定理](https://arxiv.org/pdf/1002.0442v1)依次强迫X−1>3600、>10000、>11025，矛盾。所有数值比较均有固定整数/有理数证书，没有通过扫描大i来“验证”无穷结论。

完整来源、非退化性和推导见[来源与恒等式](notes/discriminant/source-and-identity.md)、[算术证明](notes/discriminant/arithmetic-bound.md)。[独立整数行列式审计](experiments/discriminant/result.json)核对34个所选实例，含22个非平凡D和2个p=i实例；重复根例子保留了“判别式非零不可删除”的反证诊断。这些小计算只检验公式对应，整个无限范围由纸面论证承担。

该方法可能与旧外部报告提到、但未恢复原文的van Doorn/Rocca判别式或行列式路线重合。本轮不主张数学首创。

## n=3j 的有限闭合

本轮证明了实际支撑
\[
V_i(3j)\mid K_3(i)\binom j{\lceil i/3\rceil},
\qquad K_3(i)=\prod_{i<p\le2i-5}p.
\]
三块Vandermonde分解与EEES给出
\[
\binom j{i-2\lceil i/3\rceil}<K_3(i)^2.
\]
初等系数界得到n<4097i，Dusart再得到整个比例族的统一界n≤595104。这里i也随之有界，不是逐个固定i的有限性。

没有重跑旧全局campaign。直接读取已归档、独立完成的素数间隔219证据后，仅计算217个新系数截止；新的素数覆盖依次把i上限从219降为50、32，n上限从28899降为6678、2598。最终6623个潜在对中，6587个由真实顶端素数覆盖，只需核对36个原题输入。它们全部有p≥i见证，包括(126,11,42)的p=i。

第二份检查器不用生成器的筛，重新验证217个系数边界、964段素数覆盖、所有最终省略项，并用乘积/阶乘式二项式与gcd重算36例。[结果](experiments/slope-three/independent-check.json)全部通过；最后36例另有[Lean证书](lean/SlopeThreeFiniteCases.lean)。

[完整比例族报告](notes/rational/slope-three.md)、[有限实现审查](reviews/slope-three-finite-review.md)明确区分整个纸面＋计算链和当前Lean片段。

## 新Lean源码与实际验收

专项验证于2026-09-08 20:02:59至20:04:44 UTC执行成功：
- Lean4.33.1；mathlib0df444a360eaa60ab8c11dca51a86af692955474；9项依赖pins核对。
- 四个最终根的完整闭包共11个项目模块全部在全新目录生成对象；只复用固定包缓存。
- 37项实际传递公理输出均限于propext、Classical.choice、Quot.sound；源码policy通过。
- 单线程，单一Lean进程，1536MB上限。没有独立实现的第二个内核。

权威记录：[evidence.json](verification/20260908T200259Z/evidence.json)；可重复入口：[verify.py](verification/verify.py)及[用法](verification/README.md)。

关键源码：
- [GapBridge](lean/GapBridge.lean)：实际进位、素数幂、顶端素数与小指标桥。
- [PrimePowerTransfer](lean/PrimePowerTransfer.lean)、[SmallPartBound](lean/SmallPartBound.lean)：完整指数和完全初等消费者。
- [BandConsumer](lean/BandConsumer.lean)、[CompositeWindow](lean/CompositeWindow.lean)、[FiniteBoundary](lean/FiniteBoundary.lean)：条件来源、原题整带和完整有限边界。
- [SlopeThree](lean/SlopeThree.lean)：实际D/V与三块系数界。点态平方优势参数不能当作EEES已经形式化。

## 失败证据与下一步

1. 完整单侧整除不能代表“无公共素数”：(16,3,7)和(57,4,22)独立否定这一误用。
2. 所有Vandermonde项的gcd只重述低Q定位，不能自动补上高位进位。
3. [一元多项式次数障碍](notes/valuation/polynomial-degree-obstruction.md)：任何对所有实际D成立、只依赖d的非零整除多项式，次数至少2i−1。本轮双二项式乘积达到该次数。它不否定用全部noCommon信息或n相关多项式的路线；判别式构造正是改变对象后的推进。
4. 低余数、未校正p=i指数、删除非零判别式条件均保留了具体诊断。
5. 有限证书的大命题版本触及内存上限；改成Bool检查和64行独立内核证明后通过。同一有限域、333证书均保留。首次统一验证还发现导入路径的二次规范化错误；修复并加回归检查后通过。失败日志没有计作验收。

下一项有判别力的数学工作是研究3≤i<10^6中仍无界的n,j。判别式不等式对i>4π(i−1)已提供固定i的有效高度界；应先精确比较其可行性及净指数不正的指标，再决定是否需要第二个独立结果式或更强整数结构。不要把i已被界住当作所有参数已有限化，也不要继续机械提高扫描上限。

## 本机执行与交接边界

首次执行17:41:44 UTC，原始4小时截止21:41:44 UTC（上海05:41:44）；未启用延期。首45分钟路线比较已按时保存。数学角色至多两个Astra Max，第三席Luna Max仅作来源和证书/验收支持，禁止递归派生；全部重计算由主线程串行安排。旧main及B686未跟踪目录未写入。

本轮没有收到需要接入的新VPS来源；未直接通信、读取或修改其工作区。分支提交和push已获用户本轮明确授权，发布状态与最终资源释放记录见[交接](handoff.md)。

