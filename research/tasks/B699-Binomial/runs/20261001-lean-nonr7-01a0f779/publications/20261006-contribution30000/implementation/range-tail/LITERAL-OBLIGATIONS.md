# 固定叶文件的验收输入

这是一份移植执行者给独立核验者的目标清单，不是核验结论。三个实际 source hashes、公共根与准确完整型以当前 `FROZEN-DELIVERY-STRUCTURAL.json` 为准；初版 `FROZEN-DELIVERY.json` 已由真实codec资源失败后的显式结构递归修正取代。任何修改后须重新绑定。

独立量词目标如下，全部变量自然数，未出现的 n/j 上界或证书前提不得自动加入：

```lean
∀ n i j : Nat, 185 ≤ i → i ≤ 322 → i < j → j ≤ n / 2 →
  ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j)

∀ n i j : Nat, 323 ≤ i → i ≤ 999 → i < j → j ≤ n / 2 →
  ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j)

∀ n i j : Nat, 1000 ≤ i → i ≤ 30000 → i < j → j ≤ n / 2 →
  ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j
```

高段另有 gcd 等价公共入口，须也绑定实际类型。接口消费时可以把 gcd 条件按 `Nat.gcd_dvd_left/right` 转成同时整除；不得改成两个可能不同的素数。

核验须覆盖：

- 用固定官方 production 源/依赖/Lean 4.33.1逐个独立编译这三份叶文件，提供实际命令、耗时、峰值、固定源和输出对象哈希。每份只有允许库导入，不能拿本仓缓存中的 B699 对象满足来源缺口。
- 对实际四个公共根检查字面量全称型与传递公理，拒绝 `sorryAx` 和标准 `propext`、`Classical.choice`、`Quot.sound` 以外的任何公理；保存可执行检查及真实输出。
- 独立审读通用 checker、ASCII 解码/首个奇数差值、段首尾 adjacency、实际完整高度五元组、IC行覆盖、factorial gcd素性 soundness与末端素数消费者。静态 round-trip 不能代替这些证明的内核检查。
- 标明每份的900秒/16GiB固定平台运行情况；本机旧1GiB probe 的资源失败不得改写成素性命题失败。若编译器报缺声明、元编程/内核或资源异常，绑定该次固定源后分类处置。
- 三份的并集仅为185..30000；完整 S 的其余指标、全包大小/声明数量/重复来源仍由母任务统一核验。

中段生成数据保留原节点和原高度五元组。高段重新组织既定通用证明，有限节点从固定原证明数据选择，素性由新的 trial/factorial-gcd反射证明，而非假设原节点已真。旧签件只证明旧源；本批改写必须新验收。

`reproducer/rebuild.py` 在所有当前原源 SHA 与 `SOURCE-CLOSURES.json` 一致时，可按普通文件重建三叶并要求与冻结字节完全相同；它不执行Lean，也不提供数学接受。父任务已经要求叶冻结，首轮 CI反馈前不要运行会写叶文件的重建程序。
