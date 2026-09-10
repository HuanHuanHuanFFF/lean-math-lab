# 验收登记

初始源码准备：固定 main/PR 完整树相同；21 个 FiniteCover 源及两个严格 runner 与新 main 的 blob SHA 相符，并与旧源 SHA-256 记录相符。Python check-inputs 模式退出0，CI YAML静态解析通过。这不是 Lean 验收。

当前新 Lean 接受数0，已验新前置0，新增完整原题指标0。专项 CI 待实际执行。固定依赖：leanprover/lean4:v4.33.1，mathlib 0df444a360eaa60ab8c11dca51a86af692955474，全部9项见 verification/runner/finitecover-inputs.json。

接受要求：从固定源编译、独立原题陈述、实际传递公理仅 propext/Classical.choice/Quot.sound；无 sorry/admit/sorryAx、新公理、native_decide、Lean.ofReduceBool。每次记录源码、命令、退出码、实际公理、源/发布 SHA 和具体下游。旧验收、条件消费者、未编译候选、完整原题覆盖分别记录。
