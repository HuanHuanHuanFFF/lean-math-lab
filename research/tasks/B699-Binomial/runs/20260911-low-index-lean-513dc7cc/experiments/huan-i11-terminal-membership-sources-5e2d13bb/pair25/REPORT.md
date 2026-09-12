# Stage04 pair25 完整会员表源码

固定H=29294603,M=500，正指数a=1..24,b=1..10。完整240格、5040个位移条件、9955个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair25.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair25.pair_check`：`pairGridCoverCheck 2 5 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair25.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_2/cutoff_5接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，558个根。先Data，再RowA001..RowA024，最后Composer/Audit。数字编译内存仍未测；最大cell含2097个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载5040个d槽与全部参数计数，核对240条唯一数字定理和同数行分支、23次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 266 | `9372274b7add422dd8f03f77a2ff31418feeb7503a0a451ed4bb65e62d6041a6` |
| RowA001 | 12 | `ded31a0ad5abacea08779b3fe4fd8b5124166e68e471660964f374109bab1f5a` |
| RowA002 | 12 | `9992d4be0a1dee9fbe366284134cf95c5cf8a9e521c82cf5b70f5a318a9e5b03` |
| RowA003 | 12 | `752a47d6fe2e085b2efed7a3c3b9f00530f175639436540bb49f7a52a654615c` |
| RowA004 | 12 | `94985d5d1fd37abfee269816648d5579356234da3c04d9f16493671fe330e3cd` |
| RowA005 | 12 | `56b351b56eaee9c948c38c5ecba92f6238fdbd945ce5b055440725238ab53c26` |
| RowA006 | 12 | `6ce12b11250dd0822c6c966ed5c3bd7c3e42823d27cded857fff1072587ed9a8` |
| RowA007 | 12 | `5ad10e27d06bf347cad7498d66413eb6aee8569d631fee89139299287a1398e9` |
| RowA008 | 12 | `febe765ef1e535bc8f210f9a885a29e5cafa0935401feab213d97e6bf39d48f1` |
| RowA009 | 12 | `36b1025e42efe5eac287bda4460d66c6cd99423b2727fc052c9b6ccdb7c88bf5` |
| RowA010 | 12 | `a3097a3436d1cb2734717e1180fa027c5e02a88bbb96df88a0693bfec61c90e1` |
| RowA011 | 12 | `cc8ae2750c020204c554fda75cfc6ad4be3351878c7bc0d9aac921432bcfc47e` |
| RowA012 | 12 | `48bacf00321e7750f6065155c387e56612eae8860e1388b4563e37afe38704c3` |
| RowA013 | 12 | `c55bfc4f3d0f35beb2decec60a9a4c3b2a155221981f16240734ba05d5f394eb` |
| RowA014 | 12 | `bc8814cb33894402dd9bf5a9788f2d16f8c0d9237519c960aaec5a559494dc42` |
| RowA015 | 12 | `fd421d9d281d298adf8638b5da04149527c7891e3b9a30ac2e17062ba19034a2` |
| RowA016 | 12 | `3796e41566e43447ccd7020d548d8553f59b85316fa591c41e8ab277595bbd4b` |
| RowA017 | 12 | `a8a337f7b247f240329ca0b9cc6f5d3f0ab3ec4822528d290d7a3e5b7b239a86` |
| RowA018 | 12 | `92540f64fab67e7f0adc3a0767accd3c96e6fd2020fe2dea152cc243d2df9a9f` |
| RowA019 | 12 | `df7c0188ec3d1d70aa84dc56a61f28db8e4cbeb3647f25dbde64d494224b15c5` |
| RowA020 | 12 | `55337fbd1950e399b6cd169b5a08bb54efcfb522143c666041878572d2a84cc2` |
| RowA021 | 12 | `f566f67dae602033a635a6c31065f622a7cb6ee102bf5e1ad231d95d3e1ad2a0` |
| RowA022 | 12 | `bb30b3c316c0f4d5fb120dbc6820b2654281c20d67fbd37ffef6eb70ee0fd521` |
| RowA023 | 12 | `f9ddda4bb2d25f31966466aa09fe6f8ba641254c94f6bb8055a04d933958131e` |
| RowA024 | 12 | `c0f6375e32b3c897cbde934b893fcfd43b00bb69ec900138f3a15aba4650c148` |
| Composer | 4 | `960f67d9c73086c7d7e9a5d23d5be6bd4f7625f0cb8ff22d2cf1898a52e8eeff` |
