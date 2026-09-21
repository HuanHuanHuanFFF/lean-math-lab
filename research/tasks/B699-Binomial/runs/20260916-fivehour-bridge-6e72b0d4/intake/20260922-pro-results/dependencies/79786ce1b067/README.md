# B699 D / i=3 · 第四轮 MID128 / BSC

本包是当前会话的新研究交付，不是仓库补丁。先读REPORT，再读PROOFS与FAILURES；HANDOFF供下一轮接续。

新增：平方下方 h=M²-1/M²-3 的两个统一原源消费者，以及平方间隙中部 h=m²+m+d 的带符号增长宽度族。仍限同一NC3规范最小临界两底支。R7不变，无Lean，无全局绝对界。

- REPORT.md：结果、范围、frontier登记。
- PROOFS.md：全部全参数证明及残差多项式表。
- FAILURES.md：反向相位定理、精确非整数弱模型与重试条件。
- HANDOFF.md：精确接续系统及避免重复的边界。
- SOURCE_ADOPTION.md / AUDIT.md：来源等级与本轮核验记录。
- evidence/、certificates/、logs/：代码、精确证书与真实输出。
- inputs/：Overview和上一轮冻结完整包；不需要联网找回前置文件。
- REPLAY.md / replay.sh / requirements.txt：离线重放入口。
- MANIFEST.json / SHA256SUMS.txt：成员和校验。

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
```
