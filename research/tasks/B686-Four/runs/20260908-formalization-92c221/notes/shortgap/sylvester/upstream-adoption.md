# 固定公开源码的适配记录

## 来源与许可核对

公开 Lean 来源入口：

`https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686SylvesterSchur.lean`

2026-09-08 实际取得7708行、362626字节，SHA256
`9c16d59ea2a1e4e41b1ba0329f6f43749973e14ef064bd2f003cf95ef2c71243`。
同提交 LICENSE 明确为 MIT，已完整保存在验证来源目录并放入适配源码
头部，版权和第三方 notice 全部保留。该提交没有独立 NOTICE 文件，HTTP
404 记录已保存。

Blair 文件明确引自 AllenGrahamHart/FormalConjectures-Bench 提交
`482dacc4d9335240f26218cdc62032da3100392b` 的
`formalizations/erdos699/Erdos699Formalization.lean`。实际下载原始文件的
SHA256 为 `ab0987fe6012fb421138af86ea6509979fcf885aa54744f06b2215fbb7f7e7b4`，
与 Blair header 完全吻合。原始文件保存在验证来源目录，不作为导入模块。
Allen 根 LICENSE 与 LICENSE.md 查询均为404；其递归树查询被服务端截断，
不据此断言原仓全局没有许可。此次采用明确 MIT 分发的 Blair 固定入口，
不声称独立核定其整个上游许可链。

所有下载 URL、字节数、哈希及404记录在
`verification/shortgap/sylvester/upstream/` 的两个 download manifest。
GitHub 网页与原始主源均已读取；搜索无命中仅说明所检固定 mathlib 范围，
不作 Lean 首次形式化或数学新颖性声明。

## pins 与依赖

Blair 固定提交采用 Lean 4.29.1，mathlib
`5e932f97dd25535344f80f9dd8da3aab83df0fe6`。本仓保持 Lean 4.33.1 和原
manifest 不变，实际适配和重编发生在本仓 pins 下。

该源码直接导入只有：

```
Mathlib.Data.Nat.Factorial.BigOperators
Mathlib.NumberTheory.Bertrand
Mathlib.Order.Interval.Finset.Nat
Mathlib.NumberTheory.SmoothNumbers
```

Blair 整仓 manifest 含 PNT 等外部包，此模块没有引用那些包，不引入它们。
第一次本地检查缺 Bertrand、SmoothNumbers 的包对象，已请求主线程环境
负责人补齐固定包缓存；另两个对象已存在。

## 声明与证明范围

实际最终定理是

```lean
Erdos699Formalization.sylvester_schur
  (n i : ℕ) (hi : 1 ≤ i) (hi_half : i ≤ n / 2) :
  ∃ p : ℕ, p.Prime ∧ i < p ∧ p ∣ Nat.choose n i
```

最终证明以 `i≤48`、`49≤i<4840`、`4840≤i` 三段覆盖全范围。
有限段中的素数证书使用 ordinary `norm_num`/`omega`；大参数段由
二项式素因子上界、primorial/素数计数上界和实幂比较关闭。文件开头的一些
条件接口不是最终定理前提；全部参数区间均在同一源码内部证明。

原题目标取 `n=N+K−1`、`i=K`，从 `K<N` 得 `K≤n/2`。固定 mathlib 的
`ascFactorial_eq_factorial_mul_choose'` 和 `ascFactorial_eq_prod_range` 给

```
∏ i<K (N+i) = K! * choose(N+K−1,K),
```

所以二项式素因子直接整除要求的连续乘积。K=1 完整包含，无自然数减法
边界遗漏。`Consumer.lean` 暴露独立命名空间 `B686SylvesterSchur` 的
`sylvester_schur_product`，与主线程 `B686ShortGap.SylvesterSchur` 的定义
逐项相同；主线程负责无条件 h=0,1 原式消费者。

## 下一可证伪检查点

在当前 pins 下编译完整公开证明和本地消费者，然后运行分段、完整原定理
及本地目标的传递公理 guard 与空白名单反向检查。未经本地编译验收，
此记录只表明来源和形式接口已对齐，不能标记 F686-09 外部输入已闭合。

## 首轮实际兼容诊断与最小修正

`verification/shortgap/sylvester/20260908T115813448516Z` 保存完整首编日志。
证明编译到末尾，实际错误集中于两类：

1. `hasDerivAt_scaledPowerLog` 中旧 `convert` 在当前 elaborator 生成
   函数点乘与实例表示的额外同一性目标。改为当前 API 的 `convert!`，
   对乘法导数用 `convert! … <;> ring`。没有改变导数或数学声明。
2. 四处 `n−i+1+i=n+1` 的 AC simp 规范形发生变化；已有 `i≤n`，直接
   用 `omega` 证明相同自然数恒等式。

导数的隔离 probe 在 `20260908T120335266496Z` 实际通过。其余仅有旧
`primorial_le_4_pow` 名称的非阻断弃用提示，保留以减少不必要改动。
第一次失败末尾的 `sorryAx` 是 Lean 对失败证明的错误恢复，不能算验收；
最终仍须整体重新编译并以可失败 guard 排除它。

第二轮 `20260908T120408850736Z` 中完整公开源已通过，打印的原定理
传递公理恰为标准三项。本地消费者暴露了未括号大运算符体的解析问题，
出现非预期 free `i`；将目标写成 `p ∣ (∏ i ∈ range K, (N+i))`，并在
消费者模块关闭 `autoImplicit`，使实际声明严格匹配本任务的 N、K 两个
参数。此解析失败未被作为消费者通过证据。随后启动完整第三轮验收。
