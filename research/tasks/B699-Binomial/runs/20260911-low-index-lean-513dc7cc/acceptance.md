# 验收登记

固定 FiniteCover 接受根已真实复现。专用 CI `34509012170` 在源码 `5014f89e25cbf12804549ed0d4f34b4998103cb6` 上实际安装 Lean 4.33.1，恢复全部固定依赖及目标导入闭包，最小导入与 21 个固定源码闭包均退出 0。严格验收器检查固定源 SHA、独立输出、全部声明的公理输出以及 std3 限制。详细证据路径、准确命令和 artifact 哈希见 `verification/preflight/finitecover-ci-reproduced.json`；原始通过日志节选见同名 `.log`。

这是既有数学的固定验收复现，新增完整原题指标仍为 0。Row029 五个代表入口和 WitnessBridge 当前均为未编译候选，专用 CI 随本次推送实际核验；只有成功的完整闭包及公理证据才追加为已验小闭环。

接受要求：无 sorry/admit/sorryAx、额外未证公理、native_decide、Lean.ofReduceBool；传递公理仅 propext/Classical.choice/Quot.sound。固定源、命令、退出码、输出哈希、公理与下游用途均保存。CI 仅有 contents: read。主线程读取实际编译与公理证据后，通过 GitHub 插件 commit、push 本任务分支，核对远端 SHA 后继续；不推 main 或 Leader 分支。
