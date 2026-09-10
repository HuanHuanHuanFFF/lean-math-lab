# 验收登记

固定 FiniteCover 接受根已真实复现。专用 CI `34509012170` 在源码 `5014f89e25cbf12804549ed0d4f34b4998103cb6` 上实际安装 Lean 4.33.1，恢复全部固定依赖及目标导入闭包，最小导入与 21 个固定源码闭包均退出 0。严格验收器检查固定源 SHA、独立输出、全部声明的公理输出以及 std3 限制。详细证据路径、准确命令和 artifact 哈希见 `verification/preflight/finitecover-ci-reproduced.json`；原始通过日志节选见同名 `.log`。

这是既有数学的固定验收复现，新增完整原题指标仍为 0。Row029 五个代表入口和 WitnessBridge 当前均为未编译候选，专用 CI 随本次推送实际核验；只有成功的完整闭包及公理证据才追加为已验小闭环。

接受要求：无 sorry/admit/sorryAx、额外未证公理、native_decide、Lean.ofReduceBool；传递公理仅 propext/Classical.choice/Quot.sound。固定源、命令、退出码、输出哈希、公理与下游用途均保存。CI 仅有 contents: read。主线程读取实际编译与公理证据后，通过 GitHub 插件 commit、push 本任务分支，核对远端 SHA 后继续；不推 main 或 Leader 分支。


已验新组件闭环（源 `a31cff68eb22b1478e29788c75952f8763d621b6`，CI `34510677596`）：`good_top_prime_checked` 及直接使用例 `row029_witness000_checked`、`row029_witness227_checked`、`row029_witness056_checked`，以及 `row029_layer000_checked` 和 `row029_layer113_checked`。以上全部实际编译退出0，传递公理均为 `[propext, Classical.choice, Quot.sound]`。三个见证分别耗时1.045、1.058、1.034秒；两层耗时6.108、1.176秒。`Row029Data` 编译退出0且无公理。严格复用器以源与输出哈希检查本轮已验依赖，未导入旧研究对象目录。

准确源/输出/日志哈希、9个依赖pins、实际声明和公理输出、实际CI日志与归档哈希见 `verification/ci-34510677596/`。该小闭环新增完整原题指标为0；只证明所列组件。下一批源码包含全228见证、114层、注册高度、小n及层覆盖，以及独立原题消费者 `common_i029`；它们当前是候选，等待本次实际编译。
