# Original terminal checker: prefix transfer candidate

**一般 Sublist 单调性为假；实际需要的前缀版本有完整候选。** 本目录保留原 `coverCheck`，没有改 checker、目标集合、排序要求或覆盖假设。两个实现与三个审计共 12 个公开根，尚未运行 Lean。

负责人 `/root/c2_divisor_resume`，仅写本实验目录。开始 `2026-09-12T08:41:02Z`，20 分钟检查点 `09:01:02Z`，本轮无总时限。主任务负责失败格定位、lean/ 接入、Assembly/Composer 与验证队列；本件未启动 Lean、未提交或推送。

## 决定性的算法边界

实际定义在旧 run 的 `20260909-low-index-structure-b41a5a63/lean/IntervalCover.lean`，命名为 `B699LowIndex.coverCheck`。导入链为 `I11TerminalCrt.RowCell → I11TerminalCover.Cover → Witness → 旧 IntervalCover`。

它按当前游标 lo 依次处理 `(a,b)`：空目标成功；`b<lo` 跳过；否则 `lo<a` **立即失败**；否则若 `hi≤b` 成功；其余分支将游标移到 `b+1`。因此在已成功列表前插入一个未来区间可以制造失败：

- `small=[(1,1)]` 是 `large=[(2,2),(1,1)]` 的 Sublist；
- `coverCheck 1 1 small=true`；
- `coverCheck 1 1 large=false`。

[Cover.lean](Cover.lean) 中的 `sublist_counterexample` 和 `not_coverCheck_sublist_mono` 把反例及一般命题的否定写成待编译定理。集合包含不足以证明原 Bool 检查器单调。现有 `Math.B699.I11TerminalCRT.candidateMem_mono` 只传递集合成员语义；`CRTGrid` 的 target 单调性也不是这里需要的 API。指定范围内未找到已有 coverCheck 前缀工具。

## 无额外排序条件的正确接口

若在成功前缀**后面追加后缀**，已检查的区间及其顺序都不变。沿原递归归纳：任何原有成功分支继续成功，跳过与推进游标的分支沿用归纳假设；空列表成功表示 `hi<lo`，对任意后缀也成功。因此得到以下公共 API：

| 层 | API | 精确作用 |
|---|---|---|
| cover | `coverCheck_append` | 前缀检查成功 → 加任意后缀后成功 |
| cover | `coverCheck_of_isPrefix` | `small.IsPrefix large` 下传递同一 lo/hi 的 true 结果 |
| cover | `coverCheck_take` | `coverCheck lo hi (cs.take k)=true → coverCheck lo hi cs=true` |
| row | `rowCoverCheck_append/of_isPrefix/take` | 保留原 pairBoundCheck 与全部参数行 |
| cell | `cellCoverCheck_append/of_isPrefix/take` | 保留原全部 21 个位移及其 BoundsDatum |

所有新根位于 `Math.B699.I11TerminalMono`。无需区间有效性、全局排序、成员覆盖或新的算术假设；只要求相应较短 Bool 检查确实为 true。`k` 可为任意自然数。`List.take_prefix k cs` 直接提供前缀证明，故主要消费者不需要另验一个排序或包含条件。

在原 cell 目标保持不变时，主任务可使用：

```lean
-- Import the future lean.I11TerminalMono.RowCell module.
-- k is a concrete cutoff selected and checked by the parent.
  apply Math.B699.I11TerminalMono.cellCoverCheck_take candidates k
  decide +kernel
```

最后的 decide 目标恰为同一 `cellCoverCheck`、相同 P/Q/caps/data 的 `(candidates.take k)`。通用定理把结果传到完整 `candidates`，不用重新执行全列表的 cell 检查。row 级对应 `rowCoverCheck_take`。

**性能边界：** 原 coverCheck 本身已有提前成功分支。前缀传递保证逻辑安全，但本件没有测量截取后对列表构造、循环执行或内核内存的实际收益，也不声称 M1536 的失败已解决。下一步应让主任务选出的单个失败格用小前缀作串行试验，再决定生成范围；不要只凭本引理声称所有失败格已修复。

## 检查、来源和接入

[DIAGNOSTIC.json](DIAGNOSTIC.json) 使用忠实复制的原分支顺序确认反例，并通过 641823 次成功前缀追加检查与 63968 次 take 蕴含检查。有限范围包含乱序、重复、反向区间和空目标；它是算法抄录诊断，不是通用证明或资源测试。

[AUDIT_ROOTS.json](AUDIT_ROOTS.json) 包含 12 根的完整显式类型；模块审计与汇总 Audit 都执行 `#print axioms`，并打印所用三个**原** checker 的定义。日志门禁拒绝缺根、重复、公理超出 `propext/Classical.choice/Quot.sound`、失败退出码、Lean 错误与 sorryAx；门禁自检不代表 Lean 通过。

[SOURCE_MAP.json](SOURCE_MAP.json) 绑定 10 个实际来源/API/收据。现有 `i11-terminal-crt-row-cell.json` 的源 SHA 与当前 RowCell 源一致；新声明仍需本轮新证据。Lean pin 为 v4.33.1；前缀 API 与 take 恒等式来自该固定工具链源码。

[INTEGRATION_PLAN.json](INTEGRATION_PLAN.json) 映射 5 个源文件到建议的 `lean/I11TerminalMono/`。主任务串行验证 `ACover → ARowCell → Audit`，沿用原 verifier、已核对依赖和资源门禁。只读 `check_package.py` 核对来源、审计结构和完整 SHA 文件集。`PACKAGE_SHA256.json` 除自身外覆盖整个目录；自身 SHA 在交接消息给出。编译修复应留在接入副本并产生新哈希，不改此冻结包。

实际原题覆盖没有变化。此件提供正确的 proof-preserving 前缀缩减接口；最终效益取决于后续格试验和完整 i11 验收。没有新颖性、外部审查或发布主张。
