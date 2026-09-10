# 四指标形式化报告：未通过环境前置检查

## 结果与原目标

对每个 i∈{19,22,24,25}，对所有自然数 n,j 满足 1≤i<j≤⌊n/2⌋，证明存在素数 p≥i，同时整除 C(n,i) 与 C(n,j)。阈值包括 p=i，保留完整素数幂；实际 avoidingPart 的 D=V 等式只能在 noCommon 假设下采用。

**本轮新增已验 Lean 声明为 0。四项全域目标未完成，也没有交付已验的条件化消费者。** 本轮在环境前置检查阶段止损，没有转做 EC，没有把有限候选检查当作全域证明，没有新增未验证的数学候选模块。

## 已完成的启动核对

GitHub API 确认 PR #7 已合并，时间为 2026-09-10 07:29:45 UTC；启动 main 为 `784ec1d26f33fbb303ab0b0c14ac35919f03d902`，树为 `995a3b56d9f6c9146b4911321f94534b2889451c`。该 squash 提交的父节点为 `12c31b8b5729b0017cf8e1423cd98ed5230aaaae`。

将启动 main 与冻结来源 `be57961409919d4675741bbaece9f462153a2a66` 的递归 Git 树作程序化比较：

| 核对范围 | 结果 | 证据性质 |
|---|---:|---|
| Work run `20260910-large-index-lean-7c4e2a91` | 773 个文件一致 | 路径、模式、Git blob SHA；未重编译 |
| Work run `20260910-elementary-count-bbbfe15e` | 18 个文件一致 | 路径、模式、Git blob SHA；不提高 EC 验收等级 |
| 接收清单中 storage=git 的成员 | 443 个全部一致 | 实际文件字节数、SHA-256、Git blob SHA 同时核对来源与 main |
| storage=attachment 的嵌套 ZIP 成员 | 6 个未恢复 | 本轮不需要历史 ZIP；保留 ARCHIVES.json 恢复入口 |

两棵 API 递归树均未截断；启动 main 含 9710 个 blob。大树与证据内容用程序处理，交付中保存有界汇总及逐成员哈希。没有把 ZIP 编成 Base64 读取，也没有修改历史 delivery。

核对记录：[intake-check.json](../verification/preflight/intake-check.json)、[intake-hashes.json](../verification/preflight/intake-hashes.json)、[rules-hashes.json](../verification/preflight/rules-hashes.json)。本地规则与 pins 均按启动 main 的 blob SHA 核对。

## 环境诊断

15:40:38 上海时间的 cgroup 观测：内存限额 20 GiB、已用约 1.44 GiB，CPU 配额 800000/100000（8 核等额），磁盘可用约 28.7 GiB，OOM/OOM kill 计数均为 0。此前首次资源观测内存已用约 0.84 GiB。这些是本轮观测，不能当作永久配置。

`lean`、`lake`、`elan` 均不在 PATH；检查 `/workspace`、`/opt`、`/root`、`/tmp` 未找到它们的二进制。旧工作区也没有 `.tools` 或 `.lake`。固定依赖为 Lean `v4.33.1` 与 mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，pins 未改变。

最小源码只导入 Init，命令为 `lake env lean -j1 -M4096 <本批>/verification/preflight/MinimalImport.lean`。实际结果是 `lake: command not found`，退出码 127；**Lean 从未运行，这不是单文件编译通过，也不是证明失败。** 4 GiB 是预检查的初始进程上限，未测得 Lean 峰值，后续批量仍须先测代表性峰值。

固定 Lean 发行包的 HEAD 下载检查返回工具错误：`network approval was cancelled before a decision was returned`。这属于下载/审批通道未完成，没有可用的 shell 退出码；不能写成 OOM、工具链不兼容或自动审批明确拒绝。没有循环重试、绕过网络限制或用文本通道传输二进制。

普通 Git fetch 因未配置 GitHub HTTPS 凭据退出 128；GitHub 插件仍可正常读取仓库与发布任务分支，所以该问题不阻止诊断交付。

证据：[environment.json](../verification/preflight/environment.json)、[compile.log](../verification/preflight/compile.log)、[transport.json](../verification/preflight/transport.json)。

## 止损与作用

用户明确要求在前 10 分钟发现依赖/资源不能成行时保留可复用诊断，避免重复长时间零验收。本轮在已确认缺失工具链且下载请求取消后停止证明尝试；余下仅核对输入、保存复现入口和发布。没有消耗完整 2 小时去写无法内核检查的证明。

本批不能缩小四项全域的未验范围。可复用价值是：后续会话可以直接判断所需工具链是否已恢复、确认收到的是哪一组冻结证据，并准确接续原目标。BFT 源文与 E1 立方前提的数学核查仍待进行；本批没有声称完成该核查。
