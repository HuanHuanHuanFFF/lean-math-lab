# huan 已验前置检查点

统一入口lean/PrerequisiteCheckpoint.lean实际通过，48条公开定理的传递公理均限于propext、Classical.choice、Quot.sound。证据verification/20260911T035706170589Z/evidence.json；它只新编译1个统一入口，7源按源/对象/日志SHA核对后复用。当前完整阶段B接受数仍为0/19。

已验内容：

- 两行整数逼近桥：对应BFT作者稿§7公式(7.4)的整数间隙论证，从明确的非零行列式、两行高度和误差条件导出逼近下界。本桥不是完整BFT Lemma4.1。
- 实际阶乘序列：对(c,d)=(3,2),(15,8),(15,11)，两种delta及每个m≥1，证明真实阶乘前因子的比例、递推、望远镜归纳与F_m<beta(c,d)^m/2。未使用Stirling或新公理；尚未证明积分最大值、G界或完整解析增长结论。
- Padé实际整数构造：真实P/Q/E二项式系数、多项式系数和次数、Q的正gcd及整除、显式gcd归一化整数Q与分母清除。P-content、系数与积分的对应、邻项非零行列式及解析界仍未在该检查点接受。

来源：Bennett–Filaseta–Trifonov, On the factorization of consecutive integers，作者2007-02-26稿，固定PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c，https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf。整数构造采用与原始积分及已有非对称Padé报告一致的P符号；固定PDF提取文本中的符号差异仅标为提取文本差异，未声称目视确认排印错误。

实际修正：最初整数桥有加法不等式方向的类型错误；阶乘候选的delta=1分支需要显式规范化自然数cast及定义相同的Rat比较实例；PadeInteger的四个Polynomial表示定义必须标noncomputable，其整数数组、gcd及整数求值保持可执行。失败源和诊断在本机保留；上述修正后重新实际编译，失败输出未作为接受证据。

数学前置、Lean验收、原题覆盖和发布分开：这些结果为既有Padé路线补可复用前置，未主张新颖性或原题新增指标；本机提交后仍需用户明确授权外传，当前push被自动审批阻止。下一步保持阶段A主编译，完成后验收已冻结的P-content/系数对应候选并补解析界。
