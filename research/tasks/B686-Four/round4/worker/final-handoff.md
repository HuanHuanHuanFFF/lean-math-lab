# Worker 第四轮交接

2026-09-07，UTC 10:48 检查点保存。**原始 B686/Four 仍未解决。** 本次交接不声称全局完成、首次性或发布。

## 已验收

worker 的18个 Lean 模块、31个可失败公理 guard 已逐个通过。主任务递归整合重建 **29模块、63 guards** 于10:35:02 UTC通过，耗时151.334s；已只读核验结果 JSON，所有 worker 源码哈希保持冻结时一致。使用 Lean4.33.1。详细文件、日志和源码哈希在 `acceptance-manifest.json`；所有可接受依赖仅为标准 `propext / Classical.choice / Quot.sound` 的子集。

核心结论均接回自然数 n,m、m≥n+5、原始五因子乘积：

| 文件 | 结论的范围 |
|---|---|
| `K5AllPrimeLocal.lean` | d=p^a，任意素数 p、正指数 |
| `K5AllPrimeClasses.lean` | d=p^a*q^b，任意素数 p,q；允许相同 |
| `K5PrimeSupport.lean` | 原解必有 d 的至少三个不同素因子 |
| `K5ScaledPrimeClasses.lean` | d=3*p^a*q^b，任意素数 p,q；允许3和相同 |
| `K5EvenScaledClasses.lean` | d=2*p^a*q^b，显式 p,q≠3；允许2和相同 |
| `K5CubicClasses.lean` | 若 gcd(d,3(n+2)(n+4))=1 或 gcd(d,3(n+1)(n+5))=1，则无解 |
| `K5SymmetricPositions.lean` | gcd(d,6)=1，且 d 整除 outer 或 inner 对称三位置乘积时无解；outer 单独只需 gcd(d,3)=1 |

这些定理均在 namespace `B686Round4K5`。源中的自然减法桥、正指数和素数例外不可在文字中省略。对称位置类允许任意多素因子，但不是所有三素数位移。

小素数接口：`K5SmallPrimeSquares.two_power_square` 给出2^(2a)|Ei，无损；`K5ThreeAdic.three_power_square_loss` 给出3^(2a)|9Ei。两个文件的 namespace 为 `B686Round4SmallPrime`。不要求所给幂是 d 的完整素数幂。主任务的大素数桥不重写。

所有有限闭合是对 **5≤d<3000、全部自然 n** 的相邻符号与比值单调性证明；由595个旧证书和2400个新证书组成，用内核 `decide`，不使用 native_decide。它们用于补足明确的无限尾部，不把广泛无解枚举当全局证明。

## 路线检查点与限制

`K5CentralHeight.lean` 已核验中心 q³|E3 蕴含 q³<9d、q²<d（d≥600），因此提出的 q_center≫sqrt(d) 四次高度压模机制不成立。四个 mixed H 的具体系数与阶数检查在 `mixed-order-audit.json`。五阶中心同余本身由主任务验收，未被否定。

十个三位置、五个四位置的精确插值结果在 `interpolation-audit.json`：只在所用 monic、低阶校正模板内，两个对称三位置合格，四位置均不合格。不能扩大成所有辅助多项式方法不可能。

同范围 k5,d≤50000 的比较保存在 `sieve-comparison-scaled-classes.json`。完整 p≥5 赋值匹配已拒绝所有99992个几何候选；新增同余没有被包装成比该基线更必要的筛。新结果的意义是对无界参数子类的证明。

## 交给下一轮的准确问题

`remaining-configurations.md` 给出未覆盖的明确参数族：三个互异大素数幂组成 d，分别占据 {1,2,4}，同时保留原式与全部局部条件。它不是数值弱筛候选。当前 gcd 条件没有一个保持连续乘积题面且严格降低正整数度量的 descent。

`residual-norm-draft.md` 是**未 Lean 的纸面候选**：对 d=sM 且 M² 整除对称 E 配对，尝试 d≤160000*s⁵ 的粗界。它不限制无界 s，未计入本轮结果，无需当前延时。

已独立检查主任务 `main/quadratic-chabauty.md`，没有发现需要改动的数学结论。worker 复核见 `endomorphism-qc-audit.md`：同一个 genus-2 商的几何 End⁰=Q 推导可接受为纸面几何链；通常 QC 充分条件失效不证明所有深度2方法失败。整点/有理点不可混用。原 genus-6 曲线若取得 r_C≤6（或普通 Chabauty 的≤5）仍有条件路线；Prym 秩未知。几何结论不属于63个 Lean guards 的覆盖。

## 操作状态

没有修改共享入口、正式 Math、旧报告或工具链，没有 commit/push、额外子线程或外部消息。worker 无运行中的实验或编译；所有命令有明确有限范围和超时。失败日志保留于目录，详见 `exploration.md`。无需环境安装。

没有接近全局闭合的具体证明需要延长。到当前检查点，交由主任务决定下一轮研究对象；不以继续提出想法为理由延长本轮。
