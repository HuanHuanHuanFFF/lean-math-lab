# Historical private bundle candidates v2

v2 只合并每个历史行自己的源文件，避免把共同模块重新定义到多个 bundle。

私有路径规则：

- lean/rows/RowNNN/ 下的文件；
- 对应的 lean/RowNNNData.lean；
- Math/、其他 run 的 Lean、SharedEnvironment、WitnessBridge、LayerParts、PairChunks 和其他共同源都留作统一消费者的 imports。

四行静态结果：

- i=29：50 个私有源，2 个 bundle blocks，351 个声明；
- i=35：1018 个私有源，32 个 bundle blocks，1467 个声明；
- i=36：38 个私有源，2 个 bundle blocks，280 个声明；
- i=37：344 个私有源，11 个 bundle blocks，626 个声明。

ownership-report.json 中列出了每行声明集合文件、shared26 依赖、SHA 差异和所有交集检查。四行私有声明与 shared26 声明、彼此之间均无交集；每行内部也没有重复声明。

row029 另有 28 个 v1 closure 源被排除，其中包含 23 个 shared26 文件和 5 个共同 Witness/Layer 文件。row036 排除 24 个 shared26 文件；SharedEnvironment 的历史 SHA 与当前 SHA 差异仍保留在 plan 中。所有排除源仅记录为依赖，未复制进 v2 bundle。

所有候选仍是 uncompiled_candidate。只做了 bundle_huan_row.py 的文本保序、imports、声明、set_option、#print axioms 和禁止 token 静态检查；没有 Lean、对象、下载、Git 或状态变更。历史29/35/36/37不会因这些候选新增计数。
