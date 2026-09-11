# i11 正 delta 的 upper-height 消费者

本目录提供三个**未编译 Lean 候选**：从完整原题 `¬Common n i j` 推出 upper-height 小素数部下界，再经真实幂族列表和有限覆盖检查回到原题的两个整除结论。主线程已独立确认一般数学声明。本 worker 未运行 Lean，不能把候选或附带数值检查列为新接受结果。

## 为什么旧接口不适用

现有 `HeightCertificate.heightExponent` 定义为 `mu*lambda+E`，其中 `mu=smallPrimeCount i`、`lambda=2s−r`、`E=windowDegree i r s`。原 `HeightRowValid` 要求 `heightExponent≤i*lambda`；`CofactorCover.noCommon_small_part_lower_of_certificate` 使用自然数 d 满足 `i*lambda=heightExponent+d`，并沿 `H≤n` 传播数值证书。

i11,r3,s7 的实际量为 `mu=4,lambda=11,E=84`，故 `heightExponent=128=121+7`。旧条件 `128≤121` 不成立，不能用自然数减法的截断掩盖这点。新候选保持共享文件和登记表不变，单独处理 `heightExponent=i*lambda+delta`、`n≤H` 这一方向。

## 精确的一般声明

`UpperSmallPart.noCommon_small_part_lower_of_upper_certificate` 的所有参数为自然数，假设：

- `2≤i`，`i<j≤n/2`，`s<i`，`0<lambda=2s−r`；
- `i(i−1)≤n≤H`；
- `heightExponent i r s = i*lambda+delta`；
- `(2*i!)^lambda * H^delta ≤ windowConstant i r s * M^(lambda*(mu−1))`；
- **实际原题反例** `¬B699LargePrimeStructure.Common n i j`。

结论为 `n^mu ≤ M^(mu−1)*smallPrimePart n i`。一般下界没有 M<n 前提；它只在后续两素数颜色定位中要求。

该结论不假定所需小素数部下界，也不假定有限高度、注册表成员或原题结论。实际 `Common` 定义是存在 `Prime p ∧ i≤p ∧ p∣gcd(choose(n,i),choose(n,j))`，因此 p=i 的边界保留。

## 纸面证明及源码对应

记 `K=windowConstant`、`C=(2*i!)^lambda`、`U=smallPrimePart`、`E=windowDegree`。已验 `CofactorCover.lean:72` 的 `noCommon_bernoulli_size` 在完整 hno 下给

`K*n^(i*lambda) ≤ C*U^lambda*n^E`。

由 n≤H 和 delta∈Nat，有 `C*n^delta≤C*H^delta≤K*M^(lambda*(mu−1))`。将第一式乘 n^delta 并代入第二式，得到

`K*n^(i*lambda+delta) ≤ K*n^E*(M^(mu−1)*U)^lambda`。

指数关系将左端改写为 `K*n^E*(n^mu)^lambda`。合法原题参数强制 n>0，且已验 `window_constant_pos` 给 K>0，所以可以取消正的 `K*n^E`。最后用 lambda>0 的自然数幂单调反推目标。这与主线程审查的“先乘 n^(mu*lambda)，再取消另一正幂”版本代数等价。

候选使用实际 `Nat.mul_le_mul_left/right`、`Nat.pow_le_pow_left`、`Nat.le_of_mul_le_mul_left` 和当前 Lean core `Nat.pow_le_pow_iff_left`；没有实数、除法、不定向 floor 或分析缓存依赖。

## i11 的独立实例

`I11SmallPart.lean` 分别给出实际定义上的候选：

`smallPrimeCount 11=4`，`windowDegree 11 3 7=84`，

`windowConstant 11 3 7 = 142131407644347048724404082572664265244672000000000`，

`heightExponent 11 3 7=128=11*(2*7−3)+7`。

这些封闭值的证明使用 `by decide` 或对应等式重写，须由主线程实际 kernel 检查；当前仅有独立 Python 整数核对。由上述条件得到：所有自然数 n,j,H,M，只要 `110≤n≤H`、`11<j≤n/2`、`C*H^7≤K*M^33` 与完整 hno，就有

`n^4≤M^3*smallPrimePart n 11`。

本模块没有固定巨大 H 或求 M 的根，也没有把旧计划的数值布尔值作为已验定理。

## 新覆盖层与原题量词

`UpperCoverLayer.lean` 复用现有 `CoverLayer` 数据结构，另定义 `UpperLayerArithmeticValid` 和 `upperCoverLayerCheck`。算术部明确要求 M>0、M<lower、`i(i−1)≤lower`、`i≤lower<upper`、正 lambda、至少两个小素数、正确的正 delta 指数等式，以及使用 **upper^delta** 的整数证书。

正确性证明针对每个 `lower≤n<upper`、每个 `i<j≤n/2`：假设 hno，应用新 upper-height 下界；由已验 `PrimePowerEnumeration.lean:92` 的真实列表完整性找到两个不同素数颜色的区间，再经 `pairCoverCheck_sound` 和 `checked_goods_cover` 得到矛盾。没有把列表完整性当新假设，也没有只检查某个 j。

`i11_upperLayerArithmeticValid_of_certificate` 显式说明具体 i11 的简单整数条件足以满足新算术部，避免隐藏旧的 128≤121 条件。末端 `i11_upperCoverLayer_original` 给出原始形式：

`∃p, Prime p ∧ 11≤p ∧ p∣choose(n,11) ∧ p∣choose(n,j)`。

该末端仍有两项真实有限证书前提：所有 supplied goodSegments 检查为 true，以及新的层检查为 true。它们是可执行的具体检查，不是已完成的 i11 全覆盖；本目录没有提供巨大参数的完整证书实例。

## 接受记录、实际检查与边界

输入采用同一成功闭包记录 `verification/20260910T193504764901Z/evidence.json`。本目录脚本核对七个已验来源的 current/source-before/source-after SHA 和退出码、原 audit 日志 hash，并保存相关声明的输出。来源包括 `CofactorCover`、`ThreeWindowSize`、`HeightCertificate`、`PrimePowerEnumeration`、`IntervalCover`、`LargeDivisorWitness`、`FiniteCover`。没有复跑这些 Lean 模块。

`check_candidate.py` 仅做小型 exact integer 代数检查、i11 封闭常数核对、导入/占位项/审计指令静态检查。代数测试中的 U 是整数变量，并非实际 smallPrimePart；它们只核查指数和不等式方向，不是原题测试或证明。另保留一个说明不能漏掉 n≤H 的纯代数反例：i=3,lambda=2,mu=2,E=3,delta=1,K=C=M=H=1,n=4,U=8 时基础不等式和数值证书成立，但目标 16≤8 不成立。这不是 B699 反例。

全部新增公开定义、实例和定理都有可执行 `#print axioms`。没有 placeholder、自造公理或 `native_decide`。编译顺序为 `UpperSmallPart → I11SmallPart → UpperCoverLayer`，主线程应复制到本 run `lean/UpperHeight/` 后按固定源验收；失败时保留本冻结原稿，在授权的集成副本修复。

重要成本边界：新检查器仍用原始 `powerIntervalList`，它会枚举真实 a 区间。不能直接对 M≈2^3262 执行。此处只解除数学消费者的指数方向障碍；紧凑 CRT/幂块 checker、其 soundness、完整数据，以及低于该层的 `24≤n≤M`、后续下降、终端覆盖和原题到初始高度的证明均另缺。本实验不提高 B 原题计数，不声明 i11 已解决，不声明新颖性。

实际检查结果：180 个标量代数实例全部通过，i11 的 mu/lambda/windowDegree/K/128=121+7 封闭整数核对通过；14 个声明均有 audit 指令。检查脚本耗时 0.008856 秒。没有运行 Lean。
