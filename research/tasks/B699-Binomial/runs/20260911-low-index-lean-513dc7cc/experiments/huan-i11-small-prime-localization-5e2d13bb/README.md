# i11 实际小素数幂与正窗口实例

owner：`/root/i18_downstream_review`；唯一写入本目录。首个工具检查 2026-09-11 12:28:49 UTC；每 20 分钟或重要障碍记录 checkpoint。主线程负责真实 Lean 验收；本 worker 不运行 Lean/Git、不改共享模块或已冻结 Product。

来源审查已反馈主线程。优先采用本机 Windows 成功闭包 `verification/20260911T004440769454Z/evidence.json`（shared26）；当前源 SHA 与其中 before/after 一致，相关公开声明标准三公理。旧 CI 仅为历史来源。

直接复用 `small_prime_part_eq_prod_small_primes`、`Nat.pow_factorization_choose_le`、`binomial_prime_power_localization`。不重做小素数部定义、最大赋值删除论证或 Kummer 大小界。

三层候选拟由主线程复制到本 run `lean/I11SmallPrimes/`：

1. `Components.lean`：实际 `primeComponent n p=p^((choose n 11).factorization p)`；核对小素数集合为 {2,3,5,7}，并把现有 U=smallPrimePart n11 精确展开为四个组件，给 1≤Ap≤n。
2. `Window.lean`：正窗口 record，包含 offset<11、1≤cofactor、`cofactor*primeComponent=n−offset`；从已验完整指数定位弱化到实际 binomial 指数，再取正商。另有通用 Nat 乘幂桥与实际窗口到 1000 次幂容量。
3. `FourWindows.lean`：四个素数的窗口打包，实际 `U*prod(Cp)=prod(n−offsetp)≤n^4`。没有任何 offset 互异条件。

primeComponent 只是实际幂的定义别名，不是假定的任意因子；最终等式左边始终是既有 smallPrimePart。p≥11（含11）不进入四因子 U。单素数定位推论仍允许任意素数，但不改变 U 的严格小素数集合。

所有新增 Lean 为未编译候选。若成功，将把后续 cofactor 的五个析取接到实际 Ap 方向的 32 分支乘积；五个析取及原题尾部和最终有限覆盖仍未由本实验提供，B 指标不增加。

接续中断后冻结时间 2026-09-11T14:19:23.821800+00:00：三候选当前字节与原小检查中的 SHA 完全相同，shared26 当前源再次逐项匹配。没有重跑小计算或Lean；开始另目录 cubic bridge。
