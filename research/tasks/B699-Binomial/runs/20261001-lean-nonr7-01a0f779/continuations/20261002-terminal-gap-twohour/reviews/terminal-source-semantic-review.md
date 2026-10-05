# 终端原题声明与供应连接

核验者 `/root/semantic_verify_sol`，Sol / xhigh。固定消费者沿用上一轮源：FiniteConsumer `de8e1b79d354dbfb5130c8a6af80edeb418b411005af970ec351986d3760041d`，ChainTerminal `372c22b3e1854e28fc55e3c79f6191bb798d33e8c3e8d185e2c02c96d2b3ec9f`，独立 FinalConsumersTyped `59b9029527c1f40eb7494aab684e65ae1f992c82a79cf6ef3678e5b210a3ca87`。新作业提交 `d768e95afc238d7a1143596cdc58b720e806b987`；本记录仍为源审，等待实际原题型、公理及正常 checker。

`B699FiniteFullSemantic.complete_indices_4883_4884_exact` 的独立 literal 是：所有自然数 n/i/j，4883≤i≤4884、i<j≤n/2 时，存在同一个真实 `Nat.Prime p`，i≤p，且 p 整除两个完整的 `n.choose` 值。没有外置有限、高度、素数或 Gap 输入；1≤i 已由 4883≤i 保证，所有合法 n/j 都在型中。

连接分三支：n≥4096i 使用已接受的 ActualUniform 全比例消费者；n<4096i 且 n<20000093 使用已接受 PrimeChain 的严格 near_top；剩余 n≥20000093 使用该链末端的真实素数。末端素性由 ChainTerminal 对已有 PrimeChain 构造的归纳直接取得。i 的上界使末支的 n−i<20000093 可由整数算术推出；这些数值和分支都必须在本轮实际 kernel 检查中成立，不能以聊天算术代替。

`B699FiniteFullSemantic.all_tail_only_gap_exact` 的独立 literal 对所有自然数 n/i/j、4883≤i、i<j≤n/2 给出相同原题结论；其唯一数学输入保留为 `∀y:Nat,10000000≤y→∃p:Nat,p.Prime∧y<p∧4095*(p-y)≤y`。这正是无限 Gap4095/10M，含严格左端、自然数截断减法及全域 y。有限供应由 fd7f7ec9 的已独立接受闭包消去；高度由固定 ActualUniform `782bd7e38ed6dbe8607bb75191ab5e051cb3259e483bfbb12f3f886aa98fad3a` 消去。后者 imports all 的真实私有依赖已在 95 源图中明确供应，不能仅使用 public imports 估计闭包。

四个必需实际公理根分别是上述两个 literal 与 `B699FiniteFull20261002.original_tail_of_gap`、`B699FiniteFull20261002.common_indices_4883_4884`。每个 actualAX 必须是 Std3 子集；需要所有 129 项终端供应/项目源的实际 source/objectparts/raw argv/exit 绑定、独立 literal 的真实 `#print` 输出、正常 leanchecker 零退出。冷重编的 34 个旧源只是操作性供应，不是新的数学成果。

在这些实际条件完成前，完整指标仍为 `{1,2,11,29}∪[35,4882]`；完成无条件 literal 后才能增加 4883、4884。OnlyGap 的条件后果即便通过，也不能视为真实 Gap 已供应，不能据此把所有 i≥4883 计为无条件完整指标。原题始终保留输出 p=i 的许可与完整二项式及素数幂含义。
