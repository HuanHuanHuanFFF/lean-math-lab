# 单叶齐次化资源候选（未运行 Lean）

本包只替代 ThreeTwo 的 ELeaf001.actual_gap_eq 证明方式，数学目标、λ、区间 [1/4,3/8] 和 39 个 gap 系数均保持原值。原同字节源码已由主任务报告在 3072 MiB 下通过（20.822 秒，新增对象 14.358 MiB，公理在 std3 内）；1536 MiB 曾在该等式内核验收时内存不足。因此本包是可选备用方案，不阻塞已通过的主线，也没有带来新的原题覆盖。

原核为 t^15(1−t)^15(1−t/9)^8，区间代换 t=(3x+2y)/8、x+y=1。先在独立 x,y 上证明齐次整数恒等式：

    K(x+y)^38 − (3x+2y)^15(5x+6y)^15(69x+70y)^8
      = Σ A_k x^k y^(38−k).

D=8^30·72^8=894045416874100774833775661901846480420864（140 位），K=Dλ=529025545333459515807345893179392，A_k=D·gapCoeff_k 最大 144 位。39 项全部由整数卷积精确核对，并与原 Lean 和原 JSON 对齐；另外 30 个有理点检查均通过。JSON 中的条目实际是核的归一化 Bernstein 系数，故对应式是 gapCoeff_k=(λ−coreBernsteinCoeff_k)·choose(38,k)，不能直接把 JSON 当 gap 系数。本包记录了这一表示诊断。

Data.lean 保留原数据前缀，只换命名空间。Homogeneous.lean 使用整数系数、独立变量的 ring 证明。Reduction.lean 先分别清除 λ、核、39 项系数的固定分母，再代 y=1−x，以明确一次式恒等式和非零 D 消去得到原 Polynomial 等式。高次代换之后不使用 ring 展开。ReplacementLeaf.lean 是另一独立命名空间的完整原叶副本，只替换 actual_gap_eq 的证明，检查与原定义布局的接合；它不导入原 ELeaf001，避免依赖原有昂贵证明或形成循环。

候选含完整证明文本，无 sorry、admit、axiom 或 native_decide。尚未运行 Lean，故不能宣称这些新证明已通过，也不能宣称内存、对象大小或速度实际改善。预期减少有理数展开中间项只是待测资源假说，齐次 ring 自身仍有成本。

建议由主任务串行按 HomogeneousAudit、ReductionAudit、ReplacementLeafAudit 三个入口验收，再按需要运行 Audit.lean 全部公开根。audit_axioms.py 只校验实际日志，拒绝编译错误、sorryAx、缺根和额外公理；其自测是合成日志检查，不是 Lean 接受。INPUT_SOURCES、SOURCE_MAP、exact-homogeneous-checks、static-review 与 FREEZE 绑定来源和边界。

开始时间 2026-09-11 22:52:06 UTC；20 分钟是检查点而非总截止。到检查点候选证明文本已完成，本次仅补静态复核与冻结。后续最小动作是可选的单叶低内存实际试验；若不需要，可直接保留方法记录，不扩其他叶。
