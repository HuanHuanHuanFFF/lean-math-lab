# 当前前沿

完整目标：对指定 i，∀ n j : ℕ，1≤i ∧ i<j ∧ j≤n/2 → ∃ p，p.Prime ∧ i≤p ∧ p∣Nat.choose n i ∧ p∣Nat.choose n j。

阶段 A 151 项、阶段 B 18 项分别见 target-status.json；当前均未新增全域 Lean 接受。首先完成环境与固定 FiniteCover 根，再做 Row029 小块→完整行→独立原题消费者→其余150行；A 完成后进入 B。Row029 不要求 BFT、EC 或 LowIndexComplete。

采用旧结果：FiniteCover 21 源闭包、151 条已注册高度及 common_of_finite_cover_row_checked 的条件消费者已在冻结旧验收通过。具体 finiteCoverRowCheck row = true 尚未接受；Row029 的完整见证、小 n、114 层及全部覆盖字段均须通过。

预期前沿变化：恢复环境本身新增原题覆盖 0；完整 Row029 成功才消除 i=29 的全部无界 n,j。该方法若可复用，逐批消除其他 A 指标。每一前置应连接具体下游义务。

失败/待试：本地缺固定工具链；官方直连检查发生代理超时和审批取消，官方 artifact 1.456 GB 超过连接器512 MiB限制。改用已授权的独立分支 CI 安装并验收，再经正常分块 artifact 传输恢复本地。若编译失败，保留真实日志并拆分或修复，不把流水线状态代替数学接受。
