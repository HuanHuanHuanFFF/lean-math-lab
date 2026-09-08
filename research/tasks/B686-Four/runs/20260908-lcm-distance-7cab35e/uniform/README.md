# B686-UD：全长度64距离界与250000原目标

## 当前接受结果（2026-09-08 05:49 Asia/Shanghai）

对所有自然数 `k,n,m`，若 `2 ≤ k`、`n+k ≤ m` 且
`∏_{i=1}^k(m+i) = 4∏_{i=1}^k(n+i)`，已完整Lean证明

```text
k² < 64(m−n)，因而 k² < 250000(m−n)。
```

精确公开接口在 [UniformDistance.lean](UniformDistance.lean)：
`B686UniformRound9.uniform_distance_bound_sixty_four`、
`uniform_distance_bound` 与直接写出原Icc乘积的 `uniform_distance_bound_products`。
[Consumer.lean](Consumer.lean)独立导入，逐一消费原始自然数题面及有理数倍率桥。

验证命令：`C:/Python314/python.exe research/tasks/B686-Four/round9/uniform/verify.py`。
默认验证器已经切到实际LCM64闭包，从11个项目源文件重新编译，冻结依赖只读，所有对象写入本目录`verification/build/`镜像。策略扫描、实际版本、各模块、精确传递公理守卫和独立消费者全部exit0，详见[verification.json](verification.json)。允许的传递公理仅为`propext`、`Classical.choice`、`Quot.sound`；公理消息仅归一化空白，不使用子串比较。未使用独立外部内核检查器。

实际工具链：Lean4.33.1，mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474`；未改变锁定依赖。本轮源与验证器已冻结，见[freeze.json](freeze.json)。未提交或推送，本分支将发布交给主任务。

## 来源、覆盖与保留边界

本链适配 Will Blair 的[外部LCM证明切片](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686CenterComponentLogStrip.lean)。原文件在Lean4.29.1环境给出18常数路线；本地选择已有粗大小界 `kd<3n`，以64证书降低依赖成本。初始LCM、区间压缩和阶乘配对的具体切片、常数替换及源SHA256见[来源清单](external-slice-provenance.json)，完整MIT版权许可见[LICENSE-Will-Blair.txt](LICENSE-Will-Blair.txt)。没有在本地复核外部18根的完整依赖，不把64称为新颖性结果。

预期工作原只是将250000纸面界内核化；实际在本地将可核排除范围扩大到`d≤k²/64`。长度与更大距离仍无界，未证明B686整体无解。主任务已逐行审查声明、严格号、小k及定义对应；这属于同任务AI检查，没有外部同行评审。

## 文件状态

- 接受主链：`InitialLcm.lean`、`FactorialTail.lean`、`LcmDistance.lean`、`UniformDistance.lean`、`Consumer.lean`，以及主任务的`../main/MatchingLcm.lean`。
- 单独已验、当前主链不用：`Algebraic.lean`、`Choose.lean`、主任务`../main/RankProduct.lean`。
- 停用且未编译候选：`Constants.lean`、`ElementaryWeighted.lean`、`WeightedPrime.lean`；不计入接受证明。原积分链与旧验证器快照保存在`archive/integral-candidate-20260908/`。
- 下一项检查：主任务使用冻结清单做独立最终复核、更新frontier与发布记录。无需继续完成停用的exp/log链；是否采用外部18或寻求更大的全局排除，由主任务按剩余前沿决定。

原轮开始04:40:04，原截止10:00，绝对截止11:00；主根首编05:42:25已报告05:45检查点，全链验收05:48:42完成，05:49读取确认，本分支未使用延期。

## 启动记录与过程（历史；以下状态按各检查点理解）

# B686-UD：第九轮全长度距离界内核化

- 所有权：本目录。冻结的 `formalization/UniformDistance`、`formalization/PrimeCounting` 与 `round8` 只读复用；共享依赖由主任务协调。
- 开始：2026-09-08 04:40:04 Asia/Shanghai；原截止 10:00；绝对截止 11:00，尚未启用延期。第一检查点 05:45。
- 锁定目标：自然数 `k,n,m`，`2 ≤ k`、`n+k ≤ m`、`P_k(m)=4P_k(n)`，无额外假设推出 `k^2 < 250000*(m-n)`。
- 前沿变化：成功后，已有纸面区域 `d ≤ k²/250000` 的排除获得完整 Lean 验收。相对纸面基线不增加数学覆盖；长度与较大距离仍然无界，不是原题无解证明。
- 已验输入：完整 gcd 界、原方程上下大小界、`77π(N) ≤ 16N+616`、严格小长度分支。不会重复证明这些模块。
- 当前下一义务：加权 π 界；组合数指数上界与常数；原产品定义桥接和全界合并；独立接受根与严格传递公理守卫。
- 研究状态：已知纸面结果形式化；新颖性未确认；没有外部审阅或发布授权；不提交、不推送。

## 路线与检查记录

### 04:44：输入核对与分析分解

已读当前 frontier、round9 README、U1–U5交接及第七轮显式常数证明。选择复用 `theta_eq_primeCounting_mul_log_sub_integral`：先按素数是否大于 k 比较 theta，再以全局线性 π 界控制 2..k 上的积分。组合数拟由 `Nat.choose_le_pow_div` 与 `Real.pow_div_factorial_le_exp` 推得指数上界，避免重建 Stirling 积分。

当前 `Mathlib.NumberTheory.Chebyshev.olean` 和 `Mathlib.Analysis.Complex.ExponentialBounds.olean` 缺失，已通知主任务统一安排；本分支不启动大依赖构建。缺缓存属于环境成本，不是数学失败。完整根目前仍未完成。

### 04:47：整数桥接通过

`Algebraic.lean` 实际桥接 `B686Round8.product` 与 `B686Target.product`，从倍率4把通用 gcd 界变成下块产品上界，并完成所有 `k≥2` 的 `m≥k³` 分支。`algebraic-attempt2` exit 0，用时24.18秒，四项严格传递公理守卫通过；详细命令、源码与日志 SHA256 见 `logs/algebraic-attempt2.json`。首次失败是 gcd 简化引理和阶乘 API 名称错误，以及定义桥的传递公理预期写成无公理；均按实际声明修正，不是数学失败。

证明组织简化：组合数与小素数部分只需要非严格上界；最终严格性可统一来自 `m^k < P_k(m)`。这不改变原目标常数或假设。取消 `Integrals.Basic` 新需求，拟直接用 Abel 已有 FTC 处理倒数积分，避免额外三角函数依赖。

### 04:58：未实现的无积分替代构造

动机：分析依赖从固定源构建耗时；当前主方案使用Abel积分，但线性π界的核心可转成排序后的逐项界。令α=16/77、r=π(k)，第j个素数记p_j（j从1计）。由77π(p_j)≤16p_j+616，得到j−8≤αp_j。若r>8，对j=9..r相乘可得(r−8)!≤α^(r−8)∏_{j=9}^r p_j；前八个素数乘积≥1，再用x^s/s!≤exp x，得到k^r/primorial(k)≤k^8 exp(αk)。取log就是所需 `π(k)logk−θ(k)≤αk+8logk`。r≤8单独由θ≥0和logk≥0处理。

该方案为纸面构造、未测试Lean，已经同步主任务。最小检验：检查 `Nat.nth Nat.Prime` 与 `primeCounting` 的rank等式，能否用有限积重索引直接证明上述阶乘界。它不会增加数学覆盖，可能减少形式化环境成本。当前已有积分版代码更直接，尚未切换；只有依赖构建或积分API出现具体成本瓶颈才考虑实现。

### 05:00：候选链已备齐，等待分析缓存

已写 `Constants.lean`、`Choose.lean`、`WeightedPrime.lean`、`UniformDistance.lean` 及独立 `Consumer.lean`。完整候选根直接量化自然数 k,n,m，且包含k=250000边界，无额外分析假设。`verify.py` 会依次重编译全部本轮源、运行严格传递公理守卫和导入消费者，并记录固定输入源码指纹；仅在所有步骤exit0时才标记完整距离界通过。

父任务独立复核了上条无积分纸面构造并确认数学链；指示保持后备，不同时实现。切换检查点是当前积分版在可积性或区间API上累计受阻15分钟后，先报具体诊断再比较成本。目前尚未开始分析层编译，缓存成本与证明成本分开记录。主任务仍在研究全局结束机制。

### 05:08：主任务启动无积分桥的15分钟试验

主任务指出固定 `NumberTheory/Primorial.lean` 的全局 `primorial_le_four_pow` 已直接给素数乘积≤4^k，因此rank构造不但可去积分，也可去Chebyshev模块。主任务认领 `round9/main/RankProduct.lean`，从05:07开始15分钟试验，拟交付纯Nat接口（s=π(k)−8）：`77^s * s.factorial ≤ 16^s * primorial k`。本分支不重复做rank桥，原积分候选保持不动。

后半段纸面简化：对rank界和指数级数 `(16k/77)^s/s! ≤ exp(16k/77)` 分别取log并相加，消去log(s!)及s log16、s log77，直接得到 `s logk ≤ log(primorial k)+16k/77`。普遍 `π(k)≤s+8`，所以无需r≤8的单独分支。该消费者当前未Lean实现，等待rank试验结论。05:07:40的实际缓存核对：Primorial、Exponential、ExponentialBounds、Log.Basic、Chebyshev均无olean；环境与数学义务继续分开记录。

### 05:16：组合数指数界通过；决定切换无积分路线

主任务交付 `round9/main/RankProduct.lean` 的 `B686RankProduct.factorial_le_scaled_prime_product`：所有自然k，s=π(k)−8，`77^s s!≤16^s ∏_{p≤k}p`。05:11:43第二次编译exit0、严格标准三公理守卫和单文件策略扫描通过；交付SHA256为 `f131d77e2b4391f362539757845fbbcecd2bd09cb122b6e64b96c4f6c326e1fd`。它将在本分支最终验收中再次从源码编译。原积分候选尚未编译，因依赖成本选择切换，不是积分证明被否定；快照见 `archive/integral-candidate-20260908/`。

`Choose.lean` 的两项根在 `choose-attempt2` 编译exit0（25.73秒），严格标准三公理守卫通过。第一版失败仅为 `Real.pow_div_factorial_le_exp` 实际有显式x首参，以及两处cast改写后还需rfl；详细失败和修复证据见 `logs/choose-attempt1.json`、`logs/choose-attempt2.json`。这两项完整上界现在可复用，无额外假设替代原数学输入。

`ElementaryWeighted.lean` 已写纯exp/log候选；旧 `WeightedPrime.lean` 成为转发导入，保持上层调用路径。05:15:47仍缺ExponentialBounds、Log.Basic、Primorial对象；Complex.Exponential已就绪。完整距离根仍未验收。

### 05:21：按主任务优先级暂停弱界扩展

主任务新定位公开外部分支 `williamjblair/lean-proofs` 的 `codex/erdos686-corrected-package-final`，commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`（其记录日期2026-07-17）。父任务报告其FRONTIER声称k≥16时已有更强Lean界 `k²<18d`，并在核取MatchingCompression/LargeKWedge等准确源码。此处仅记录父任务待审核的外部线索，不将其视为已验证定理、已满足原假设或已完成移植。

主任务要求暂停继续扩展弱界消费者5–10分钟，先判断外部结果的条件、完整性和移植成本。本分支已停止新证明与新编译，当前没有自己的Lean进程；没有停止或干预辅助拥有的mathlib构建。已通过：Algebraic与Choose；未编译候选：Constants、ElementaryWeighted、UniformDistance、Consumer（WeightedPrime现为转发）。原积分候选的快照保留。

若强结果的假设确实匹配并能内核复核，则k<16由disjointness直接处理，250000根可极短闭合；在审核完成前不据此声明数学覆盖变化。

### 05:42首次完整根闭合；05:46全链重新验收启动

`LcmDistance.lean` 的 `lcm-distance-attempt3` 编译exit0（14.21秒），五项严格传递公理守卫全部通过且日志静默。精确结论为：所有自然k,n,m，k≥2、n+k≤m、原Icc乘积等式比例4，均有 `k²<64(m−n)`；250000根直接由它推出。源码SHA256 `4161820d13f85647d2b296ef3e4c2d37ce6922882df2bfee8a12427bd2ce5a79`。已向主任务于05:42:25报告，早于原05:45检查点；完整交付包验收在后续执行。

关键失败诊断：InitialLcm缺的是`Mathlib.Algebra.GCDMonoid.Finset`导入，非Nat.GCD.BigOperators。修正后数学证明即通过；长名字公理消息自动换行导致格式比较失败，尝试pp.width（不存在）及format.width均未改变该消息格式，最终使用文档规定的 `whitespace := lax` 只归一化空白，公理名称、数量、顺序仍精确比较，不使用substring模式。任何额外公理仍令守卫失败。LcmDistance第一次只有常数1尚未化简及本地Target产品未展开的问题；第二次文本修补未匹配CRLF，第三次用精确源片段匹配和显式单调性修复。没有数学假设被放宽或补入。

最终默认 `verify.py` 现沿UniformDistance/Consumer递归读取实际项目导入闭包，包含本轮MatchingLcm及冻结旧依赖，全部只读编译到本目录 `verification/build/` 镜像路径；不覆盖冻结目录日志/对象，不依赖未入Git的旧项目olean。旧exp/log默认脚本已在archive保存。主任务已逐行审查最终根、严格号、小k与Icc对应，目前无数学/声明问题；这属于同任务AI审查，非外部同行评审。

预期与实际前沿：起初预计只把既有250000纸面界内核化；实际借用外部LCM方法得到本地完整64界，扩大本地已核排除范围到d≤k²/64。外部已有18更强，64为减少依赖而选择的保守消费者，不主张新颖性。剩余长度与更大距离仍无界，原B686无解未证。
