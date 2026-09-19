# SOURCE_ADOPTION · 实际输入与证据等级

## S0. 唯一接续包

挂载输入：B699-ProD-RES10-defect-recovery-20260918.zip。
本轮实际字节SHA256：

    fc9a633645a3bdbde5cb0eb6e2556f0c01819c92c486e3b9fae8ac72f57da349

实际读取HANDOFF、SOURCE_ADOPTION、FAILURES全文；PROOFS读取1--280及325--395行，
重点采用§0--4的准确输入/定义和§7的q5|L4条件归约。耦合旧诊断不作为正向数学输入。
五个原根文档逐字节保留于sources/previous；REPORT保留作历史状态记录，不能替代本轮REPORT。
没有重跑旧数学证书，也没有把本轮复算说成旧链的外部独立验收。

使用范围：q5|L4 ==> q5=17,E=1 mod6>=7,原17槽2/3，仅用于主定理之后的接续推论。
新整行主定理本身不依赖旧R3/R4、L3/L4、平方类、alpha模板或旧缺欠消费者。

## S1. 冻结QIG原件

仓库：HuanHuanHuanFFF/lean-math-lab。
固定提交：e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b。
路径：

    research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/deliveries/D-quartic-gap/notes/PROOFS.md

GitHub API返回git blob SHA：08765b4d0b2a0988f2d14cca92e652525678c514。
实际读取§§1--3；先由同快照notes/arithmetic/02-fixed7-proof.md定位，后读原件。
后者git blob SHA：c4a6e8ff8ddad6255cb9e66c24f7d367240eada7。

本包sources/QIG_CONTRACT.md是注明来源的重述，不是原字节副本。
冻结导航稿声称原SHA256为47cf4282825a4aa467973c0b27b1de914719beef17c162638107dedfb2568707；
本轮没有取得该源的容器原始字节，所以没有独立重新计算这个旧SHA256。
尝试容器复制raw路径遇网络限制，未用web替换私有Project源，亦未伪造原件副本。

本轮在PROOFS §1独立写出当前i6所需推导；code/verify.py逐系数核验原不变量和上界。
这叫同会话定向复算，不是Lean、人工审稿或外部独立接受。没有重跑旧有限行链。

## S2. 唯一出版数学输入

Yann Bugeaud, Linear Forms in two m-adic Logarithms and Applications to Diophantine Problems,
Compositio Mathematica 132 (2002), 137--158.
DOI: 10.1023/A:1015825809661.

Publisher PDF:
https://www.cambridge.org/core/services/aop-cambridge-core/content/view/C29F69887B6E1FDAFA5557110BBA8433/S0010437X02000416a.pdf/linear_forms_in_two_madic_logarithms_and_applications_to_diophantine_problems.pdf

2026-09-18实际打开原出版PDF，视觉核对印刷139、140、141页。
采用Theorem 3，mu=4、c3=67；H1/H2和高度定义也直接核对。
不是把Theorem2的独立常数或旧包实例原样套用；本轮两组实例在PROOFS §3完整列出。
负有理第二底数在原定理允许范围内；Lambda正且非零。

出版定理作为已证明输入，程序不声称重证其无限分析部分。
仅保存书目信息、URL、所用参数和本轮专属推导，不重新分发整篇出版社PDF或字体。

## S3. 本轮新证据

- 原生i6实际小部T=30*2^u*3^v与相对质量不等式；
- 两个固定有理对数实例、真正E<10^12绝对初界；
- 原始阶公式及两张最终模指数证书，排除全部CAP内的高估值；
- 六个完备有限候选的严格QIG比较；
- 固定原(n,j)的见证余因子接口及一个真实prime诊断。

没有用有限扫描证明无限结论；有限候选域由纸面界先确定。
来源/外部metadata见sources/metadata.json，全部实际生成成员哈希见SHA256SUMS。

## S4. 未采用

没有采用旧F5、SIXG、HG、QIG历史末端、Reider、Matveev、Magma、NC3/i9路线。
没有采用旧L3/L4、C^2或V4作为两个独立高度条件。
没有访问或修改仓库工作树，没有推送、提交、Lean或发布动作。
