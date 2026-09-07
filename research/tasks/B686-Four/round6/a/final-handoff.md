# B686 / Four 第六轮：A 交接

**指定的四个含中心三位置类已全部排除；与主任务协作后，四个含中心四位置类也已全部接到原题并通过 Lean。原题及完整 k=5 仍未解决。**

A 的源码现已冻结。本目录实际接受 16 个 Lean 文件（含一个仅做联合导入的检查文件），101 条可失败公理 guard。主任务正在对全轮接受根进行独立递归重建；本报告不把尚未完成的重建称为已完成。

## 精确结论

始终取自然数 n,m，m>=n+5，d=m-n，P5(t)=∏_{i=1}^5(t+i)。

- 不带额外支持假设：P5(m)=4P5(n) 必须满足 d>=50000；每个 5<=d<50000 都覆盖所有自然 n。
- 若 gcd(d,6)=1，且 d 整除任一所列位置集合对应的乘积，则 P5(m)≠4P5(n)：三位置 {1,2,3}、{1,3,4}、{2,3,5}、{3,4,5}；四位置 {1,2,3,5}、{1,3,4,5}、{1,2,3,4}、{2,3,4,5}。
- 不要求 d 是少数素数幂的乘积，也不要求给出显式分组；消费者会从整除条件分解出两两互素的位置组。
- 三位置结果被对应四位置结果涵盖，不能累计为独立覆盖比例。

直接原题入口：

- [Positions.lean](Positions.lean)：`B686Round6A.not_four_support123_ratio`、`134_ratio`、`235_ratio`、`345_ratio`；以及 `solution_displacement_ge_50000_ratio`。
- [FourPositions.lean](FourPositions.lean)：`B686Round6A.not_four_support1235_ratio`、`1345_ratio`、`1234_ratio`、`2345_ratio`。去掉 `_ratio` 的同名入口使用自然数产品等式。
- [Finite.lean](Finite.lean)：`B686Round6A.not_four_below_50000`。

主任务已另行报告 [AllFiveSupport.lean](../main/AllFiveSupport.lean) 首次 Lean 检查通过：与旧四非中心排除合并后，gcd(d,6)=1 的原解必须让全部五个位置各与 d 有公共素因子，并可选择五个互异素数。该整合由主任务拥有；A 没有重复实现。

## 证书与方法

三位置使用第五轮饱和整数核的以下固定组合：123 为 323G0+12G1，134 为 29G0-5G1，235 为 29G0+5G1，345 为 323G0-12G1。每个式子总次数 5，并在三个相应简单分支接触到 6 阶。12 个清分母恒等式给 d^6|H。

初始 d=20000 的逐项界不足以闭合 123/345。A 改用 w=10000000z-83894387d，把已有实数条带写为 0<=w<=3d，在平移后的齐次组上保留抵消；随后选定 d>=50000 统一尾部。每个三位置式子具有严格符号且 |H|<50000d^5。

主任务通过新的高维饱和核和加权格约化提供四位置候选，并拥有局部接触证明 [HighContact1235.lean](../main/HighContact1235.lean) 等四模块。A 使用另一套平移单项式界独立证明高度：1235/1345 是 D15/R16；1234/2345 是 D17/R18。四者均满足 -50000d^D<H<0，配合 d^(D+1)|H 得尾部矛盾。

纯高度证明在 [FourHeight.lean](FourHeight.lean)，namespace `B686Round6AHeight`；[FourTail.lean](FourTail.lean) 用四个显式、带公理 guard 的多项式恒等式对齐主任务辅助式。1345 的精确上界约为 -60.551877d^15，是四类中最紧的负号余量，保存在 [four-tail-endpoints.json](four-tail-endpoints.json)。

## 验证证据

- 固定 Lean 4.33.1，Windows x86_64，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。包装器调用通过 `scripts/lake.ps1 -LakeArgs @('env','lean',...)`；LEAN_PATH 设置为仓库绝对根。未升级依赖或安装工具。
- [acceptance-manifest.json](acceptance-manifest.json)：16 个实际接受源码的 SHA256、olean 时间、101 条具体声明和公理列表；仅有 propext、Classical.choice、Quot.sound，部分纯 ring 恒等式仅用其中两项。
- Contact 第四次编译、其余正式模块首次编译，以及 [Integration.lean](Integration.lean) 联合导入均退出 0。零输出的通过命令保存为空日志；高度模块只有零常数项引起的 unused-variable 提示。
- 有限段由支持任务编译，准确退出码、命令和哈希见 [a-finite-prebuild-manifest.json](../support/a-finite-prebuild-manifest.json)。新增 30000 个位移，每个位移都有两个严格相邻符号，Lean 的旧单调性桥覆盖全部 n；`decide` 在内核中完成，无 native_decide。
- [independent-verification.json](independent-verification.json)：冻结源码后重新计算四个饱和核、用 SymPy 独立展开 12 个局部恒等式，并以不同的单调扫描算法逐行核对 30000 个原始五因子乘积切片。
- [high-transcription-audit.json](high-transcription-audit.json)：独立核对主任务和 A 的共 8 份实际 Lean 辅助式定义，均与冻结输入的精确系数一致。
- 没有另用独立内核检查器；符号计算和有限计算均与 Lean 接受状态分开记录。

## 失败、边界与下一步

详见 [exploration.md](exploration.md)。保留了所有失败日志与高度探针：20000 阈值的常数不足；中心 `0+q*u` 正规化问题；在非中心上无改动 simp 导致的失败；PowerShell 包装器 `-o` 参数歧义。失败的 Lean 编译被公理 guard 正确拒绝，未在源码插入占位证明。

剩余数学缺口是一般含 2/3 的位移、全部五位置同时占据的情况，以及其他奇长度。此前均衡五位置的幂次障碍仍在，不能从四位置闭合推断全 k=5 接近解决。已记录但未测试的后续支线是从相同高阶式子推出 omitted-factor 的条件界；当前先完成主任务的最终递归验收。

研究：所列子类闭合；原问题开放。证明：本目录正式链已首次接受；全轮递归复验由支持任务执行。审阅：同任务 AI 与独立精确算法核对，无外部同行评审。新颖性：未确认。发布：未 commit、push、发布或外部联系。除本目录新文件外，A 没有改动旧研究源码、共享入口或依赖。
