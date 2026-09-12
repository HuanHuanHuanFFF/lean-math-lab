# 一个真实 Q 增长叶片的 Lean 接入原型

负责人：/root/i18_downstream_review。开始于 2026-09-11 08:24:56 UTC。只写本实验；没有修改任何冻结/已验源、runner 或 index，没有运行 Lean。

## 已交付的范围

已生成两个完整、未编译的候选文件：

- [AffineCone.lean](AffineCone.lean)：实际 X、1−X、Q/E 仿射因子、core、两 δ weight 的锥构造，以及 0≤a≤b≤1 下仿射复合保锥的证明。
- [ConcreteLeaf.lean](ConcreteLeaf.lean)：一个真实 Q 叶片，含实际多项式等式、三个锥前提及 δ=0、1 两个 GrowthTree.leaf，最终声明均没有“局部界已成立”或“给定全局锥”的假设。

这是**一个几何叶的两 δ 接口原型**。没有铺开其余叶片、没有组成完整树、没有完成全种子增长或 B 原题。两个候选均须由 primary 真正编译并核对传递公理；本任务新增 B 指标为 0。

## 1. 绑定的真实数据

输入来自上一增长实验的 certificates-compact/row-00.json，并与其 FREEZE_V1.json 中的 SHA 核对：

|字段|实际值|
|---|---|
|种子|p=2，q=13，k0=9，l0=2，a0=1，b0=3，D0=5|
|参数|c=3，d=2，z=5/512|
|core|Q，次数 5|
|λ|6522198863402714783048734994 / 2^96|
|叶片|第 0 叶，辅助多项式变量区间 [0,1/8]|
|深度与路径|深度 3，正向二分路径 000|
|两 δ weight 指数|δ=0：(0,2,2)；δ=1：(1,1,1)|

这里的 [0,1/8] 是核多项式的辅助变量区间，不是原题 n 的范围。

具体多项式是

    f(X)=X(1−X)^2(1−507X/512)^2，
    w0(X)=(1−X)^2(1−507X/512)^2，
    w1(X)=X(1−X)(1−507X/512)，
    T(X)=X/8。

候选不是将 f、w0、w1 定义成某个待证明的 Bernstein 组合。它们从通用实际 qCore/qWeight 的 c、d、z、δ 定义实例化，之后才证明相应组合等式。叶映射从端点形式 a(1−X)+bX 定义，另有实际等式证明把它接到 halfLeft 三次复合的路径。

精确源文件、来源 ledger、区间数据、已集成 Partition 和 Bernstein 的哈希保存在 [GENERATION_CHECK.json](GENERATION_CHECK.json)。生成器还核对原始 i18 输入行与证书行逐字段相同，λ=N/2^96 精确相等，0≤a<b≤1，二分宽度与位置对齐。

## 2. 多项式等式是锥接入的核心

该叶的原规范 Bernstein 系数为 b_k=n_k/D，D=42949672960，

    n=[0,1073741824,1880358912,2469692192,2883316464,3155825645]。

生成器计算未归一化 gap 系数

    γ_k=binom(5,k)·(λ−b_k)，k=0..5。

关键声明是**实际多项式等式**

    Polynomial.C λ − f.comp T
      = Σk=0..5 Polynomial.C γ_k · X^k(1−X)^(5−k)。

ConcreteLeaf.lean 的 actual_gap_eq 通过 Polynomial.funext，把两边在**任意有理 x** 的取值等式交给明确的有理数规范化与 ring 运算。Polynomial.funext 来自本机已有缓存的纯代数 Roots 模块，利用 ℚ 的无限性；不是从有限点测试推出多项式等式，也没有使用新的 analysis 缓存。

右侧六个 γ_k 是实际正有理数，候选分别用 norm_num 证明非负，再从 BernsteinCone.basis、scale、add 构造 gapExpansion_cone。只有在 actual_gap_eq 已证明后，才转成 local_gap_cone。没有把“JSON 中系数非负”单独当作实际 λ−f∘T 的锥证明。

## 3. 两端条件和实际 core/weight 锥

AffineCone.lean 从实际基底构造 X、1−X 的锥成员性。端点形式

    affine(a,b)=C a·(1−X)+C b·X

在 a,b≥0 时属于锥。若 0≤a≤b≤1，还得到

    1−affine(a,b)=affine(1−a,1−b)

也属于锥。因此对任意已由基底构造的 p∈BernsteinCone，逐构造归纳证明 p.comp affine(a,b) 属于锥。a≤1 由 a≤b≤1 得出，b≥0 由 0≤a≤b 得出；没有只检查一个端点。

实际 Q 因子为 (1−X)+zX，从 z≥0 直接构造。实际 E 因子为 1−zX=(1−X)+(1−z)X，从 z≤1 构造。core 和 weight 再由锥的乘法与自然数幂闭包构造。本轮具体 z=5/512，所有所需源参数与区间条件都在 ConcreteLeaf 中以明确数值证明。

于是两个最终候选为

    GrowthTree λ (w0.comp T) (f.comp T)，
    GrowthTree λ (w1.comp T) (f.comp T)。

它们都使用真实的 local_weight*_cone、local_core_cone 和 local_gap_cone 调用 GrowthTree.leaf；没有对实际叶多项式的锥成员性新增假设。

## 4. 可重复生成与实际小检查

[generate_leaf.py](generate_leaf.py) 支持选择一个 row、Q/E kind 和 leaf，当前有意识地限制次数≤9，防止这个原型任务自动扩成大批生成。默认且本轮唯一实际生成的选择是 row=0、kind=Q、leaf=0。

生成前，它重新展开实际 core、复合实际 T，再逐系数比较实际 gap 与从 JSON 生成的 Bernstein 组合。只有该恒等式通过才写候选。另有一个反例门：对 γ1 加上 2^(−96)，所有 gap 系数仍正，但多项式恒等式已经不成立；此篡改被精确比较拒绝。这说明符号检查与实际源对应确实是两个检查层。

实际命令为进程级 PYTHONUTF8=1 下：

~~~text
C:/Python314/python.exe -B generate_leaf.py --row 0 --kind Q --leaf 0
~~~

首轮生成 0.0583 秒；加入冻结输入 SHA 守卫后的第二轮 0.0370 秒、峰值 23,334,912 字节。两次生成的 ConcreteLeaf.lean 哈希完全相同：

    0970ffaf8b1bfea1c8f077c61f99b4df9162f299d2b7c80edeabe94139d82022。

首轮记录和日志保留为 GENERATION_CHECK_FIRST.json、generation.log；当前记录为 GENERATION_CHECK.json、generation-guarded.log。两个进程均退出 0；未调用 Lean。生成器冻结后会拒绝原地重跑，后续试验应复制到新的拥有目录。

这批有限 Fraction 检查不能代替新候选的 Lean 编译。生成器的 E 模板与其他低次数行也没有在本轮生成或编译验收；不能把可选择参数写成这些实例已经完成。

## 5. 交回 primary 的顺序和边界

建议先编译 AffineCone，再在真实 Partition 源可用后编译 ConcreteLeaf。新导入的 Polynomial.Roots、Polynomial.Eval.Defs、NormNum、Ring 均有本机直接 olean；API 源和缓存盘点在冻结清单中，仍不等于本次编译通过。

主要验收根：

- Math.B699.GrowthLeaf.cone_comp_affine；
- Math.B699.GrowthLeaf.Row00QLeaf000.actual_gap_eq；
- Math.B699.GrowthLeaf.Row00QLeaf000.leafMap_eq_path；
- Math.B699.GrowthLeaf.Row00QLeaf000.leaf_delta0；
- Math.B699.GrowthLeaf.Row00QLeaf000.leaf_delta1。

需要明确区分：这个单叶的实际源接入候选、row00 Q 的完整 13 叶树、全部种子的 244 个几何叶及两 δ 树、完整 Q/E 增长到 G/θ 和 B 原题。后三层均不由本任务完成。若小原型真正通过，再据其实际编译成本决定下一个代表叶或完整树生成；本轮没有先铺开大文件来掩盖接口尚未验收。
