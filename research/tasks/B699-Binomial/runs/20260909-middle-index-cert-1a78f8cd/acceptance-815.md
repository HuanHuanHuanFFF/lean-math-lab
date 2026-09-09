# 全部815项正式验收

已证明：对全部自然数n,i,j，185≤i≤999且i<j≤floor(n/2)时，存在素数p≥i整除gcd(C(n,i),C(n,j))。包含p=i，n,j无上界。

最终消费者：[ExtendedComplete.lean](lean/ExtendedComplete.lean)。真实输出为：

```lean
@B699Middle.common_185_999 : ∀ {n i j : ℕ},
  185 ≤ i → i ≤ 999 → i < j → j ≤ n / 2 →
  ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j)
```

没有证书真值、结构前提、出版定理或有限扫描假设。

## 实际根与公理

成功根：[verification/20260909T145049Z/evidence.json](verification/20260909T145049Z/evidence.json)。实际起止 `2026-09-09T14:50:49.520530Z` → `2026-09-09T15:37:02.329413Z`，共2772.809秒（约46分13秒）。

404个项目源完整依赖闭包全部通过；246个在本次实际新编，158个经过当前源码、对象、实际日志、源码策略与递归项目依赖一致性检查后复用。全部项目对象来自本轮源码编译证据，未采用上一轮开发对象。404个源不是在最后一次调用全部重编。

最终 `#print axioms` 真实输出：

```text
'B699Middle.common_185_999' depends on axioms: [propext, Classical.choice, Quot.sound]
```

[完整性复核](verification/final-integrity-815.json)再次检查404份源、对象、实际日志及复用来源链，全部匹配，未发现失败项。包含来自历史失败根中已独立成功的前置模块；失败模块没有复用。未运行独立第二内核。独立源码与实际日志审查已通过并解除E1：404/404源与冻结提交原始Git blob一致，445项实际公理输出无异常；见[扩展审查](reviews/extension-statement-audit.md)及[逐项审计](reviews/extension-final-runtime-audit-20260909T153849Z.json)。

## 固定源码与环境

- 最终源SHA256：`9c66797c1039fa9bab20bd89abeb618f765bddb34665a3ac4033eb872c3f1b37`。
- 全部证明源固定提交：`3f57affefb15c83b0f0deb5e4327d506d00c3178`；最终交付追加此成功根与记录，证明源保持不变。
- 最新main基线：`23c4e21096cd711be08927c0c451627c832d64c2`；旧高度接口固定采用：`63a04b064d62e7e8752b1edd75c186d07dc57a20`。
- Lean声明及实际版本4.33.1，实际编译器commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。
- mathlib：`0df444a360eaa60ab8c11dca51a86af692955474`，manifest全部9个包HEAD匹配、源码干净；未使用的Cli缓存缺失不影响此根。
- manifest SHA256：`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。

完整源清单、逐源SHA、命令、源快照、对象和日志SHA在成功根中。最后使用新D盘项目输出目录，-j1、-M1280、Elab.async=false；本次新编模块最高实测工作集1151275008字节。私有提交和pagefile字段另存，不把它们等同物理内存或实际换页I/O。冷构建全部404源的耗时未重新测量。

## 具体数据与完整覆盖

首批677项沿用N=2,000,000的完整高度与10992节点正素数链，独立最终根132846Z已验。新增185..322的138条N=20,000,000高度及尾部消费者在141839Z已验。两者都接入固定 `common_of_height_certificate`，并通过完整素数计数等式回接实际π(i−1)。

20m具体链全部116667节点、116666边，首2、末20000093，相邻差≤184。228个叶块、15组、7292份最多16边证书全部通过内核，拼接到原题有限n消费者。原始输入SHA256：`a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414`。

GCD检查器使用长度607的整数基底，Lean完整证明每个小于4473的素数均属于该基底，以及其乘积等于6330bit常量P。每个较大候选p实际检查2≤p<4473²和gcd(p,P)=1；小p接已验试除检查器。检查器正确性、具体乘积、具体真值和最终原题消费者都已通过。没有以外部PASS、静态列表或未证证书前提替代任何被采用的条件。

[完整报告](report.md) · [当前前沿](frontier.md) · [实际成本](verification/final-costs-815.json) · [复现与恢复](handoff.md)

结束复核：[固定源与环境](verification/final-source-environment.json)、[现场](verification/end-state.json)。原工作区HEAD仍为08a8ac6872e8abfd4a2c480496da350a97ecdc13，已跟踪文件无改动，B686 round9保留；Lean和自有研究计算进程均已结束。
