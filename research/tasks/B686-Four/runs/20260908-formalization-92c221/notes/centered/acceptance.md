# 全偶中心化 Runge 界：本批完成记录

2026-09-08 UTC。已完成既有纸面全偶界的 Lean 形式化；没有新增数学排除
区域，不声称原题无解，也不作新颖性声明。

## 精确交付

导入：

```lean
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.Consumer
```

`B686CenteredRunge.original_product_consumers` 对任意 `k n m : ℕ`，仅由
`2≤k`、`Even k`、`n+k≤m` 及原式
`(∏ i ∈ Finset.Icc 1 k, m+i)=4*∏ i ∈ Finset.Icc 1 k, n+i`，同时推出

```
n < 16 * 2^(4*k) * k^(k/2+1)
n+k < 20 * 2^(4*k) * k^(k/2+1).
```

单项消费者为 `n_lt_explicit_bound`、`n_add_k_lt_explicit_bound`。
全部偶数长度均在量词内，包括 `k=2,4` 与常数余项情况。最终声明没有
额外的截断存在性、系数界、误差界、非零性或 canonical 所有权假设。

## 证据

最终验证目录：
`verification/centered/20260908T095933132002Z/`。

- `verification.json`：固定 Lean 4.33.1，10 个项目源码的精确导入闭包
  在新的输出目录重编全部成功；9 个本批模块及历史 TwoScaleGap。
- `research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/centered/AxiomAudit.log`：
  10 个核心声明及其传递依赖均仅含 `propext`、`Classical.choice`、`Quot.sound`。
- `negative-audit.log`：同一个最终消费者在空白公理白名单下按预期拒绝，
  退出码 1；证明 guard 可失败。此负测试没有新增公理，其 Lean 文件只属于
  预期失败的验证输入，不属于接受模块。
- `paper-source-manifest.json`：本批采用的原报告、frontier、纸面证明与
  独立验收原字节 SHA-256。项目源码 SHA-256 在 `verification.json`；
  验证后重新计算已全部一致。

复现命令（在仓库根目录，固定环境已恢复后）：

```sh
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/centered/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/centered/AxiomAudit.lean
```

每次运行使用新时间戳目录，不覆盖本次证据；项目导入仅从该次全新输出
目录读取，依赖包来自固定 manifest 的缓存。源码 policy 同时拒绝占位证明、
`native_decide` 和新公理声明。尚有少量不影响接受的未用变量/simp 参数
linter 提示；未声称零 warning。未运行外部独立内核检查器。

## 交接范围

本批中心化目标的数学及 Lean 缺口已闭合，下一步为主线程的统一闭包重编、
题面对照与整合。所有改动局限于获配的 `lean/centered/`、`notes/centered/`、
`verification/centered/`；未改历史源、共享账本、公共 Math、pins 或环境脚本。
实现等价调整详见 `implementation.md`。没有提交或推送。
