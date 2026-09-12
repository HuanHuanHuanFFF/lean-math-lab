# Historical 32-source bundle candidates

本实验只准备历史 i=29,35,36,37 的可复用文本合并候选，供后续统一消费者实际验收。它不新增原题计数，不修改历史 acceptance、原 plan、Lean 源码、fixed checker 或状态文件。

## 输入与适配

- plans/row029-bundle32.json：按最终 row029 acceptance 的 compile source 顺序生成；其中一个历史 preflight EnvironmentSmoke.lean 记录在当前工作树不存在，已显式列入 excluded_source_records，其余 78 个现存源文件逐文件绑定 SHA。
- plans/row035-bundle32.json、plans/row037-bundle32.json：沿用各自冻结原 plan 的 outputs 拓扑顺序，并用最终 acceptance 的 accepted-source SHA 复核。
- plans/row036-bundle32.json：旧 plan 缺失，按最终 acceptance 的 compile source 顺序生成最小适配计划；SharedEnvironment.lean 保留历史 SHA 和当前 SHA 差异，未覆盖源文件。

## 静态结果

bundle_huan_row.py --block-size 32 已对四行运行：

- i=29：78 源 → 3 blocks，644 declarations，426 axiom-print commands。
- i=35：1018 源 → 32 blocks，1467 declarations，1395 axiom-print commands。
- i=36：62 源 → 2 blocks，568 declarations，354 axiom-print commands。
- i=37：344 源 → 11 blocks，626 declarations，604 axiom-print commands。

现有 bundler 的静态审计通过：源顺序拓扑、块内/跨块 imports、声明计数、set_option/#print axioms 计数和禁止 token 检查均通过。明细在 static-report.json、各 bundles/row*/bundle-manifest.json、source-to-bundle.tsv 和 bundle-imports.tsv。

## 边界

候选文本保留原声明正文和 common_i 完整量词定理；没有执行 Lean、没有下载依赖、没有生成或验证对象，也没有把候选写入正式 lean/。后续必须用真实统一消费者重新编译并审计传递公理，成功前不能把这些 bundle 当作接受证据。
