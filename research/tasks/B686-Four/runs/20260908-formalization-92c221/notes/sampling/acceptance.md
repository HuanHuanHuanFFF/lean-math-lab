# Sampling height interface acceptance

日期：2026-09-08。本文只记录已冻结 sampling 根的接口和一次 fresh 编译验收，不做 MRSTT 或采样估计的独立数学复核。

## Fresh 验证

使用固定 `leanprover/lean4:v4.33.1`、manifest SHA256 `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0` 和 clean mathlib HEAD `0df444a360eaa60ab8c11dca51a86af692955474`，命令为：

```bash
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/sampling/HeightAssembly.lean \
  --root research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/sampling/HeightCorollaries.lean \
  --guards 1 --guards 2 \
  --output research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/sampling/20260908T105855Z
```

证据是 `verification/sampling/20260908T105855Z/evidence.json`，SHA256 `12b00786c7ca1e88be224e2a1382e222546f10fd1c4ec276da8071c463c8bc9d`。`success=true`、`build.fresh=true`，新对象根为 `.lake/formalization-environment/20260908T105855Z/olean/`，编译闭包 17 个源文件，linked package objects 37308。没有使用旧项目 `.lake/build` 对象。

* `HeightAssembly.lean` 根源 SHA256：`5fb3640ad603fff09741c840f8d460b7bfe3ce385e85ea9d3fd951b38df4ea48`；1 个 guard 通过。
* `HeightCorollaries.lean` 根源 SHA256：`56a06f0ae6e797efa473bf0c5329298aea236dba3e3985a2f56dc5c95d8afd47`；2 个 guard 通过。
* 三个根 theorem 的 `#print axioms` 输出都精确为 `[propext, Classical.choice, Quot.sound]`；没有新增未声明公理。

## 条件接口

`HeightAssembly.lean` 定义了外部命题

```lean
def FixedTestSamplingEstimate (δ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ K₀ : ℕ, ∀ k n m : ℕ, K₀ ≤ k → 2 ≤ k →
    (n : ℝ) ≤ heightCutoff δ k → (m : ℝ) ≤ heightCutoff δ k →
    samplingDiscrepancy k n m ≤ C * (2*k) / (Real.log (2*k))^2
```

该命题的 comment 明确说明它是尚未证明的 MRSTT 固定测试函数特化；generic real phases、`C³` 范数和 published theorem 到该特化的桥仍是外部义务。文件没有把它声明为 axiom。

`height_bound_of_fixed_test_estimate` 的精确输入为 `δ : ℝ`、`0 < δ`、`δ < 1/2` 和 `hE : FixedTestSamplingEstimate δ`，结论为存在统一 `K`，使所有 `k,n,m : ℕ` 在 `2 ≤ k`、`K ≤ k`、`n+k ≤ m`、`blockProduct k m = 4*blockProduct k n` 下满足

```lean
(Real.log (2*(k : ℝ)))^((3 : ℝ)/2-δ) < Real.log m
```

因此 HeightAssembly 根的 1 guard 对应的是这个带 `hE` 的条件桥。

`HeightCorollaries.lean` 的两个 guarded theorem 为：

1. `polynomial_height_solutions_finite (C : ℝ) (hC : 0<C) (hE : FixedTestSamplingEstimate (1/4))`。结论是满足 `2≤k`、`n+k≤m`、原始 `blockProduct` 倍率 4 和 `(m : ℝ)≤(k : ℝ)^C` 的三元组集合有限。
2. `inverse_height_of_fixed_test_estimates (hE : ∀δ : ℝ, 0<δ → δ<1/2 → FixedTestSamplingEstimate δ) (η : ℝ) (hη : 0<η)`。结论是存在 `K`，使相同原始方程域在 `K≤k` 时满足
   `k < Real.exp ((Real.log m)^((2 : ℝ)/3+η))`。

这两项均直接携带 `hE`，并分别构成 HeightCorollaries 根的 2 个 guard。故本次验收只关闭了“给定固定测试采样估计后的下游高度推论”接口；它没有证明 `FixedTestSamplingEstimate`，不能写成无条件的完整 MRSTT、完整采样定理或完整 B686 结论。

本次只写入该 sampling acceptance note 与新 verification 输出；没有修改 sampling 数学源码、ledger、manifest pins 或历史 run。
