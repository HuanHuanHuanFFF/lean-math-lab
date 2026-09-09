# 正式验收：1000..4882，共3883项

已接受完整原题声明，最终文件[Acceptance.lean](lean/Acceptance.lean)的实际输出为：

```lean
B699LargeIndex.original_statement (n i j : ℕ) :
  1000 ≤ i → i ≤ 4882 → i < j → j ≤ n / 2 →
  ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j
```

没有残留证书、出版定理、结构或有限扫描假设；自然数除法就是题面的floor(n/2)，p=i未被排除，n,j无上界。另一公开接口common_1000_4882以整除gcd表达同一结论。

## 实际根和来源

成功根：[20260909T185800Z/evidence.json](verification/20260909T185800Z/evidence.json)，18:58:00.493938至18:58:35.062083 UTC，34.568秒。391个项目源的实际依赖闭包完成：本次新编最终2源，389源由当前源、实际对象、实际日志、递归项目依赖和标准公理审计绑定复用。闭包包含本批98源和固定旧293源；不是391源在最后一次调用全部冷编。

前一长构建[184034Z](verification/20260909T184034Z/evidence.json)用878.875秒，87个新模块成功（含所有67区间和AllBlocks），仅Complete的双整除包装名称错误导致整根失败。错误模块没有复用，修复后在最终成功根重新编译。其余本批基础模块由前面成功编译记录接入。

[最终完整性复核](verification/final-integrity.json)核查391份源、对象、实际日志及递归来源，全部通过；[固定源和主工作区复核](verification/final-source-binding.json)确认391/391源等于证明源提交b9b51897f3c614c9295a7e7527057e2ec86f00bb原始blob，main仍为固定12c31b8b5729b0017cf8e1423cd98ed5230aaaae，7个原未跟踪文件哈希未变。

## 公理与证据等级

实际最终公理列表仅为：

```text
'B699LargeIndex.original_statement' depends on axioms: [propext, Classical.choice, Quot.sound]
```

完整项目闭包源码策略和所有实际公理打印通过，没有sorry/admit、自定义公理或native计算假设进入最终消费者。外部数值探测仅指导候选选择；最终所有计数、轨迹和高度真值均在Lean中证明。

AI源码与实际日志审读已完成：[独立审查](reviews/trace-statement-audit.md)阶段二确认F1解除，391份源/对象/日志和原始Git blob、全部67个尾部及递归复用链一致，未发现剩余验收阻断。未运行独立第二内核、人工同行评审或外部平台验收。Lean编译、源对应、AI审读、新颖性与公开状态不合并为同一种证据。

## 环境与成本

Lean4.33.1，实际编译器commit819816b2e0a3bf405af45ae5c7af2491d8f5bee6；mathlib0df444a360eaa60ab8c11dca51a86af692955474，全部9个包HEAD和干净状态匹配pins；manifest SHA256 fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0。Python3.14.0，PowerShell7.6.5，Git2.45.1.windows.1。

实际使用-j1、-M1280、Elab.async=false。成功模块最高实测工作集1,352,802,304字节；私有提交峰值2,686,459,904字节与物理工作集分别记录，不等同实际换页I/O。没有停止他人进程。新增对象、补编缓存和临时目录均在D盘。缺失的固定Mathlib.Data.Nat.Size单模块从固定源补编3.22秒并绑定哈希，其余缓存未覆盖。

从17:59:27 UTC开始计时，到完整证明通过为3548.062秒（59分8秒）。总轮次包含随后交接和发布，未延长预算。详细成本见[final-costs.json](verification/final-costs.json)。

恢复入口[resume.ps1](verification/resume.ps1)在[190240Z](verification/20260909T190240Z/evidence.json)实际成功，391源全部绑定复用、0新编；这是恢复入口验证，不记作新内核编译。
