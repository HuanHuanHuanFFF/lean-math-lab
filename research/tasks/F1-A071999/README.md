# F1 / A071999

- 类型：已知数学结果的 Lean 形式化。
- 研究阶段：已闭合；证明状态：完整通式已验证。
- 来源、精确题目与原验收：[结果记录](../../F1-A071999.md)。
- Lean 先例：[2026-09-06 查重报告](../../F1-A071999-查重报告.md)，全球首次未确认。
- 审阅：[Astra / xhigh 独立压力审查](../../F1-A071999-pressure-review.md)，属于 AI 审查。
- 公开版本：[v0.1.0](https://github.com/HuanHuanHuanFFF/lean-math-lab/tree/v0.1.0)，提交 `94f2562067222b6b19b10ad2132ea5ed8954cf20`。
- 后续 CI：[首次通过的运行](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/34022472000)，对应提交 `e502bad2405d9623b905d2bd2c9b730a1dae0d89`，不是对之后未提交修改的认证。

## 复用入口

- [主模块](../../../Math/A071999.lean)：`Math.A071999.matrix`、`det_matrix`、`det_matrix_range`。
- [调用示例](../../../Examples/ReusingA071999.lean)。
- [回归与公理断言](../../../Tests/A071999.lean)和[独立检查](../../../Tests/A071999Audit.lean)。

当前没有未闭合的主定理义务。后续如要研究更一般的配对分块定理，应另开任务，以第二个具体应用约束通用接口；不要把该计划记作 F1 已有成果。
