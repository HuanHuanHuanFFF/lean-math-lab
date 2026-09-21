# 已合入验收资产与新根恢复建议

本盘点只读取已合入的 `20260910-large-index-lean-7c4e2a91` 与
`20260909-middle-index-cert-1a78f8cd`，没有把未绑定的旧缓存当作验收证据，也没有启动
Lean 或下载依赖。两批都固定 `leanprover/lean4:v4.33.1`，实际编译器为
`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`，`lake-manifest.json` SHA-256 为
`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`，mathlib 为
`0df444a360eaa60ab8c11dca51a86af692955474`。

## 可复用的成功根

| 批次与根 | 原题入口 | 项目闭包 | 本次新编/绑定复用 | 验收结论 |
|---|---|---:|---:|---|
| [大指标最终根](../../20260910-large-index-lean-7c4e2a91/verification/20260909T185800Z/evidence.json) | `lean/Acceptance.lean` | 391 | 2 / 389 | `B699LargeIndex.original_statement`，实际公理只有标准三项 |
| [大指标恢复根](../../20260910-large-index-lean-7c4e2a91/verification/20260909T190240Z/evidence.json) | `lean/Acceptance.lean` | 391 | 0 / 391 | 恢复入口试跑；不是再次内核运行 |
| [中指标最终根](../../20260909-middle-index-cert-1a78f8cd/verification/20260909T145049Z/evidence.json) | `lean/ExtendedComplete.lean` | 404 | 246 / 158 | `B699Middle.common_185_999`，实际公理只有标准三项 |

大指标 391 个证明源绑定到提交 `b9b51897f3c614c9295a7e7527057e2ec86f00bb` 的 Git blob；中指标 404 个源绑定到提交 `3f57affefb15c83b0f0deb5e4327d506d00c3178`。两批的固定九个包均检查了 manifest revision、实际 HEAD 和 clean 状态；`Cli` 的 pinned revision 是
`6130a47896ce867c6a4a55373441e59e565bad0f`，但 cache 不存在且不在这两个根的实际导入闭包中。大指标根记录 15 个实际使用的固定 package cache 模块，中指标根记录 14 个。

## 源码、对象和依赖绑定

入口见大指标的 [extend.py](../../20260910-large-index-lean-7c4e2a91/verification/runner/extend.py)、
[verify.py](../../20260910-large-index-lean-7c4e2a91/verification/runner/verify.py) 和中指标的同名脚本。两个 `extend.py` SHA-256 相同：
`2468C1343BA79BE921A202A9E55D02A2A3D087A3D65DE256BAEA8D4DF33AC38B`；两个 `verify.py` 不同，必须成套使用对应批次脚本。大指标版本的单源命令还固定了
`-j1 -M1280 -DElab.async=false -DautoImplicit=false -DrelaxedAutoImplicit=false`；中指标版本没有 `-DElab.async=false`，不要混用后把它们当作同一运行器。

`verify.py` 每次从入口建立精确 project import closure，只把
`PACKAGE_ROOT/*/.lake/build/lib/lean` 作为固定依赖对象；当前批次项目对象写入新的
`.tools/<large|mid>/verification/<UTC时间戳>/olean`，`LEAN_PATH` 首项就是这份新目录。每个
源保存前后 SHA-256、源码快照、`.olean` SHA-256 和实际日志 SHA-256，源码在编译期间发生变化、Lean 没有生成对象或公理审计失败都会使该源失败。

`extend.py --base-evidence` 只接受同一工作树内的 evidence。它首先检查 manifest 与工具链，随后对每个可候选记录核对：成功且无 failure、源码前后哈希相同、源码 policy、精确 imports、对象和日志哈希，并递归核对所有 project import；它还重新解析留存实际日志中的公理输出。通过后才把已有对象复制到本次新 `olean` 目录，并在记录中写入 `reused_from`、对象 SHA 和基准 evidence；没有通过就重新编译。单独看到旧 `.olean` 路径不能升格为复用或验收。

### 当前工作树缓存边界

截至本次盘点（2026-09-10 07:55 UTC 前），`b699-tail-20260910-9f6c2a17` 工作树没有 `.tools` 原始对象目录。主任务随后新编出的 075554Z 根不受此历史盘点结论影响。只读盘点到旧交付 worktree 中仍有：

- `.tools/worktrees/b699-large-lean-20260910-7c4e2a91/.tools/large/verification/20260909T185800Z/olean`：391 个对象；`190240Z/olean`：391 个对象。
- `.tools/worktrees/b699-middle-lean-20260909-1a78f8cd/.tools/mid/verification/20260909T145049Z/olean`：404 个对象。

这些对象的 evidence、源码和日志是各自旧 worktree 的路径绑定；本工作树不能仅凭 JSON 或缓存路径声称复用。若不先把对象和日志以当前工作树路径重新绑定，下面的 `--base-evidence` 会逐项核对失败并触发新编译，这仍是可接受的全新根，但应如实记录为新编而不是复用。

## 本轮新根的最短可执行参数

先由主任务在当前批次自己的 `verification/runner/` 放置同一套 `extend.py`、匹配的 `verify.py` 和 `monitor.py`；直接调用旧批次脚本会把 `run_dir` 解析为旧批次，输出会落到旧 run。随后在当前工作树根执行（`<tail-root>.lean` 与 `<tail-theorem>` 替换为本轮实际入口和声明）：

```powershell
$repo = (Get-Location).Path
Set-Location $repo
$run = 'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17'
$large = 'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
$middle = 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd'
$lean = $env:LEAN_EXE
if (-not $lean) { throw 'Set LEAN_EXE to the fixed Lean 4.33.1 executable.' }
$packageRoot = $env:MATHLIB_PACKAGE_ROOT
if (-not $packageRoot) { throw 'Set MATHLIB_PACKAGE_ROOT to the fixed read-only parent containing mathlib and other pinned packages.' }
& 'C:\Python314\python.exe' -u -B "$run/verification/runner/extend.py" `
  --project-root . `
  --lean $lean `
  --package-root $packageRoot `
  --root "$run/lean/<tail-root>.lean" `
  --base-evidence "$large/verification/20260909T185800Z/evidence.json" `
  --base-evidence "$middle/verification/20260909T145049Z/evidence.json" `
  --memory-mb $MemoryMb --timeout 180
```

两个 `--base-evidence` 可以同时提供；候选模块仍须通过上述源码、对象、日志和递归依赖核对。大指标的 [resume.ps1](../../20260910-large-index-lean-7c4e2a91/verification/resume.ps1) 只适合恢复大指标自身，并且其 `run_dir` 固定为大指标批次；中指标没有包装脚本，冷入口记录在 [handoff.md](../../20260909-middle-index-cert-1a78f8cd/handoff.md)。
`$MemoryMb` 必须先由主任务按本次现场空闲内存和余量显式设置，不能盲填历史值。本轮已观测最小导入峰值约 1.09 GB；当前按现场空闲内存留余量计划约 3 GB，但这只是本次运行的资源决策。两项旧验收记录中的 `-M1280` 仅是历史参数，不能直接作为本轮默认值。

编译成功后，runner 已逐源执行 `#print axioms` 审计；再用本批复制的 `final_integrity.py` 做完整性收束。该脚本的 `ALLOWED` 恰为 `{propext, Classical.choice, Quot.sound}`，会递归检查 source/object/log provenance、manifest、工具链、pins、source policy、runner 哈希和最终 theorem 的实际打印；它是证据完整性审计，不是第二内核。输出必须指定当前新根下的新文件，例如：

```powershell
& 'C:\Python314\python.exe' -B "$run/verification/final_integrity.py" `
  --project-root . `
  --evidence "$run/verification/<new-stamp>/evidence.json" `
  --theorem '<tail-theorem>' `
  --expected-modules <closure-count> `
  --output "$run/verification/<new-stamp>/final-integrity-tail.json"
```

## 哪些入口会写入或覆盖

- `verify.py` / `extend.py` 先创建新的 `verification/YYYYMMDDTHHMMSSZ`，冲突时加 `-01` 等后缀；同时创建新的 `.tools/.../verification/<stamp>`。旧 evidence 根不会被覆盖。当前根内部的 `evidence.partial.json` 会随进度更新，结束时 `evidence.json` 才是成功判据。
- `resume.ps1` 只是调用 `extend.py`，`--base-evidence` 只读旧根；它也会创建新时间戳根。不给基准 evidence 会走完整新编译。
- `final_integrity.py` 对 `--output` 直接 `write_text`；若传入已有文件会覆盖。必须使用本轮新根下的新文件名，不能复用两个已合入批次的 `final-integrity*.json`。
- 大指标的 `audit_release.py` 把结果固定写到该批的 `verification/final-source-binding.json`，重跑会覆盖同名文件；它还硬编码大指标 run 和 source commit，只作旧交付的源绑定参考，不是当前尾部的验收入口。
- 可选的 `compile_fixed_cache.py` 为 `verification/fixed-cache-<stamp>` 建新目录，并拒绝覆盖已有 `Mathlib.Data.Nat.Size.olean`；它仍会在成功时写入 pinned mathlib cache，当前本轮未运行。

## Chebyshev 缓存元数据

此前按单个 `Mathlib.NumberTheory.Chebyshev` 源文件的直接导入头做的 6 模块采样不能代表
public import 闭包，已删除其缺失清单。本轮保存的
`verification/startup/chebyshev-dependency-scan.json` 是更宽的静态递归扫描：共 2755 个模块，
其中 264 个没有对应 `.olean`。这是缓存缺口元数据，不是最终 Lean 接受闭包，也不是编译或网络下载结果；应以本轮完整 `verify.py` 根的实际 closure、编译记录和公理审计为准。
