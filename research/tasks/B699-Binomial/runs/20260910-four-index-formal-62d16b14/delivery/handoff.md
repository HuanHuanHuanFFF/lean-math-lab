# 接续交接

本轮结束于环境诊断。四项全域原目标仍在 [frontier.md](frontier.md)，新增已验 Lean 声明为 0。接续时不要从本批导入新的数学定理。

## 启动入口

从任务分支或后来合入它的 main 读取本批记录。已发布分支为 `GPT-work/four-index-formal-20260910-62d16b14`，本批基线为 `784ec1d26f33fbb303ab0b0c14ac35919f03d902`；发布提交的完整 SHA 由本次最终交接消息和远端 ref 核实。没有建立 PR 或合入 main。

首先在具备固定工具链的环境执行：

```sh
python research/tasks/B699-Binomial/runs/20260910-four-index-formal-62d16b14/preflight.py
```

脚本保留历史记录，将新结果写入本批新的 UTC 验证目录。它检查 pins、资源和工具可用性，使用 Lean -j1、初始 -M4096，先导入 Init 编译环境探针。超时上限 60 秒；失败时返回非零。这个检查通过仅说明核心 Lean 可运行，随后仍须编译与选定义务相关的 mathlib 最小导入，测代表性峰值，才扩大工作量。

本轮没有修改或删除 pins/cache，也未杀其他会话进程；可重新运行的前提是 **Lean 4.33.1 与固定 mathlib 缓存实际可用，或安装/下载通道已恢复**。没有变化时不要重复花费 26 分钟尝试构建。原下载请求是审批取消，不能据此断言所有网络通道永久不可用。

## 数学接续文件

只读四项输入批次：`research/tasks/B699-Binomial/runs/20260910-four-index-closure-c1bf7a69/`。从其 `delivery/REPORT.md`、`delivery/notes/PROOFS.md`、`delivery/SOURCES.md`、`delivery/HANDOFF.md` 开始。启动材料只采用冻结 main 中已有内容，不等待 huan 或网页会话新成果。

优先核对 BFT 的精确源文适用条件、14 条旧边和 3 条新边，再证明 E1 的两个立方小余因子条件。不要把最终高度作为 E1 假设。只有在证明链已接通后，61134 行排除证书才有可能被全域消费者使用。

历史 ZIP 仅在实际需要时从 `B699-research-context-20260910.zip` 的 `repository-archives/` 恢复，按 `research/external-results/20260910-web-results-c1bf7a69/ARCHIVES.json` 检查字节数、SHA-256 和 Git blob SHA。本批未使用这些 ZIP；443 个 Git 成员已与原接收清单和两棵冻结 Git 树核对。

## 验收要求

另立能够在预算内验收的实质义务，并说明其对原目标的作用；有未接通 BFT 桥时，只能报告真正已验的条件化消费者与显式假设。最终要求完整消费者、传递依赖闭包、冻结源码、pins 和 std3 公理审计，不能用源码扫描、Python PASS、单文件通过或 CI 绿灯代替。
