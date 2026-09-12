# i11 CRT numeric pilots

本目录只生成四个有界 blockCheck 数值候选，不生成全表、不复制 checker、不运行 Lean。

试点为 stage0 (2,3) 的 1×8 与 4×4 两块、stage0 (3,7) 的 4×4 高段块，以及 stage4 (5,7) 的完整 10×8 矩形。每块使用 probe 的原始 H/M/T；每个 CellData 的 inverse、21 个 signed displacement、cap、rho、C0、lo、hi 均由整数公式重新计算。域外 outsideCell 只满足函数总定义，不计入 block 覆盖。

Lean 候选直接导入已集成 Math.B699.CRTGrid.Grid，使用 decide + kernel，设置 maxRecDepth=100000、maxHeartbeats=5000000、exponentiation.threshold=512；不使用 native_decide。组合审计复用四个 block theorem，不重新复制 checker 或重算组合。

cells.json 保存逐格映射、default+exceptions 压缩及 probe/source SHA；独立静态检查将反解析 Lean 源映射并重算全部格与 21 个位移。候选未运行 Lean/Git。
