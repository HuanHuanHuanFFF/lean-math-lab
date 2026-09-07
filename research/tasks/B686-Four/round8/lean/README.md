# B686 第八轮 Lean 验证记录

- 任务：形式化第七轮 `d > k^2 / 250000` 论证中可复用的 gcd 结构，并核对固定 mathlib 是否含 Rosser--Schoenfeld 显式素数计数界。
- 时间：2026-09-07 18:16:34 UTC 启动；原截止 18:46:34 UTC；计划在 18:40 UTC 前交付可验收快照。
- 文件归属：仅本目录。

## 当前结论

- mathlib 未检出 `pi(x) < 1.25506 x / log x`。`Mathlib.NumberTheory.Chebyshev` 提供常数较弱的显式 Chebyshev 界及无可直接读取阈值的渐近界，因此不能据此原样声称 `250000` 结论已 Lean 化。
- `BigPrimeSupport.lean` 形式化公共素因子必须整除某个正跨块差值，并证明 `p > k` 时素数在单个长度 `k` 的块内至多命中一个位置。进一步证明任意正幂 `p^a` 若整除块乘积，则完整的 `p^a` 集中到唯一命中因子；若它整除两块的 gcd，则完整 `p^a` 整除一个正跨块差。

## 下一证明义务

1. 把唯一命中提升为 gcd 的完整 `p`-primary 部分整除对应跨块差值。
2. 合并所有 `p > 2k-1` 的部分，证明其乘积整除 `Nat.choose (d+k-1) (2k-1)`。
3. 形式化小素数部分及足以保留常数 `250000` 的素数计数输入；缺少该输入时只保存条件化合并，不能冒充原题界。

实际编译命令、退出码、版本和哈希将在验收后补录。

## 验收快照

- 冻结时间：2026-09-07 18:37:55 UTC。
- 固定工具链：Lean 4.33.1，Lake 5.0.0-src+819816b。
- `BigPrimeSupport.lean` 四条定理重新编译退出码 0；四个 `#guard_msgs in #print axioms` 均只允许 `propext`、`Classical.choice`、`Quot.sound`。
- `verification.json` 保存精确命令、退出码和源码、olean、日志 SHA256；`compile.log` 与 `lean-version.log` 保存原始输出。
- 本快照没有证明 `d > k^2 / 250000`，也没有证明完整 gcd 二项式上界或原题无解。