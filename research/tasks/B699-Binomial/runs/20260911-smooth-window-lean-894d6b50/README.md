# B699 光滑窗口与多指标转移的 Lean 执行

- 负责人：独立 VPS Work 主线程；不派子 agent。
- 分支：`GPT-work/b699-smooth-window-lean-20260911-894d6b50`。
- 固定 main：`eaa8d5760117b0b1133424548a162d28e23cc361`，通过 GitHub API 读取；本机 git fetch 因缺少认证失败，未声称本地完整 checkout。
- 工具链：Lean v4.33.1；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；沿用固定 manifest。
- 输入 ZIP SHA256：`ddd1d3bf303e4c5088c45e9f319d5cd82ac1c73abd07964a7df76605b024474e`，已匹配；原件只读。
- 原目标：完整光滑窗口 i4、同一素数的通用多指标转移、两条显式无限行族；全部前置和证书均纳入任务。
- 时间：2026-09-11 建立；用户没有设置总时限。检查点只调整方法和资源。
- 写入范围：本 run、专用 CI 工作流；接受后可增加自己的稳定模块和检查入口。

## 当前状态

尚无本轮 Lean 接受结果。先恢复真实工具链并检查通用转移候选，随后连接窗口所需代数、估值、阈值与证书。研究、Python、编译、公理、发布各自记录。

本机 cgroup：20 GiB、8 CPU；初查使用约2.3 GiB、磁盘可用28 GiB。Lean/elan/lake 未安装；直接依赖下载受网络限制。使用用户授权的 GitHub CI，CI 只读仓库、不自行 commit。

入口：[frontier](frontier.md)、[acceptance](acceptance.md)、[handoff](handoff.md)。
