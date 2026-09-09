# 显式二进制幂轨迹

负责人：`power_trace_lemma` 子任务；只拥有 `lean/PowerTrace.lean` 与本记录。来源基线固定为 `12c31b8b5729b0017cf8e1423cd98ed5230aaaae`，采用主任务指定的本批 `lean/dyadic/Base.lean`；只参考本批 `Pow.lean` 和 `Compare.lean`，不读取其他并行会话新成果。

本轮总预算从 2026-09-09 17:59:27 UTC 开始；第 5 小时评估为 22:59:27 UTC，计划截止为 23:59:27 UTC，任何延长均由主任务记录，绝对上限为 2026-09-10 00:59:27 UTC。本子任务 18:25:50 UTC 检查点位于共享预算内，不另开预算。

## 目标、价值与边界

目标是证明一个只消费外部提供的每步指数和 dyadic 上下界的检查器声音性；不在检查器内部递归重算整个幂树。主任务已报告旧递归 `powDown` / `powUp` 在代表性 B699 消费者的内核化简阶段触发内存限制；此处解决该表示与求值障碍，不主张旧数学命题错误。

预期用途：把 1000 ≤ i ≤ 4882 的 HeightBlock 证书中大整数幂的比较转为约 log2(k) 个小尾数乘法检查。它仍依赖主任务生成并检查正确轨迹、接上独立阶乘轨迹及原题消费者。本引理单独不会排除任何 B699 未知区域；n、j 无上界的消除需完整消费者证明。

## 确定的接口

命名空间为 `B699Dyadic`。

- `PowState` 有 `exponent : Nat`、`bound : Dyadic` 两字段。
- `powTraceDownCheck bits base exponent final trace` 与 `powTraceUpCheck ...` 返回 Bool。
- 内部起点固定为 `⟨0, one⟩`，`trace` 只列后续状态。空轨迹只能接受指数 0、终值 one。
- 每一步将输入的上一个状态记为 `(e, a)`，下一状态记为 `(e', b)`。只允许 `e' = e+e` 或 `e' = e+e+1`；相应的 b 必须严格等于 `mulDown/Up bits a a` 或再与 base 相乘的定向舍入结果。
- 列表尾部必须同时核对实际 exponent 和 final，不能仅检查局部乘法。
- `powTraceDownCheck_sound` 从布尔检查成功推出 `final.value ≤ base.value ^ exponent`；`powTraceUpCheck_sound` 推出反向。
- 暴露相邻状态声音性和 FromCheck 声音性，允许未来将单个布尔证书拆成小块，避免一次归约过大。

检查器每次递归直接传入列表中的 next 状态，并不把计算出的 dyadic 表达式作为下一步输入。奇数步有两次局部乘法，深度固定。接口允许零前缀/重复零指数；这不影响声音性。约 log2(k) 的长度是生成器的构造性质，而非本检查器额外要求。

## 数学论证

维护不变量：下界方向为 `a.value ≤ base.value ^ e`，上界方向为反向。起点由 `one.value = 1 = base.value ^ 0` 成立。平方步先用 `Nat.mul_le_mul` 将同一侧不等式相乘，再用 `pow_add` 合并指数；奇数步再以 base.value 相乘并用 `pow_succ`。每次定向舍入用 Base 中的 `mulDown_le` / `mul_le_mulUp`。自然数非负，无需底数正或 bits 正。

列表归纳证明检查器把相邻状态不变量传递至尾部，尾部的两项等式将结论绑定到调用者指定的指数与 final。外部生成器的 PASS 标记、旧 powDown/powUp 的整体计算、原生执行假设与自定义公理均不参与证明。

## 当前验收状态

18:25:50 UTC：接口和纸面论证已确定，Lean 源码正在写入。按主任务要求，子任务不运行 Lean，也不运行重 Python；统一串行编译与公理审计归主任务。目前不得称为内核已验。本次普通终端启动报 `helper_unknown_error: setup refresh had errors`，获准的提升调用能正常读源码；这是环境启动问题，不是数学或仓库损坏证据。

下一检查：主任务编译 PowerTrace.lean，检查所有声音性定理的传递公理列表；随后先测试一个代表性高度证书，再扩大到全部区间。若证书化简仍超内存，尝试按暴露的单步/FromCheck 引理分段传递，而不能改用信任外部结果。

18:30:05 UTC 源码交付检查点：PowerTrace.lean 已写入，共 193 行；包含两方向单步与整表声音性证明，以及 8 个小规模正反检查示例（零指数、正确轨迹、错误指数终点、错误 dyadic 终点、断裂指数）。静态扫描未出现 sorry、admit、sorryAx、自定义 axiom、native_decide 或 ofReduceBool。源码 SHA256 为 `B61D46C2294652028A19CC44301288DD95D8D0458D1BF4EC63F50D7B6ABBCA85`。两个文件保存为未跟踪文件，未 commit/push。这里的静态检查不构成 Lean 编译或传递公理验收；已将路径与固定接口交给主任务串行编译。

## 首编修复与新验收（18:34 UTC）

首次编译的旧失败日志保留于 [20260909T183054Z 日志](../verification/20260909T183054Z/logs/compile-0002-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_PowerTrace.lean.log)。实际错误是两处奇数步证明的 `simp only` 先用 ho 替换 next.exponent，再处理 he，导致外层条件没有按 he 消去；随后的 `sorryAx` 是失败的证明 elaboration 输出，不能作为接受证据。此处属于 tactic 化简顺序问题，未发现数学反例。修复为明确使用 `if_neg he` / `if_pos ho` 的条件改写，并统一偶数与无效分支的写法。公共接口和数学命题未变。

首编失败后，主任务授予本子任务一次独占 Lean 编译窗口。实际复验命令（从隔离项目根执行）：

```powershell
& 'C:\Python314\python.exe' -u -B 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/verification/runner/extend.py' --project-root . --lean 'D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe' --package-root 'D:\CodingProject\Math\.lake\packages' --root 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/lean/PowerTrace.lean' --base-evidence 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/verification/20260909T181632Z/evidence.json' --memory-mb 1280 --timeout 180
```

新证据为 [verification/20260909T183409Z/evidence.json](../verification/20260909T183409Z/evidence.json)，实际日志为 [PowerTrace 编译日志](../verification/20260909T183409Z/logs/compile-0002-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_PowerTrace.lean.log)。`success=true`、`exit_code=0`、`all_project_closure_verified=true`；本次新编 PowerTrace，Base 按验证器逐项核对的源码、对象、日志与来源证据哈希复用，不能表述为依赖全部重新编译。

- 验证开始：2026-09-09 18:34:09.221730 UTC；结束：18:34:23.695249 UTC；总耗时约 14.474 秒。
- PowerTrace 编译：18:34:15.859579–18:34:23.683597 UTC，7.824 秒，退出码 0，未超时。
- 新源码 SHA256：`27e6f202d9d587b4d776fe95040d7f67a8a42705e5709e3cc36f24d4557a0347`；编译前、编译后与验收读取时文件一致。
- 实际两个主定理的传递公理均为 `[propext, Quot.sound]`，无意外公理、无 sorryAx；声明与实际打印计数均为 2。
- 8 个模块内小规模正反例随本次源文件实际编译通过。

当前接受状态：通用幂轨迹检查器上下界声音性已经本批 Lean 4.33.1 内核检查；原题目标及大指数代表性证书仍由主任务接通并验收。本引理本身没有新排除 B699 的未知区域，也没有建立研究新颖性。独占 Lean 计算窗口已在向主任务发送成功证据时明确释放；子任务此后不再启动 Lean。
