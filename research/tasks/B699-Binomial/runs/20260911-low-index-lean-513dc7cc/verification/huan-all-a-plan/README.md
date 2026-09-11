# Unified A original consumer candidate

本目录只服务于本 run 的统一 A 消费者候选，未修改 fixed verifier、现有源、target-status、Git index 或其他 runner；没有运行 Lean。

目标集合是 {29} ∪ {35..184}，共 151 项。生成的 HuanAllA.lean 为显式原题消费者候选：

∀ n j : ℕ, 1 ≤ i ∧ i < j ∧ j ≤ n / 2 → ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j

每项都在 HuanAllA namespace 下以新 theorem 名 original_iNNN 包装现场的 common_iNNN 或 HuanRecoveredOriginals 的 HuanRecovery.original_iNNN，并逐项放置 #print axioms。没有使用 #check 代替原题类型，也没有添加新 axiom/sorry/admit/native_decide。

当前输入状态：

- 139 项 row046..row184：逐项读取 verification/huan-accepted/rowNNN.json、root/source SHA、成功 evidence、std3 和 reuse_evidence；
- 38..45：采用 HuanRecoveredOriginals 的完整成功本机消费 evidence 及其 8 条 reuse evidence；
- 29、35、36、37：当前无满足字段的历史 fallback receipt。生成器只把现场最新 provisional fallback 作为待 receipt 的候选输入，状态仍是 pending，不计为通过；
- 生成器优先读取包含 i、root/module_root/fallback_root、source_sha256、evidence、declaration、full_original_statement、axioms 的 receipt JSON。receipt 出现后重跑生成器，HuanAllA 的 import/root/source SHA 会随 receipt 更新，不写死 H32；
- publication-receipts.json 等没有 fallback root 和完整字段的发布记录不会被误当成历史 receipt。

复用清单见 reuse-evidence.json。当前 140 条唯一 repo-relative 顶层 consumer evidence 包含 139 个 accepted row evidence 和 HuanRecoveredOriginals 自身成功 evidence；四个历史 receipt 出现后预计为 144 条。每条 evidence 的 imported root 都逐项核对了 compile_records/reuse_records 中的 source SHA、output SHA、exit 和 axiom audit。内部 9 条 nested upstream reuse evidence 只保留为 provenance，不替代顶层 consumer evidence。当前顶层 --reuse 参数（含开关和分隔符）为 17,499 字符，低于 Windows 32K 限制。

input-manifest.json 保存 151 项输入、root/source SHA、证据、公理、历史等待 receipt 和固定 manifest/toolchain。static-checks.json 保存集合、显式原题字符串、包装数量、禁用额外假设 token、namespace 冲突风险及当前未运行 Lean 的边界。

当前 HuanAllA 仍是候选，尤其四个历史项必须等真实 receipt root 和对应 evidence 后再由主线程实际编译、检查全部 151 项传递公理。若新 receipt 反映 29J8/J4 或其他拆分路径，直接重跑本目录生成器即可更新输入，不手工覆盖 HuanAllA。
