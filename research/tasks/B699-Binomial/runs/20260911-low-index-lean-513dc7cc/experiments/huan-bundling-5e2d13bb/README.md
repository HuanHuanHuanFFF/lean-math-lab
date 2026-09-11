# i46 Lean bundling candidate

本实验只改变 Lean 源文件的编译分组，不改变 B699 的数学目标。输入是
`verification/huan-plans/row046.json` 中冻结的 239 个 i46 输出源（含
`Row046Data.lean`），其 `outputs` 顺序经过静态检查为拓扑序；原来的
`verification/runner/generate_row.py`、i46 源文件和 38--45 候选均未修改。

## 方法

`bundle_row.py` 是 Python 标准库实现的纯文本 bundler。它逐行识别顶层
`import`，不解析或改写 Lean 表达式。每 4 或 8 个相邻源文件合成一个候选块：

- 同一块内的生成模块 import 被删除；
- 生成模块指向更早块时，import 被替换为该块的候选模块名；
- `WitnessBridge`、`PairChunks`、`LayerParts` 和固定 `FiniteCover` 仍是外部依赖；
- 每个源的 namespace、`set_option`、声明文本和 `#print axioms` 文本均原样保留；
- 最后一个块直接包含原 `Original.lean` 的 `common_i046`，没有生成 239 个 shim。

候选目录：

- `candidate8/`：8 源一块，30 个候选模块，根为 `candidate8/Original.lean`；
- `candidate4/`：4 源一块，60 个候选模块，根为 `candidate4/Original.lean`。

每个目录包含 `bundle-manifest.json`、`source-to-bundle.tsv` 和
`bundle-imports.tsv`。manifest 绑定源计划 SHA256、源到块的完整映射、跨块
imports、每个块的 SHA256 和根模块。

## 静态结果

两种分组都得到相同的源声明集合：693 个声明、478 个 `set_option`、573 条
`#print axioms`。原 239 个源的 419 条内部 import 边全部向前，生成后没有旧
239 模块名出现在候选 import 中，也没有前向块边。根中的原题陈述仍为：

```lean
∀ n j : ℕ, 1 ≤ 46 ∧ 46 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 46 ≤ p ∧ p ∣ Nat.choose n 46 ∧ p ∣ Nat.choose n j
```

禁用词扫描（`axiom`、`native_decide`、`sorry*`、`admit`、
`Lean.ofReduceBool`）未命中。`test_bundler.py` 的小型对照覆盖了同块 import
删除、跨块 import 映射、选项和 `#print axioms` 保留，输出
`SELF_TEST_OK`。上述均为文本/拓扑证据，尚未构成 Lean 验收。

## 主线程下一步

主线程可先用 8 一块候选；`verify_huan.py` 的 `--root` 按 manifest 顺序接收
30 个块根，并复用已经成功的 shared26 evidence（如路径仍为下列固定证据）：

```powershell
$m = Get-Content 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-bundling-5e2d13bb/candidate8/bundle-manifest.json' | ConvertFrom-Json
$roots = @($m.blocks | ForEach-Object { '--root'; $_.path })
python 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/runner/verify_huan.py' `
  --repo . --package-root .lake/packages `
  --reuse 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260911T004440769454Z/evidence.json' `
  --memory-mb 3072 --timeout 900 @roots
```

若 8 一块的资源峰值超限，再把 `candidate8` 替换成 `candidate4` 并使用其
manifest；不得把原 239 个源重新作为 roots。真实 Lean 根编译成功后仍需按
主线程标准做 fresh root、transitive std3 axiom audit，并单独记录数学接受状态。

## 风险边界

文本检查不能证明 Lean 的命名解析、块级资源峰值或 `.olean` 复用均成功；这
些只能由上述主线程命令的真实 Lean 证据确认。若外部四个支持模块的 `.olean`
不在当前复用证据中，主线程需先完成 shared26，再重跑候选根。候选通过也只
表示同一 `common_i046` 证明被重新分组编译，不扩大 i46 的数学量词或 B699
全题结论。
