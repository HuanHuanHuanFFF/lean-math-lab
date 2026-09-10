# 恢复入口

任务分支 `GPT-work/b699-low-index-lean-20260911-513dc7cc`；基线 `aafecac7192f33215368489ca9b09b98c0279308`。

固定环境由 CI 34504942142 成功安装并导出分块 artifact；完整证据见 `verification/preflight/executor-disconnection.json`，此记录区分已观察结果与平台断连后未知结果。

平台本地环境断连前的活动仓库为 `/workspace/scratch/ca9580eece90/fixed-environment/repository`，自己的改动留在其中。若恢复，先保护并核对这些改动；不得覆盖旧证据，也不得把未知最终结果当作通过。

本次专用 CI 从固定源继续：

```sh
python3 research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/runner/verify_environment.py --repo . --mode cache
python3 research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/runner/verify_environment.py --repo . --mode verify --run-dir research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc --memory-mb 3072 --command-timeout 900
```

每条子进程的 900 秒是诊断边界，不是任务期限。取得真实完整 FiniteCover 验收后继续 Row029，再其余 A，最后 B；不等待其他会话。
