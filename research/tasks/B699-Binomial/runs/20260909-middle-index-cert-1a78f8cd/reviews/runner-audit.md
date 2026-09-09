# B699 中指标验收 runner 审查

审查对象是本批 `verification/runner/verify.py`、`monitor.py`、新增的
`extend.py`，以及首根 `verification/20260909T114042Z/evidence.json`。
本审查只读取源文件、JSON、日志头和已记录的哈希；没有运行 Lean、没有重算
证书或素数链，也没有把外部静态数据当作原题证明。

## 实际读取与自检命令

固定工作树为 `D:/CodingProject/Math/.tools/worktrees/b699-middle-lean-20260909-1a78f8cd`，使用 PowerShell 7、`login=false`、显式提权方式执行了以下只读命令：

```text
Get-Content -Raw research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/runner/verify.py
Get-Content -Raw research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/runner/monitor.py
Get-Content -Raw research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/runner/extend.py
Get-Content -Raw research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/20260909T114042Z/evidence.json | ConvertFrom-Json
Get-FileHash -Algorithm SHA256 <each source and recorded OLean output>
python -m py_compile research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/experiments/kernel-cost/summarize.py
python experiments/kernel-cost/summarize.py verification/20260909T114042Z/evidence.json
```

汇总器自检输出为 `success=false`、`compile_records=11`、10 个成功和 1 个失败、项目源闭包 12 个且有 1 个未编译源；尝试把输出路径设为已有
`evidence.json` 时以 `refusing to overwrite existing output` 退出。

## 证据支持的部分

`verify.py:537-550` 要求 `lake-manifest.json` 恰有 9 个包。
`verify.py:566-698` 对每个包用进程内 `git -c safe.directory=...` 检查
HEAD 和干净状态；`verify.py:1216-1225` 对 HEAD 不匹配、脏树或缺失 checkout
整体失败。首根的 9 个包均 `head_matches=true` 且 `clean=true`，工具链声明和观测
版本均为 Lean 4.33.1。`verify.py:701-753` 还逐个检查项目实际导入的包模块的
固定 `.olean` 缓存；本根的 11 个 Mathlib 导入均找到缓存。Cli checkout 的
`cache_exists=false`，但它不在项目导入清单中，因此只能报告“未使用包缓存缺失”，
不能说九个包的缓存全部存在。

`verify.py:1264-1280` 从两个根源构造精确的项目源闭包并保存源哈希，
`verify.py:1320-1358` 按依赖顺序编译闭包，并且只在所有记录成功后才设置
`all_new_project_closure_compiled=true`。当前证据的闭包是 12 个源，实际记录到
第 11 个；前 10 个生成的 OLean 输出哈希仍与记录一致，失败点
`heightRows/Height323.lean` 没有 OLean，`Height999.lean` 尚未编译。因而当前
`all_new_project_closure_compiled=false` 是正确的，不能报告本批完整消费者已验收。

`verify.py:819-869` 对源中的裸 `#print axioms` 与 Lean 实际输出逐项配对，并拒绝
未允许的公理。前 10 个成功源的已打印项只出现
`propext`、`Classical.choice`、`Quot.sound`；失败源的两项实际输出含
`sorryAx`，因此 runner 将其记为失败。`verify.py:205-226` 的静态源策略也对
精确项目闭包通过，未发现 `sorry`、显式 `axiom` 等禁用标记。

`monitor.py:11-30` 为每个子进程用 Windows `GetProcessMemoryInfo` 采样，
记录峰值工作集、采样私有内存、峰值 pagefile 和采样数。首根的 11 个 Lean 编译
命令采样数均为正（37 至 120），所以本根的这些资源数值是实际采样结果；失败的
Height323 记录为 15.847 秒、峰值工作集 1,623,961,600 字节、采样私有内存
2,939,912,192 字节、80 次采样。没有据此推断 CI 或数学覆盖。

## 需要保留的限制与问题

1. **项目闭包尚未完整通过。** `evidence.json` 的失败根因是
   `Height323.lean:7` 的 `decide +kernel` 触发 kernel excessive memory，随后
   `#print axioms` 实际含 `sorryAx`。这不是 runner 误判，也不授权采用该错误
   对象；Height999 仍是未测。

2. **资源字段不在 `compile_records`。** `verify.py:418-518` 的
   `run_logged` 将 `memory_measurement` 放在 `commands` 记录，
   `verify.py:968-990` 构造 `compile_records` 时没有复制该字段。因此只读
   `compile_records` 会把资源误认为缺失。`experiments/kernel-cost/summarize.py`
   按完全相同的公开 command 与 `commands` 关联，缓存复用记录的
   `seconds=null` 也保持为 null，并且不把零采样当成零字节。

3. **两个成功源没有实际 `#print axioms` 行。** 当前记录中
   `Math.B699.CofactorCriterion` 和 `...eees-chain...PowerBounds` 的
   `declared_print_axioms=0`、`actual_printed=0`。`verify.py:819-869` 对这种情况
   没有任何公理输出可审计，故这不是“无传递公理”的证明。若最终验收要求全闭包
   的真实传递公理记录，应在这些源中加入具体声明，或由主线程另行运行独立的
   `#print axioms` 审计；本子任务不改共享源。

4. **monitor 的未采样状态没有显式错误标志。** `monitor.py:13` 把计数器初始化
   为 0，`monitor.py:17-21` 若 Windows API 调用一直失败也不会记录失败原因。
   当前根采样数都大于 0，暂无实际误报；后续汇总必须在采样数缺失或为 0 时输出
   `null`，不能把初始化的 0 当作测量值。

5. **extend 的复用边界。** `extend.py:21-40` 只收纳基准证据中成功、无审计
   错误的模块，`extend.py:42-67` 重新检查源、对象、日志哈希、项目依赖、静态
   策略和持久日志中的实际公理；失败点及其后续模块不会被复用。
   `extend.py:76-100` 复制通过哈希检查的 OLean 到新输出，并将
   `compiled_in_this_invocation=false`、`seconds=null`、`reuse_seconds` 和
   `original_compile_seconds` 分开记录，这与成本汇总器的 null 规则一致。
   但 `extend.py:62-67` 会重新调用 `audit_axioms` 却丢弃返回对象，只保留基准
   `axiom_audit`；当前源、日志哈希已固定，结论可复现，但新证据没有单独字段证明
   “本次重审的输出”。若主线程要求审查记录本身可见，应在共享 runner 中保存这次
   re-audit 结果；本子任务不修改该文件。

## 结论边界

本根支持：固定工具链和包 HEAD 检查通过；项目闭包前 10 个源的实际编译、源/输出
哈希、采样成本和已声明 `#print axioms` 输出可追溯；第 11 个失败原因可追溯。
本根不支持：12 个项目源的完整编译、Height323/Height999 高度证书通过、677 个
指标的完整原题消费者、CI 状态，或完整 B699 结论。任何外部 compact 证书、静态
数据列表和本审查文字都没有提升这些数学证据等级。
