# 全偶中心化 Runge 界：本批实施义务

实施者：`b686_centered`；开始于 2026-09-08。基线为
`08a8ac6872e8abfd4a2c480496da350a97ecdc13`，工作分支
`GPT-work/formalization-20260908-closure`。无固定时长，不继承旧批截止。
仅拥有本批 `lean/centered/`、`notes/centered/`、`verification/centered/`。

## 锁定目标与来源

对所有 `k n m : ℕ`，在 `2 ≤ k`、`Even k`、`n+k ≤ m`、
`(∏ i ∈ Finset.Icc 1 k, (m+i)) = 4 * ∏ i ∈ Finset.Icc 1 k, (n+i)` 下证明

```
n < 16 * 2^(4*k) * k^(k/2+1)
n+k < 20 * 2^(4*k) * k^(k/2+1).
```

采用同题前批 `20260908-lcm-distance-7cab35e` 的
`next-route-a/centered-runge-bound.md`，并已完整读过其 `report.md`、
`frontier.md`、`paper-acceptance/centered-review.md`、
`paper-acceptance/acceptance-summary.md` 与 `formalization-feasibility/README.md`。
这是既有完整纸面证明的形式化，不主张新增排除范围或新颖性。

## 完整依赖链

1. 原题中心化：`k=2*r`、`X=2*n+k+1`、`Y=2*m+k+1`，
   `R(T)=∏ i∈range r, (T^2-(2*i+1)^2)`；证明配对恒等式与 `Y>X>0`。
2. 任意 `r≥1` 的整数有限平方根部分：令 `J=r/2`、`L=4^J`，
   构造 `A∈ℤ[T]`，领先系数 `L`，仅有与 `r` 同奇偶的幂。
   预选等价构造为整数 Catalan 级数
   `S_i(z)=1−2*a_i^2*z*C(a_i^2*z)`，其平方为 `1−4*a_i^2*z`；
   对 `∏S_i` 截断并反序缩放得到 `A`。此方案尚待 Lean 验证。
3. 定义 `E=A^2-L^2*R`，证明 `E≠0`、偶次性与 `natDegree E<r`。
   非零性使用 `R` 在 `1` 处简单根，不能增加目标点非零假设。
4. 任意次数加权系数界：`|A_h|≤2^(3*r)*k^(r-h)`，
   `|E_h|≤2^(8*r)*k^(2*r-h)`。
5. 在 `T≥32*2^(8*r)*k^(r+1)`，证明 `Arel`、`Erel` 与
   `3*|E(T)|<A(T)`；包含 `r=1,2` 与常数余项分支。
6. 使用历史 `B686Round3TwoScaleGap.not_four_of_two_scales` 关闭整数差及
   不同次数增长的矛盾；接回 `n` 和 `n+k` 的严格自然数阈值。

所有辅助构造假设必须由前项给出；带构造/误差假设的判据只能算独立已完成
环节，不能代替目标。若遇阻，记录最小缺口、失败诊断和下一项检查。

## 预期与实际状态

预期变化：上述全偶纸面界 → 同量词、同常数的 Lean 内核已检定理。
原题剩余 `k` 无界和阈值以下区域均不因本任务消失。

当前最后已核结果仍为前批纸面验收；本批尚无 Lean 编译结论。
首个检查点为恢复固定 Lean 4.33.1 与 manifest 后验证中心映射和整数判据消费者。
最终 focused 验证须包含源闭包重编和可失败传递公理审计，白名单仅
`propext`、`Classical.choice`、`Quot.sound`。禁止占位证明、新公理和
`native_decide` 带入未许可依赖。

## 完成检查点

2026-09-08：上述六项义务已全数闭合，最终同量词消费者与传递公理 guard
通过。见 `acceptance.md` 和
`verification/centered/20260908T095933132002Z/verification.json`。
实际变化等于预期：既有全偶纸面界升级为 Lean 内核已检完整链；原题其余
未知区域不变。没有遗留本目标的数学或形式化假设。
