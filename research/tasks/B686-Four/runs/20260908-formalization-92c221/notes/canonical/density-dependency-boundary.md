# B686 canonical 密度读法：Runge/Stirling 与 proper-support 的边界

本记录只核对依赖边界，不把纸面推导升级成已编译定理。日期为 2026-09-08 UTC；
固定 pin 是 Lean 4.33.1、mathlib
`0df444a360eaa60ab8c11dca51a86af692955474`。

## 由矩阵到 `limsup` 密度所需的前提

对一次满足 `P_k(n+d)=4P_k(n)` 的 canonical matrix 输出，设 `s` 为非单位
cell 数。密度估计使用的条件链是：

1. canonical matrix 给出 residual、cell 的两两互素、`residual ∣ (k-1)!`、
   `residual * ∏ cell = P_k(n)`，并给出上下行/列因式分解及
   `cell(j,i) ∣ d+i-j`；
2. 由这些整数分解和非单位 cell 的互素性得到
   `(s+1)! ≤ P_k(n)`；
3. 初等上界给出 `P_k(n) ≤ (n+k)^k`；
4. 已验收的纸面 Runge 高度界控制 `n+k`，再用 Stirling 或等价的
   `log((s+1)!)` 下界比较增长率。

在上述条件下，当前纸面高度界的渐近读法是：中心化全偶路线给沿偶数 `k` 的
`limsup s/k² ≤ 1/4`；四整除割线路线给沿 `k ≡ 0 (mod 4)` 的
`limsup s/k² ≤ 1/8`。对 `k ≡ 2 (mod 4)`，仍只能使用中心化路线的 `1/4`。
这两个数是带条件的 `limsup` 结论，不能改写成每个有限 `k` 的精确整数界。

这个 `limsup` 比较不需要 proper-support jet、非公共零点、或“在原题正整数解点
不全为零”的假设。那些对象用于更下游的原题消费者：先把低密度/低高度的
支持配置转成一组多项式，再证明该组在解点不能全部消失，才能推出无解或有限性。
把 jet 条件提前塞进密度推导会扩大前提，也会混淆当前实际阻塞位置。

## 验收状态与接口来源

`paper-acceptance/quarter-review.md` 接受的是四整除长度的完整纸面高度命题：
对 `k=4s`、`m>n`、`P_k(m)=4P_k(n)`，有
`n < 2^s k^(s+1)` 与 `n+k < 2^(s+1) k^(s+1)`。它明确把 canonical 配置密度
和 jet 讨论列为其他接口，未把 matrix 或 proper-support 当作该高度证明的输入。

本批保存的外部 provider 为
`lean/canonical/vendor/upstream/ErdosProblems/Erdos686CanonicalOwnerMatrix.lean`，
来源为 `williamjblair/lean-proofs` commit
`aff1d30b3b1c6bd705810fa4d588b03940fb31df`，完整递归闭包、SHA、MIT 许可和固定
环境诊断见 `lean/canonical/vendor/source-manifest.json` 与
`notes/canonical/matrix-declaration-closure.md`。当前仅小的
`CanonicalOwnerDensity.SystemInput` 接口和新 `vendor/sliced/` provider/adapter
均已在固定 pin 下机械编译；原始未切片六文件仍受其 18k 顶层历史导入阻塞。这个
兼容性结果不把外部 theorem 的数学内容改成无条件本地结论，provider 仍应作为
密度消费者的显式条件输入。

因此下游可以采用如下明确的条件接口：

```text
canonicalOwnerSystem
  + (s+1)! ≤ P_k(n)
  + P_k(n) ≤ (n+k)^k
  + accepted Runge height bound
  + Stirling/log-factorial estimate
  ⇒ stated limsup density bound.
```

该箭头不会自动提供 proper-support jet，也不会自动完成原题的无解结论。matrix
provider 的固定 pin 迁移、全局内核审计，以及 proper-support 的存在性和非公共零点
证明，仍应作为分别可追踪的义务保留。
