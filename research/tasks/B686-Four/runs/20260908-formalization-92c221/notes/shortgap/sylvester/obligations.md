# Sylvester–Schur：短间隔闭合的独立义务

2026-09-08，quarter 全消费者冻结验收后由主线程分配。负责人
`b686_centered`，写入仅本批 `lean/shortgap/sylvester/`、
`notes/shortgap/sylvester/` 和 `verification/shortgap/sylvester/`。
基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`，保持固定 Lean 4.33.1
和现有 manifest；没有用户截止，不沿用历史预算，不建立子代理。

## 锁定的完整声明

```lean
∀ N K : ℕ, 0 < K → K < N →
  ∃ p : ℕ, p.Prime ∧ K < p ∧ p ∣ (∏ i ∈ Finset.range K, (N+i))
```

连续区间为 `[N,N+K−1]`，K=1 包含在目标内。不得添加起点上界、K 的
有限范围、素数存在假设或外部定理公理。若闭合，主线程将其与已证外块
素因子上界、中心删项整除和小参数证书合并，关闭 F686-09 的 h=0,1；
本文件不负责 h=2,…,7 的 Mukhopadhyay–Shorey 输入。

## 首次可证伪检查点

固定 mathlib 源码以 `Sylvester|Schur|consecutive.*prime` 检索，没有找到
数论目标定理；同名群论、矩阵和几何结果无关。历史平台
`699-base.lean` 有同名二项式声明，必须检查证明，不能视作已证明。

现有外部记录指出 `williamjblair/lean-proofs` 固定提交
`aff1d30b3b1c6bd705810fa4d588b03940fb31df` 已 vendored Sylvester–Schur，
该记录尚不是本地形式证明。首先定位实际源码及完整引用、许可和 pins，
尝试适配最小依赖闭包；若其范围或传递公理不满足目标，就明确诊断并转到
一手纸面证明。2026-09-08 的 GitHub 主源查询已确认该提交可访问。

最终要求保持新项目输出闭包重编、源码/来源哈希、可失败传递公理 guard；
只许可 `propext`、`Classical.choice`、`Quot.sound`。公开项目状态或
论文引用都不能替代这套实际验收。

## 主线程路线更新

在首次完整 Sylvester fresh 编译进行期间，主线程采用已证统一距离界
`k²<64d`，对 `d=k+h,h≤7` 直接得到 `k≤70`，再补符号证书即可处理
全部目标短间隔。因此 Sylvester 不再是 F686-09 的必要依赖。本项继续
当前完整编译，成功则保留独立经典定理复用成果；若发现大量版本兼容
问题，按主线程指示保存实际诊断而不再为 F686-09 扩大适配。
这项改变来自更短的原题证明链，不来自历史时间预算。
