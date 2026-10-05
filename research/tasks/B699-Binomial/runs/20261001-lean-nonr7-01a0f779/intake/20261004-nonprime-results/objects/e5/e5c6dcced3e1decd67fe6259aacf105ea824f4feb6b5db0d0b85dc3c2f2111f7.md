# B699 4884–4888 非素数证书批次 · 最终整理

## 最终结论

本批目标是替换 `¬ Nat.Prime 4884` 至 `¬ Nat.Prime 4888` 上导致递归深度错误的 `by decide`。

**推荐集成主版本：** `01-main/NonprimeCertificates.lean`

实现方式：

- `Nat.not_prime_mul`
- 两个显式 `Nat.succ_succ_ne_one`
- 不含 `by decide`
- 不含 `by`
- 不含 `rfl`
- 因子和目标之间只依赖闭合自然数乘法的定义归约

本批所有候选目前仍是 **候选源码／未在当前环境编译实测**。当前环境没有可启动的 `lean` / `lake`；没有取得真实编译通过、`#print axioms` 输出、项目 checker 结果、成功耗时或峰值内存。

## 最终主源码

```lean
import Mathlib.Data.Nat.Prime.Basic

namespace B699CompositeTransfer20261003

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  Nat.not_prime_mul (a := 2) (b := 2442)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2440)

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  Nat.not_prime_mul (a := 5) (b := 977)
    (Nat.succ_succ_ne_one 3) (Nat.succ_succ_ne_one 975)

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  Nat.not_prime_mul (a := 2) (b := 2443)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2441)

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  Nat.not_prime_mul (a := 3) (b := 1629)
    (Nat.succ_succ_ne_one 1) (Nat.succ_succ_ne_one 1627)

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  Nat.not_prime_mul (a := 2) (b := 2444)
    (Nat.succ_succ_ne_one 0) (Nat.succ_succ_ne_one 2442)

end B699CompositeTransfer20261003
```

## 五个因子证书

| n | 分解 | 非 1 证书参数 |
|---:|---|---|
| 4884 | `2 * 2442` | `0`, `2440` |
| 4885 | `5 * 977` | `3`, `975` |
| 4886 | `2 * 2443` | `0`, `2441` |
| 4887 | `3 * 1629` | `1`, `1627` |
| 4888 | `2 * 2444` | `0`, `2442` |

这里 `Nat.succ_succ_ne_one k` 的类型是 `Nat.succ (Nat.succ k) ≠ 1`，所以参数恰为对应因子减 2。

## 原四处消费者替换

在消费者新增：

```lean
import NonprimeCertificates
```

四处替换：

```lean
exact common_succ_of_nonprime (i := 4884) not_prime_4884 not_prime_4885
exact common_succ_of_nonprime (i := 4885) not_prime_4885 not_prime_4886
exact common_succ_of_nonprime (i := 4886) not_prime_4886 not_prime_4887
exact common_succ_of_nonprime (i := 4887) not_prime_4887 not_prime_4888
```

后续原有 witness 参数保持不变。精确 diff 在 `01-main/integration/CompositeTransferLegacy.patch`。

## 固定版本审查

目标版本：

- Lean `v4.33.1`
- 解析 commit：`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`
- mathlib commit：`0df444a360eaa60ab8c11dca51a86af692955474`

R3 已静态核对：

- `Nat.not_prime_mul` 的参数名和类型；
- `Nat.succ_succ_ne_one` 的真实签名；
- 五个乘积及十个实例参数；
- namespace / import 可见性；
- Lean elaborator 与 kernel 对闭合 `Nat.mul` / `Nat.succ` 的数值归约路径；
- 未发现重新触发完整 `Nat.Prime` 决策递归的源码路径。

注意：这仍不是运行时证明。

## Defs-only 备选

`02-alternative-defs-only/NonprimeDefsOnly.lean` 只直接 import `Mathlib.Data.Nat.Prime.Defs`，利用：

- `Nat.Prime := Irreducible`
- `Irreducible.isUnit_or_isUnit`
- `Nat.isUnit_iff.mp`
- `Nat.succ_succ_ne_one`

固定源码对抗核查未发现参数方向错误。但它：

- 不是 strict core-only；
- 更直接依赖 `Nat.Prime` 当前实现为 `Irreducible`；
- 显式证明项多出结构投影、`Or.elim`、`Iff.mp`、单位理论；
- 没有真实运行数据证明它优于 `Nat.not_prime_mul`。

因此只保留为备选，不替换推荐主版本。

## 历史演进

1. **R1**：`Nat.not_prime_of_mul_eq` + `rfl` + 小型 `by decide` 证明因子不等于 1。解决方向正确，但未完全移除 `by decide`。
2. **R2**：全部去掉 `by decide`，改为 `Nat.not_prime_mul` + `Nat.succ_succ_ne_one`；比较 `mul_eq` / `dvd_of_lt` 后选择前者。
3. **R3**：固定 Lean/mathlib 版本做对抗式源码审查，确认 R2 作为唯一推荐主版本；准备独立 compile/type/axiom 验收文件。
4. **R4**：独立审计 Defs-only 候选；源码合同静态成立，但不据此替换 R3 主版本。

## 当前证据等级

已实际完成：源码读取、固定签名核对、整数证书静态核对、补丁临时重放、历史包与最终包完整性检查。

尚未完成：

- 固定工具链真实编译；
- `#print axioms` 实际输出；
- 原项目正常 checker；
- 完整大型消费者回接；
- 成功耗时 / 峰值内存 / 递归深度测量。

这些边界必须保留，不能把静态审查或 ZIP 完整性写成 Lean 验收通过。
