# i11 初始高度与实际压缩的完整拼装候选

本包只有8条自有公开定理，四个实现模块，目标是接通已经具体化的数学依赖。尚未运行Lean；不能据此标记原题i11或B699完成。仅修改本独占目录，没有Git或外部源写入。开始2026-09-11 21:52:14 UTC；22:12:14为检查点，不是总截止。

## 最终两个陈述

Math.B699.I11InitialHeight.actual_i11_below_15360：
对任意自然数n,j，在11<j、j≤n/2、¬Common n11j下，n<2^15360。

Math.B699.I11InitialHeight.actual_i11_below_109：
完全相同的三个原假设下，n<2^109。

Common采用实际B699LargePrimeStructure.Common：
存在素数p，11≤p，且p整除gcd(choose(n,11),choose(n,j))。
端点p=11包含在内。没有改成p>11，也没有改变j的范围。

最终两根均无初始高度、树、数值证书、图边、组件界、smallPrimePart恒等式或product上界前提。它们都只留下原counterexample假设。TypeAudit使用#check @直接展示完整量词/假设。

## 四层具体证明

WindowBounds：从真实PrimeWindow的正cofactor与等式C·Xp=n−a，证明Xp≤C·Xp≤n。PrimeWindow_nonempty实际提供窗口，所以四个Xp≤n不是假设。一般ceilHalf算术证明n≤2ceilHalf n，以及n≥1时ceilHalf n≥1。

Product：假设n≥2^15360作为现有五边的适用域；令Y=ceilHalf n=(n+1)/2。分别调用五个实际component edge：
(2,5;248,252)，(7,2;60,330)，(3,2;226,268)，(5,3;354,228)，(5,7;352,216)。
特别采用5/3的FinalInstance无树入口，不误用仍带四树参数的同名中间定理。
四个实际PrimeWindow上界与Y≥1一并交给32选择product定理，得到(X2X3X5X7)^1000·Y^640≤n^4000。
再直接重写已验smallPrimePart_eq_four_components，得到实际smallPrimePart的同一界。Xp是完整choose(n,11)的p幂，不是余因子。

Height：反设n不小于2^15360，把上述真实product界和n≤2Y交给i11_noCommon_false_of_product。该Tail内部使用原noCommon_bernoulli_size，推出矛盾。因此初始高度不再是最终输入。

Compression：调用已验CubicBatches.ActualCompression的实际六对/387块消费者，把刚证明的n<2^15360交进去，推出n<2^109。没有再次留下六证书或initial-height字段。

## 数学数值与边界核对

独立精确检查32种选边，顶点取选到的最大权重，最小总权重确为640，有两种选择达到。原32分支Lean Product是否接受，以其真实receipt为准。

尾部指数核对：
121·1000+640·11−84·1000−4000·11=40。
2·11!=79833600<2^27，所以常数上界指数27·11000+7040=304040。
高区间给下界指数15360·40=614400，差310360>0。
只计算这些小整数，没有展开2^15360或更高目标幂。该计算是数学诊断，不能替代Tail的无限参数证明。

## 已验与仍待验必须区分

已记录5/3、2/5、7/2实际组件边和六对实际压缩的receipt。Product在打包时也可能已有单独receipt，确切清单见INPUT_SOURCES；这不代表Tail或本包已接受。

3/2和5/7最终消费者、Product/Tail的完整实际状态以及本拼装都由主任务串行验收。SOURCE_MAP保留已知上游集成事项：剩余selector的双Nat类型标注规范化、FiveSeven缺失basis_seven补充；Tail当前源有旧式显式Nat.pow_pos指数，主任务等待真实诊断再定点修复。这些都不是新数学假设，不应改变公开接口。冻结原稿与实际修正后的集成source/receipt须分别绑定。

本包使用建议短路径lean/I11ThreeTwoFinal/Component和lean/I11FiveSevenFinal/Component。若冻结时尚未复制，INPUT_SOURCES已绑定现成候选作为来源，并给出明确目标；没有伪造短路径已存在或已通过的状态。

## 可执行验收与研究前沿

4实现模块+4分层Audit+总Audit，共9Lean文件。8个自有根和11个关键外部根共19组#check @与#print axioms。
审计器合成自测拒绝缺根、sorryAx、额外axiom和编译错误；允许std3。实际Lean运行次数为0，公理接受必须等待真实成功日志。

建议按WindowBoundsAudit、ProductAudit、HeightAudit、CompressionAudit、Audit顺序串行验收，目标映射为lean/I11InitialHeight/{WindowBounds,Product,Height,Compression,Audit}。所有当前source字节和receipt在INPUT_SOURCES/SOURCE_MAP绑定，不用文件存在性代替接受。

预期若此完整链通过：i11的无界n反例区域消失，剩下n<2^109及原j范围的有限CRT下降与终端证书。
实际当前：仅完整候选文本/源核对/小整数诊断，没有新的Lean接受，没有新增原B计数（仍0/19）。有限n<2^109区域尚未自动解决；没有新颖性声明。
