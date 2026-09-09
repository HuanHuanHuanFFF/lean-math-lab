# 本批完整报告

研究进行中。来源版本、授权边界和时间预算见 README。已完整接续两批旧报告与验收；没有运行旧全局扫描或旧证书。

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
