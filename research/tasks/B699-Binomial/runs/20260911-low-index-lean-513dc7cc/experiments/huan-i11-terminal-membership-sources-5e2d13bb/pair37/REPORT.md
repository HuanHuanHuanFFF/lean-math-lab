# Stage04 pair37 完整会员表源码

固定H=29294603,M=500，正指数a=1..15,b=1..8。完整120格、2520个位移条件、4256个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair37.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair37.pair_check`：`pairGridCoverCheck 3 7 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair37.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_3/cutoff_7接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，291个根。先Data，再RowA001..RowA015，最后Composer/Audit。数字编译内存仍未测；最大cell含1496个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载2520个d槽与全部参数计数，核对120条唯一数字定理和同数行分支、14次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 137 | `dc5a022de8e4ac900e0d97ed828f3fcb700cb7608e779f55202209b5ace983c4` |
| RowA001 | 10 | `f44ebcf6be642c1153fd7cb5ff6ad85f3d06182f911e02a1026ef5e60402abdc` |
| RowA002 | 10 | `d7b326b5d0d743bdc0521e024d2332bbcba9d63d9553e5fd24076a51271dca58` |
| RowA003 | 10 | `adef408cabf61b128083dda229eeca46d62758804d1bd8db0423d429ff7fb29b` |
| RowA004 | 10 | `fe0152ebfce9881e365941378d53d5c809718ab1778b1f1d98dced54521919e0` |
| RowA005 | 10 | `a5b6b12c5bd5455322a35242b578f3dffe3f96f2e482c2f4ed41a6d79de0529b` |
| RowA006 | 10 | `177cd7133b0d9344ab39fd2612c958e703619391b72aceddfa2189f6705a9b61` |
| RowA007 | 10 | `0a728f846beaac60b948cd818670ca5b573b94ee6a66682708d6b85bacbb84ef` |
| RowA008 | 10 | `1d9d511abe03ccece4f82e7ad9d5ceb171c15a3ae7d7c64749dfa324a6d6ad6a` |
| RowA009 | 10 | `9401a48ee780ebee6251a55d2abbc027622b277f706bad5f9579d2581fc66cca` |
| RowA010 | 10 | `1ef4b621d18787535c7faf6cfe001df0b07f58a897e9567becba92ed6cee851b` |
| RowA011 | 10 | `ac06d3a0f83e0adc0980ad0c266cab3d0bf49acaa5be94bb7bb9fcc6d6871ed4` |
| RowA012 | 10 | `8a75a1c31d401a6259e108253d802d6ea46eb4a220ea2809e89aca7e3e07a3f1` |
| RowA013 | 10 | `c9508841d724c4bc39136cf15c2976ef3bf49c84607bd399c514c1797b5dca42` |
| RowA014 | 10 | `f95143f4b98219ed84aaf949f5b38c648a5f1b4459e8b81bcbee6c08e2cbb86d` |
| RowA015 | 10 | `87d9bbaf34ebb0468b73b898ea76989f057092213ab8f66517805ab518b007b3` |
| Composer | 4 | `f7fad240f6ae6bb2298142c492efc32e5428404bab80cb735b6b140fff3bc657` |
