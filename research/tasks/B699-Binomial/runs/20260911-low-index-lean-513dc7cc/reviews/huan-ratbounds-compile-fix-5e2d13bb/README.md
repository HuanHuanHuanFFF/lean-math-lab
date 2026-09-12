# RatBounds 编译错误最小修复

只修改集成 `lean/I11Scaled/RatBounds.lean:27`，将

```
apply (mul_lt_mul_left hl).mp
```

改为

```
apply (Rat.mul_lt_mul_left hl).mp
```

所有 imports、定理前提、目标和后续计算步骤均保持原字节；没有新增假设、资源限额、实例或公理。

实际失败日志位于 `verification/huan-b-queue-20260911T170430474433Z/13-i11-scaled-rat-bounds.log`，证据为 `verification/20260911T171356669181Z/evidence.json`。第 27 行解析到 mathlib 的通用 `mul_lt_mul_left`：它要求乘以任意元素都严格保序的 MulRightStrictMono 实例。这对包含 0 和负数的 ℚ 不成立，不能用添加实例或更强前提掩盖。该失败使 weighted_bound_lt 的输出含 sorryAx；原失败整体不予接受，即使另外三个 print 为 std3。

固定 Lean 4.33.1 的 `Init/Data/Rat/Lemmas.lean:901–902` 已有受保护名称 `Rat.mul_lt_mul_left`，陈述为：当 0<c 时，c*a<c*b 当且仅当 a<b。取 c=l、a=k*x、b=r，现有 hl:0<l 恰好足够，正向消去后得到原来的 calc 目标 l*(k*x)<l*r。原第 28 行 No goals 是失败后的后继诊断；没有理由改其数学步骤。

`source-before.txt` 保留失败源，`source-after.txt` 保留修复字节，`source.diff` 给出唯一差异；前后 SHA 与固定引理源 SHA 见 `FIX_RECORD.json`。

这里只做静态修复和字节检查，没有运行 Lean。主任务下一步应真实重编译同一入口并检查四个 print 全部在 std3 内；在此之前不称修复已通过或新增原题结论。
