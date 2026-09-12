# Stage04 pair27 完整会员表源码

固定H=29294603,M=500，正指数a=1..24,b=1..8。完整192格、4032个位移条件、7289个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair27.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair27.pair_check`：`pairGridCoverCheck 2 7 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair27.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_2/cutoff_7接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，462个根。先Data，再RowA001..RowA024，最后Composer/Audit。数字编译内存仍未测；最大cell含1498个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载4032个d槽与全部参数计数，核对192条唯一数字定理和同数行分支、23次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 218 | `78cf5b7443e2c690e10ec3b10017067122a64c631b4e8ec2990144ab8d60f3ff` |
| RowA001 | 10 | `536fea16bb325ea17d7c9b4b2c50a8606cf44a107c8e8cff90159d8cacb573ac` |
| RowA002 | 10 | `0f40ab8315bbc05c7576b9e3bfd80751bb7d28a9b5ec1cf9c22d5000d24a7e2f` |
| RowA003 | 10 | `de7feea59541d0b3cabce76811034dc4fcfb489d537b82c8bb24913f83df4ec6` |
| RowA004 | 10 | `69c1c9bea243f6af33bfafaa8b4463b566421a53a2f87151d70e783a0f474518` |
| RowA005 | 10 | `2c7f34416699f388c32220f53c179218d462f36b80197115cb1348493586371f` |
| RowA006 | 10 | `ca55ac22a8f1fbd755ae4c158849d29a50646b87203e249717660425b7e4a4e1` |
| RowA007 | 10 | `63eb46264c1332eb5a7a6ea7f18aa4199a9a301064560ce27c31ab32247912c6` |
| RowA008 | 10 | `14d2e907f5c5fd4965071be79fe8a2ce5154e4fbdedff72a91c904f576b01a47` |
| RowA009 | 10 | `d3c2145272de5143f1e941ab6e286e6a43a4c480eea31c57dc4a383b81b3efd4` |
| RowA010 | 10 | `02bbd7adcf1f52a4825cd2637d2b0dcca2d6b0f44910aa3672cd3113b848b2d4` |
| RowA011 | 10 | `4b025502cbc8a830f65c9db05ec74d6a8ecd1f0486813504dd79160e5b93a7a5` |
| RowA012 | 10 | `bdb3e0f7456c4d9279b34d210c55d773c949f559ae27222355d7482ab57191c3` |
| RowA013 | 10 | `d648a22892614a3553dc4f2924991d8ad83de5eaeba6563901740f3376decadf` |
| RowA014 | 10 | `31228bd9e0710b8e26255419af64de1f750acc134cda0ab30da81a4453c1f6c7` |
| RowA015 | 10 | `1c2f69496f2bc7b2189502d93e8f9c09ccd83b017c83e64e80f583ec8627040f` |
| RowA016 | 10 | `b94f009612b0b30b93a9268269b200ec582358db7c9c2b1978ecd061e471b6cb` |
| RowA017 | 10 | `4e96bc71a120897e5f67daf538334b9360fe40cc8d5940349e376d878c5629fe` |
| RowA018 | 10 | `04d236a2112a1c924f03862b2eec6bb17ff636ba0f4b21e1db3bfc888fb9644b` |
| RowA019 | 10 | `c84562c7fb33b782f0fd50e536945cf572824c9a56740e167f72bd4ee618ed4b` |
| RowA020 | 10 | `1c3ef659fecb6ad769a587d0130ecf325df5925883e018a46c8963e592ae45a4` |
| RowA021 | 10 | `d786485e0f047d13f20c9a869fcafd9e545cc740cb042d652a40594592dad180` |
| RowA022 | 10 | `953ca917cf4230bd47032996a64333b70832069562ef1cf4fbde2d4c3d188aba` |
| RowA023 | 10 | `7ddd15a2d86d2e3fb0e031849d644a2f29e6dbf6f8a204093097a6768260f22a` |
| RowA024 | 10 | `113e7157905c5b646175dc375769b714730e87f4af3112e8910f7941528e8319` |
| Composer | 4 | `e31412f3e985872966e3d4566186b42f59c7bd0b18eb566b184a9237dfd85c46` |
