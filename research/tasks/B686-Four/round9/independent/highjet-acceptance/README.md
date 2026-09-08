# 单个高阶整值格的独立共同零验收

输入：k=5、μ=6、D=8；支持(-1,-1),(-2,-3),(-3,-5),(-5,-2)。曲线P5(Y)=4P5(X)。producer由support/smith-highjet/负责，本目录只做独立验收；06:45前冻结文件不改动。

整数值基：U(X)^q binom(X+a,a) binom(Y+b,b)，U=P5/5!，0≤a,b<5，5q+a+b≤8，共35列。预期24个jet条件、秩24、核维11。秩或系数高度均须用实际输出核对，不预先标为通过。

验收义务：

1. 从basis描述及整数核向量重建有理多项式，核对系数向量确为整数；不能把标准多项式含分母误判为非整值。
2. 独立有限Taylor代入，检查每个向量在每个支持点前6阶为零。
3. 在原曲线下计算精确Y-resultants，再做Q[X]多项式gcd。若gcd仅有负整数X根，则这些有限多项式在X≥0不能同时为零。
4. 记录所选消元式、次数、精确gcd/Bezout证据及binomial基和标准基高度。

这只验收一个具体高μ支持，不能外推全k格基增长。抽象RR仅解释为何预期有11维：40−24−6+1=11；最终共同零判断采用具体精确消元，不以RR替代计算。

## 已完成的独立验收

`python .../highjet-acceptance/check_base_locus.py`已exit 0。独立有限Taylor重建与producer全部24×35有理行精确一致；无分数RREF给秩24、核维11。11个原始RREF向量在整值基中已为整数系数，最大60位，Q-span是完整核。

前两个所重建多项式的Y-resultant分别为40次和35次；精确gcd为

`(X+1)^6 (X+2)^6 (X+3)^6 (X+5)^6`。

完整除法/gcd及Bézout链在 [base-locus-audit.json](base-locus-audit.json)，447260字节。故这11个有限多项式在X≥0不能同时为零。这是本例的具体证书，不依赖抽象RR或未知群秩。

## 接受条件的澄清

初始工程要求完整饱和Z-kernel较强。主任务随后明确：当前非零构造只需要一组**整数系数、Q-span覆盖完整空间V**的section；这已足以转移共同零性质。只有宣称完整Z生成、饱和性或格最优时才必须额外证明饱和。

因此上述60位家族已经是有效的有限非零构造基线，不能把“未饱和”误写成它不是整值或共同零证书无效。饱和/HNF/LLL是后续高度优化；当前不等待昂贵Smith才接受已完成的Q-span结论。

## 工程记录

- 首次使用通用Matrix.rank/nullspace消元耗时异常，本分支进程约150 CPU秒后停止；改用DomainMatrix.rref_den后快速得到秩和Q-kernel。这是算法/API成本，非数学失败。
- 首次JSON保存因Bézout整数超过4300位的显示限制失败。仅在验收进程启用大整数序列化后重跑完整检查，exit 0，未删减数学证据。
- 此阶段未重新运行Magma，没有扩大原题参数搜索，没有Lean编译或整族高度结论。

## 最终有限结果

Luna在12分钟Smith和60秒图格HNF尝试后停止，改对上述11个整数RREF向量做LLL；本目录独立核对了两份源SHA、24×35输入SHA、整数性、两个核身份和变换det=−1。最终家族同冻结Q空间完全相同，故继承无正共同零结论。最大整值基系数仍为60位，未改善；没有饱和性主张。

连接证据见 [final-connection-audit.json](final-connection-audit.json)，可复现命令为`python research/tasks/B686-Four/round9/independent/highjet-acceptance/verify_final_connection.py`。本次已exit 0。producer最终文件为`support/smith-highjet/lll-subbasis-results.json`；本目录不修改它。

这一实例完整交付了整数系数的Q-spanning整值生成族、精确高阶jets和无正共同零证书。它没有证明全k低高度生成族，也没有新增原题见证。按主任务要求，完成连接后停止本分支，不再优化该固定例或追加高度样本。
