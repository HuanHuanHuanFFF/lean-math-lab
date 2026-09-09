# 发布前审计

审计对象是本 run 的当前工作树内容；新鲜验证依据为 [`verification/20260908T200259Z/evidence.json`](../verification/20260908T200259Z/evidence.json)，生成时间为 2026-09-08 20:02:59--20:04:44 UTC。本文只记录发布前核对，不改变历史记录或数学结论。

## 新鲜验证与哈希

- `success=true`、退出码为 0；声明的 v4.33.1 工具链、`-j1`、1536 MB 限制、D 盘临时/缓存范围和新 olean 输出均已记录。
- `source_closure` 与 `compile_records` 各有 11 项；37 个 `#print axioms` 声明均有 37 个实际输出，所有输出只含允许公理 `propext`、`Classical.choice`、`Quot.sound`，没有 `unexpected_axioms`。
- 包字段是 `pins`，不是 `packages`；`pins.Count=9`。9 个包的 manifest revision、Git `HEAD` 和 clean 状态均匹配。`Cli` 的 `cache_exists=false` 已被报告记录，但本次闭包没有导入 `Cli`，不是失败原因。
- 当前 `lake-manifest.json` SHA-256 为 `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`，与 fresh evidence 相同。当前 11 个 Lean 源文件逐一与 evidence 的 `source_sha256_before/after` 相同：

| 当前源文件 | 当前 SHA-256 |
|---|---|
| `Math/B699/CofactorCriterion.lean` | `341180b428b6927e72bd7de10c0ca03b3f8d4eb4f778c1aa4a3aeea4f33b9d79` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean` | `0005d90a062359af36b95c0420440e4ff7c9b4187a6fc319884a286ae6209697` |
| `research/tasks/B699-Binomial/runs/20260908-external-reductions-b3c1b7/lean/DivisorTransfer.lean` | `0299face333237445eddd2c11acbf16c554d225028de7b509c8cfe603fc9996e` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/PrimePowerTransfer.lean` | `3b0529e66f438bbd6d8c19f08f4a5b5ad132d2cd86e09e8bd1a1601fc49eecf4` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/SmallPartBound.lean` | `b49f7d6f9a83e534e546b65bb73e3a6d5afb60f77d7679366ff575d6615cbbb7` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/SourceStatements.lean` | `c12917867050fbb5f3c79eb064d4e5037720d6b0ba1fbeed32d7d3632633dc3e` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/BandConsumer.lean` | `6c74c89544f678ce502c016bfb9624164fbb01fa14739f2cbee4e3225ca138e5` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/FiniteBoundary.lean` | `e8b4d680895e115f36c733db438d5361bff28b0011b72537a64299964124543a` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/CompositeWindow.lean` | `53949a87f25856816642cbbe9e0594d1197d5db6ee7483a36b8602bc888c9514` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/SlopeThree.lean` | `18251dd705447bd626c45d27c22e7e88d2d6df40c138bf5d8c033fd41b36b596` |
| `research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/SlopeThreeFiniteCases.lean` | `13e964f29c4a21b2f9e9b03213e9bfe54701eb8482ca0723789307b1441f9c1b` |

Python provenance is partial but consistent where recorded. Current `verification/verify.py` is `c9b73e1a1d39cdb5a696df8aa130caeebb356d7f9373b958c1bac4da7c1d7962`, equal to `verification/runner-checks.json.verifier_sha256`. Current `experiments/composite-boundary/audit.py` is `e27ee2d00188b53525715c68f576dfb667ff0937b5f1b406ee981c745d557648`, equal to `result.json.script_sha256`. Current `experiments/composite-boundary/generate_lean.py` is `f77754219e1b46fd693aba9e0f0a9cb948499f1911ea75ffd1af6fa404c5f134`; fresh evidence does not record this generator hash. The frozen `result.json` is currently `2e4498547d31eb446b60d102d8b05cdf8abb9eca1eb77134561de5b3da5d3151` and its 333 certificate records/64 rows are present. Thus the generated Lean source is hash-bound by fresh evidence, while the generator and most of the 12 Python files are not independently hash-bound by that evidence.

## 路径、链接和 payload

The bounded run inventory contains 145 files in 21 directories: 9 Lean, 12 Python, 18 JSON, 32 Markdown, 72 log files, and two additional text files. No file has a checked binary suffix (`.exe`, `.dll`, `.olean`, `.ilean`, `.pyc`, archive, or object), and no `.lake`, `.tools`, or `__pycache__` directory occurs inside the run. Git currently reports the run files as untracked, which is expected before the parent stages the exact run.

I checked the task entry, current run README, frontier report, and verification README. All 13 internal Markdown references resolve; the external conjectures.io link is outside this local path check. Across the two public evidence snapshots, `runner-checks.json`, and the verification README, 59 files were checked; none contains a detected Windows/Unix absolute path, user-profile path, `AppData`, `OneDrive`, or similar machine-path payload. Public command paths use the portable aliases recorded by the verifier; raw diagnostic paths remain outside the run under ignored `.tools` output.

## Items parent must account for

The fresh Lean result itself is not blocked. Before publication, the current prose needs a status pass:

- Run README line 8 still says there is no new Lean accepted result; this is stale after the successful fresh evidence.
- `frontier.md` lines 15, 16, and 18 still describe final closure/consumer acceptance or finite-boundary memory compression as pending; these are stale after the 20:04 UTC evidence. The dated 19:32 checkpoint in the run README can remain as historical context if the current status is made explicit elsewhere.
- Run README line 16 publishes workstation details (CPU model, core count, memory/disk availability, CPU load, and running-service context). This is not a secret or absolute path, but it is host metadata and should be treated as a publication redaction issue under the current packaging rule.
- The evidence does not hash the generator or the other Python producers. This is a provenance/documentation gap rather than a Lean failure; retain the generator/data relationship explicitly or add a hash record if the publication contract requires every producer to be bound.

The parent-provided Jacobi/discriminant `i≥10^6` exclusion and the `n=3j` paper-plus-finite closure remain separate paper/finite evidence claims. The fresh report upgrades only the 11 listed Lean modules and 37 actual axiom-output checks; it does not turn those mathematical routes into an unrestricted Lean theorem or a full B699 solution.