# F686-06 完整 quarter Runge 消费者验收

2026-09-08，源码已冻结。原纸面全范围结论现由实际 Lean 定理关闭。

## 精确消费者

导入

```lean
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.Consumer
```

命名空间 `B686QuarterRunge`，核心接口如下：

```lean
original_product_consumers (s n m : ℕ) (hs : 1 ≤ s) (hnm : n < m)
  (heq : (∏ i ∈ Finset.Icc 1 (4*s), m+i) =
    4 * (∏ i ∈ Finset.Icc 1 (4*s), n+i)) :
  n < 2^s * (4*s)^(s+1) ∧
    n+4*s < 2^(s+1) * (4*s)^(s+1)

four_dvd_product_consumers (k n m : ℕ) (hk : 4 ≤ k) (hfour : 4 ∣ k)
  (hnm : n < m)
  (heq : (∏ i ∈ Finset.Icc 1 k, m+i) =
    4 * (∏ i ∈ Finset.Icc 1 k, n+i)) :
  n < 2^(k/4) * k^(k/4+1) ∧
    n+k < 2^(k/4+1) * k^(k/4+1)
```

`n_lt_explicit_bound` 和 `n_add_k_lt_explicit_bound` 单独给出两项。
所有构造、Cauchy 表示、误差符号和递减义务均已内部证明。没有附加
`n+k≤m`、误差控制、分支存在或外部表示假设。

## 最终验证

完整新项目输出：

`verification/quarter/20260908T114117928142Z/verification.json`

23 个项目源码均从源文件重编，包含18个 quarter 模块、4个只读 centered
依赖和历史 `Round3TwoScaleGap`。没有使用既有项目 olean 搜索路径。
固定 Lean 4.33.1，commit
`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；manifest SHA256
`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。

`AxiomAudit` 的18个关键声明全部报告且仅报告
`[propext, Classical.choice, Quot.sound]`。运行期传递公理 guard 会拒绝
额外公理；同一 fresh 输出中的空白名单反向检查实际以 exit 1 拒绝完整
消费者，错误为 `Unexpected transitive axioms`，runner 将该预期拒绝记为
通过。`acceptance-check.json` 已再次核对23个当前源码哈希全部匹配。

同目录 `direct-external-imports.json` 记录直接引用的固定包对象和 SHA256。
第三方完整传递包闭包没有在本次从源码全部重建；没有外部内核复核声明。
若干开发模块存在非阻断 linter 提示，不声称零警告。

## 来源与形式可靠性变化

完整账本与依赖链见 `obligations.md`、`implementation.md`。
来源哈希见最终输出内 `paper-source-manifest.json`。旧 freeze 中的 SHA256
与保留的 `migration/originals/next-route-a/quarter-runge-bound.md.txt` 完全
匹配；迁移后的当前 paper 仅改两个相对链接，逐行差分保存在
`source-diff.patch`。历史源均未修改。

本批把已纸面验收的 F686-06 从未完成分析接口提升到原式全范围 Lean
消费者。整数配对使 q 本身为整数多项式，因此采用 L=1 的简化整数矛盾；
最终常数保持请求值。辅助 Cauchy 接口使用 `z>(4s+1)²`，最终阈值在其内，
不会缩小消费者原量词范围。

## 可复现性与保留记录

重跑命令：

```sh
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/quarter/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/quarter/AxiomAudit.lean
```

共享盘写满时仅删除了本目录43个历史开发运行的可重建 build 输出，保留
所有诊断与 verification JSON。清单为 `development-build-cleanup.json`；
最终 fresh 输出、主线程 Cauchy/Jump 验证和 centered 已验目录未清理。
首次误投 centered 的 quarter 开发日志继续按主线程要求原位保存，不属于
centered 或本次 quarter 的最终验收证据。

主线程独占的 `RectangleCauchy`、`JumpIntegral` 已作为实际消费者依赖
完整纳入以上 fresh 验证。所有共享 ledger/frontier 更新由主线程负责。
