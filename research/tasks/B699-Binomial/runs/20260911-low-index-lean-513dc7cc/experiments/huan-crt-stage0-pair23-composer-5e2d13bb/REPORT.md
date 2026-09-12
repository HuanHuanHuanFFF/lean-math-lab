# Stage00 (2,3) 完整14块证明组合候选

已写出实际 `Composer.pairData` 和不带数值检查假设的 `Composer.pair_check`。候选直接引用14个实际 `ChunkNNN.chunk_check`，逐块搬运后拼成完整108×68矩形，再调用已验 Meta；没有用整表 decide，也没有把目标 n 上界作为输入。

**本次未运行 Lean。** Grid、Meta、Stage00 数字元数据有本机已验收据；14个数字块及新组合器的编译由主任务串行负责，这份结构检查不代替它们的验收。本包不代表六对 stage0 全部完成或新增 B 原题。

只写本目录，起点2026-09-11 20:31:03 UTC，检查点20:51:03 UTC（非截止）。没有改 chunk、集成模块、旧候选、runner 或索引，没有 Git/CRT 重算。

## 精确终点

命名空间：`Math.B699.CRTStage0Pair23.Composer`。Stage00 是 `B699LowIndex.I11CrtStageMetadata.Stage00`，实际 H/M/upper 为

`H=649037107316853453566312041152512=2^109`，`M=118703030`，`upper=1458309064184540963`。

主结论：

```lean
theorem rectangle_check :
    rectangleCheck 2 3 Stage00.H Stage00.M Stage00.upper 108 68 globalData = true

def pairData : PairGridData where
  amax := 108
  bmax := 68
  cells := globalData

theorem pair_check :
    pairGridCheck 2 3 Stage00.H Stage00.M Stage00.upper pairData = true
```

`pair_check` 只消费导入块证明和实际 `Stage00.cutoff_2/cutoff_3`（有下划线），所用 Meta 命名空间是 `Math.B699.I11CRTSixPair`。`cutoff_check` 显式建立四个数学命题的 And，并以这些命题的证明构造 Bool；没有把 theorem 名当成 And 的 Prop。

## 数据、搬运、拼接

全域 `globalData(a,b)` 对 a<1 或 a>108 返回一个总定义的 outsideCell；a在1..108内按连续14区间选择对应 chunkData。对于 b 的域外值也仅保持总定义，**不声称覆盖 b=0、b>=69 或任何 a 域外值**。所有覆盖结论仅针对 a=1..108、b=1..68。

每个 `globalData_eq_chunkNNN` 对本块的两个 a 边界及任意 b 证明真实函数值相等。证明只消去外层有限 if；不展开 chunkData 的大查找表。`global_check_NNN` 调用已验 `blockCheck_transfer_data`，用相等式的对称方向把对应实际 chunk_check 搬运到 globalData。

13次 append 从8行累计到16、24、…、104、108行。私有 `append_rows_named` 先在全变量环境按 `start+left=next`、`left+right=total` 重写计数，再调用 `blockCheck_append_rows`。实际实例只有26个小整数等式由 decide 处理；不会为了处理闭合 check 类型而重新计算列表检查。

最后仅展开 rectangleCheck 的定义，把 `prefix_108` 视为 `blockCheck ... 1 108 1 68`。pair cutoff 则使用 `H<=2^(108+1)` 与 `H<=3^(68+1)` 两个已验命题。配合正底数2、3，经 `pairGridCheck_of_parts` 得到实际 pairGridCheck。

`row_partition` 还独立陈述每个1<=a<=108必在某一个列出的合法区间；完整量词的覆盖并不只靠有限统计。原 cellCheck 内含全部21个位移 −10..10、heightCap、lo/hi 和空区间逻辑，组合没有更改或抽掉这些条件。

## 14区间与实际数字块字节

已读取首末块的实际头尾，并逐一解析全部14块公开 namespace、chunkData 和 chunk_check 类型；原包源与 `lean/CrtStage0Pair23` 实际目标逐字节相同。每块 bStart=1、bCount=68，区间如下：

| 块 | a范围（含端点） | 行数 | 实际源 SHA256 |
|---|---:|---:|---|
| Chunk000 | 1..8 | 8 | `4549959dd3099769aedd05ba69bbc58e5a6315a9f1d4aacb9d9a037cfc0b751f` |
| Chunk001 | 9..16 | 8 | `36f6d7854fb0939c73e4cdd94c9575b7ea72323b213f4f7781a86c67baba46d2` |
| Chunk002 | 17..24 | 8 | `96733950211768a9513964732354f632ade3ccad7e1fc453e6c57e646a95fdf8` |
| Chunk003 | 25..32 | 8 | `4ea1dd48193903b5c4bd7976da26302b83b8e420afecca3ba1d18c5b7597ec8d` |
| Chunk004 | 33..40 | 8 | `81e8a6a41d9365453c117d37d202d7157fb5d30b0ec723e94dd6fc834b0a60ef` |
| Chunk005 | 41..48 | 8 | `576e3987e50c9b463fe801c950533807f7f2d916c14711363764ac4a3b2430f9` |
| Chunk006 | 49..56 | 8 | `bc34e452349adcddaab6aa4133d87f47215b5aa45e2517e2cdfe6c0d69a2f195` |
| Chunk007 | 57..64 | 8 | `1b415fab1c210b440a338b375006b4377f1d50ba1050786de8baae1000656d86` |
| Chunk008 | 65..72 | 8 | `916afba932a1abf411b20336ae4f2e5639f8bb21c4002d4abc7d760ecbd764e8` |
| Chunk009 | 73..80 | 8 | `6532894583e630791c81392b7aec51b30795e584ccf3a141dbae93f2bbc43863` |
| Chunk010 | 81..88 | 8 | `fd83c1b7b732bb5448b18879fdd72954a0ae88961ed6da1f44f54f669adcb513` |
| Chunk011 | 89..96 | 8 | `604ce760c5d38cf709e97650dfafa27c776a9c84bc4eee67c2ba6003b81f3eeb` |
| Chunk012 | 97..104 | 8 | `acd2bd4048c6b8946e73bc1f8347d33ffc6983aaea327a476b21b4fd0b9a7663` |
| Chunk013 | 105..108 | 4 | `5d4fd946aa5a9735dbdf8dc6674e5af49eed21e899cb48da1209acc0864a4c33` |

合计108行、7344个(a,b)位置。父任务原 manifest 记录154224个位移条件；本次只把这记为父任务的数据规模，**没有重跑154224项 CRT 数字检查**。

## 实际检查与依赖

独立 check.py 只做结构、范围和字节检查，约0.057秒：

- 全108个合法 a 恰好落入一个区间，选择的 chunk编号一致；7344个合法(a,b)位置均被覆盖。
- 14个数据搬运引用、13次追加、26个计数等式，累计末端恰为108。
- a=0和a=109被全域定义的外层保护排除；不对默认值宣称检查通过。
- Composer 没有 sorry/admit/axiom/native_decide/ofReduceBool；没有整表 decide，也不展开 blockCheck/cellCheck 来重做数字验证。
- 原块、实际块、Grid 与 Stage元数据的源码 SHA 逐项匹配 manifest；全部读取文件在结束时再次核对未变。

已验接口的当前闭包：

- crt-grid-rectangles：`20260911T192713999169Z`，9 个公开审计根；当前项目闭包字节一致。
- i11-crt-six-pair-meta：`20260911T194115276855Z`，4 个公开审计根；当前项目闭包字节一致。
- i11-crt-stage-metadata：`20260911T191459524894Z`，35 个公开审计根；当前项目闭包字节一致。

数值块源码存在并已集成；其逐块 Lean 状态须看主任务后续证据，本报告不由“有源码”推断“通过”。

## 交付与下一步

Composer.lean 的实际字节 SHA：`dc7f5def5cb31e26b83a628278ba60f2dba12f0cd42717b67ed7ca0c74d4d9ee`。它的14个 chunk imports 已指向真实目标模块，主任务可复制到 `lean/CrtStage0Pair23/Composer.lean`。Audit.lean 当前针对实验模块；集成审计时把该单行 import 对准实际 Composer。共有48个公开审计根，私有计数辅助引理通过每个 prefix 根传递审计；完整名字与源行见 DECLARATIONS.json。

主任务完成14块的真实串行验收后，再编译本组合器并读取所有 audit roots。该 pairData 可直接放入 SixPairGrids.grid23；其余五对的表、单级原题消费者和后续阶段依然有各自义务。本包不假设已经有初始高度，也不提升 B 原题计数（仍0/19）。
