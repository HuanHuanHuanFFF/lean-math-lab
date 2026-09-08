# 2026-09-08：三分支按题目与独立批次整合

本事件负责目录迁移、合并和工程验收，不开展新数学研究。用户已授权合并并接受日期、主题、短标识的命名规则。各题研究保留独立报告与前沿。

## 题目入口

- [B686](../../tasks/B686-Four/README.md)：距离界、反射和各为一个批次。
- [B677](../../tasks/B677-Lcm/README.md)：区间 LCM 批次。
- [B699](../../tasks/B699-Binomial/README.md)：二项式系数批次。
- [原跨题环境及发布证据](../20260908-environment-publication-f0a6539/README.md)。

来源 main `7cab35e`、GPT-work `9bad0b9`、codex `98a1d90` 均保留在合并历史内。两份 B686 第九轮完整资料各归其批次，题目根只保留题面与导航。正式 Math、Tests、Examples 导入路径保持不变。

## 迁移与复核

- [目录规则](../../../docs/STRUCTURE.md)、[本次迁移清单](../../../docs/RESEARCH_LAYOUT_20260908.md)。
- 各批次的 `migration/manifest.json` 逐文件记录旧、新路径与 SHA256。原字节保持在原提交或原文件；变换过的文件另有 `migration/originals/` 副本。
- [完整性检查](inventory-check.json)由 `python3 scripts/check-research-layout.py --verify-git-sources` 产生，逐文件核对来源、目标、原字节和 Lean import-only 变换。
- [实际一次性迁移脚本](migrate-layout.py)保留用于说明变换过程；它拒绝再次迁入已有批次，不是日常研究命令。
- 有固定旧路径、依赖旧缓存或覆写旧日志的主要运行器已转为当前入口或明确历史提示；原命令字节仍保留。原始数据和原执行日志不追改。

## 验证入口与范围

```sh
python3 scripts/check-research-layout.py
python3 scripts/verify-research-runs.py --run all
pwsh -File scripts/verify.ps1
```

固定 Lean 与依赖准备方式沿用仓库。研究验证器在新的输出目录内重编明确的已接受根及项目导入闭包，记录 guards 与依赖版本；不包含未接受候选和外部材料。旧实验、历史脚本与原始日志继续解释原版本行为，不因迁移升格。

本机没有 PowerShell；[verify-formal.py](verify-formal.py)实际执行正式脚本同等的 source policy、完整库构建、逐一检查全部11个 Math/Tests/Examples 源文件，并记录全过程。远端 CI 仍执行正式 PowerShell 入口。研究验收与远端 CI 分开记录。

## 最终本地验收

| 检查 | 实际结果 | 证据 |
|---|---|---|
| 正式库 | source policy、库构建、全部 11 个 Math/Tests/Examples 文件通过 | [正式验证](verification/formal-20260908T075722446318Z/evidence.json) |
| B686 两批研究 | 37 个项目源码从新对象目录重编，24 个结果入口、95 条精确公理 guards 通过 | [研究验证](verification/20260908T081837Z/evidence.json) |
| 跨批复用 | 同一新消费者导入两批全部 24 个结果入口，通过 | [消费者日志](verification/20260908T081837Z/joint-consumer.log) |
| 迁移完整性 | 5 份清单、673 个文件，原始字节及 22 个 Lean import-only 变换通过 | [逐文件核验](inventory-check.json)、[独立审查](independent-review.md) |
| 链接与旧副本 | 383 条迁移链接无回归，当前导航无缺链；403 个完全重复的旧 round9 副本核对后清除 | [链接核验](link-audit.json)、[副本记录](duplicate-cleanup.json) |

最初两次研究验证因依赖缓存缺失而失败，`081628Z` 记录为中断、未验收；这些记录保留。最终运行在新的对象目录中补编固定版本的 6 个 mathlib 模块，成功重编完整项目依赖闭包。没有借用旧项目对象，没有修改证明正文或依赖 pins。`081648Z` 与最终 `081837Z` 两次完整运行均通过，最终记录按上表引用。

这里记录的是本地验收与历史迁移快照。远端 CI 在发布时按实际推送提交单独核对；正式 CI 的绿灯不替代以上研究专项验证。后续合法研究改动可能使旧迁移哈希检查不再匹配，应保留旧清单并产生新验收，不修改历史证据来消除差异。
