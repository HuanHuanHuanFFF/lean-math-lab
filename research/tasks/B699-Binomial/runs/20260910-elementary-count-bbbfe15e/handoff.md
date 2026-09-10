# 恢复与交接

当前交付是完整 EC **未编译候选**及环境阻塞记录，零条本轮 Lean 已验引理。不要把本分支当已证明依赖导入其他结果。

- 基线：`12c31b8b5729b0017cf8e1423cd98ed5230aaaae`。
- 分支：`GPT-work/b699-elementary-count-20260910-bbbfe15e`。
- 入口：[lean/ElementaryCount.lean](lean/ElementaryCount.lean)。
- 真实目标名（待编译）：`B699ElementaryCount.elementary_primeCounting_bound`。
- 最后证据：[181803.256284Z](verification/20260909T181803.256284Z/evidence.json)。
- 上游精确接口和固定源码哈希：[upstream-source-map.json](verification/upstream-source-map.json)。

优先前提是获得可运行的 Lean 4.33.1 和固定mathlib缓存。不要复用本机残留的失效缓存链接。用户应在网络与工具链可用的会话接续；不需要等待或读取huan当前长任务。

恢复环境后，从仓库根运行：
```bash
python3 research/tasks/B699-Binomial/runs/20260910-elementary-count-bbbfe15e/verification/verify.py
```

如Lake不在PATH，用 `--lake /absolute/path/to/lake`。若需procfs兼容层，先按仓库已有 `scripts/lean-work.sh` 说明准备正常的固定环境，再调用验证；不要修改Lean内核二进制。

验收默认单线程、4096 MiB Lean内存预算；可按现场资源用 `--memory-mib` 调低。入口不会自动下载或构建；缺缓存应只恢复实际导入闭包，避免整个Mathlib或B699巨型证书编译。编译超时默认600秒；该值若成为实际阻塞，再依据资源与剩余预算调整。

首次真实编译可能暴露 `convert`、`field_simp`、ContinuousOn或floor化简等证明工程错误。这里只能列出高风险位置，没有实际Lean报错证据，不能声称问题已定位为某一行。先让imports与最小基例可编译，再修复G导数及积分拼接，最终重新跑整文件、公理审计和精确量词消费者。

接受条件保持原请求：∀实数x≥128的EC，无出版定理假设，无sorry/admit/自定义公理/native计算假设；实际传递公理限标准三公理。31与145的替代基例为源码中的完整素数集合及primorial比较，不能直接信任Python JSON。最终只提交和推送本任务分支，不擅自整合main或创建PR。

[report.md](report.md) 说明完整证据分层与环境恢复失败原因。

