# Stage04 pair23 完整会员表源码

固定H=29294603,M=500，正指数a=1..24,b=1..15。完整360格、7560个位移条件、17184个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair23.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair23.pair_check`：`pairGridCoverCheck 2 3 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair23.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_2/cutoff_3接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，798个根。先Data，再RowA001..RowA024，最后Composer/Audit。数字编译内存仍未测；最大cell含3490个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载7560个d槽与全部参数计数，核对360条唯一数字定理和同数行分支、23次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 386 | `2668da5b2e5f03d8a959690a5787f9d9e3eff56bce472a2ca5dd9914df267a99` |
| RowA001 | 17 | `ff88e6a7f221ee00f8a1b5101cc82ed554643f935d3d733382f4b9be4651ad5e` |
| RowA002 | 17 | `46dd65026f668e835dd0c7ebf76ac07105e8c3ebee432312eee1e74a1a38a0bc` |
| RowA003 | 17 | `c39d2d0f3b4a542eaf509fd299ad4d44e6a490b3fd42c80f7a517a0b0ed71778` |
| RowA004 | 17 | `e83ad650ed7161916d848a651a0e7270f5ccd388c7c4f97ec36ea5a8fb8c0510` |
| RowA005 | 17 | `122f9a719078f28db8fc23ca6cb99757d08462dbb77f5df13574be8eeb41a50a` |
| RowA006 | 17 | `669825e659edbe96fae0a28d38203c9de4f312e2cc8ce3887c644ce276755bd6` |
| RowA007 | 17 | `8eaf95cb9f7568a1c6ef70e92740802caeab956b7c67514d3f27f1dc95a7b9cc` |
| RowA008 | 17 | `da2ecac82ed35f0d384af6a7d61368500b675bdb5f3850fc029f3e75c56f574b` |
| RowA009 | 17 | `fd49817571689cf0442253e24716cfbb5dfd8f37b121fa75d6c44a6b5a0c1993` |
| RowA010 | 17 | `72f2a8b0f0e8f7099d8df24a6e83424889133635e3778483dae7d64f2f2f5e0c` |
| RowA011 | 17 | `da0b4674c8a253454fd073bafcb7a2f1d73a8f17403d396d227323b7a44f5383` |
| RowA012 | 17 | `7d1d6a495fc42c38ee562f7991a10eee681d8c1f72e26af70cd7f955c6268bdc` |
| RowA013 | 17 | `af78d40d0eaec4b11ce02deb61ec503525e225f4c789be7d604841d3aef0caa0` |
| RowA014 | 17 | `b0e03e82df28e5ced60bb6a233a169bf8abe44fdcc23af876de4ada168e1479c` |
| RowA015 | 17 | `a5680321d45e20c19e43d8c8bb2a8f122bbd130f921a924a64b46aa5558818cb` |
| RowA016 | 17 | `667176f036dd5f265e3ee1777d47ef1fb7acffdfc05c77e0761c8dce071af3cd` |
| RowA017 | 17 | `4a00b09e71a26962858cf667499ff9d57f2d3b009c0c0c1835758de97f72aab1` |
| RowA018 | 17 | `024ea378e367a88b5a457847e15ac7f11ebdc3bff9117d542f92441a2424ada6` |
| RowA019 | 17 | `d9ae0aecd044d8c40c63936626ae54abc75553d724a23260e93fc48086069c0a` |
| RowA020 | 17 | `3cd330947b321a6c9babaf92c767626aa5319354f1ace5779ec8fd37be1199fb` |
| RowA021 | 17 | `ab268c508605fbe602b29b55f3ff5223d99255ab854a8c09a0a0b5b46c8e3da8` |
| RowA022 | 17 | `812e5cacc4c6f467dc20615fe1f39ea6a1819216dd724f5d9300dbc5632daffa` |
| RowA023 | 17 | `1fb0c962da6bbb4d43f7731c31f249cfdcfcf197a15179852fc518ef7d54b09f` |
| RowA024 | 17 | `0beb7caf1a39c41aac7f3c5acaa788a06a9be656926a06b2b8e0d5b2af5c0f69` |
| Composer | 4 | `b365b7deca963e2ca8ca75212eea630da8784095a1587235a191d4f3390b59af` |
