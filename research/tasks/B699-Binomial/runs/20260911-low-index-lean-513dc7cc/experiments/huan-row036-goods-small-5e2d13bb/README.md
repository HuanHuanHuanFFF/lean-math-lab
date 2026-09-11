# Row036T goods 小块候选

候选源文件位于 candidate/lean/rows/Row036T/，最终映射到：

research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/rows/Row036T/

Block007 的瓶颈是 192 项 row036_goods 的单个巨大 simp only aggregate。候选把它按
16 项拆成 12 个 chunk：

- 每个 chunk 复用已有 row036_goodNNN_checked；
- row036_goods_chunks_eq 用原始 goods 字面证明 flatten 与原列表相等；
- row036_goods_concat_eq 证明 12 个 chunk 的 append 与原 row036_goods 相等；
- row036_goods_checked 只用 List.all_append 和 12 个 chunk theorem 组装；
- Block007 原有 Layer000..003 声明保留。

Block000 实际包含 Metadata，Block007 没有 Metadata，因此 Metadata 继续随原 J2
Block000 复用。Block000..006 只作为待成功 prefix evidence 的复用输入；当前失败整体
evidence 的部分对象没有被写入候选或 source map。Block008..017 和 Original 已复制到
Row036T，并把所有 Block007..017 的 imports 重映射为 Row036T，避免重新导入旧 Block007
和旧后续 aggregate。

静态结果：

- 12 个候选源文件，55,164 bytes；
- goods 192 项、12 个 chunk、每块 16 项；
- candidate module/declaration 唯一；
- 原 Row036J2 全部源文件、Row036Data SHA 未变化；
- Original 的 common_i036 完整原题字面保持一致；
- 没有 forbidden token、旧 Block007+ 直接 import 或新 original result。

source-map.json 和 generation-plan.json 记录 candidate SHA、原 J2 prefix SHA、最终路径和
复用门禁。候选未运行 Lean，没有 .olean、成功 prefix evidence 或 axiom/std3 验收结论；
primary 需要先用只导入 Block000..006 的 prefix consumer 取得成功 evidence，再将其作为
安全复用来源。
