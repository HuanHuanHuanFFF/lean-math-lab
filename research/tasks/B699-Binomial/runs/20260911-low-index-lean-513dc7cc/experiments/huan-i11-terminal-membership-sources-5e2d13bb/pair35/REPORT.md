# Stage04 pair35 完整会员表源码

固定H=29294603,M=500，正指数a=1..15,b=1..10。完整150格、3150个位移条件、5767个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair35.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair35.pair_check`：`pairGridCoverCheck 3 5 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair35.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_3/cutoff_5接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，351个根。先Data，再RowA001..RowA015，最后Composer/Audit。数字编译内存仍未测；最大cell含2096个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载3150个d槽与全部参数计数，核对150条唯一数字定理和同数行分支、14次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 167 | `e6ddeb78eb76bfce681c262c7c4cd7a4ed65e311c7fcce5ed0ed1e84371d034c` |
| RowA001 | 12 | `b4c6606c16c02183da41ae648665baa593442a050d60bcbbb4fd1d71a3fd3c83` |
| RowA002 | 12 | `0b939605d71badcc7d9bc78aa4ad06eeea617c1f3b22fbb1c84341cfe257bbbb` |
| RowA003 | 12 | `bc7b4479a4e97fcc1cac5e986cf680c699136fce02ed64450ddad74ee828ee21` |
| RowA004 | 12 | `12704b385e7aece6d79d1444cca225525654291a66741b29232dd06b37edf112` |
| RowA005 | 12 | `d1a48ac21912b5b35b617eead283b21d5f66f4a22bbf9e5abc06a882389afb3f` |
| RowA006 | 12 | `a57e13ab9d2636207fa4c8ed22be0beb9c956770e4c7f001a0be130f71b3a639` |
| RowA007 | 12 | `cfb92bae39dbd615c3db48849458037fff182f3fa11f9ae4aec636037a19b9cf` |
| RowA008 | 12 | `8b3b77304f120c2bd5d1ecae1b5f52da926d1cbf695bf1fcb8e4580be2581a44` |
| RowA009 | 12 | `e27a0b393aad4a8cad191183caa62e8dc87a5784b4754fe9074387ce1fe813cc` |
| RowA010 | 12 | `045c9bbdaf17cb50f00fe0b8424d9509d26c8b6a24d605d6e6e663f7d2b8cea0` |
| RowA011 | 12 | `d78a8b2c1ef0d73c1a3c593109a8adaf112a63e66ae83b0f52e31e3660601f6f` |
| RowA012 | 12 | `7a2ca343cda73391e09ef5daadb515da949f00b86233888446e6fb1a0074aa0d` |
| RowA013 | 12 | `3c1ebc152d9442013fbecc186b855347b983d1b139261fe62f2c86e6f1589741` |
| RowA014 | 12 | `ca832927d08d5331a39081a6a99dbd6b00e720fb21b0986de35fd51fb0cdb618` |
| RowA015 | 12 | `de7b2b801af4686df885ff7b6a602baa4a0dcbe68d75197a7c17605e6872e50d` |
| Composer | 4 | `af31eb4b9005b4548d4c0a9a3c52fbbb4c41b0feef188314cf0940767de34a6a` |
