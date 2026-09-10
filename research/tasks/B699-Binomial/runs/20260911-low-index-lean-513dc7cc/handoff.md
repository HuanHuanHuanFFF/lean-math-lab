# 恢复入口

任务分支 `GPT-work/b699-low-index-lean-20260911-513dc7cc`，接收基线 `aafecac7192f33215368489ca9b09b98c0279308`。PR #8 已由用户本轮授权合并。

已完成固定环境验收：CI 34509012170；详细源 SHA、pins、命令、退出码、公理审计归档及失败修复见 `verification/preflight/finitecover-ci-reproduced.json` 和 `executor-disconnection.json`。本地执行通道仍返回 environment_offline，故正式核验继续使用本任务专用 CI。

代表入口配置：`verification/runner/probe-roots.json`。流程先以 `verify_environment.py --repo . --mode cache` 恢复固定闭包，再以 `--mode verify --run-dir research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc --memory-mb 3072 --command-timeout 900` 复现 FiniteCover；随后运行 `compile_probes.py`。后者只把已成功完整证据且源码/输出哈希一致的本 run 对象复制进干净导入目录；新源码实际调用固定严格编译器，逐个打印和归档公理。

CI 只读；主线程取得实际证据后，通过 GitHub 插件提交、推送本任务分支并核对远端 SHA，然后继续。自动审批曾拒绝 CI 自提交方案，因此已移除写权限和自动提交脚本。新指标只有完整原题消费者编译通过才能计数；此阶段计数仍为0。失败日志保留并继续方法修复，不等待其他会话。


已验更新：CI 34510677596 五个代表根全部成功，组件公理为 std3；证据已收录 `verification/ci-34510677596/`。当前目标改为完整Row029，入口顺序为 `verification/runner/probe-roots.json`；最后根 `lean/rows/Row029/Original.lean`。执行同一 `compile_probes.py` 会逐根保留计时/资源、源及对象哈希、严格公理输出。改进的等待只打印20秒进度，不再使短编译固定多等20秒。阶段A其他150项必须在完整29验收后继续。


完整29已验：`verification/ci-34512327870/row029-accepted.json`，原题 `common_i029`，78源项目闭包，std3，源/已发布证明SHA `336885ea5547532f5b89dca5fce38a4debb0200e`。阶段A 1/151、本轮1/169。现有只读工作流仍可重跑完整29，最后接受根 `lean/rows/Row029/Original.lean`。下一步启用固定对象共享与逐行接受入口处理35、36、37；后续只能在实际消费者通过后更新每项状态。


发布核对：指标29完整验收提交 `868a5121f494b3100e41841a903409ad3480b60c`，远端已核对。后续只读批次入口 `.github/workflows/b699-phase-a.yml`，首批35、36、37。`generate_row.py --i 29` 首先要求逐字复现已验49个块；SharedEnvironment 在固定pins下实际编译，cache_bundle仅传输本run对象/日志/证据并逐项核对哈希；各行新机器重新验pins、源与对象哈希，再实际编译原题根。CI仍只读，所有发布通过主线程GitHub插件。

源码与日志按 B699_FILE_CHUNK 分块输出到任务日志，供工作机 unavailable 时通过连接器恢复文本；ZIP 始终在CI本地解析，不通过Base64或模型解析。仅源和实际证据可成为commit内容。原29接受工作流保留为 workflow_dispatch 复现入口，不再因后续批次工具修改重复触发。下一批列表在 `verification/runner/phase-a-batch.json`；已真实验收指标会采用固定验收并排除重算。


最新实际验收：36原题通过（61源项目闭包=38新编译+23经哈希复用，192见证、77层，std3）。35和37仅见证与元数据通过；失败直接层为35的1、2及37的1。35前4层JS诊断算术和pair cover都为真，不能据此记Lean通过；下一步显式interval等式+层算术+分块pair检查接回原Boolean。Lean decide源码说明其诊断可能遮蔽原kernel异常，因此当前准确状态是归约失败，不是数学反例。

首批CI整体失败还包含独立日志打包缺陷：cache_bundle只装了编译日志，compile_row随后尝试导出缺失的父lean-version/package/policy日志。下一次必须将policy及所有commands日志加入共享包并核对哈希。数学已成功的36不受该后处理失败影响。初版row-plan.json是共用路径，发布时按CI/指标归档并保存映射；后续工作流改用每指标/源SHA的独立计划路径，避免覆盖历史记录。

待执行修复优先35、37；169逐项状态已更新。源报告/失败源码归档冻结。不得重复计29、36，不进入B，不派子agent。
