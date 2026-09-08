# 完整 Sylvester–Schur 连续乘积定理验收

2026-09-08，三个 Lean 模块已冻结。完整目标已在当前固定环境中关闭。

## 实际接口

```lean
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.shortgap.sylvester.Consumer

B686SylvesterSchur.sylvester_schur_product
  (N K : ℕ) (hK : 0 < K) (hKN : K < N) :
  ∃ p : ℕ, p.Prime ∧ K < p ∧
    p ∣ (∏ i ∈ Finset.range K, (N+i))
```

K=1 包含在内，区间严格为 `[N,N+K−1]`。没有起点上界、有限 K 范围、
外部定理或素因子存在前提。消费者关闭 `autoImplicit`，未产生额外自由
参数。此值可直接满足主线程定义的 `B686ShortGap.SylvesterSchur`。

## 证明与来源

本模块适配已公开的完整 Lean 证明，不作新颖性声明。公开入口是
williamjblair/lean-proofs 固定提交
`aff1d30b3b1c6bd705810fa4d588b03940fb31df` 的
`ErdosProblems/Erdos686SylvesterSchur.lean`，它保留了 AllenGrahamHart
固定原始证明的明确来源和 SHA256。原始下载、版本、MIT分发许可及其
上游许可检索的具体边界见 `upstream-adoption.md`。

最终原定理先证明任意 `1≤i≤n/2` 时 `choose(n,i)` 有素因子大于 i。
取 `n=N+K−1,i=K`，用固定 mathlib 的 ascending factorial 恒等式得到
要求的连续乘积。公开证明的全部大参数与有限证书分段都保留并实际编译。

相对于上游，只增加完整许可/来源头部，并对一个导数引理与四个相同
自然数恒等式作当前 elaborator/API 兼容修正。数学声明和参数覆盖未改。
完整差分为最终验证目录中的 `upstream-to-local.patch`。

## 验证证据

最终新输出目录：

`verification/shortgap/sylvester/20260908T120920262026Z/`

`verification.json` 记录3个项目源码从源文件重编全部通过，搜索路径仅
含本次新项目输出及固定包缓存。Lean 4.33.1，commit
`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；当前 mathlib
`0df444a360eaa60ab8c11dca51a86af692955474`；manifest SHA256
`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。

`AxiomAudit` 的三个范围分段、完整二项式定理和本地连续乘积消费者共
5个声明，传递公理均且仅为 `[propext, Classical.choice, Quot.sound]`。
同一新输出中的空白名单负向审计实际以 exit 1 抛出
`Unexpected transitive axioms`，预期拒绝已被 runner 验证。
`acceptance-check.json` 确认3个当前源码 SHA256 全部匹配。

`direct-external-imports.json` 记录4个直接 mathlib 对象和 Lean 的公理
收集器对象。依赖来自固定缓存，没有声称重编全部第三方传递闭包，也
没有外部独立内核检查声明。保留的3个旧 primorial 名称有弃用提示，
不影响编译或公理验收。

可复现命令：

```sh
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/shortgap/sylvester/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/AxiomAudit.lean
```

## 失败记录与主线边界

首轮版本兼容失败保存在 `20260908T115813448516Z`；导数隔离 probe
成功保存在 `20260908T120335266496Z`。第二轮公开证明本体通过，但本地
消费者的大运算符未括号体导致解析失败，保存在 `20260908T120408850736Z`。
这些均不冒充最终消费者成功。最终轮已修复并完成全部检查。

主线程已另以 `k²<64d` 将 `h≤7` 归约为 `k≤70`，因此当前 F686-09
主路线可独立于本定理闭合。本成果是已完成的可复用经典定理，以及
h=0,1 的另一条完整外部输入；它不处理 Mukhopadhyay–Shorey 删项定理。
本子任务没有修改主线程的短间隔消费者、证书或共享 ledger/frontier。
