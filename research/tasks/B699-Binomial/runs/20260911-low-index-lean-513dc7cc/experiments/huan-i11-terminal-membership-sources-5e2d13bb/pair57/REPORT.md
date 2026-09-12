# Stage04 pair57 完整会员表源码

固定H=29294603,M=500，正指数a=1..10,b=1..8。完整80格、1680个位移条件、2685个非负参数。源码含全部21个位移和RowCell定义的完整参数range，没有裁掉0..23；候选列表直接引用已有Candidates.candidates，即1055原区间前加(0,23)。

最终数据 `Math.B699.I11TerminalMembership.Pair57.pairData`，最终检查 `Math.B699.I11TerminalMembership.Pair57.pair_check`：`pairGridCoverCheck 5 7 Stage04.H Stage04.M pairData candidates=true`。这份源码尚未运行Lean，不能视为数值表已验收或新增B原题结果。

Data中所有CellData默认/例外字面值逐项重载，与pair57.json一致；每个cap和p/q幂与JSON匹配。每格直接cellCoverCheck单独decide+kernel；每行独立文件，以明确b区间分支引用小证明，用List.all拼成行，再由Composer按行append成完整rectangle。没有整行/整表decide。Stage04实际cutoff_5/cutoff_7接现有PairGridData。

Data和每行都显式打印全部公开root；总Audit同时给typed/#print，196个根。先Data，再RowA001..RowA010，最后Composer/Audit。数字编译内存仍未测；最大cell含1498个参数，主任务单cell试验结果决定是否还需更细拆分。

独立重载1680个d槽与全部参数计数，核对80条唯一数字定理和同数行分支、9次连续追加及两侧cutoff；没有重跑CRT搜索或47136个参数的覆盖实验。原始JSON、Candidates和实际generic API的完整字节绑定在INDEX.json。只写本pair新目录，外部文件未改。

| 模块 | 公开根数 | SHA256 |
|---|---:|---|
| Data | 92 | `e061e3dea1b14a0bb568ffa25e1737c63222f3799cd1f7e7d995e6093adf8c63` |
| RowA001 | 10 | `c83fc1e6b31c3691d71fa8727a943f8ab18183274321ff6fc4a563cecec43284` |
| RowA002 | 10 | `f5271be383b2d061dd0ab002695e4d63e951c65d759ebd288cdb69f1a57589f1` |
| RowA003 | 10 | `07fdb19995c3b0a0c3a297aaab9a70424e700a4d7a9a5c7c2f549429c032fd57` |
| RowA004 | 10 | `16076e2a5fecf76689b3265f2e18fbbbf0438a8ea652c9560b0047679150b21a` |
| RowA005 | 10 | `30f98190da086d3092ba372827f2acaa9fcd53b60ee1b0c904f4467e8e37e3d8` |
| RowA006 | 10 | `8391efdb0b683093bfeea9ab17a5f8508f594048c670af9cbd76cf04a0372227` |
| RowA007 | 10 | `152457a2e63ca2865f8e0a262b8a59377ac656f3c9569f234b6ed96a28b3fb8d` |
| RowA008 | 10 | `bb7a866bd387aea647c84632812655a3bdb92ea10c3a9a1f01853114f05794ac` |
| RowA009 | 10 | `5225de41046442404eb08dd91bd8b94ccbce7e8dcc296ff760859dc5933e3762` |
| RowA010 | 10 | `adf682f9b518be975d18c56d3bbb567cd38a937450d97440d8630fc0e322de56` |
| Composer | 4 | `55e2f3119b4a9b12c6c3fb97fe3ec13e84415baf837bbc0f1184e8d015a87886` |
