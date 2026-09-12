# v31 capacity precheck（修正）

读取时间：2026-09-12T04:12:37.275707+00:00；queue 状态：running。本次只读解析矩形闭包和四个成功 receipt 的对象，未启动 Lean、未修改 queue/对象。

## 旧估计的纠正

旧版本把 22 个完整矩形误当成 22 个 Chunk 模块，给出 CRT 15,654,496..131,884,192 bytes，连同 terminal 基线写成 35,895,584..152,125,280 bytes。这段数值保留作 superseded 记录，不能用于容量决策。

## CRT 矩形闭包

24 个计划矩形中，Stage0 Pair23/25 是已有完整回执；生产闭包为其余 22 个。此快照中已有 6 个生产矩形完成、1 个运行中、15 个待处理。运行项：crt-stage1-pair27-rectangle。

| 源角色 | 22 个矩形总数 | 当前尚未完成（含运行中） | 运行项完成后的待处理 |
|---|---:|---:|---:|
| Cells | 245 | 89 | 74 |
| Data | 119 | 65 | 57 |
| Chunk | 119 | 65 | 57 |
| Composer | 22 | 16 | 15 |
| Audit | 22 | 16 | 15 |

每个矩形的实际闭包计数与状态保存在 capacity-report.json 的 rectangles.rows；共享本地依赖不按矩形重复计费。

## 已完成对象的实际大小

样本严格取四个成功 receipt（Pair27/35/37/57）的 compile_records，按文件 identity 去重；下表是逻辑 .olean bytes，不是 Lean 验收结论。

| 角色 | 样本数 | min | mean | max |
|---|---:|---:|---:|---:|
| Cells | 115 | 230,392 | 483,306.2 | 552,480 |
| Data | 37 | 551,784 | 1,224,301.6 | 2,050,800 |
| Chunk | 37 | 26,368 | 33,443.2 | 34,424 |
| Composer | 4 | 227,184 | 411,168.0 | 681,200 |
| Audit | 4 | 1,968 | 1,968.0 | 1,968 |

当前尚未完成（含运行中）按上述实测范围估计为 61,751,200 / 131,377,840.1 / 195,640,968 bytes；运行项结束后的待处理部分为 53,440,952 / 113,653,152.9 / 169,988,808 bytes（低/均值情景/高）。这是按类型实测的容量估计，不是硬上界。

## Terminal 计数

I11TerminalData 有 253 个 Chunk（000..252）和 64 个 Data Group（000..063）；coverage 层有 66 个 Groups 与 66 个 GroupAudits，另有 57 个 FirstParts 与 57 个 FirstPartsAudits。当前成功证据绑定 58 个 Data Chunk、1 个 Data Group、57 个 FirstParts 和 7 个顶层 coverage 文件，剩余分别是 195、63、66、66、57、3。Coverage Group/GroupAudit/FirstPartsAudit 没有可比的成功对象样本，未虚构大小。

Data Chunk/Group 已知剩余对象按样本给出的高情景合计 33,259,824 bytes；这只是 terminal 下界，因为 coverage 分组尚未计价。

## 容量判断

D: 当前 free 731,615,232 bytes，512 MiB reserve 后余量 194,744,320 bytes。未完成 CRT 的高情景为 195,640,968 bytes；加上 terminal 已知高情景为 228,900,792 bytes，且还没有计入 Coverage Group/GroupAudit。因此后续仍可能因磁盘门禁中止，旧的 22×Chunk 估计不能作为继续排队的依据。

输入 SHA、逐矩形状态、四个 receipt 的对象样本和 terminal 源计数都在 capacity-report.json；本报告只描述资源预检，不声明 Lean 接受或数学完成。
