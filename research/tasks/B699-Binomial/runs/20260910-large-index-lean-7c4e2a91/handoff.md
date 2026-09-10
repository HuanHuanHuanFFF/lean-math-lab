# 最终交接与恢复

已完成1000≤i≤4882、全部合法n,j的完整原题证明，共3883项；保留p=i，无证书、结构或出版前提。入口[lean/Acceptance.lean](lean/Acceptance.lean)，定理B699LargeIndex.original_statement；gcd及双整除接口见[lean/Complete.lean](lean/Complete.lean)。

最终内核证据根[185800Z](verification/20260909T185800Z/evidence.json)，391源闭包、标准三公理。最后调用新编2源、绑定复用389源；本批98源和固定旧293源全部有源码编译及哈希/实际日志依据。[完整性复核](verification/final-integrity.json)、[391份Git blob绑定及main保护](verification/final-source-binding.json)、[AI审查](reviews/trace-statement-audit.md)分别保留。未运行独立第二内核或人工同行评审。

## 固定源与分支

启动源12c31b8b5729b0017cf8e1423cd98ed5230aaaae；所有最终证明源固定于b9b51897f3c614c9295a7e7527057e2ec86f00bb。后续交付提交只追加/整理验收和交接资料，证明源不变。分支GPT-work/b699-1000-4882-20260910-7c4e2a91。最终远端完整SHA由主任务结束消息及本机忽略目录中的最终发布记录给出；以实际git ls-remote确认，不把源检查点当最后交付SHA。

## 实际使用的命令规格

以下LEAN、PACKAGE_ROOT、PROJECT_ROOT是发布日志中的脱敏路径别名，开关和相对路径与实际执行一致。完整原始命令保留在本机.tools/large/verification各时间戳目录。

```text
Python 3.14.0 -u -B verification/runner/extend.py
  --project-root PROJECT_ROOT --lean LEAN --package-root PACKAGE_ROOT
  --root research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/lean/Acceptance.lean
  --base-evidence research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91/verification/20260909T184034Z/evidence.json
  --memory-mb 1280 --timeout 180
```

实际Lean子命令使用-j1、-M1280、-DElab.async=false、-DautoImplicit=false、-DrelaxedAutoImplicit=false、独立--root及独立-o目录。原失败根184034Z中的失败Complete模块不会复用；新成功根实际编译它与Acceptance。

完成后还实际执行了final_integrity.py（expected-modules391、theorem B699LargeIndex.original_statement）和runner/audit_release.py（source-commit b9b51897f3c614c9295a7e7527057e2ec86f00bb）。两者输出均成功；它们是完整性与源对应检查，不是第二内核。

## 可执行恢复入口

在本工作树根目录，提供已有固定工具路径，执行：

```powershell
$run = 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
& "$run/verification/resume.ps1" -Python $Python -Lean $Lean -PackageRoot $PackageRoot `
  -BaseEvidence "$run/verification/20260909T185800Z/evidence.json"
```

这条包装入口已实跑成功，根[190240Z](verification/20260909T190240Z/evidence.json)，391源全量绑定复用、0新编。各次输出分离，旧日志不会覆盖。本机另保留.tools/large/resume-final.ps1，已填写实际工具路径，便于直接恢复。

不给-BaseEvidence会从源编译全部391个项目模块，仍使用固定包缓存；缺失或哈希不符的项目对象不会复用。完整冷构建耗时本轮未测。固定包必须为Lean4.33.1和manifest记录的9个pins；不可更新为本轮其它会话的新依赖。若固定Mathlib.Data.Nat.Size缓存缺失，runner/compile_fixed_cache.py能从固定源码补编该单模块，只允许新增缺失缓存。

## 失败与剩余事项

本轮目标没有剩余数学或消费者缺口。未扩展i>4882，未补A的归一化、EC、Dusart、BFT、Matveev，不自动接续新研究预算。

失败保留：旧草稿导入/命名/语法错误，整体表达式内核内存超限，初版新引理的局部编译错误，及184034Z的最终双整除API错误。成功根已排除这些失败模块的占位公理。ReductionDiagnostic、KernelDiagnostic、Count4882以及直接Representative文件是开发证据，不在最终消费者依赖闭包；不会因与接受文件同目录而成为已接受原题结论。

原main仍在固定提交，7个原未跟踪文件哈希保持；只新增本任务worktree/分支和本批文件。全部新增缓存与临时输出在D盘，重计算串行，未停止他人进程。原计划6小时，完整证明59分8秒通过，随后完成交接发布；未达到第5小时评估点，未启用延长。最终结束记录包含总耗时与现场状态。

CI按现有main/PR触发规则单独观察；正式CI不自动验research，本批以已运行的专项入口验收。只推本任务分支，不合并main、不创建PR、不联系外部人员，不等待或反复轮询文档CI。
