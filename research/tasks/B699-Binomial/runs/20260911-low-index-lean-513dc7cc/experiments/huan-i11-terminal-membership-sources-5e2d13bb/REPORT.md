# Stage04 六对完整会员表源码冻结

固定 H=29294603、M=500，全部六对已独立冻结，共1142格、23982个带符号位移、47136个非负参数。本子任务只生成候选并做精确源码重载，没有运行 Lean。数值表仍未验收，没有新增B原题结果（0/19）。

开始2026-09-11 21:57:31 UTC，原检查点22:17:31 UTC（非截止）。22:18已回报六对完成；总冻结时间2026-09-11T22:25:26.432246+00:00。只写本实验。pair23先冻结，其余五对随后使用同一生成器；六个子冻结目录保持原字节。

| pair | 正指数闭范围 | cells | signed rows | 完整参数 | 公开根 |
|---|---|---:|---:|---:|---:|
| 23 | 1..24 × 1..15 | 360 | 7560 | 17184 | 798 |
| 25 | 1..24 × 1..10 | 240 | 5040 | 9955 | 558 |
| 27 | 1..24 × 1..8 | 192 | 4032 | 7289 | 462 |
| 35 | 1..15 × 1..10 | 150 | 3150 | 5767 | 351 |
| 37 | 1..15 × 1..8 | 120 | 2520 | 4256 | 291 |
| 57 | 1..10 × 1..8 | 80 | 1680 | 2685 | 196 |

共130个Lean文件：6 Data、112独立行、6 Composer、6 Audit；2656个不同公开定义/定理根。每个源文件打印自身全部公开根，Audit另有typed/#print入口。这些计数用于覆盖和验收记录，不代表原题进度。

每个数值定理直接使用实际CellData常量，调用完整cellCoverCheck；21个位移及RowCell.parameters完整t范围均保留，不经过a/b查找、不截断参数、不删0..23。实际候选为Candidates.candidates = (0,23)::originalCandidates，共1056区间，旧表1055区间。逐a独立文件通过有限b分支和List.all拼成行，Composer用既有blockCoverCheck_append_rows及小计数等式拼完整rectangle；不存在整行/整表decide。PairGridData和实际Stage04.cutoff_2/3/5/7内部给出截断元数据。域外data是明示默认值，不算覆盖。

后续逻辑先得到扩展列表会员，再由合法11<j≤n/2推出n≥24，排除新增头项并转回原列表；终端Witness仍只验证旧表，最终原题n/j域没有扩大。H/M证书、小n coverCheck、六对分派和Witness是相应消费者职责，本包没有把Common或会员当作数值前提。完整终端结论仍待这些实际消费者及数值证书全部验收。

独立重载实际Lean字面值、CellData默认/例外和行映射，与父任务JSON每项比较，核对所有21d槽及全部参数计数；检查每格唯一数值定理与行引用、连续append、准确cutoff名称、公开审计入口、禁止形式。汇总又核验六份FREEZE的全部文件、源码SHA和公共根唯一性。没有重跑CRT搜索或完整区间覆盖；父任务manifest的all_affine_intervals_covered只是父任务有限实算证据。生成时输入在总冻结时仍匹配：True，详情见aggregate-checks.json。

最终数据为Math.B699.I11TerminalMembership.PairXY.pairData，最终根为同namespace的pair_check。全部精确类型、源码字节/目标路径/模块顺序/根名单、JSON与API SHA在INDEX.json和各pair/INDEX.json。候选imports已用本run短路径lean/I11TerminalMembership/PairXY/*与lean/I11TerminalCrt/*。

最坏单cell是p2 q3 a1 b1，3490个参数。其内存和运行时间仍等主任务真实试验，按cell拆证明不保证整行文件通过当前内存限制。若单cell失败，应按真实错误再拆21个位移或t区间，不可宣称已解决内存问题。RowCell已有主任务成功回执；其它generic层采用当前集成源并逐字绑定，主任务在串行核验。静态无占位扫描不替代Lean内核和传递axiom审计。

| pair | 独立FREEZE SHA256 | Composer SHA256 |
|---|---|---|
| 23 | `e7906944ec8aba8f8b75d3784ba5d3ae7876747d9ce53235874d7a6df55600cc` | `b365b7deca963e2ca8ca75212eea630da8784095a1587235a191d4f3390b59af` |
| 25 | `77cede4b6545fe95a8a5bf2fb053d2803fa5c0ce3d2859899aef28ff3303828c` | `960f67d9c73086c7d7e9a5d23d5be6bd4f7625f0cb8ff22d2cf1898a52e8eeff` |
| 27 | `812b6ddf20ab6a2a75004fc645967d7beb9c168d81e797f255fa103a1b4a57ad` | `e31412f3e985872966e3d4566186b42f59c7bd0b18eb566b184a9237dfd85c46` |
| 35 | `3daafbbfe93e8473584bb186d6cacaf0e6fd1bb40016883703a32d49b489e730` | `af31eb4b9005b4548d4c0a9a3c52fbbb4c41b0feef188314cf0940767de34a6a` |
| 37 | `6a4c7637c074427b601861f562a95e829820c73f147469ef477a58cb043533e9` | `f7fad240f6ae6bb2298142c492efc32e5428404bab80cb735b6b140fff3bc657` |
| 57 | `91e9e8d6f41d41c9f77d8324a624f50045bf3b5f575a049ffceed077f29c3ed2` | `55e2f3119b4a9b12c6c3fb97fe3ec13e84415baf837bbc0f1184e8d015a87886` |
