# R7：按任务读取共享材料

当前 R7={3,4,5,6,7,8,9}。i14 已按纸面证明＋明确出版输入＋精确完备证书等级闭合，未Lean。先读本文件和 frontier.md，正文采用边界见 CORRECTIONS.md；无需一次读完全部历史材料。

## 在仓库中接续

完整文本按原字节放在 deliveries/。大原包、二进制及未入Git成员按 ARCHIVES.json、SOURCE_MAP.json 与 restore_archives.py 在隔离副本恢复；原作者的 manifest 不因归档被改写。执行原验收器之前恢复其完整文件环境，不能把缺附件误判成数学失败。

## 在网页 6Pro 共享包中接续

包内 `originals/` 放三份完整 ZIP 与 E 原报告。A、B 最新包已内嵌旧 A/B/C 原件；按以下顺序读取，旧包只在需要上游证明时解压。

- **A：** 解压 `originals/B699-ProA-i14-closed-i9-finite-evidence-20260911(1).zip`，根目录 `B699-ProA-i14-descent-20260911/`。先读 HANDOFF.md、SESSION_STATE.json、notes/I9_FINITE.md、notes/FAILURES_AND_LIMITS.md。其 `adopted/archives/` 包含旧 i14 高度与 C 原件。需要新行族／外部定理时再读 D/E，不回到旧 content-G 中断点。
- **B：** 解压 `originals/B699-i3-square-row-prime-powers-evidence(1).zip`，报告和证明就在该包根目录。先读 HANDOFF.md、notes/PROOFS.md；`originals/previous-b.zip` 与 `originals/c-r2.zip` 是旧分拆和 C 原件。随后读 D 包 HANDOFF.md、notes/PROOFS.md 的 γ 高度、六位置及双侧接合。
- **D：** 解压 `originals/B699-ProD-R8-results-20260911(1).zip`，根目录 `B699-ProD-R8-20260911/`。先读 HANDOFF.md、notes/PROOFS.md、notes/FAILURES.md，再据所选路线读取 A/B/E。继续自主研究，不等待其他会话本轮新成果。
- **E：** `originals/Pro-E-REPORT.md` 保留原报告字节；同时阅读 CORRECTIONS.md。采用原定理时核对出版原文。一次满足 q|j 的命中不等于整行；BEG 统一常数接法有具体审读异议。

## 核验与完成

本次整合只做行政核对，作者计时与此前会话局部检查均按原范围保留。数学采用者负责对所用前置、量词、端点和覆盖作技术检查；有限实验不代替无限证明。新结果写在可恢复的工作副本，原 ZIP 和历史原件不修改。

三个任务提示词在 prompts/；均未自动启动。优先获得能闭合指标、消去无界参数、建立跨指标归约或排除关键低收益路线的结果；中间成果继续接原题消费者。没有总时限，大日志存文件，禁止把原包或巨大数据展开进对话。
