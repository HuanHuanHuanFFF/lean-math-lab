# (5,3) 四棵真实树的最终组件实例

Owner `/root/i18_downstream_review`；开始 2026-09-11 17:45:52 UTC。Selector 独占修复已先行冻结并交回，此阶段只写本 run 的 `experiments/huan-i11-five-three-final-instance-5e2d13bb/`，不再修改 Selector、任何其他集成源或冻结实验。未运行 Lean/Git/大型检查。

`ActualInstance.lean` 是**未编译候选**。最终声明只有 n:Nat 与 `2^15360<=n`，输出

`(primeComponent n 5)^1000*((n+1)/2)^354<=n^1000`

或

`(primeComponent n 3)^1000*((n+1)/2)^228<=n^1000`。

没有任何树、余因子、G、增长或目标边前提，也没有添加 j/noCommon。n>=2^15360 只是该边的适用域；本文件不证明 noCommon 的初始高度或 B699 原题，其他四条组件边仍缺。

## 真实来源绑定

- 导入已集成的 `lean/Growth/I11FiveThreeTree.lean`，使用命名空间 `Math.B699.I11FiveThreeGrowth.Tree` 的四个实际根。
- 显式证明 `Shared.qLam=qLambda`、`Shared.eLam=eLambda`，不替换原有理 λ。
- 显式证明 `rowDelta false=1`、`rowDelta true=0`。因此 false 分支取 delta1 根，true 分支取 delta0 根，Q/E 分别处理。
- 四次 simpa 只展开 Shared 的 seedC=5、seedD=3、seedZ=1/4375、weight/core 别名，并使用 λ 对齐；不展开核多项式，不重算 Bernstein 证书，不假设树存在。
- 形成 Numeric/组件包装所需的两个 `∀row:Bool, GrowthTree ...` 后，调用 `lean/I11Component/ActualComponentEdge.lean` 中已写的实际组件边包装。余因子到组件的转换仍由包装内部的实际窗口与 graph-capacity 完成，没有再次重命名对象。

四个根的当前声明位置为 Tree:33/56/74/92，分别是 q_delta0/q_delta1/e_delta0/e_delta1。v2 修正了上游 comp 括号；本包装不改它们。

## 静态检查和验收边界

`source-checks.json` 记录完整来源 SHA、实际声明行号、四行 Bool/delta/权重映射、精确 Fraction λ 相等检查，以及当前 Shared/Leaves/Tree 与 frozen v2 的逐字比较。所有种子参数按原值核对，两个计划导入目标当前都已存在。没有重复运行 9 叶证书或大幂检查。

本源有 7 个公开 #print 审计入口。必须由父任务串行编译完整实际依赖闭包，并检查所有根的传递公理；当前“移除树参数”仅描述候选声明，不等于已验收的无条件定理。上游树、数值、缩放和组件包装任何一处未通过都会阻止最终接受。

实际原题覆盖仍 0/19，无初始高度、全量覆盖或新颖性声明。下一步仅是对这一个最终实例及真实导入闭包运行主任务验收。
