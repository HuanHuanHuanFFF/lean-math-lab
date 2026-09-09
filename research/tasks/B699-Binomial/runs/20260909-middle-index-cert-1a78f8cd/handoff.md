# B699 本轮最终恢复入口

## 当前已验结论

`B699Middle.common_185_999`：全部Nat n,i,j，185≤i≤999且i<j≤n/2时，存在Prime p≥i整除实际两个二项式的gcd。无证书、结构或出版参数，包含p=i，n,j无上界。完整B699仍未完成。

最终源：[lean/ExtendedComplete.lean](lean/ExtendedComplete.lean)。最终根：[145049Z](verification/20260909T145049Z/evidence.json)，404源闭包、246新编/158一致复用，实际公理仅标准三项。15:37:02 UTC完成，[最终完整性复核](verification/final-integrity-815.json)通过。

分支 `GPT-work/b699-middle-lean-20260909-1a78f8cd`。全部证明源已在 `3f57affefb15c83b0f0deb5e4327d506d00c3178` 保存；本交接所在的最终交付提交追加完整实际验收及审查记录。最终远端SHA由结束消息与实际git核对返回。首批677项的独立已推提交为 `2e190f896738460c2cb23289d3b7051ce1ba3e9a`。

## 冷验收入口

在本隔离工作树执行。下面是可执行冷验收命令，未声称最终完成后又冷跑一次；固定依赖包缓存可以复用，全部项目输出另建新目录。

```powershell
Set-Location 'D:\CodingProject\Math\.tools\worktrees\b699-middle-lean-20260909-1a78f8cd'
& 'C:\Python314\python.exe' -B 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/runner/extend.py' --project-root . --lean 'D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe' --package-root 'D:\CodingProject\Math\.lake\packages' --root 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/ExtendedComplete.lean' --memory-mb 1536 --timeout 300
```

冷命令不传--base-evidence，全部项目源从头编译；1536MiB是首批高度块已验的上限，最终增量根仅对新模块使用1280MiB。执行前按仓库规则检查当时资源。若本轮对象仍保留，可在上述命令增加 `--base-evidence research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/20260909T145049Z/evidence.json`。它核对当前源码、对象、真实公理日志及递归项目依赖，不匹配的对象会重新编译。复用不等于再次运行内核，记录会明确新编和复用数量。

每个根均有独立时间戳；不要覆盖历史 evidence。evidence.partial.json只用于恢复已成功模块，不能代替成功的最终根。最后必须检查真实原题声明及传递公理，接受公理仅propext、Classical.choice、Quot.sound。实际145049Z是经核对复用158项的完整闭包验收，404源全部冷构建成本未重测。

固定Lean4.33.1、mathlib0df444a360eaa60ab8c11dca51a86af692955474及manifest其余pins。未使用包Cli的缓存缺失不会阻塞当前根。

## 可复用资产与剩余边界

- [首批677项](acceptance-677.md)独立保留。
- 185..322的138项完整高度：141839Z。
- [完整20m有限n消费者](lean/extension/primeChain/Complete.lean)：全部i≥185且n≤20,000,000、全部合法j。
- [GCD检查器](lean/extension/PrimePrimorial.lean)、完整4473基底覆盖、准确乘积及全部具体链：已进入最终依赖闭包。
- [具体源与覆盖审查](reviews/extension-statement-audit.md)、[验收设计](notes/verification-design.md)、[实际成本](verification/final-costs-815.json)。

本批没有剩余的具体证书或消费者缺口。其它指标、旧151项数据、Matveev和大指标解析链保持原状态。Dyadic/HeightApprox等草稿没有通过本轮验收，不可接入已接受消费者。

## 文件与资源边界

只写本批；题目导航由后续整合接入。最终提交不合并main、不创建PR、不联系独立会话。只正常推送自己的分支，无force push。

开始11:31:09 UTC（最初环境启动另约31秒），本轮没有新的总时长要求，旧截止未继承。重计算始终串行、Lean单线程，后期1280MiB；新对象和临时在D盘。自有重计算在15:37:02 UTC结束。保留输入、昂贵证书、源快照及失败证据；可重建对象仍留在工作树.tools/mid供恢复。

[结束现场](verification/end-state.json)和[源/环境复核](verification/final-source-environment.json)已保存：原工作区HEAD及已跟踪状态未变、B686 round9保留，Lean和自有研究计算进程为空。独立审查E1已解除。最终远端SHA由结束消息给出，API文档CI不阻塞交付。
