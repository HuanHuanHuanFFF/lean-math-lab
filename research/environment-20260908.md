# 独立 Lean 环境记录（2026-09-08）

## 任务边界

- 任务：为 `WORKTREE` 准备独立 Lean 环境。
- 目标分支：`codex/bounty-20260908`。
- 目标 HEAD：`9d403934c9716fc4bef63a18aaf443b3c0cb7e39`。
- 原工作区：`ORIGINAL_WORKSPACE`，本记录中的所有写入都限定在新树；原工作区只做了只读状态审计。
- 本支持任务拥有：新树 `.tools/`、`.lake/` 和本文件；`.tools/platform/` 由主任务管理，不在本任务范围内。
- 共享硬截止时间：2026-09-08 10:00（Asia/Shanghai）；本记录在 04:52 +08:00 完成主要验收。

## 空间与复制

首次检查（工作目录为新树）显示 D 盘：已用 `276165935104` bytes，剩余 `18351456256` bytes。

源缓存大小如下：

- `ORIGINAL_WORKSPACE\.tools\elan`：32,218 files，`6426537952` bytes。
- `ORIGINAL_WORKSPACE\.lake\packages`：36,739 files，`2598412798` bytes。

源缓存树和复制后目标缓存树的重解析点数量均为 0。使用了以下定向复制命令；没有使用 `/MIR`，并用 `/XJ` 排除 junction：

```powershell
robocopy ORIGINAL_WORKSPACE\.tools\elan WORKTREE\.tools\elan /E /XJ /R:1 /W:1 /COPY:DAT /DCOPY:DAT /NP /NFL /NDL
robocopy ORIGINAL_WORKSPACE\.lake\packages WORKTREE\.lake\packages /E /XJ /R:1 /W:1 /COPY:DAT /DCOPY:DAT /NP /NFL /NDL
```

两个 robocopy 结果均为 `exit=1`（发生复制时的正常返回码），且摘要均为 `FAILED=0`、`Mismatch=0`：Elan 复制 32,218 个文件、5.985 GiB；Lake packages 复制 36,739 个文件、2.419 GiB。复制后目标逐文件统计与源一致：Elan `6426537952` bytes，packages `2598412798` bytes。

## 固定版本

- `lean-toolchain`：`leanprover/lean4:v4.33.1`。
- `lake-manifest.json` 中 mathlib rev：`0df444a360eaa60ab8c11dca51a86af692955474`。
- 复制后 `.lake/packages/mathlib` 的 `git rev-parse HEAD`：`0df444a360eaa60ab8c11dca51a86af692955474`，状态为 detached `HEAD`。

新树的 `scripts/lake.ps1` 将 `ELAN_HOME`、`LAKE_HOME`、`TEMP`、`TMP`、`XDG_CACHE_HOME`、`MATHLIB_CACHE_DIR` 全部指向新树 `.tools/`，并只为新树和其 package 目录设置进程级 Git `safe.directory`；因此后续运行不会复用原树的这些环境目录。

## 验收

在新树执行：

```powershell
.\scripts\lake.ps1 env lean --version
```

结果：`Lean (version 4.33.1, x86_64-w64-windows-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)`，exit `0`。

对现有环境 smoke 文件做定向编译：

```powershell
.\scripts\lake.ps1 env lean -o .lake\Smoke.olean Math\Smoke.lean
```

结果 exit `0`，生成新树 `.lake\Smoke.olean`，大小 `5488` bytes。该文件只验证环境能导入 mathlib 并检查基础 Lean 文件；这不是对研究命题或复制缓存的独立数学定理验收。

## 状态与交接

目标树已有的研究改动和主任务创建的 `research/platform-20260908/` 均保留，未触碰；本任务没有提交、推送或修改根模块/配置。原工作区只读审计时状态为：`main...origin/main`，已有 `research/tasks/B686-Four/frontier.md` 修改及 `research/tasks/B686-Four/round9/` 未跟踪目录。未向原工作区发出写入命令。

最后验证结果：新树使用 pinned Lean 4.33.1 和 mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，版本检查和 `Math/Smoke.lean` 编译均通过。后续可直接使用新树 `.tools/` 与 `.lake/`；`.tools/platform/` 仍由主任务独立准备。

## 完整已接受库基线验证

已先读取新树 `scripts/verify.ps1`。脚本明确只收集 `Math/`、`Tests/`、`Examples/` 下的 `.lean` 文件，执行源策略检查、`lake build`，再逐文件执行 `lake env lean`；本次覆盖 5 个文件：

- `Math/A071999.lean`
- `Math/Smoke.lean`
- `Tests/A071999.lean`
- `Tests/A071999Audit.lean`
- `Examples/ReusingA071999.lean`

执行命令（工作目录为新树）：

```powershell
pwsh -NoProfile -File scripts/verify.ps1
```

同一次记录的版本命令为：

```powershell
.\scripts\lake.ps1 env lean --version
```

完整 stdout/stderr 日志已保存至新树 `.tools/environment-20260908-verify.log`（`1293` bytes，记录时间 `2026-09-08 04:55:45 +08:00`）。版本结果为 Lean `4.33.1`，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`，版本命令 exit `0`；基线验证 exit `0`。

验收结果：`Lean source policy passed for 5 file(s)`；库构建完成 `1424 jobs`；逐文件检查 5/5 完成；最终输出为 `Verified library build and 5 Lean files.`。`Math.A071999.det_matrix` 的 `propext`、`Classical.choice`、`Quot.sound` 信息是脚本打印的现有公理依赖诊断，未导致失败。

该基线只证明 `Math/`、`Tests/`、`Examples/` 的现有范围在新环境通过；它不覆盖主任务新建的 `research/platform-20260908/` 或其他 research Lean 文件，也不宣称所有 mathlib 模块缓存已齐全。

## 窄 mathlib 缓存补全

主任务首次编译需要的 `Mathlib.Algebra.GCDMonoid.FinsetLemmas` 在复制缓存中只有源文件，没有 `.olean`。在新树中按 mathlib package target 串行执行：

```powershell
.\scripts\lake.ps1 build @mathlib/+Mathlib.Algebra.GCDMonoid.FinsetLemmas:olean
```

结果为 `Built Mathlib.Algebra.GCDMonoid.FinsetLemmas (22s)`、`Build completed successfully (1032 jobs)`，实际墙钟耗时 `35.73s`，exit `0`。生成目标 artifact：`.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Algebra/GCDMonoid/FinsetLemmas.olean`，大小 `24600` bytes。

`Mathlib.Order.Interval.Finset.Nat` 在复制后已存在于 mathlib package build cache（`94152` bytes）；为确认目标和依赖可复用，又执行：

```powershell
.\scripts\lake.ps1 build @mathlib/+Mathlib.Order.Interval.Finset.Nat:olean
```

结果为 `Build completed successfully (753 jobs)`，实际墙钟耗时 `10.75s`，exit `0`，artifact 仍为 `PRESENT bytes=94152`。

主任务已将 `Mathlib.Tactic` 聚合导入缩减为 Lean 工具链自带的 `Lean.Elab.Tactic.Omega`；Lean 4.33.1 工具链中存在 `Lean/Elab/Tactic/Omega.olean`，因此本轮没有构建顶层 `Mathlib.Tactic.olean`，该 mathlib 聚合 artifact 仍为缺失。这是有意的范围控制，不代表所有 mathlib 缓存已齐全，也没有对主任务 research Lean 文件作统一验证。

两次窄构建的完整输出和退出码保存在 `.tools/environment-20260908-mathlib-narrow.log`（`853` bytes）。mathlib checkout 在构建后仍固定为 `0df444a360eaa60ab8c11dca51a86af692955474`；所有新增 artifact 和日志均位于新树 `.lake/` 或 `.tools/`。
