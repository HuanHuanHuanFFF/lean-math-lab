# Old CRT descent source inventory

本清点只读固定 delivery：D:\CodingProject\Math\.tools\worktrees\b699-huan-5e2d13bb\research\tasks\B699-Binomial\runs\20260910-pade-three-closure-4edad426\delivery，未运行旧完整搜索、Lean 或 Git，也未修改旧文件。

旧下降链：i=11 为 2^4096 → 2^109 → 29,294,603；i=16 为 2^65536 → 2^162 → 73,516,021；i=21 为 2^32768 → 2^192 → 28,828,146。逐阶段 H/M、幂族/幂对、非空族和等差项计数在 crt_stages_11/16/21.json 中，属于可复用具体数据。

固定 delivery 有 49 个 block JSON（11/16/21 分别 6/15/28 个）；逐文件 SHA、字节数、块数见 source-inventory.json。terminal_certificate 三文件保存完整候选区间和末端见证，候选行为 12,167、16,720、22,240，全部归零；独立检查总 CRT 幂对 397,261，末端候选总数 51,127。

报告中的旧高度 dyadic-M 大网格只做精确计数、没有执行；i=11 计数为 9,902 个幂族和 728,313,033 个幂对—位移项。压缩后 CRT 阶段和终端证书已有具体 JSON。终端事件预算是128 MiB，记录的独立验收峰值约97.3 MiB、生成最高约99.1 MiB。

最小真实样例建议先选 i=11 最终固定点的 max_attainer，再核对 terminal_certificate_11 的首 family、首段 [501,4010]、首个顶端见证 [24,33,23]；特殊路径是 n=330 的 [12,162,163] 与 [163,165,109]，共154个 j。主任务小探针 result.json 已纳入 inventory（仅读比较，未重跑）；其 i=11 链与旧 stages 的 max_attainer/上界一致，停在 29,294,602，不能替代完整证书。

ProC R2 已归档于 D:\CodingProject\Math\.tools\worktrees\b699-huan-5e2d13bb\research\external-results\20260911-proc-r2-ea89a10a，原 ZIP SHA 为 ea89a10ad9f493932741439204e386cc22e9f5cec9645f8ee468f9172af93789，intake-check 验证 211 项清单、212 文件、CRC PASS、new_full_indices=0、Lean=false。归档包含具体 threshold_certificate、threshold summary/check、端点证书、A 侧 CRT source（run_crt/reverse_crt/vendor 原语）及有限桥接数据；它们可作为带 SHA 的外部资料复用，但仍不是 Lean 或 B699 原题接受，也未重新验收上游 A/B。主任务的新 terminal-filter-result 另已登记为纯计算：11690 候选、强条件余 730/1030/1032/1380，仍有明确 Lean/全覆盖缺口。完整输入和差异见 source-inventory.json 与 CORRECTION-proc-r2.json。
