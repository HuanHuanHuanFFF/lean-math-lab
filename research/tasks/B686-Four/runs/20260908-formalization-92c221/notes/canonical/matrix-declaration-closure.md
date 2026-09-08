# B686 canonical owner matrix：声明切片与固定环境闭包

核验日期：2026-09-08 UTC。固定仓库基线为
`08a8ac6872e8abfd4a2c480496da350a97ecdc13`；固定 Lean 为
`leanprover/lean4:v4.33.1`，mathlib 源码 SHA 为
`0df444a360eaa60ab8c11dca51a86af692955474`。

## 一手来源与递归导入

实际检索词为：

* `github williamjblair lean-proofs Erdos686CanonicalOwnerMatrix.lean`
* `git show aff1d30b3b1c6bd705810fa4d588b03940fb31df -- ErdosProblems/Erdos686CanonicalOwnerMatrix.lean`
* `recursive ErdosProblems imports from Erdos686CanonicalOwnerMatrix.lean`

来源是公开仓库
`https://github.com/williamjblair/lean-proofs.git` 的固定 commit
`aff1d30b3b1c6bd705810fa4d588b03940fb31df`（2026-07-16，subject：`Bank Erdos
686 fixed divisors, moment degrees, and k5 crossings`）。目标文件的原始 SHA-256
为 `e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e`。

从目标文件递归得到的六文件闭包及导入链如下；上游逐字快照在
`lean/canonical/vendor/upstream/ErdosProblems/`，仅作模块路径适配的副本在
`lean/canonical/vendor/remapped/B686CanonicalVendor/ErdosProblems/`。

```text
Erdos686CanonicalOwnerMatrix
  -> Erdos686CanonicalOwnerCleaning
    -> Erdos686PadicLift
      -> Erdos686QuotientConfinement
        -> Erdos686ConstantQuotient
          -> Erdos686
            -> Mathlib
```

| 文件 | 原始行数 | 原始 SHA-256 |
|---|---:|---|
| `Erdos686CanonicalOwnerMatrix.lean` | 717 | `e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e` |
| `Erdos686CanonicalOwnerCleaning.lean` | 516 | `7a1f6a276d0d45c747689f810c30e74a65d117f9a870121ccf03f2d39f8379da` |
| `Erdos686PadicLift.lean` | 1424 | `c79fc63ec49355d6d59f54577becb6dbf5b6650e3be60e11ddb4cf247515ffb8` |
| `Erdos686QuotientConfinement.lean` | 357 | `0234820088e1b528aee2a377e399ac09b785172c1a61bc9f1085669a7f029e1a` |
| `Erdos686ConstantQuotient.lean` | 347 | `b4b93732198912f25ff0d6d883e27d807988e0d4c1341e0c8b73ce35ed7a026f` |
| `Erdos686.lean` | 18199 | `7c20c04d77d6e2f93b840382e15c676e312fe0f84b6ed23dd670ed8d50c2cabf` |

上游 `LICENSE` 的 SHA-256 为
`0665bb5f63d444ca4dcc9ad89e274cf1d657928789bd1cae6ce2524423fe5902`。
本批保留完整 `LICENSE-MIT.txt` 与 `NOTICE-upstream.txt`；Will Blair 文件对应的
MIT 正文精确前 21 行另存为 `LICENSE-Will-Blair-MIT.txt`，SHA-256 为
`f23dc7d0e5caa81c07ecea470298c36cbfbb23699e87fbd5c17beeca3342e674`。

六个文件均作了 `sorry`、`admit`、`native_decide`、顶层 `axiom`、`opaque`、
`unsafe` 代码 token 扫描，命中数为 0。源文件中的 `#print axioms` 只是诊断命令，
不是公理声明。完整机器可读记录在
`lean/canonical/vendor/source-manifest.json`。

## 目标定理与真实声明切片

目标导出的是 `Erdos686.Erdos686Variant.exists_canonicalOwnerSystem`。其精确前提为
`4 ≤ k`、`k ≤ d`、`blockProduct k (n+d) = 4 * blockProduct k n`；其结论起于
目标文件第 630 行，返回 distinguished column `t`、`CanonicalOwnerData`，以及
第 635--662 行的全部矩阵数据。可供下游消费者使用的声明位置如下：

| 声明 | 上游文件行 | 作用 |
|---|---:|---|
| `CanonicalOwnerData` | Matrix 17--35 | 每个素数的 row/column/exponent 及余项赋值界 |
| `exists_canonicalOwnerData_of_matches` | Matrix 37--76 | 从逐素数 match 组装总 owner data |
| `exists_distinguished_canonicalOwnerData` | Matrix 78--91 | 产生 `t`、`4 ∣ n+d+t`、上块等式和 data |
| `canonicalOwnerPrimePower` / `canonicalOwnerCell` | Matrix 93--105 | 保留素数幂与二维 cell |
| `canonicalOwnerRow` / `canonicalOwnerColumn` / `canonicalOwnerResidual` | Matrix 107--126 | 行、列和未保留 residual |
| `canonicalOwnerCell_dvd_lower` | Matrix 209--226 | cell 整除 `n+j` |
| `canonicalOwnerCell_dvd_upper` | Matrix 228--245 | cell 整除删去 4 后的上项 |
| `canonicalOwner_row_cell_product` | Matrix 247 起 | 行 cell 乘积等于 owner row |
| `canonicalOwnerResidual_dvd_factorial` | Matrix 337--354 | residual 整除 `(k-1)!` |
| `canonicalOwnerResidual_mul_allPrimePowers` | Matrix 356--389 | residual 与保留素数幂的全局乘积 |
| `canonicalOwnerResidual_mul_allCells` | Matrix 391--399 | `residual * ∏ cells = blockProduct k n` |
| `canonicalOwnerCells_pairwise_coprime` | Matrix 401--432 | 不同格的两两互素 |
| `canonicalOwnerCell_dvd_shiftedDifference` | Matrix 447--468 | cell 整除 `d+i-j` |
| `canonicalLowerResidual` / `canonicalUpperResidual` | Matrix 470--479 | 上下 residual 定义 |
| `canonical_lower_term_factorization` / `canonical_modified_upper_term_factorization` | Matrix 481--491 | 上下项分解 |
| `canonical_upper_term_factorization` | Matrix 493--516 | 恢复 distinguished 列的系数 4 |
| `canonicalLowerResidual_product_eq_global` | Matrix 581--601 | 下 residual 乘积等于全局 residual |
| `canonicalUpperResidual_product_eq_global` | Matrix 603--625 | 上 residual 乘积等于全局 residual |
| `exists_canonicalOwnerSystem` | Matrix 627--662 | 完整条件矩阵交接接口 |

目标定理的直接外部前提不是一个小独立文件：

* `blockProduct` 与 `blockProduct_pos` 在 `Erdos686.lean` 第 4716、5060 行；
* `localBlockCofactorNat` 与
  `blockProduct_eq_factor_mul_localBlockCofactorNat` 在 `Erdos686PadicLift.lean`
  第 580、583 行附近；
* `upperTermAfterFour`、`upperBlockAfterFour`、
  `CanonicalPrimeOwnerMatch` 和
  `exists_distinguished_canonicalPrimeOwnerMatches` 在
  `Erdos686CanonicalOwnerCleaning.lean` 第 122、185、206、480--500 行附近；
* 清理过程还调用 `exists_blockProduct_factorization_concentration`
  （`Erdos686PadicLift.lean` 第 265 行）。

因此可以静态确认矩阵结论的精确依赖，但不能把其余顶层证明删去后假称闭包已经
编译。`Erdos686.lean` 是 18,199 行的历史总文件；其顶层导入会把与该矩阵结论
无关的 Pell/Chebyshev 段（例如第 3389--4480 行，使用
`Mathlib.NumberTheory.Pell`）和有限差分/多项式段一并拖入。固定 mathlib 缓存缺少
`Mathlib.olean`、若干 Batteries 聚合产物以及这些模块的 `.olean`，所以完整闭包的
固定 pin 编译在本 run 只得到受记录的缺失模块/API 诊断，未得到成功证明状态。诊断
保存在 `verification/canonical/compile-*.log`；不应把被杀掉的重复 no-Pell 探针
当作最终 API 结论。

## 可移植消费者接口与当前状态

为避免下游密度消费者直接导入 18,199 行历史模块，本批新增：

* `lean/canonical/vendor/remapped/B686CanonicalVendor/CanonicalOwnerDensityInterface.lean`
  定义 `B686CanonicalVendor.CanonicalOwnerDensity.SystemInput`。它只描述
  `P,k,n,d`、distinguished、cell、上下 residual、阶乘整除、上下分解、移位整除、
  两两互素和全局乘积；没有存在性命题、`axiom` 或占位证明。
* `lean/canonical/vendor/remapped/B686CanonicalVendor/CanonicalOwnerMatrixAdapter.lean`
  定义 `systemInput_of_external`，把精确
  `exists_canonicalOwnerSystem` 的结论作字段投影/重包装。它没有新的数学断言；在
  provider 闭包无法编译时必须保持阻塞，不能改写成 axiom 或空实现。

`CanonicalOwnerDensityInterface.lean` 已在固定 Lean 4.33.1 下以小依赖单独编译
成功，证据为 `verification/canonical/compile-density-interface.log`，退出码 0。
原 `remapped/CanonicalOwnerMatrixAdapter.lean` 仍依赖未切片 provider，故不把该旧路径
宣称为已编译；此拆分保留了完整 matrix 义务，同时让条件消费者可以先对小接口编程。

### 2026-09-08 sliced provider follow-up

本批随后在 `lean/canonical/vendor/sliced/` 建立了可复现的声明切片。提取脚本和
精确行段见 `extract_canonical_slice.py` 与 `slice-manifest.json`：Matrix/Cleaning
主体逐字保留；只从 `Erdos686.lean` 摘取 `blockProduct`、`blockProduct_pos`，从
PadicLift 摘取 concentration、factorial/dist-product 和 local cofactor 的实际
递归依赖。没有导入 QuotientConfinement、ConstantQuotient、Pell 或有限差分段。

在固定 v4.33.1 环境中，`Erdos686CanonicalPadicSlice`、完整
`Erdos686CanonicalOwnerCleaning`、完整 `Erdos686CanonicalOwnerMatrix` 以及
`CanonicalOwnerMatrixAdapter` 均已单线程、有限内存编译成功；最终 Matrix 日志确认
`exists_canonicalOwnerSystem` 的公理集合为
`propext, Classical.choice, Quot.sound`，无 `sorryAx`。详细命令、失败修正和日志见
`verification/canonical/sliced-build-manifest.json` 与
`verification/canonical/sliced-compatibility-history.md`。

这关闭的是固定 pin 下的机械路径/API 兼容阻塞，不改变“该 MIT 外部 theorem 的
数学内容仍是条件 provider”的研究边界；下游仍须按密度 note 显式承接其前提。

## 未关闭义务

1. 原始六文件全导入路径仍被 18,199 行历史总文件及固定缓存缺口拖住；后续若需
   该未切片模块，仍要单独处理其顶层无关 Pell/有限段，不能把 sliced 成功误报为
   原始全导入成功。
2. 下游密度消费者仍需显式承接 `4≤k`、`k≤d` 和精确矩阵字段；不能因 paper 验收
   未覆盖 matrix 而静默删除该义务。
