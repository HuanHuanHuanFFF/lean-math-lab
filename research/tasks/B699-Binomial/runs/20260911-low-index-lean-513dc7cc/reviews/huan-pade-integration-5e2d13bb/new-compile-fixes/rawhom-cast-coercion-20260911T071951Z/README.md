# RawHom 最小编译修复（待主线程实际复验）

唯一授权源为 `lean/Pade/RawHom.lean`。真实失败记录是 `verification/20260911T071516387084Z`：第 49 行的 `simpa only` 没有把整数环同态的应用展开成目标使用的整数转型，两项公开结论均出现 `sorryAx`，此次失败继续保持拒绝状态。

固定 mathlib 的 `Mathlib/Data/Int/Cast/Lemmas.lean:92` 实际声明为 `Int.coe_castRingHom`，其等式把环同态的函数强制转换为整数转型函数。这里只在第 50 行现有简化列表追加此引理；未改定理陈述、前提、定义、导入或其他证明步骤。`Int.castRingHom_apply` 未在固定 mathlib 源中找到，不使用猜测的名称。

本目录保留修改前源、单行差异、源前后 SHA256、真实失败日志和库源 SHA256。工作代理没有运行 Lean；需要主线程对新字节重新编译，并对两个公开结论及后续消费者作传递公理核验。RawDet、Content 已交回主线程，所有冻结实验源保持原样。
