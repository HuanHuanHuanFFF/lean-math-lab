# B699 i≥4883 无界尾部

锁定原题：对所有自然数 n,i,j，4883≤i、1≤i<j≤n/2，存在素数 p≥i 同时整除 Nat.choose n i 与 Nat.choose n j。保留 p=i、完整素数幂；实际 avoidingPart 只在 noCommon 分支替换为 V。目标不改为有限 i 或有限 n。

负责人：本独立 huan 主会话（GPT-6 Astra/Max），负责本批数学、Lean 模块、frontier、验收与交付。分支 huan/b699-tail-20260910-9f6c2a17。全部写入限本批目录及本工作树 .tools 缓存；旧 run、共享正式模块和题目导航由其现有单一负责人保持。本批不改旧冻结源码。文档支持子任务若启动，仅拥有 notes/verification-reuse.md。

开始 2026-09-10 07:33:48 UTC（上海15:33:48）；10分钟环境检查截止07:43:48；30分钟路线检查截止08:03:48；硬截止12:33:48 UTC（上海20:33:48），最多5小时、不自动延长，包含验收和发布。

启动基准：PR #7 已合并，main=784ec1d26f33fbb303ab0b0c14ac35919f03d902；冻结来源be57961409919d4675741bbaece9f462153a2a66。已核对两Work run的773与18个Git blob，以及443个接收文本成员的路径、SHA-256和字节数；6个历史附件成员按ARCHIVES.json延后，尚不需要ZIP。证据见 verification/startup/gate.json。只读已合并材料，不读取另外三项进行中成果。

采用：已验185..999和1000..4882的历史结果只作背景；具体复用模块和声明另记 frontier。EC当前仍未编译；本批EC导数分析模块已验，完整EC及B699新增原题范围仍未验。现有HeightValid/RawHeightValid/HeightApprox和n≤20,000,000消费者是候选复用链，不构成本轮尾部接受证据。

下一检查：比较 A（三窗口完整阶乘归一化+IC整数计数+EC+Gap）与 B（现有高度判据接统一分段界）；30分钟内做代表性Lean检查。必须找出无界i尾部的真实连接证据，否则收束为诊断并保存已验模块。

本轮代表性检查后收束：原题i≥4883未完成，新增原题范围0；EC分析模块的独立消费者通过专项验收。[报告](delivery/report.md) · [前沿](delivery/frontier.md) · [验收](delivery/acceptance.md) · [恢复](delivery/handoff.md)。
