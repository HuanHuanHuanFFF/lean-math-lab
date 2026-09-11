# 来源、采用与复用边界

## 冻结输入

本次只读 `/mnt/data/B699-R9-ABC-context.zip`。原文件完整SHA256、大小、626成员CRC检查和每份带入文本的字节映射在 `input/SOURCE_MAP.json`。新包不包含外层历史ZIP的重复编码，但包含本次实际数学证明需要的全部源文本。

- `input/status/CURRENT_STATE.md`：R9调度和待独立核验状态，只作前沿元数据。
- `input/status/pro-a-HANDOFF.md`、`pro-a-REPORT.md`：已阅读分别清分母、新G界、三项消费者及失败边界。其12、15、20不计本轮成果，不用作新定理假设。
- `input/i4-bounds-report.md`：来自冻结仓库路径 `research/tasks/B699-Binomial/runs/20260909-low-index-bounds-a5b51cea/delivery/REPORT.md`。第4节的I/J/W、正性和U⁶下界是采用的旧推导；本轮从实际系数独立重建精确恒等式并给另一整值网格核验。该稿中的BFT、BEG、非有效绝对有限性不进入本轮证明。
- `input/adopted/quotient-frozen.md`、`rational-tubes-frozen.md`：i3探针和失败定位的来源。没有把旧有理斜率带重新计功，也没有把弱候选称为原题反例。

`navigation/TASK_PROTOCOL.md`、README和SOURCE_MAP已读取；其字节哈希/原始成员位置作恢复记录，不把当前任务提示词复制为研究成果。

## 外部定理与新颖性

本轮新数学不采用任何新的外部出版定理。Legendre阶乘求和来自每个p^h在阶乘中出现次数；两条赋值公式在新证明中由等比和、二项式展开和平方递推建立；费马同余给出非零剩余类的置换证明。因此无需重查出版定理的范围或阈值。

前期进行过具体关键词的公开检索，没有采用搜索返回的外部数学论断。没有全面文献调查，不能声明公开世界的首次结果、全球领先或排除文献重复。

## 什么不是“独立验收”

本会话编写了不同算法的检查器，但没有另一个研究会话的审读，没有人类审稿，没有Lean编译，也没有第二内核。有限程序验证的是列明整数身份/覆盖证书；一般量词连接由notes/PROOFS.md承担。

## 不依赖的东西

未查询实时GitHub main、未等待huan或A/C成果；没有修改Git仓库。旧动态前沿不在本轮推算。完整复现只需本新包文本和标准库，不需网络、PDF、旧GMP缓存或历史ZIP中的其他实验。
