# B677 初等消费者：验收与接续

本子任务已完成锁定的初等目标。源码为 [ElementaryBounds.lean](../../lean/bounds/ElementaryBounds.lean)，独立原题消费者为 [Consumer.lean](../../lean/bounds/Consumer.lean)。来源、改线和边界见 [obligations.md](obligations.md)。

## 实际定理

- `B677BoundsConsumer.requested_elementary_bounds`：对全部自然数 `n,m,k`，由 `2≤k`、`n+k≤m` 及原定义的区间 LCM 相等，推出 `m−n≤8k → m<1466k` 和 `n≤369k → m<1480k`。
- `B677BoundsConsumer.requested_general_start_relation`：相同原题假设推出 `m+1<4(n+k)`；底层 `later_start_lt_four_mul_end` 实际不需分离假设。
- `B677BoundsConsumer.stronger_displacement_bound`：保留更强 `m−n≤8k → m<1032k`，通过原消费者回推原常数，并未替换目标。
- `B677Bounds.start_mul_length_lt_sixteen_gap_sq`：一般多项式必要关系 `(n+1)k <16(m−n)²`。
- 原纸面 LCM 上下界的精确接口：乘积整除单阶乘乘 LCM、`k·choose(n+k,k)≤M(n,k)`、`M(n,k)∣choose(n+k,k)·A_k`、`A_k≤4^k`，以及清除分母后的阶乘上界。
- `length_one_noncollision` 处理后续装配时的 `k=1` 边界。直接数值检查包含 `n=0`、`k=0` 以及 `(0,2]`、`(2,4]` 的端点。

## 验证命令与范围

在仓库根目录执行：

```text
python3 research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/bounds/verify_bounds.py
```

最终新目录验收为 [20260908T093438980811Z/evidence.json](../../verification/bounds/20260908T093438980811Z/evidence.json)，脚本退出 0、`success=true`。11 个实际项目依赖闭包源码全部重编到新的 `.lake/research-runs/b677-bounds-20260908T093438980811Z/olean`；没有暴露旧项目对象搜索路径。依赖包使用已恢复的固定缓存，实际项目源代码全部重编；Lean 4.33.1、mathlib 固定提交和所有包 pins 均实测匹配。没有修改 pins 或共享公共模块。

两个新源码内的 12 项传递公理 guard 全部通过，准确允许列表均为 `[propext, Classical.choice, Quot.sound]`；旧依赖内 guard 亦随重编实际执行。精确闭包源码策略通过，没有占位证明、新公理或 `native_decide`。全部源码验收前后哈希一致。未使用第二个独立 Lean 内核实现，此处不把普通 Lean kernel 检查说成独立内核复核。

保留了两次失败证据：第一次仅为未指定参数的阶乘重写和幂比较 API 名字错误；第二次是额外 `k=1` 消费者未化简自然数 `normalize`。均修复并在上述全新目录重编通过。失败日志中的自动错误占位公理输出不属于通过源码的公理依赖。

## 证据边界

本轮实际完成已审纸面有限化的初等依赖；不新增数学排除区域或新颖性结论。最终 8/369 无碰撞结论仍需要 Dusart 输入和 `m<89693` 的 Lean 有限证书；本初等任务没有证明或公理化其中任何一项，不宣称全题完成。

主线程现已追加 F677-02 有限证明链任务并分配独立的 `lean/finite/`、`notes/finite/`、`verification/finite/`、`experiments/finite/`；本 bounds 源码与最终验收已经冻结，可由主线程直接导入。下一项工作在有限证书目录内开展。没有 commit 或 push。
