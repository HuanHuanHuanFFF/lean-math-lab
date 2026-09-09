# 本批完整报告

本轮高度目标已完成，B699全题仍未解决。来源版本、授权边界和时间预算见 README。已完整接续两批旧报告与验收；没有以旧全局扫描或旧证书重跑完成初始化。旧项目模块只在新消费者的实际依赖链中进入新输出目录编译。

## 最后已接受消费者与实际前沿

令 `t=π(i−1)=i.primesBelow.card`，`s=i−4t>0`，定义

\[
H(i)=2^{\lfloor4i/s\rfloor+1}\,i^{\lfloor(i+3)/s\rfloor+1}.
\]

这是全部由自然数运算构造的可计算函数。最终 [OriginalHeight.lean](lean/OriginalHeight.lean) 接受以下完整原题陈述：

| 消费者（namespace `B699Height`） | 全部前提 | 结论 |
|---|---|---|
| `counterexample_height` | 自然数 `1≤i<j≤n/2`；`4t<i`；不存在素数 `p≥i` 整除原始二项式gcd | `n≤H(i)` |
| `common_of_height_lt` | 自然数 `1≤i<j≤n/2`；`4t<i`；`H(i)<n` | 原始Common，含 `p=i` |
| `counterexample_height_of_index185` | 自然数 `185≤i<j≤n/2`；原始noCommon | `n≤H(i)` |
| `common_of_index185_height_lt` | 自然数 `185≤i<j≤n/2`；`H(i)<n` | 原始Common，含 `p=i` |

所有判别式、系数内容、UV分拆和U界输入都在最终消费者内部落实；没有未证明公式、非零性或结构前提。`i≤2` 的正指数分支由已有无条件Common消去。一般结果式辅助和纯算术辅助保留显式参数，最终原题消费者已将它们全部实例化。

实际减少的未知范围是正指数区域的整个 `n>H(i)` 尾部；对每个固定这样的i，剩余高度有明确有限上界。i仍可无界。低指标旧结论未覆盖区域、正指数的 `n≤H(i)` 区域仍未解决。旧 `i≥10^6` 全域排除仍属纸面，完整EEES及Dusart旧缺口不升级。

| i | t | s | H的规模 |
|---|---|---|---|
| 185 | 42 | 17 | 41位整数，约 `2.83×10^40` |
| 200 | 46 | 16 | 46位整数，约 `1.84×10^45` |
| 1000 | 168 | 328 | `8192000000000000` |

仅计算以上三个H来说明规模；未扫描原题三元组。完整整数及脚本在 [height-scale](experiments/height-scale/result.json)。`H(185)`还在Lean验收消费者中以内核求值确认。这些有限数值不承担无限量词证明，也不支持可立即穷举的结论。

## 最终验证与证据等级

[20260909T070200Z/evidence.json](verification/20260909T070200Z/evidence.json) 记录07:02:00Z至07:02:51Z的成功fresh验收：九个新模块和六个必要旧模块从源码在一个新项目对象根编译，全部exit0；固定Lean4.33.1与九项manifest pins匹配。实际67条传递公理输出的并集为 `propext, Classical.choice, Quot.sound`，没有异常公理。最终四个原题消费者都实际打印；源码哈希在编译前后及交付整理时一致。

固定依赖包对象缓存允许复用，旧项目对象及本轮开发对象未进入该次LEAN_PATH。每次Lean使用单线程、4096MB阈值，一个串行流水线。必要旧轮筛的guard输出通过同一新对象根的补充import消费者实际打印，保留原失败和补充输出；没有从注释推断通过。补充适配的12项轻量拒绝检查见 [guard-checks](verification/guard-checks-20260909T070337615299Z.json)，这是验证器测试而非数学证据。

独立AI数学与statement审查未发现阻断；与实现者推导隔离的初审和后续差异核对见 [review](reviews/independent-math-review.md)。此后仅修复Acceptance中的数值求值和数值语法，主定理源码未变；最终源码以fresh哈希为准。没有运行第二个独立内核检查器，没有人类同行评审或新颖性认证。贡献类型是已知判别式路线的形式化及独立代数重建，不声称公式首创。

失败、修复与重启依据见 [failures](notes/failures.md)；源码采用和许可边界见 [adopted-inputs](notes/adopted-inputs.md)。本轮目标内无剩余证明缺口；下一步应消费已验高度定理攻击剩余区域，避免重做这条链。

初始结果：最新 main 与用户基线相同。复制为独立 checkout；旧工作区含未提交内容，保持原样。预期数学贡献与当前未关闭缺口见 frontier。

## 实际代数路线与依赖图

1. CoefficientContent：原始完整D及原题noCommon→所有实际系数整除→F=C(D)G，degree/端点/导数。
2. DiscriminantAlgebra：固定resultant_deriv→一般内容指数缩放；一阶下降关系→精确Disc递推。
3. JacobiIdentity：对实际二项式F逐系数证明下降关系，供上一步消费，并从线性基例证明实际Disc>0。名字保留题目来源，但证明不依赖Jacobi分析库。
4. ScaledDiscriminant：实际递推→Δ=(i!)^(2i−2)|DiscF|精确递推→平方上界，保留阶乘。
5. ContentDiscriminant＋旧SmallPartBound：原题反例→V^(2i−2)≤|DiscF|及U≤n^t。
6. FactorialHeight＋HeightArithmetic：先消阶乘，再消n的正幂，得到显式自然数H。
7. OriginalHeight：完整原题消费者＋已验轮筛i≥185消费者；i≤2使用旧无条件结论。

06:22Z状态：以上源码全部是静态候选，未接受。新的纸面代数递推与已知源公式相符，完整推导见notes/algebra.md；没有复跑旧有限诊断或依赖外部公式作为假设。

## 45分钟检查点

06:43:52Z为原定检查点；依赖图和可执行完整候选已于此前形成，06:46Z补记首编结果。通用结果式自由次数、符号与非首一缩放已经通过固定Lean；实际系数恒等式、完整D整除每项、整数商、导数关系也已通过。主线程的精确阶乘消去及正指数自然数算术首编通过。当前实际F下降证明的三处化简问题属于编译接口诊断，保留失败源码/输出并逐项修复。

独立数学审查读取原始题面和源码，重建了递推、正性、阶乘指数、185阈值及完整量词，未发现数学或statement阻断。审查不声称内核验收。此时完整新链仍未通过，实际未知范围减少尚不提升；继续投入的理由是核心新代数接口已通过，剩余候选有明确、有限的验收路径。

新增开发证据与运行环境分别见 `verification/dev-*`、`notes/runtime.md`。必要旧轮筛依赖源码编译已成功，其stdout公理审计因guard消息被捕获而失败；正在补充实际打印入口，不能用guard注释代替输出。最终验收仍将在独立的新项目输出根从源码重编整个实际依赖闭包。

06:49Z更新：实际F的下降恒等式、判别式递推、正性和非零性已全部编译成功（`verification/dev-20260909T064656452724Z/006-JacobiIdentity.log`）。精确阶乘缩放递推及平方上界也已通过（`verification/dev-20260909T064905530253Z`）。三处Jacobi接口问题和一处natAbs化简问题均已修复；成功的实际公理输出仅含 `propext`、`Classical.choice`、`Quot.sound`。这关闭了本轮最初的关键代数缺口，但原题消费者和fresh全链验收此时仍待完成。

## 发布记录

首次普通git push因命令行无凭证失败。通过已授权GitHub连接创建同树提交并新建本人分支；随后git fetch及ls-remote核对 `1ce3665ae84962caee72a11d155fc8d203bd4fd9`。同树本地初始提交保留在本地checkpoint ref，工作文件未覆盖。后续仍只正常推进本分支，不force、不PR、不合main。

第二次远端检查点为 `79cbe5a45ef55e2aa6934ecd670a1f61bab863c4`，包含完整候选链、推导和静态源码政策证据。再次核对本地与API提交的Git tree完全相同，并通过fetch及ls-remote确认远端SHA；这次推送不代表证明通过。

第三次核心检查点为 `7a78e8b31ff1044deda1c553071283927094e8b1`，保存实际判别式递推、正性及阶乘高度链的开发成功证据，并已fetch/ls-remote核对。07:02:51Z后完成fresh验收及交接整理，07:10:48Z的 [交付检查](verification/delivery-checks-20260909T071048Z.json) 再次确认已验源码哈希、67项公理输出、授权文件范围、相对链接与无自有Lean/Lake活动进程。最终提交继续正常推送同一独立分支，最终核对SHA和观察到的CI状态在交付消息报告；不等待非阻塞API文档CI。

时间结算：原起点05:58:52Z、原截止08:58:52Z；主目标07:02:51Z已完成，提前进入记录与推送收束，未申请或使用延期。初始化、工具恢复、研究、编译、记录和推送均计入同一本轮预算。
