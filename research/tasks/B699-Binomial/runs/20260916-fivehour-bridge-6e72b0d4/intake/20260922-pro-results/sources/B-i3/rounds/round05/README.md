# B699 · B / i3 · 第五轮 evidence

**入口：REPORT.md → PROOFS.md → HANDOFF.md。**

本轮最强新增：任意有限偶数个正位置 S，T=p^e 为奇素数幂，T≥4(3|S|+4)^4，则 n=2+3∑_(a∈S)T^a 的全部合法 j 满足 Common3；位置和间隔无界。另有任意次数 POWER2/POWER1 族及三条精确大原行应用。

负向一般三槽和 H_minus 没有闭合，完整 R7 不变。作者纸面＋同作者两算法检查；不是外部审稿或Lean。

## 文件导航

- `REPORT.md`：最强结果、真实范围、仍无界参数和证据等级。
- `PROOFS.md`：所有主定理的完整论证、端点、完整源与原题回传。
- `FAILURES.md`：长数字、可约源、合数进制等精确失败和重试条件。
- `HANDOFF.md`：无需聊天的下一轮入口。
- `SOURCE_ADOPTION.md`：冻结依赖和本轮未重验内容。
- `REPLAY.md`、`EXPERIMENTS.md`、`src/`、`certificates/`、`outputs/replay-final/`：重放与原始输出。
- `inputs/`：原Overview、第四轮原ZIP及定向原件；它们是输入，不能当本轮新结论。
- `MEMBERS.json`、`SHA256SUMS`：文件清单及成员哈希。

默认重放只需要Python标准库。重新生成证书额外需要SymPy。无PDF/DOCX/Lean或任何仓库改动。

`MEMBERS.json`列出除自身和SHA256SUMS之外的载荷；SHA256SUMS覆盖包括MEMBERS.json在内的所有其他文件，不可能也不声称自我哈希。外层ZIP哈希在交付回执中。
