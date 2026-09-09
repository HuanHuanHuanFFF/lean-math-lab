# B699 本批交付链接与状态审计

审计快照：2026-09-09 15:07:31.8383613 UTC。工作树：`D:/CodingProject/Math/.tools/worktrees/b699-middle-lean-20260909-1a78f8cd`。本记录只做只读检查，未运行 Lean、未重算证书、未修改 `inputs/`、未修改其他文件、未提交或推送。

范围是题目入口 `research/tasks/B699-Binomial/README.md`、`frontier.md`，以及本批 `20260909-middle-index-cert-1a78f8cd` 下除 `inputs/` 原始附件以外的 Markdown 文件（README、frontier、report、acceptance、handoff、notes、reviews）。共 22 份 Markdown，发现 84 个行内 Markdown 链接：83 个本地目标、1 个外部 URL；83 个本地目标均存在，未发现缺失本地链接。未发现引用式 Markdown 链接或锚点链接。

当前扩展验收的文件状态也与主线程边界一致：`verification/20260909T145049Z/evidence.partial.json` 在快照时存在，`success=false`、`finished_utc` 为空、`exit_code=1`，已有 227 条编译记录；同目录尚没有最终 `evidence.json`。这只证明验收尚未形成最终根，不评价其中尚未完成的模块真假。

## 本地链接逐行核对

下表列出每个含本地链接的文件行、原始目标和实际存在性。同行多个目标逐一列出；表中标为“存在”的判断是对当前工作树 `Test-Path` 的只读结果。

| 文件与行 | 目标与存在性 |
|---|---|
| `research/tasks/B699-Binomial/frontier.md:7` | `runs/20260908-binomial-cofactors-f0a6539/README.md`（存在）；`runs/20260908-binomial-cofactors-f0a6539/frontier.md`（存在） |
| `research/tasks/B699-Binomial/frontier.md:9` | `README.md`（存在） |
| `research/tasks/B699-Binomial/README.md:11` | `runs/20260909-slope-four-243425d5/README.md`（存在）；`runs/20260909-slope-four-243425d5/frontier.md`（存在）；`runs/20260909-slope-four-243425d5/HANDOFF.md`（存在） |
| `research/tasks/B699-Binomial/README.md:12` | `runs/20260909-prime-input-d2f7a636/README.md`（存在）；`runs/20260909-prime-input-d2f7a636/frontier.md`（存在）；`runs/20260909-prime-input-d2f7a636/HANDOFF.md`（存在） |
| `research/tasks/B699-Binomial/README.md:13` | `runs/20260909-eees-chain-5a2e10/README.md`（存在）；`runs/20260909-eees-chain-5a2e10/frontier.md`（存在）；`runs/20260909-eees-chain-5a2e10/report.md`（存在）；`runs/20260909-eees-chain-5a2e10/verification/ACCEPTANCE.md`（存在） |
| `research/tasks/B699-Binomial/README.md:14` | `runs/20260908-external-reductions-b3c1b7/README.md`（存在）；`runs/20260908-external-reductions-b3c1b7/frontier.md`（存在） |
| `research/tasks/B699-Binomial/README.md:15` | `runs/20260909-large-prime-structure-cb4764f0/README.md`（存在）；`runs/20260909-large-prime-structure-cb4764f0/frontier.md`（存在）；`runs/20260909-large-prime-structure-cb4764f0/report.md`（存在）；`runs/20260909-large-prime-structure-cb4764f0/acceptance.md`（存在） |
| `research/tasks/B699-Binomial/README.md:16` | `runs/20260908-formalization-92c221/README.md`（存在）；`runs/20260908-formalization-92c221/frontier.md`（存在） |
| `research/tasks/B699-Binomial/README.md:17` | `runs/20260908-binomial-cofactors-f0a6539/README.md`（存在）；`runs/20260908-binomial-cofactors-f0a6539/frontier.md`（存在） |
| `research/tasks/B699-Binomial/README.md:19` | `../../../docs/STRUCTURE.md`（存在） |
| `research/tasks/B699-Binomial/README.md:21` | `../../../Math/B699/CofactorCriterion.lean`（存在）；`../../../Tests/B699CofactorCriterion.lean`（存在）；`../../../Examples/CofactorCriterion.lean`（存在） |
| `.../acceptance.md:5` | `acceptance-677.md`（存在） |
| `.../acceptance.md:6` | `verification/20260909T132846Z/evidence.json`（存在） |
| `.../acceptance.md:7` | `lean/MiddleComplete.lean`（存在） |
| `.../acceptance.md:8` | `reviews/final-statement-audit.md`（存在） |
| `.../README.md:6` | `acceptance-677.md`（存在）；`report.md`（存在）；`frontier.md`（存在）；`lean/MiddleComplete.lean`（存在）；`verification/runner/extend.py`（存在） |
| `.../README.md:17` | `inputs/TASKS.md`（存在）；`verification/initial-state.json`（存在）；`reviews/final-statement-audit.md`（存在） |
| `.../report.md:33` | `acceptance-677.md`（存在）；`verification/20260909T132846Z/evidence.json`（存在）；`reviews/final-statement-audit.md`（存在） |
| `.../notes/cost-checkpoint-1.md:3` | `../verification/20260909T114042Z/evidence.json`（存在） |
| `.../notes/cost-checkpoint-1.md:7` | `../experiments/kernel-cost/direct-first/manifest.json`（存在） |
| `.../notes/extension-prime-basis.md:31` | `../experiments/extension-prime-basis/verification/20260909T140805Z/evidence.json`（存在） |
| `.../notes/prime-chain-interface.md:52` | `../experiments/prime-chain/20260909T115413Z/evidence.json`（存在） |
| `.../notes/verification-design.md:9` | `../verification/final_integrity.py`（存在） |
| `.../reviews/extension-statement-audit.md:7` | `statement-audit-extension.py`（存在） |
| `.../reviews/extension-statement-audit.md:23` | `../lean/extension/PrimeBasis.lean`（存在） |
| `.../reviews/extension-statement-audit.md:36` | `../lean/extension/basis/BasisData.lean`（存在） |
| `.../reviews/extension-statement-audit.md:38` | `../lean/extension/PrimeBasisCoverage.lean`（存在） |
| `.../reviews/extension-statement-audit.md:45` | `../lean/extension/PrimeBasis4473.lean`（存在） |
| `.../reviews/extension-statement-audit.md:51` | `../lean/extension/PrimeBasisChain.lean`（存在） |
| `.../reviews/extension-statement-audit.md:62` | `../lean/extension/basis/End32BasisConsumer.lean`（存在） |
| `.../reviews/extension-statement-audit.md:68` | `../lean/extension/AllExtensionHeights.lean`（存在） |
| `.../reviews/extension-statement-audit.md:84` | `../experiments/extension-prime-basis/verification/20260909T140805Z/evidence.json`（存在） |
| `.../reviews/extension-statement-audit.md:85` | `../verification/20260909T141839Z/evidence.json`（存在） |
| `.../reviews/extension-statement-audit.md:114` | `../lean/extension/PrimePrimorial.lean`（存在） |
| `.../reviews/extension-statement-audit.md:118` | `../lean/extension/primorial/PrimorialData.lean`（存在） |
| `.../reviews/extension-statement-audit.md:124` | `../experiments/extension-primorial/verification/20260909T143618Z/evidence.json`（存在） |
| `.../reviews/extension-statement-audit.md:125` | `../experiments/extension-primorial/verification/20260909T143846Z/evidence.json`（存在） |
| `.../reviews/extension-statement-audit.md:131` | `../lean/extension/primorial/End512Primorial.lean`（存在） |
| `.../reviews/extension-statement-audit.md:153` | `../lean/extension/primeChain/Complete.lean`（存在） |
| `.../reviews/extension-statement-audit.md:157` | `../lean/ExtendedComplete.lean`（存在） |
| `.../reviews/final-statement-audit.md:7` | `statement-audit-coverage.py`（存在） |
| `.../reviews/final-statement-audit.md:19` | `../../20260909-large-prime-structure-cb4764f0/lean/SmallPartBound.lean`（存在） |
| `.../reviews/final-statement-audit.md:21` | `../lean/SmallPrimeCount.lean`（存在） |
| `.../reviews/final-statement-audit.md:23` | `../lean/RawHeight.lean`（存在） |
| `.../reviews/final-statement-audit.md:29` | `../lean/RawHeight.lean`（存在）；`../lean/HeightRows.lean`（存在） |
| `.../reviews/final-statement-audit.md:37` | `statement-audit-coverage.py`（存在）；`../lean/AllHeights.lean`（存在） |
| `.../reviews/final-statement-audit.md:39` | `../lean/TailRange.lean`（存在） |
| `.../reviews/final-statement-audit.md:47` | `../lean/primeChain/Core.lean`（存在） |
| `.../reviews/final-statement-audit.md:49` | `../lean/PrimeChain.lean`（存在） |
| `.../reviews/final-statement-audit.md:66` | `../lean/primeChain/Complete.lean`（存在） |
| `.../reviews/final-statement-audit.md:70` | `../lean/FirstComplete.lean`（存在） |
| `.../reviews/final-statement-audit.md:72` | `../lean/MiddleComplete.lean`（存在） |
| `.../reviews/final-statement-audit.md:86` | `../verification/20260909T122816Z/evidence.json`（存在） |
| `.../reviews/final-statement-audit.md:87` | `../verification/20260909T124652Z/evidence.json`（存在） |
| `.../reviews/final-statement-audit.md:88` | `../verification/20260909T130116Z/evidence.partial.json`（存在） |
| `.../reviews/final-statement-audit.md:124` | `../verification/20260909T130116Z/evidence.json`（存在） |
| `.../reviews/final-statement-audit.md:125` | `../verification/20260909T132846Z/evidence.json`（存在） |

省略号 `.../` 只为表格可读，均指本批目录 `research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/`；原始 Markdown 中的相对目标已按其所在文件目录解析。

唯一外部链接是 `research/tasks/B699-Binomial/README.md:5` 的 `https://conjectures.io/problems/erdos699-erdos-699`；本审计没有联网验证外部 URL。

## `inputs/` 原始附件说明

`inputs/` 中没有行内 Markdown 链接，因此没有可按 Markdown 链接规则报告的缺失目标；附件字节未改。原始文本路径中有一处需要保留解释：

| 文件与行 | 原始相对引用 | 直接相邻目标 | 归档内对应 |
|---|---|---|---|
| `inputs/source/B699-middle-index-review-20260909.md:213` | `outputs/prime_chain_20m.txt` | `inputs/source/outputs/prime_chain_20m.txt` 不存在 | 原始 ZIP `inputs/source/B699-middle-index-closure-evidence.zip` 含 `b699-new-math/outputs/prime_chain_20m.txt` |

这属于原始 source 文档相对于 ZIP 根目录的路径语境，不是本批维护链接错误；按要求没有展开、改写或补齐该附件。`inputs/TASKS.md` 中的 `compact/verification.json`、`source/B699-middle-index-review-20260909.md` 与旧批次目录均可在当前工作树找到；`inputs/compact/` 和 `inputs/original20m/` 文档所指的 `outputs/` 文件也存在。

## 状态与待办措辞

以下条目不改变任何数学或 Lean 结论，只是交付导航可能让读者误读当前阶段的地方。

| 分类 | 文件与行 | 观察 | 处置边界 |
|---|---|---|---|
| 当前措辞疑似过时 | `frontier.md:9` | 仍写“先测真实185、最小余量200、322高度、607基底及末端块成本，成本通过才运行大链”；同文件 `frontier.md:13` 已记录 512 边成本通过、完整 20m 链生成并于 14:50 开始 404 源验收。 | 若该文件继续作为当前前沿，应在主线程最终根结束后改为“已生成、待最终验收”的阶段；当前只列问题，不修改。 |
| 当前措辞疑似过时 | `report.md:27-29` | “后续范围”仍写扩展仅进入成本试验、后续先做小样本；当前 README、handoff 与 extension review 已记录完整链生成和 `145049Z` 验收。 | 首批完成报告可保留历史定位，但需把这段标成首批时点，或在主线程收束后更新当前扩展入口。 |
| 当前措辞疑似过时 | `notes/extension-progress.md:5-7` | 仍写“整链尚未执行”“暂不跑大链”“正在核验同512边”；`extension-primorial.md`、`handoff.md:45-49` 已记录 GCD 试验成功、完整链生成和 404 根启动。 | 这是本批唯一没有后续追加段落的扩展进度摘要，建议待最终根结果确定后更新；在此之前不能把它当作当前运行状态。 |
| 历史检查点，后文已取代 | `handoff.md:32`；`acceptance-677.md:25` | 记录首批交付时“未跑整20m链/仅开展成本试验”，后来 `handoff.md:45-49` 和 `frontier.md:13` 已记录完整链生成及待验收。 | 作为首批冻结验收快照可以保留；阅读本批当前状态应以后续段落和 `acceptance.md:10` 为准。 |
| 历史检查点，后文已取代 | `notes/extension-cost-decision.md:5` | 14:40 更新（同文件第 9 行）已说明成本改善后进入全链；第 5 行仍是进入 GCD 试验前的“整链尚未执行”。 | 时间顺序足以解释，不构成当前证明真假问题。 |
| 历史检查点，后文已取代 | `notes/extension-primorial.md:33` | 生成交接段写“即将启动约404模块完整验收”；当前 `145049Z/evidence.partial.json` 已有 227 条记录且未结束。 | 应视为启动前交接快照；最终根结束后可补一行实际结果。 |
| 历史检查点，后文已取代 | `reviews/final-statement-audit.md:5,94,112` | 早期 B1 段落写最终验收未结束；第 118 行明确标记 B1 已解除，且第 124-135 行记录最终 130116Z/132846Z。 | 前文有明确后续处置，不把它当作当前首批状态。 |
| 历史检查点，当前边界仍有效 | `reviews/extension-statement-audit.md:5,98-104` | 早期 E1 说明整链和 815 消费者未闭合；续审第 110、168 行仍保留 E1，当前边界与 `acceptance.md:10` 一致。 | 无需修正；最终根成功或失败后再更新 E1。 |
| 授权边界，非本轮问题 | `research/tasks/B699-Binomial/README.md:9-17`、`research/tasks/B699-Binomial/frontier.md:5-7` | 题目级 README/frontier 的批次表仍未列出当前 `20260909-middle-index-cert-1a78f8cd`；本批 README 本身存在且可访问。 | 用户已限定本轮只写本批 `runs/` 审计文件；题目级导航接入属于后续整合事项，不计为本轮交付错误或阻塞。 |

## 交接结论

本次没有发现维护 Markdown 的缺失本地链接，也没有发现需要立即停止主线程的证明真假问题。当前应继续把 323..999 首批视为已验，把 185..322 的高度、基底、末端有限带和静态生成链按各自证据等级记录；815 项全域仍等待 `145049Z` 的最终 `evidence.json`、最终声明输出和实际公理输出。上述过时措辞只影响导航与时间点表达，待主线程最终结果后统一更新即可。

## 最终文档复核：2026-09-09 15:44:58.1708990 UTC

主线程完成最终结果落盘后的第二次只读链接复核。当前本批 `runs/20260909-middle-index-cert-1a78f8cd`（排除原始 `inputs/`）共有 22 份 Markdown、92 个行内本地链接；92 个目标全部存在，未发现新增断链。题目级 README/frontier 仍按授权边界留待后续整合，本次不检查也不修改。

新最终入口均已存在：

- `README.md:5` → `acceptance-815.md`；`README.md:9` → `verification/20260909T145049Z/evidence.json`。
- `acceptance.md:5-6` → `acceptance-815.md`、`verification/20260909T145049Z/evidence.json`。
- `acceptance-815.md:17` → `verification/20260909T145049Z/evidence.json`。
- `frontier.md:10`、`handoff.md:7`、`report.md:51` → `verification/20260909T145049Z/evidence.json`。
- `reviews/extension-statement-audit.md:174` → `reviews/extension-final-runtime-audit-20260909T153849Z.json`；`:178` → `verification/20260909T145049Z/evidence.json`。

当前文档已把 815 项最终接受、404 源闭包、246 新编/158 复用、15:37:02 完成和标准三公理写入入口；本段只确认链接目标存在，不把链接存在性当作新的 Lean 验收。此前审计中的旧状态段保留其原时间点，最终文档状态以后续入口为准。
