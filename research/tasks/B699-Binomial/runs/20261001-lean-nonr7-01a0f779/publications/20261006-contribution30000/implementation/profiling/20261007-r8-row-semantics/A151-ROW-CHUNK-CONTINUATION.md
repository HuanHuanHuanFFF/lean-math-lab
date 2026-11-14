# i44 完整 Row 的后续检查入口（未试）

本文件只记录下一授权窗口的执行方案。当前最终 A151 源 `repairs/20261007-a151-structural/A151Packed.lean`，SHA `33d845cdfb72eff2dc7aa15d5520f93450b7d78c32aa045eb95d28c80d9cdcea`，保持不改。完整 S 仍待验。本方案没有运行 Lean，没有新编译对象，也没有数学接受。

已测输入是同目录 `probes/A151ActualFullRow354209.lean`，SHA `9b00da210281eaf1905c62b3a063f067080dda9c61b3d1ab882927edabb11c70`。其 i44 行为原源码的零起始索引 10（第 11 条）数据，行表达式 SHA `96000df300139e39b0713d300933cb0f504a66e467789ad840f7667f34e96650`，完整保留 354 个 goods、209 个 layers、height `(i=44,r=14,s=29,n0Power10=66)`。不能用删减数据、外部数学参数或未验假设让检查通过。

实际 `Goods354` 编译 0，约 23.825 秒；完整 Row 编译 1，约 103.748 秒。后者报 `Decidable` 归约停住，既非 `isTrue` 也非 `isFalse`，不能称为计算出反例。根命令核检查约 85.9 秒，采样内存峰值约 12.85GB，Docker 未报 OOM。精确日志、对象绑定、资源聚合及完整错误见 `ACTUAL-LAST5-ROW-DIAGNOSIS.json`。

下一尝试保持同一个完整目标：

```lean
theorem profilingFullRow : N5.d48 profilingRow = true := by
  -- 将同一 Bool 的五个合取逐项证明，再组成原目标。
```

`d48` 的五项依次是原 151 heights 中的 membership、全部 354 个 `d50` goods 条件、goods 对 `[2*i+2,i*(i-1)-1]` 的 `d34` 覆盖、layers 对 `[i*(i-1),n0-1]` 的 `d34` 覆盖、全部 209 个 `d36` layer 条件。只改变证明分组，不能改变任一谓词、端点、数据或最终 Bool。前四项可以分别尝试原 `decide +kernel`，并分别记录完整错误和核检查成本。

最后一项可用 List 的 take/drop 和 all/append 恒等式分成 14 块：起点 `0,16,32,...,208`；前 13 块各 16 层，最后 1 层。每块仍调用原 `d36 profilingRow.height profilingRow.goods`，使用相同完整 goods。证明每块 `.all = true` 后，通过 append 合并成原 `profilingRow.layers.all ... = true`，最终组成上面的同一完整目标。每个小核证明都独立检查，避免将整个 209 层反射计算集中在单一辅助证明中。性能改善只是待测假说。

需要逐项完成的依赖与正确性义务：

1. 使用固定 Lean/mathlib pin 中的 `List.take_append_drop`、`List.all_append` 和 `Bool.and_eq_true`，先核对精确签名并编译一个小的通用合并引理。合并只能来自这些内核定理；不可把未验块当输入假设交给完整 Row。
2. 每个 block 的 take/drop 顺序必须给出精确拼接等式，覆盖全部 209 层，无遗漏、重复替代或顺序改变；最终块长度也要核对。
3. 全部原行字段、decoder、generic checker 与 height 前置保持原字节或提供明确可逆映射。新源重新做 source policy、字节与声明门槛、数据绑定、完整错误/资源记录。
4. 先实际检查第一块 `profilingRow.layers.take 16` 的原 `d36` 条件，预算应经新一轮明确批准、源码与 CLI 一致、串行并受绝对截止护栏。通过只证明这 16 层，不证明整行或完整 S。
5. 第一块有真实错误时读完整诊断，必要再分离 `d9` 数值条件与 `d73` interval-pair 覆盖；不得把外层 stuck matcher 当作 Boolean false。若通过，完成其余 13 块并合并原 Row，再评估全 151 行的实际成本。

完整 Row 即使通过，也仅是 i44 有限证书前置。仍须实现和验完原 151 个索引、37,313 个 goods、3,919 个 layers，以及原 unrestricted n/j consumer 的同一实际素数对完整双 choose 的结论；最终独立编译、literal、传递 AX、官方政策和 900 秒门槛全部仍需检查。若实测允许而整件仍超时，按有意义 i 区间拆独立自包含 artifact 是另一个未试包装方向，必须重新核总 4MiB、每件 1MiB/200 声明及全部区间精确并集，不能只交通过的子集。
