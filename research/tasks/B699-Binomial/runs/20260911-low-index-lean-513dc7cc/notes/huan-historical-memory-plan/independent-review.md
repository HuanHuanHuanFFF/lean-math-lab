# Historical J2 memory profile independent review

本目录只写入候选 profile 和审核材料，没有修改 runner、源码、历史 evidence/index，也没有运行 Lean。

现场 evidence：

- 成功尝试：verification/20260911T065430837534Z/evidence.json，SHA-256 为 caade82dbe50891fad4f05dd2122bc6db6763649e54ac89529275f64300e8d93；
- 该尝试实际使用 M2560，成功编译 Row029Data、Layer000、Row029J2/Block008..013 共 8 个新模块，另有 21 个复用对象；在 Block014 前因 MemAvailable 不足而停止，overall success=false；
- Block008 的实际声明包含 row029_layer001_checked、row029_layer002_checked、row029_layer003_checked。profile 因此只把 Block008 作为 M2560 override；
- 前两个 M2048 失败 evidence 为 20260911T064311417078Z 和 20260911T064447019893Z。它们分别在 J8/Block002 与 J4/Block004 失败并出现 memory_exception/sorryAx 相关的非接受结果；它们不构成数学验收。

profile 候选：

- 默认 M2048；
- 只有 repo-relative source research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/rows/Row029J2/Block008.lean 使用 M2560；
- 仍使用原有 (selected_memory_mb + 512) MiB MemAvailable 门禁；
- 内存短暂不足时最多同一门禁等待 30 秒，再失败；
- 任何失败、timeout、sorryAx、source/output SHA 不一致或未覆盖闭包都保持 overall unsuccessful；
- 该 profile 未采用，需主线程后续实际测试。

静态闭包审核：

- 成功 J2 evidence source_closure 共 54 个路径；
- profile override key 在闭包中精确存在；
- override source SHA 与现场文件一致；
- layer001/layer002 theorem 字面声明均存在；
- 其余闭包源由 default M2048 覆盖；
- J2 在 Block014 前停止，未把剩余闭包伪造为成功。

## verify_huan.py 最小补丁建议（仅建议，不执行）

1. 增加可选参数 --memory-profile PROFILE.json，不改变现有 --memory-mb 默认行为；没有 profile 时仍使用当前单值。
2. 在固定 build_closure 完成后读取 profile，以 repo-relative source path 精确查表；未知 key、重复 key、非正整数或不在允许资源策略中的值直接失败。profile 的 default 为 2048，Block008 override 为 2560。
3. 每个 source 编译前选出 selected_memory_mb，在现有 MemAvailable 门禁上最多等待 30 秒；不降低 (selected_memory_mb + 512) MiB 阈值，也不绕过 disk gate。等待次数、开始/结束 MemAvailable 和选择值写入 compile resource record。
4. 将 v.compile_source(... memory_mb=selected_memory_mb ...) 生成实际命令 LEAN -j1 -M<selected>；command record、evidence compile record 和日志必须保存最终命令、source/output/log SHA、exit/timed_out/failure、axiom audit、进程树峰值。
5. 若等待后仍不足，写失败 evidence 并退出失败；不能标记 source 完成、不能把整体报告改成成功、不能用 profile 代替 source/pin/import/axiom 门禁。
6. 若目标闭包包含复用 evidence，profile 只影响新 compile；reuse record 必须继续逐项做 source/output/log/pin SHA 校验。

这些建议没有修改固定 verifier；profile 当前只作为 notes 中可审查输入。

## Candidate implementation static review

候选实现位于 verify_huan_profile_candidate.py，复制基线 verify_huan.py 的 SHA-256 为 41FE5175A3FDC7DD3013B280B79B0915B5A3B92723D0169B2CCAB9770491E3B8；候选通过 AST/compile，CLI help 暴露 --memory-profile。相对基线的静态 diff 约为新增 293 行、删除 11 行，主体 verifier/资源入口保持原结构。

纯函数模拟时钟测试已通过：立即足够、先低后高、持续不足 30 秒后失败；reserve=511、wait=31、default=0、unknown key、duplicate source key 均被拒绝。profile 未提供时仍选择原 --memory-mb 行为；提供 profile 时每个实际 command 使用选定 M 值，并记录 profile raw bytes/SHA、source selection、wait snapshots 和 compile record。

本候选没有运行 Lean、没有真实 verifier、没有修改原 runner/source/evidence/index，也没有断言全机当前进程状态。

## Candidate v2 static review

v2 位于 verify_huan_profile_candidate_v2.py，仍以活动 verify_huan.py 的 SHA-256
41FE5175A3FDC7DD3013B280B79B0915B5A3B92723D0169B2CCAB9770491E3B8 为基线；活动 runner
本身没有修改。v2 保留无 profile 时的单值 --memory-mb 默认行为，并保持原资源字段。

本次修订的门禁证据行为如下：

- load_memory_profile 初始化空的 adoptions；首次新 source 会先写入
  memory_gate_pending adoption，并把同一个 compile_resources record 注册到报告，再进入内存门禁。
- profile 等待超时抛出携带最终 snapshot 和完整 waits 的异常；失败 record 保存
  memory_wait_snapshots、memory_gate_failure，adoption 变为
  memory_gate_failed。无 profile 的低内存失败也先保存快照和失败字段。
- profile 的 default_memory_mb、reserve、wait 和 override memory 只接受
  type(value) is int；布尔值会被拒绝。复制到 public evidence 的
  memory-profile.json 会再次以 SHA-256 对比解析时的 raw SHA，失配直接失败。
- 通过门禁后 adoption 标记为 memory_gate_passed，实际 compile command 继续使用所选
  selected_memory_mb；512 MiB 余量阈值、disk gate、source/pin/import/axiom 门禁未放宽。

纯 Python 模拟覆盖了实际首次 profile/new-source 选择与预登记、成功 adoption、持续低内存
超时的全部等待快照、无 profile 低内存失败快照、四种布尔参数拒绝，以及真实 profile
加载后的空 adoptions 初始化；另外复测了先低后高的等待恢复和 unknown/duplicate/wait>30
负向 profile。AST 编译和 --help 检查通过，CLI 暴露 --memory-profile。本轮没有运行 Lean、没有
下载或构建、没有运行真实 verifier，也没有声称全机进程状态；v2 仍待主线程用历史 root 做真实验收。
