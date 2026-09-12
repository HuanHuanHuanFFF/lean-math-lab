# (7,2) 最终四层消费者

本包是完整证明文本，未运行 Lean。所有新文件只在本目录；旧冻结源、集成源和 Git 不变。原 B 仍0/19。开始时间2026-09-11 20:52:46 UTC，20分钟检查点不是总截止。

## 最终陈述

Math.B699.I11SevenTwoFinalConsumers.actual_seven_two_component_edge：

对所有自然数n，只要2^15360≤n，就有
X7^1000·ceil(n/2)^60≤n^1000，或 X2^1000·ceil(n/2)^330≤n^1000。

这里Xp是已验定义B699LowIndex.I11SmallPrimes.primeComponent n p，
等于p^((n.choose 11).factorization p)，是完整的原始binomial素数幂，包括指数0情形。不是余因子，也没有替换成新的抽象X。ceil(n/2)写成(n+1)/2。

最终唯一假设是高度条件；没有树、八数值、G、Hom、行列式、窗口、余因子、noCommon或HeightValid前提。这个单边定理仍不是i11原题，也不能单独给出初始高度界。

## 模块与证明链

1. RateBasis：精确N/D等于上游实际qRate。只决定2D^32≤N^32，分子/分母比较最大5171bit。由R^32≥2得到R^192≥64，再用R≥1及192≤285证明R^285>48。192、285次幂保持符号。局部maxRecDepth=8192仅是资源上限。
2. ActualNumeric：先构造源类型And.intro八证书bundle，再仅展开Z/M/Y0别名，避免让内核在跨名称defeq中展开巨大容量幂；从已对齐bundle解包后传FixedEdge。
3. ActualInstance：直接消费实际c9d5,z1/49四树。false对应δ1，true对应δ0。qLam/eLam与上游qLambda/eLambda逐项相同。四树消去后只剩普通窗口余因子条件。
4. Component：复用已验PrimeWindow与CeilHalf，得到同一Y=ceil(n/2)的两窗口。真实素数幂乘余因子等于n−offset；offset<11，所以绝对差≤10≤24，允许窗口重合和差正/负/零。余因子边经primeWindow_graph_capacity转为Xp组件边。

最终height处理直接由n≥2^15360推出20≤n、11≤n和Y≥2^15359。因而可取得p7与p2的真实PrimeWindow。factorization作为函数参数处均保留完整括号。

只导入CeilHalf与I11SmallPrimes.Window，没有引入5/3 WindowPair整条消费者依赖；CeilHalf的历史namespace含FiveThree，文件本身是已验一般窗口算术。

## 采用参数与数值检查

固定原计划row01，p7/q2，c9d5，a1/b3/D1，z1/49，Lt1302991/1000000，m0=224，M285，Z17498099772305953，Y0=2^15359，权重60/330。上游保留整数Q项3^(9m)及E尺度49^4，本包未改任何尺度。

从实际源码读取c,d,Lt,qLambda后独立有理重算得到
N=4330188673454998956186527952585840960990059954176，
D=4199440704612936599415011687195348453521728515625；
与候选RateBasis逐字参数一致。不是把任务消息中的N/D当作证明假设。

精确Python检查：
- N≥D>0、2D^32≤N^32、六块给64、192≤285；
- 七selector证书的小幂basis和指数余量，最大13815bit（含2^13814上端）；
- n0..32、a,b0..10，共3993个差分边界，包括截断及d=0；
- n20..100、offset0..10，共891个ceil窗口边界；
- n20..200、p7/2，共362个真实choose(n,11)的素数幂窗口。
没有计算最终大高度组件幂；这些是诊断，不是无界证明。首次自检只有注释中的And.intro被多计一次，修正计数器后通过；Lean源码未因此修改，记录见check-diagnostic.md。

## 接受与集成边界

四实现模块，22条公开定理，连3定义共25个print axioms项；4逐层Audit加总Audit，共9个Lean文件。
auditor自测拒绝缺根、sorryAx、自定义axiom、编译错误；只允许propext/Classical.choice/Quot.sound，但实际Lean公理日志仍待主任务生成。

旧2/5四层模板有真实验收收据。新7/2边包、四树和selector是冻结候选，本文只核对其字节；不把已有文件当作新证明已接受。INPUT_SOURCES绑定27个源文件、6个已验模板/定位收据，其当前根hash一致。三个外部冻结清单的全部Lean源hash也逐项匹配。

当前imports指向准确的冻结实验文件。它们部分内部imports使用未来集成路径，主任务须按SOURCE_MAP做imports-only映射：
- 本包到lean/I11SevenTwoFinal；
- 上游边到lean/I11SevenTwoEdge，F9D5单独到lean/Factorial；
- 四树到lean/Growth/I11SevenTwo{Shared,Leaves,Tree}；
- selector到lean/I11SevenTwoNumeric/{Basis,Selector,Audit}，同步修正旧的lean.I11Numeric.I11SevenTwoBasis导入。

最小下一检查是RateBasisAudit独立验收；再在上游边/树/selector真正通过后依次ActualNumericAudit、ActualInstanceAudit、ComponentAudit、Audit。主任务保持串行重Lean，本代理没有运行Lean/Git。

预期消除的是单个(7,2)边的所有特殊证书前提；实际目前仅为完整候选与有限检查。完成原i11仍需其余边、全局乘积消费者和后续有限覆盖，原B699的全n,j目标没有因此计数增加。没有新颖性声明。
