# 来源、实际采用和未执行

## 冻结附件

原ZIP：B699-R7-ProB-five-block-and-mixed-rows-evidence.zip，5,270,253字节。
SHA256：dbc522c06c1c65b88a3375d4bcac807fd1bd555f4e3c30d56efcdf2435364468。
本包保存完整原字节于sources/originals/previous-five.zip；5个读到的文本成员映射在SOURCES.json。原文件没有覆盖。

- sources/three-quotients/PROOFS.md：原题→完整幂→α形状→4|n→规范N/K→三商。采用§1—3；此前min C≤B超椭圆界作为比较，不作为新证明前提。
- sources/pro-d/PROOFS.md：读了非空分类、平方gcd、固定模数障碍。新17／25整行只需它的初等思路并在新证明重新写全，不调用一般C0=1的对数尾部。
- sources/previous-five/：上轮5闭合的准确前沿及Prop3.10应用。5／7不重复计功。

用户本轮通报D已经覆盖C_r=7；未附其最新7证明，本轮没有独立重证或提升证据等级。

## 唯一用于新统一高度的出版输入

Bérczes, Evertse, Győry, *Effective results for hyper- and superelliptic equations over number fields*, arXiv:1301.7168v1, 2013。
原文：https://arxiv.org/pdf/1301.7168

实际读到和截图：零基页10—11，即印刷页11—12。采用§3.5定义的绝对对数高度、m(2)=1/(log6)^3、Θ、B，以及Proposition3.10(3.10)，在真实实嵌入处使用N(v)=2，三个代数数、域次数2。

准确专化：log|Λ| > −12(32e)^11 (2/log2) Θ log E。要求Λ≠0；本轮以Y>0和D非平方明确证明。三个数可随实际解变化，所有高度统一有界，不预设单一种子或基本单位。

没有使用其有限位结论、Theorem2.2或未有效的S-unit有限性。没有重证该论文引用的Matveev前置，没有新增Lean公理。

web工具已展示原页。container下载返回失败，故本包不包含一个伪造／空的PDF。复现本轮精确程序不依赖联网；接受上述出版输入的数学审查应回到原文。

## 证据等级

新无限推导是作者纸面证明；有限证书生成与另算法检查均由本会话编写。程序通过不意味着无限推导机械化、Lean验收、第二研究者认可或人审。未运行任何旧大证书、仓库写操作或他人当前会话。
