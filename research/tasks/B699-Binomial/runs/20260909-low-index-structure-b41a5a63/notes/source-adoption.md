# 来源采用与证据边界

固定当前 main：7fd3928656489afe2c80698f0a09d1d933444186；已确认用户基线为其自身。旧云端交付合入提交 7fd3928656489afe2c80698f0a09d1d933444186；旧电脑交付合入提交 25814c60e59dbbffa0611dbf868db6bdf072c81e。

## 已完整读取

- ../../20260909-eees-chain-5a2e10/{report.md,frontier.md,HANDOFF.md,verification/ACCEPTANCE.md,notes/eees-source-review.md,lean/ScaledTransfer.lean}。
- ../../20260909-large-prime-structure-cb4764f0/{report.md,frontier.md,handoff.md,acceptance.md,notes/discriminant/source-and-identity.md,notes/discriminant/arithmetic-bound.md,notes/valuation/polynomial-degree-obstruction.md,notes/route-comparison.md}。
- 最新 AGENTS.md、docs/STRUCTURE.md、lean-research 技能及 open-problem-workflow、B699 题目入口。

旧云端已验：9 项目模块，新输出 verification/20260908T180159Z/evidence.json；旧电脑已验：11 项目模块，新输出 verification/20260908T200259Z/evidence.json。这里记录来源验收，未在本輪重跑。不把不同历史验收源 SHA 混为本轮编译。

固定 pins：Lean v4.33.1；mathlib 0df444a360eaa60ab8c11dca51a86af692955474；其余 8 个依赖以当前 manifest 为准。已实时核对可用 mathlib 缓存 HEAD；全部包的清洁状态和 pin 在本轮新消费者验收时再核对。

## 采用的数学强度

1. 真实完整大素数幂转移与 U≤n^t、scaled power、差值乘积条件：既有无条件 Lean。
2. Jacobi 判别式具体乘积、非零性、content 缩放、i≥10^6 与固定 i 高度：旧批已来源核对的纸面结论；本批可用于数学研究，不当作已 Lean 化输入。
3. EEES 全定理、Laishram–Shorey、Nair–Shorey、Dusart 依赖的原精确缺口继续保留；近中心条件消费者不是无条件 Lean 消费者。
4. n=3j 全族为旧纸面加精确计算链，不重复旧全局扫描或素数覆盖。
5. 次数障碍只针对任意实际 avoidingPart D 的、只依赖 d 的通用非零整除多项式；不限制完整 noCommon 条件或 n 相关对象。本批若改变对象必须写明。

## 与独立云端的边界

云端新批不在本任务树，不假定能联系、控制或读取。用户转达固定提交与接口后才核对接入。本轮不重复其判别式与有效高度界核心形式化。
