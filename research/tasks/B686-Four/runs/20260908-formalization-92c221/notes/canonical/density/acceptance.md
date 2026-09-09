# 全偶数 canonical support 密度：已验收

入口：`lean/canonical/density/Consumer.lean`。

最终定理 `B686CanonicalDensity.all_even_canonical_support_density`：

```lean
∀ ε : ℝ, 0 < ε → ∃ K : ℕ, ∀ k n m : ℕ,
  K ≤ k → Even k → n + k ≤ m →
  (∏ i ∈ Finset.Icc 1 k, (m + i)) =
    4 * ∏ i ∈ Finset.Icc 1 k, (n + i) →
  ∃ S : SystemInput (∏ i ∈ Finset.Icc 1 k, (n + i)) k n (m - n),
    ((support S).card : ℝ) / (k : ℝ)^2 ≤ 1/4 + ε
```

`canonicalSystem` 实际调用已实现的 sliced canonical provider，完成原 `m`
与位移 `m-n` 的转换。不存在额外的系统存在性前提。更强的
`all_even_support_density` 对原假设下的每个有效 `SystemInput` 成立。
阈值统一于 `n,m`；保留所有偶数长度的渐近尾部，不声称有限长度的精确 `1/4`。

完整依赖如下：全矩阵非单位格的值两两不同且至少为 2，故
`(s+1)! ≤ P ≤ (n+k)^k`。`Growth.lean` 的统一桥利用 mathlib 已证明的
Stirling 下界和 `log x ≤ x-1`，推出
`2*s*log k ≤ log(s!) + k²`。若端点不超过
`C*B^k*k^(e+1)` 且 `e ≤ a*k`，显式误差为

```text
s/k² ≤ a/2 + (log C + log B + 1)/(2 log k) + 1/(2k).
```

误差趋于零。中心高度消费者提供 `C=20,B=16,e=k/2`，因此 `a=1/2`。
`eventual_density_of_power_growth` 可直接复用到 quarter 高度的 `a=1/4`；
本次验收没有预先声称该 quarter 高度已闭合。

独立 fresh 验收证据：
`verification/canonical/density/20260908T113015661794Z/evidence.json`。
18 个项目依赖模块全部从源码重编，唯一项目对象根为
`.lake/research-runs/b686-density-20260908T113015661794Z/olean`。
固定 Lean 4.33.1 与 mathlib 提交已核对；前后源码哈希相同；
18 文件源码策略检查无违规；5 个可执行传递公理守卫全部通过，
仅依赖 `propext`, `Classical.choice`, `Quot.sound`。

已冻结源码 SHA-256：

| 文件 | SHA-256 |
| --- | --- |
| `SystemBounds.lean` | `4e669fcbb8ff45a6709ea73d1ec8aa2d9f73da7c718e88ec8859082fbc2462c5` |
| `Growth.lean` | `5b2f4bceb33263bd2664b17c95169a3adb2ebe7d3f0223f2db559f483c240e3e` |
| `Consumer.lean` | `7bc2331a2be3dcc04e1e013dfb2e42b2b06ee10b87071d451c4c0ee12754cd50` |

本消费者无需 Dusart 或任何 B677 有限证书。并行运行的 B677 全有限
证书验收保持原有独立对象根与原始记录。
