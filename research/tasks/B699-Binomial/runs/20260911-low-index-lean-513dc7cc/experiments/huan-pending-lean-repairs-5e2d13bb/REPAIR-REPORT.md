# Pending Lean repairs

状态：`PENDING_SERIAL_LEAN_ACCEPTANCE`

本目录只保存三份修复副本；原 `lean/` 源码、队列和生产模块未修改。本次没有调用 Lean 或 Git。

## 修复副本与 SHA-256

| 原文件（before） | 修复副本（after） | before SHA-256 | after SHA-256 |
|---|---|---|---|
| `lean/WinAssign/Remainders.lean` | `WinAssign/Remainders.lean` | `644cf1377cf3c52cb2e523a9bbd26cb0f926907ae1736dfefcb75443de76b353` | `87467e26a338fa82ceb98cf8488c585d0d61c2fe32c29aea0c8c7e5c17fdcc9b` |
| `lean/I13G75Tail/Bounds.lean` | `I13G75Tail/Bounds.lean` | `c2759b0097ad3777e5aab9371a4f93ad5557df9ee091503aa3ad9786e1a95496` | `d736b674ba1bc8bc15001bcb2bff692baa859dd7821f5d107c014b2e508d9aad` |
| `lean/I13Weight/Windows.lean` | `I13Weight/Windows.lean` | `0ad957fa4fe99222b20dfdb8cfd7c7a90b2ce11aa65ba6d1a50d8489281400ca` | `cafb5d6eb85359d8181ab28f1f5cf98d742901d378e312bbae81b94ef15dceae` |

## Concise diff and reasons

- `Remainders.lean`: parenthesize the two product bodies `(n - r)` so `r` remains inside the binder scope in `numerator_window_product` and `remainders_product`. Declaration statements and data are unchanged.
- `Bounds.lean`: replace the failing cast-sensitive `rw [hlin] at h` with `norm_num [tailBase] at h ⊢`, which normalizes `187 - 1` and `24 * (187 : ℚ) - 1` on both sides. No premise or constant changed.
- `Windows.lean`: import `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` for `Finset.dvd_prod_of_mem`; import `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` for `Finset.prod_pos`; parenthesize the two sum bodies `(s - r)` so `r` remains bound. No theorem declaration or numeric data changed.

Local mathlib evidence: `Mathlib/Algebra/BigOperators/Group/Finset/Piecewise.lean:230` defines `Finset.dvd_prod_of_mem`; `Mathlib/Algebra/Order/BigOperators/GroupWithZero/Finset.lean:135` defines `Finset.prod_pos`; `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean:648-650` gives `Finset.prod_pow_eq_pow_sum`.

The three supplied queue logs remain the failure evidence. These copies are awaiting the primary task's single serial Lean verification and must not be treated as accepted.

The queue logs' source_sha256_before values bind their audit roots, not the implementation files: Remainders root is `research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/WinAssign/RAudit.lean` with `cb0e1e62c7121d389da5c08becf19d6e77fad413bd9fbbb6478b5bc6bbf9d1bb`, Tail root is `research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I13G75Tail/Audit.lean` with `307e47e29e2ae0207dec5fe5379e346cd2c33bdb8d0b0a4292cf4dd50b55cd0b`, and Windows root is `research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I13Weight/WAudit.lean` with `923eee695e6d713bddb3548331b8f90b301c32613f5ccb42a973cf92216dd7a2`. The corresponding evidence `source_closure` entries independently bind the implementation files to the live before hashes in the table: Remainders `644cf1377cf3c52cb2e523a9bbd26cb0f926907ae1736dfefcb75443de76b353`, Bounds `c2759b0097ad3777e5aab9371a4f93ad5557df9ee091503aa3ad9786e1a95496`, and Windows `0ad957fa4fe99222b20dfdb8cfd7c7a90b2ce11aa65ba6d1a50d8489281400ca`. These are separate root and implementation hashes; no source drift is inferred. Status remains `PENDING_SERIAL_LEAN_ACCEPTANCE`.