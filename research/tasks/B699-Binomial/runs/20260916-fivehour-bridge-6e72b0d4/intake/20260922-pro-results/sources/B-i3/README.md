# B699 B/i3 会话完整证据包（2026-09-22）

本包汇总当前会话中产生的全部 B/i3 研究交付。会话跨过 2026-09-21→2026-09-22 午夜；原始交付文件名中的 `20260921` 日期原样保留，不做追溯改名。

## 证据等级

- 作者纸面证明 / 精确代数推导；
- 同作者独立或不同算法的精确检查器与可重放证书（各轮按自身声明）；
- 若某轮采用冻结 Overview / 既有作者级前置，保持原证据等级；
- **不是 Lean 全链，不是外部独立同行评审，也不是完整 B699 证明。**

## 收录轮次

### 1. 首轮：D/R_*、S-酉分配与尺度空区

目录：`rounds/round01/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.txt`, `OVERVIEW-2026-09-21.md`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `outputs`, `src`

### 2. Round 2：NS64 near-square carry

目录：`rounds/round02/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 3. Round 3：PHASE1024 phase lock

目录：`rounds/round03/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 4. Round 4：PLUS128 / Q2ALL 正向数字行

目录：`rounds/round04/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 5. Round 5：EIS-BLOCK / POWER 任意次数族

目录：`rounds/round05/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MEMBERS.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 6. Round 6：CUBIC-ALL

目录：`rounds/round06/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 7. Round 7：QUARTIC-ALL + 2/3 等号闭合

目录：`rounds/round07/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `FRONTIER_DELTA.json`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 8. Round 8：QUINTIC-RIGID

目录：`rounds/round08/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 9. Round 9：QUINTIC-ALL

目录：`rounds/round09/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `MANIFEST.json`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `certificates`, `inputs`, `notes`, `outputs`, `src`

### 10. Round 10：SIXTIC-ALL

目录：`rounds/round10/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `OVERVIEW-2026-09-21.md`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `ROUND9_HANDOFF.md`, `ROUND9_PROOFS.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `checker_independent.out`, `replay.out`, `src`

### 11. Round 11：SEPTIC-ALL

目录：`rounds/round11/`

顶层成员：`EXPERIMENTS.md`, `FAILURES.md`, `HANDOFF.md`, `OVERVIEW-2026-09-21.md`, `PROOFS.md`, `README.md`, `REPLAY.md`, `REPORT.md`, `ROUND10_HANDOFF.md`, `ROUND10_PROOFS.md`, `SHA256SUMS`, `SOURCE_ADOPTION.md`, `cert`, `checker_independent.out`, `dependencies`, `replay.out`, `src`

## 原始 ZIP

`raw-zips/` 中保存每轮最终 ZIP 的原始字节；`RAW_ZIPS.json` 记录大小和 SHA-256。

## 验收回执

`receipts/` 收录当前会话中独立保存到 `/mnt/data` 的 package receipt；其余轮次的重放/验收信息保留在各轮 ZIP 内的输出或说明中。

## 重放

各轮若包含 `REPLAY.md` / `src/replay.py`，按该轮说明执行；总包不统一改写各轮依赖或重放命令。

## 仓库边界

本总包仅复制会话产物；没有修改、提交、推送、PR、合并或发布仓库。
