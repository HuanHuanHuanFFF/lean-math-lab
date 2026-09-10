# 验收登记

固定 FiniteCover 接受根已真实复现。专用 CI `34509012170` 在源码 `5014f89e25cbf12804549ed0d4f34b4998103cb6` 上实际安装 Lean 4.33.1，恢复全部固定依赖及目标导入闭包，最小导入与 21 个固定源码闭包均退出 0。严格验收器检查固定源 SHA、独立输出、全部声明的公理输出以及 std3 限制。详细证据路径、准确命令和 artifact 哈希见 `verification/preflight/finitecover-ci-reproduced.json`；原始通过日志节选见同名 `.log`。

这是既有数学的固定验收复现，新增完整原题指标仍为 0。Row029 五个代表入口和 WitnessBridge 当前均为未编译候选，专用 CI 随本次推送实际核验；只有成功的完整闭包及公理证据才追加为已验小闭环。

接受要求：无 sorry/admit/sorryAx、额外未证公理、native_decide、Lean.ofReduceBool；传递公理仅 propext/Classical.choice/Quot.sound。固定源、命令、退出码、输出哈希、公理与下游用途均保存。CI 仅有 contents: read。主线程读取实际编译与公理证据后，通过 GitHub 插件 commit、push 本任务分支，核对远端 SHA 后继续；不推 main 或 Leader 分支。


已验新组件闭环（源 `a31cff68eb22b1478e29788c75952f8763d621b6`，CI `34510677596`）：`good_top_prime_checked` 及直接使用例 `row029_witness000_checked`、`row029_witness227_checked`、`row029_witness056_checked`，以及 `row029_layer000_checked` 和 `row029_layer113_checked`。以上全部实际编译退出0，传递公理均为 `[propext, Classical.choice, Quot.sound]`。三个见证分别耗时1.045、1.058、1.034秒；两层耗时6.108、1.176秒。`Row029Data` 编译退出0且无公理。严格复用器以源与输出哈希检查本轮已验依赖，未导入旧研究对象目录。

准确源/输出/日志哈希、9个依赖pins、实际声明和公理输出、实际CI日志与归档哈希见 `verification/ci-34510677596/`。该小闭环新增完整原题指标为0；只证明所列组件。下一批源码包含全228见证、114层、注册高度、小n及层覆盖，以及独立原题消费者 `common_i029`；它们当前是候选，等待本次实际编译。


完整原题指标29已验收（CI `34512327870`，源码 `336885ea5547532f5b89dca5fce38a4debb0200e`）。`row029_goods_checked` 覆盖全部228见证，`row029_layers_checked` 覆盖全部114层；注册高度、小n覆盖、层覆盖、`row029_checked` 及独立原题 `common_i029` 全部实际编译退出0。原题根准确源码 SHA-256 为 `40cde1738274ee5640a04f2e1e5036cb54793529f171ca10ad81991ef8be0eb5`，对象 SHA-256 为 `00f036dcb19b1d2deca55297507d483704fa9c8ca3011678d2f049471ad22039`；根依赖78个本仓库模块，其传递公理输出为 `[propext, Classical.choice, Quot.sound]`。未使用 BFT、EC 或 LowIndexComplete 前置。

完整记录与实际CI日志见 `verification/ci-34512327870/`。阶段 A 为1/151，本轮为1/169；B尚未开始。下一步35、36、37，然后完成其余阶段A，不停在本次推送。


完整指标36通过：原题 `B699LowIndex.LowIndexLean513dc7cc.common_i036`，CI 34514758444 / job 102999487315，源版本 `14aab81e99dd8498e4fdac8ac0e8012d4885544d`。38个新项目模块实际编译、23个经源/对象/日志哈希验证的项目依赖复用；192见证、77层、完整行检查和原题消费者全部通过，所有新接受结果只含std3。CI在数学成功后的可选父日志导出步骤失败，不能把它误记为数学失败或伪称整个CI绿灯；准确原题成功记录和已核对源码在 `verification/ci-34514758444-row36/`。

指标35的247个见证、指标37的227个见证及两行注册/范围覆盖也已编译通过。但35层1、2和37层1的直接kernel decide归约失败，失败模块没有对象且审计检测到错误占位sorryAx，因此完整指标35、37均不接受。未编译源码移入各CI归档的 `uncompiled-sources/`，成功组件留在正常导入路径；原路径与哈希映射随记录保存。下一步分离层算术、显式区间表及成对检查，保持原检查器含义，不提升无限资源。


已验分块重组组件：`coverLayerCheck_of_parts` 在源 `f5b18ab9849c4e9105777084e655d40ed9a96f13` / CI34519132194共享job103011945760中编译退出0，用时1.245秒，std3。其25源闭包在干净输出目录实际重编译。补全policy及commands日志后的缓存导出也成功（71项）。见 `verification/ci-34519132194-shared/acceptance.json`。这是核验组件闭环，完整原题仍为29、36两项；35、37正在用该组件实际检验。


35、37的显式goods边界等式（`row035_bounds_eq`、`row037_bounds_eq`）已在CI34519132194实际编译，均无公理。新一轮四层合并文件分别在53.738秒、54秒触发Lean解释器memory_exception（-6），无输出对象，全部层声明均不接受。35整棵进程树最大RSS3148684KiB。修复后的日志缓存与全部文本证据导出已实际成功；准确原始evidence、commands、源码/日志哈希、已验Geometry和失败模块均归档。下一次将算术、枚举、每个pair块独立为模块，并用结构引理重组列表，不上调3GiB上限。


已验核验组件：`pairCoverCheck_of_chunks`，源0102ae7d1a8c776b329730e5746c2b59ecd06ded，CI34521061213/job103018402995。实际编译1.021秒、退出0，公理仅 `[propext, Quot.sound]`；共享26源全部从干净输出重编译。当前批次证据暂存51文件、缺失0，缓存73项导出成功。见 `verification/ci-34521061213-shared/acceptance.json`。本组件不新增原题指标；35、37独立模块版继续实际执行。
