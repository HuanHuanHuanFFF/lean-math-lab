# 恢复入口

任务分支 `GPT-work/b699-low-index-lean-20260911-513dc7cc`，接收基线 `aafecac7192f33215368489ca9b09b98c0279308`。PR #8 已由用户本轮授权合并。

已完成固定环境验收：CI 34509012170；详细源 SHA、pins、命令、退出码、公理审计归档及失败修复见 `verification/preflight/finitecover-ci-reproduced.json` 和 `executor-disconnection.json`。本地执行通道仍返回 environment_offline，故正式核验继续使用本任务专用 CI。

代表入口配置：`verification/runner/probe-roots.json`。流程先以 `verify_environment.py --repo . --mode cache` 恢复固定闭包，再以 `--mode verify --run-dir research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc --memory-mb 3072 --command-timeout 900` 复现 FiniteCover；随后运行 `compile_probes.py`。后者只把已成功完整证据且源码/输出哈希一致的本 run 对象复制进干净导入目录；新源码实际调用固定严格编译器，逐个打印和归档公理。

CI 只读；主线程取得实际证据后，通过 GitHub 插件提交、推送本任务分支并核对远端 SHA，然后继续。自动审批曾拒绝 CI 自提交方案，因此已移除写权限和自动提交脚本。新指标只有完整原题消费者编译通过才能计数；此阶段计数仍为0。失败日志保留并继续方法修复，不等待其他会话。


已验更新：CI 34510677596 五个代表根全部成功，组件公理为 std3；证据已收录 `verification/ci-34510677596/`。当前目标改为完整Row029，入口顺序为 `verification/runner/probe-roots.json`；最后根 `lean/rows/Row029/Original.lean`。执行同一 `compile_probes.py` 会逐根保留计时/资源、源及对象哈希、严格公理输出。改进的等待只打印20秒进度，不再使短编译固定多等20秒。阶段A其他150项必须在完整29验收后继续。


完整29已验：`verification/ci-34512327870/row029-accepted.json`，原题 `common_i029`，78源项目闭包，std3，源/已发布证明SHA `336885ea5547532f5b89dca5fce38a4debb0200e`。阶段A 1/151、本轮1/169。现有只读工作流仍可重跑完整29，最后接受根 `lean/rows/Row029/Original.lean`。下一步启用固定对象共享与逐行接受入口处理35、36、37；后续只能在实际消费者通过后更新每项状态。
