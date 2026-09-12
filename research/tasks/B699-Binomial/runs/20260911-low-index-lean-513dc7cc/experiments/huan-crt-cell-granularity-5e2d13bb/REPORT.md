# CRT 首块逐 cell 求值候选

已生成完整首块 a=1..8、b=1..68 的544条直接 `cellCheck` 数值定理，并以符号证明重新拼成原公共 `Chunk000.chunk_check`。原数据未改；本次没有运行 Lean，所以**不能宣称内存故障已修复**。候选、诊断与验收顺序均在本目录。

独占范围仅此实验。起点2026-09-11 21:01:40 UTC，检查点21:21:40 UTC（不是总截止）。没有修改原块、集成模块、主任务正在写的 RowCell、6pair 消费者、队列或索引，没有 Git/新CRT计算。

## 已观察到的红色基线

`verification/20260911T205716357039Z/evidence.json` 是主任务已经运行的真实失败：M1536，源SHA `af5430139daa92863e5deef3c97cb859464c41e9aa34a931d93aa502e235900c`，进程退出3221226505。日志明确为 `lean::memory_exception`，位置 interpreter；保留只读来源及本目录 `captured-failure.log` 副本。

父任务说明整块8×68单次decide和逐a整行68格单次decide都失败，而较小pilot曾通过。本 worker 没有重跑这些操作。按 diagnosing-bugs 技能使用捕获失败作为基线；任务明确禁止 worker Lean，故实际红/绿循环交回主任务，不能把静态检查当成运行修复验收。

待区分的原因依次是：单次68格求值峰值、a/b查找展开开销、同文件累积状态或后续组合展开。当前改造按指定方案同时缩小到单cell且直接使用数据常量；即使成功，也不会仅凭此唯一确定根因。

## 数学定义与覆盖保持

冻结原 `Chunk000.lean` 中从文件开头到 `theorem chunk_check` 前的 **127357字节前缀原样复制**到 `Chunk000Data.lean`，再关闭同一namespace。该前缀包括所有原 CellData、rowA1..8、chunkData 的定义、导入和选项；qualified names保持 `Math.B699.CRTStage0Pair23.Chunk000.*`。

最终 `Chunk000.lean` 通过导入数据/行模块继续导出原定义，公共 theorem 仍精确为

```lean
theorem chunk_check :
    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper
      1 8 1 68 chunkData = true
```

只改变证明颗粒度和模块依赖。首块仍是544格×21个位移=11424项；全stage0 pair23仍为7344格/154224项。其余13块的6800格/142800项没有删除、改写或在此验收。原问题与六对消费者保持原样。

## 求值边界与组合方式

每个 `cellAaBb_check` 的目标直接是

`cellCheck (2^a) (3^b) (heightCap H M (2^a)) (heightCap H M (3^b)) upper cellAaBb = true`。

每条单独 `decide +kernel`，只运行这个cell内原有21个位移。数字定理中不出现 chunkData 或 rowA 查找，不使用 native_decide/ofReduceBool。

行层 `rowAa_cell_check` 对任意1<=b<=68，以 `interval_cases b` 产生68个明确分支，每支仅用 `rfl` 给出的 `rowAa b = cellAaBb` 改写，再引用既有单cell定理。这里没有整行decide。

`rowAa_block_check` 通过 `List.all_eq_true` 和 `List.mem_range'_1` 建立a单行、b全68列检查，a查找在b仍为变量时符号改写，避免封闭整表求值。最后7次已验 append 拼成8行；计数等式在全变量辅助引理里先改写，实际实例仅决定1+1、2+1等微小整数等式。最终组合不重新decide任意多cell Bool表。

## 主任务可先运行的三个试验

1. `Chunk000Data`：只加载原数据定义。
2. `Chunk000Pilot8`：a1,b1..8八条独立cell定理，各自有公开axiom打印。
3. `Chunk000PilotHigh`：a1,b68及a8,b68两条独立高b定理，仅依赖Data；它是诊断模块，不是最终chunk必需依赖，整行随后仍会按原检查定理重验这两格。

PilotHigh追加后，先前交出的Data、Pilot8、八行模块、主Chunk和Audit等12个Lean文件字节完全未变；新增的高b诊断名字不会与最终单cell定理重名。

接着运行RowA01（复用Pilot8，另60个cell）及RowA02..08（各68个cell），最后Chunk000和Chunk000Audit。若pilots过而整行模块仍失败，不能说整块修复；应根据下一份错误继续区分累积状态与组合阶段。完整顺序、目标路径和判据在 VERIFICATION_PLAN.json。

## 本次实际检查

结构检查通过，约0.035秒，未重算CRT值：

- 原定义前缀字节完全相同；所有8个a查找和8×68个b查找仍对应原cell名字。
- 正式证明链恰有544条唯一直接cell声明，与8行全部544个分支引用一一匹配。
- 每个行域都是 `(a,1,1,68)`，7次追加的计数覆盖恰为 `(1,8,1,68)`；公共chunk_check签名与原源按空白归一后完全一致。
- Pilot8有8次独立数字判断，新增High有2次；行的组合段和最终Chunk没有 `decide +kernel`。
- 所有新源无sorry/admit/自造axiom/native_decide/ofReduceBool。`interval_cases`源及本机缓存存在；其真正编译仍由主任务验证。
- 旧Grid和Stage元数据的本机验收闭包已重新比对SHA，数据原包与失败证据未改。

首次结构脚本因原前缀为CRLF、正则按LF寻找空行而未匹配行定义；已仅修正解析时的换行归一，原数据及所有Lean源不受影响。此脚本问题不是Lean或数学错误。

## 源文件和剩余验收

| 文件 | 实际字节 SHA256 |
|---|---|
| Chunk000Data.lean | `dd9811a5a696061b227e6eb95aed21ac0b976065199f32c55e13435793c84014` |
| Chunk000Pilot8.lean | `f1f966c8162af3be7f36dcf448ae1d7b6933710cde34d19f4ded434793a17485` |
| Chunk000PilotHigh.lean | `c27eb184ab41635bc14222584f9036feb17e75b71f20f5ce709e23eb9c1ee063` |
| Chunk000RowA01.lean | `a34e77de73caf0c11f15c02309ccf2bd456880aff4ea528ece92405e9e2b235a` |
| Chunk000RowA02.lean | `1db343464977cfeaead26fec13dcdc45f572fd2350a6a26212cd4a171c1c9060` |
| Chunk000RowA03.lean | `6fba7f0ff984315abbd74dddc6dafd05765ccde744ac1d700ef4ef385e2dfab6` |
| Chunk000RowA04.lean | `a8744cd8ae2c368be5d0caff73aa132bac69547398b9085b37232bd353984f24` |
| Chunk000RowA05.lean | `20cbe8d73bf72df78f78735dff3287c9807e0ac15a56820b9a7657c741f9ff56` |
| Chunk000RowA06.lean | `3be97c9396acf1d99cc88474cef7580e91a7068ad2ec180b4bb07c1aa7318791` |
| Chunk000RowA07.lean | `9bb5d67bca3b0b651341ecf658d7f53ff028b153543c85646156b84cc373b147` |
| Chunk000RowA08.lean | `7b3ae8d42e527d832aef8e7e80ab027b04afafc6bb71b89f491cc899d1768177` |
| Chunk000.lean | `4eb60cf3152aeb0e548cdde343b2b5e298bc63d738f8e7e7cc5832948ede1745` |
| Chunk000Audit.lean | `cc748b683a5499b91bdeaefbdaf7e180dd365973c5f06dbd895592fa87229b51` |

GENERATION.json保存完整原定义前缀SHA和模块映射，SOURCE_BINDINGS.json保存读取证据字节。实际文件位于 `candidate/lean/CrtStage0Pair23/`，可按同名目标集成；此worker没有执行集成。

最终chunk的传递axiom审计覆盖正式544条数字定理和完整行/块组合；pilots另外有单独审计根。只有所有所需精确SHA的编译完整退出0、公开传递axioms符合要求，才可接受新的首块。成功的8格/高位试验或部分print不能接受544格，更不能接受整个154224项pair23或原题。B原题仍0/19。
