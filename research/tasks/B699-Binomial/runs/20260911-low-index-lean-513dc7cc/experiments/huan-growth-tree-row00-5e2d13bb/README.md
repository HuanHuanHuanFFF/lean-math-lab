
# row00 Q GrowthTree 候选

本目录是本 run 的只读候选交付，负责人只写此 experiments/huan-growth-tree-row00-5e2d13bb/ 目录。目标是把 compact certificate 的 row00/Q 族包装成实际的 GrowthTree.split 递归树；这是证明工程候选，不是新的 B699 原题结果。new_original_results=0，未修改已接受的 lean/、数学源、runner、证据或 Git。

## 固定输入和来源

输入是：

- compact certificate：experiments/huan-pade-growth-certificates-5e2d13bb/certificates-compact/row-00.json
- 输入 SHA256：3bb7821e13b55137af6b1529143d85f77593df156f51b1c57343cb78653b8d09
- prototype：lean/Growth/LeafExample.lean
- prototype SHA256：76f3651b78f3eed2345efd4c4175d42e354f01cfe7ad4e7f5f26076cc03b2ad2
- prototype 实际验收证据：verification/20260911T100522709908Z/evidence.json

prototype 使用局部证明建立 Infinite ℚ，本候选也沿用这一小证明，因此没有引入缺失的 Mathlib.Algebra.CharZero.Infinite 缓存模块。候选的 accepted API 入口仍是现有 Growth/Affine.lean 和 Growth/Partition.lean。

本任务只生成 Q。E 族没有被假装覆盖，也没有混入候选命名空间。

## 真实树规模

证书给出的 Q 叶按原顺序共有 13 片：

LLL, LLRL, LLRRLLL, LLRRLLRL, LLRRLLRRLL, LLRRLLRRLRL, LLRRLLRRLRRL, LLRRLLRRLRRR, LLRRLLRRR, LLRRLR, LLRRR, LR, R

它们的端点检查为相邻无缝、首端 0、末端 1，覆盖完整 [0,1]。由这些实际 path 构成的 trie 有 12 个内部节点；delta0 和 delta1 各拼装一棵树，共 24 个 GrowthTree.split 构造器。生成器没有使用 supplied node bound 来省略任何叶子。

每个叶子都生成：

- actual_gap_eq：对实际 Polynomial.C lam - localCore 使用 Polynomial.funext 的恒等式；
- leafMap_eq_path：实际仿射映射与该 path 的 halfLeft/halfRight 复合恒等式；
- gapExpansion_cone、local_gap_cone、local_core_cone、local_weight0_cone、local_weight1_cone；
- leaf_delta0 与 leaf_delta1，分别保留两组 delta 权重。

树文件从 trie 的真实 path 递归生成内部节点，每个 child 都必须是下一内部节点或对应叶子的完整证明；内部 child 使用 Polynomial.comp_assoc 作组合律桥接。根导出为 q_tree_delta0 和 q_tree_delta1。

## 候选文件和哈希

- candidate/lean/Growth/Row00CandidateShared.lean — 1,019 bytes，SHA256 edf3edc40306414688ddb3dfb1a76b87b2e6faf47143eed893e891e733a41582
- candidate/lean/Growth/Row00CandidateLeaves.lean — 79,261 bytes，SHA256 35f069050876a8fa7b52200d324a8df9c9db82836da50e1999e36de90df14d32
- candidate/lean/Growth/Row00CandidateTree.lean — 21,351 bytes，SHA256 3e82127b015a7cb2c8ffb5f8e0b5873aa6215f9aa541d3fab632885e2960027d

generation-plan.json 保存输入哈希、叶 path、trie 节点、delta 数、源映射和候选哈希。generate_row00_growth_tree.py 是确定性生成器；static_check_row00.py 是不调用 Lean 的静态复核器。输出结果保存在 static-checks.json。

可复现的本地静态步骤（从本 run worktree 根执行）：

~~~text
python research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-growth-tree-row00-5e2d13bb/generate_row00_growth_tree.py
python research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-growth-tree-row00-5e2d13bb/static_check_row00.py
~~~

## 已做静态检查

static-checks.json 当前为 static_checks_passed_uncompiled。检查包括 compact 的 13 个 Q 叶、端点和完整覆盖、每叶的两类 Polynomial.funext、系数原文、gap/core/两 weight cone、两 delta 叶证明、12 内部节点和 24 split、树 child 引用、候选 SHA、唯一命名空间、无旧 prototype namespace、无 sorry/admit/native_decide/Lean.ofReduceBool/CharZero.Infinite，以及无 stale QLeaves.lean。

本轮没有运行 Lean，没有生成或验证 .olean，没有执行完整 importer、原题消费者、公理审计或实际资源峰值测量。

## 尚待 primary 实际验收

静态树没有缺失 path 或 child；仍有一个必须由 primary 用固定 Lean 工具链确认的拼装门：Row00CandidateLeaves.lean 的 13 个命名空间和 Row00CandidateTree.lean 的 simpa only [Polynomial.comp_assoc, ...] 是否在实际导入闭包下按预期归约，尤其是共享 qLam、qSeedCore/qSeedWeight 与各叶局部定义的转换。若 elaborator 要求更强的 qLam 或组合律展开，应只在候选副本中调整并重新验收，不能把本静态结果当作 Lean 通过。

建议 primary 按 Shared → Leaves → Tree 串行编译，再检查每个打印的 axiom 集合和最终根的实际 source/output/log SHA；成功后才考虑把候选映射到稳定 lean/Growth 路径。
