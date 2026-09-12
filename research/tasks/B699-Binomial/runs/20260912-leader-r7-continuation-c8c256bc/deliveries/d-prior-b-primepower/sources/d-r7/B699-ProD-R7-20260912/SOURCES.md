# 来源、精确采用边界与冻结输入

## [S1] 唯一新采用的出版输入

Attila Bérczes, Jan-Hendrik Evertse, Kálmán Győry,
“Effective results for hyper- and superelliptic equations over number fields”,
Publicationes Mathematicae Debrecen 82(3–4) (2013), 727–756.
DOI: 10.5486/PMD.2013.5748。

直接阅读的作者原稿版本：arXiv:1301.7168v1，2013-01-30，31页。

```text
https://arxiv.org/pdf/1301.7168
https://publi.math.unideb.hu/paper/1797
```

本轮已实际打开原稿并截图核对：

- 印刷第3页（PDF索引2），式(2.1)与高度定义：实位的绝对值是通常的绝对值，高度除以数域次数。
- 印刷第11页（PDF索引10），Lemma3.9中的m(d)，及§3.5中Λ、Θ、B、N(v)的定义。
- 印刷第12页（PDF索引11），Proposition3.10，尤其系数12(16ed)^(3t+2)(log* d)^2和N(v)/log N(v)。原文用n表示因子个数，本轮改写为t，以免与B699行号n混淆。
- 出版社页面核对了作者、出版年卷期、页码、DOI。正文参数采用上面明确列出的作者原稿版本，不声称已逐字比较出版社版和预印本。

只采用该命题的**实位**情形。对η₃、2（备用定理另用η₆、2），d=2,t=2；完整数值代入写在PROOFS.md §6。该命题的原证明在实位部分引用Matveev下界；本輪未重新证明Matveev，也未取得其Lean实现。不能把本轮自编的区间脚本当作对这个深定理的内核验证。

没有采用S1的hyperelliptic主高度定理、一般S-unit结果，或一个随输入素数集合变化但被擅自固定的常数。

交叉对照过2023作者论文“Explicit bounds for the solutions of superelliptic equations over number fields”，arXiv:2310.09704v1中的Proposition3.12，同样的乘法对数界；最终证明并不依赖该文另一个主定理或新增常数。

```text
https://arxiv.org/pdf/2310.09704
https://arxiv.org/html/2310.09704v1
```

原PDF没有打入证据包；本包只包含书目信息、准确定位和本轮自己的特化推导，不声称保存了未取得的PDF字节哈希。

## 冻结项目输入

实际收到：B699-R7-next-research-20260912(1).zip。先读START_HERE的D路径、frontier、CORRECTIONS，以及自身D旧HANDOFF/PROOFS/FAILURES；还读了B的平方行证明及A的I9_FINITE边界，避免重复机械扫描。

`adopted/SOURCE_MAP.json` 记录外层ZIP及实际读取/保存成员的SHA-256。`adopted/`内的旧D证明、交接、前沿和修正文件保持原字节。本轮不修改旧ZIP，不借旧报告摘要提升证据等级。

旧D的基本进位/α约束在本轮PROOFS.md §1已重写全；补指标近素数消费者、六位置立方界、旧共同见证行族均保留，未重复登记为本轮新成果。旧有限证书并非本轮新定理依赖，所以本轮没有重跑旧D、A、B的大接受链。

## 明确未采用

- E报告中受CORRECTIONS异议的统一BEG/S-unit常数接法。
- McTague的一次命中作为整行覆盖。
- A的i14全域证明或i9有限扫描，作为新i3证明的前提。
- B的百万β、近素数β、平方行素数幂证书，作为新消费者前提。
- Sage/Magma/gp/Lean的未发生执行；容器无这些现成工具，本轮没有据此报告任何计算代数系统的全解输出。
- 一般四次方程的未经核对“全部解表”。精确探针找出的X=83是失败边界，不作为任何不存在性证明。

不作全球新颖性或发表优先权声明；“新增”仅指本轮相对于接收前沿的交付。
