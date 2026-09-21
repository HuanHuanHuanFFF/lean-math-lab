# Row029 小证明块设计

本目录只保存只读设计和静态检查。没有运行 Lean、没有生成整行源文件、没有修改原始
Row029/Row029Data/Layer000/Layer113、没有写 Git。

## 已确认的 checker API

FiniteCover.lean 定义了：

- LayerArithmeticValid；
- activePowerIntervalList；
- coverLayerCheck；
- coverLayerCheck_sound；
- common_of_finite_cover_row_checked。

现成 LayerParts.lean 提供

    coverLayerCheck_of_parts hArithmetic hIntervals hBounds hPairs

它把一个已分开的 arithmetic、enumeration、bounds 和 pair 证明重新组装为原来的
coverLayerCheck 布尔结果。

现成 PairChunks.lean 提供

    pairCoverCheck_of_chunks hEq hChunks

其中 hEq 是 chunks.flatten = intervals，hChunks 对每个 chunk 的每个 coloured interval
调用原 checker 的 coverCheck。Row038 的 Layer000PairBlock000、Layer000Pairs、
Layer000Checked 是可直接仿照的已成功模块结构：

1. Data 文件只定义显式 ColouredInterval 列表和不超过 16 项的 block 列表；
2. 每个 PairBlock 用 decide +kernel 检查一个小 block；
3. Pairs 用 pairCoverCheck_of_chunks 汇总；
4. Checked 用 coverLayerCheck_of_parts 汇总 arithmetic、enumeration、bounds、pairs。

Geometry 文件只定义 goods.map goodSegmentBounds 的显式 bounds，并用 rfl 证明等式。
Metadata、GoodsChecked、LayersChecked、Checked、Original 的组装模式也可照 Row038
原样复用，最终 Original 仍打印 common_i029 的完整原题。

## Row029 的具体拆分

冻结输入有 114 个 layer。纯 Python exact_intervals 统计得到 22 个大层（索引
0..19、21、22），92 个不超过 64 个 active interval 的小层；大层合计需要 136 个
pair blocks，单层最多 118 个 active interval。Layer000、Layer001、Layer002、Layer113
必须单独处理：当前 Layer000/Layer113 是外部单体模块，Layers000 又把 Layer001/002/003
放在 direct decide 中。历史 M1536 失败已经说明 Layer001/002 不能只靠降低 -M。

候选做法是在独立 Row029Jsmall 目录中：

- 保留原 Row029Data、goods 和原题文本；
- 新建 Row029Jsmall.Geometry，按原 goods.map bounds 生成同字节对应的 bounds_eq；
- 对 22 个大层各写 LayerXXXData、LayerXXXArithmetic、LayerXXXEnumeration、
  LayerXXXPairBlockYYY、LayerXXXPairs、LayerXXXChecked；
- 对 92 个小层可以沿用已有 i>=38 分支的 direct decide 形式并放入 29 个
  LayersXXX 聚合文件；若低内存仍不足，再把小层也拆成独立 Checked 文件；
- LayersChecked 只导入各 layer Checked 定理，Checked 只做原 finiteCoverRowCheck 的
  simp 组装，Original 只调用 common_of_finite_cover_row_checked。

这会产生约 297 个候选源文件（小层继续在 29 个聚合文件中 direct decide）；若只把 92 个小层
各自拆成单独 direct-decide 文件，约 389 个；若连小层也完整复用 Data/Arithmetic/Enumeration/
Pair/Pairs/Checked 五段模板，则约 757 个。不含可能增加的 scratch 外部依赖。22 个大层的 136 个 pair-block 是可精确估计的主要
增量。若 Enumeration 本身仍在 M1536 卡住，需要新的列表等式分拆 API；当前仓库没有
这样的现成定理，不能把它假设成已解决。

## Data 与重证明的边界

Row038 的现有导入已经把 Data、Geometry、Arithmetic、Enumeration、PairBlock、
Pairs、Checked 分开。这个设计可以原样搬到候选模块；不能通过删除 FiniteCover、
改 checker 定义、把数值列表当作 soundness 证明，或跳过 coverLayerCheck_of_parts 来
降低内存。Enumeration 的 activePowerIntervalList 等式仍必须由 Lean 检查，Data 只提供
显式列表。

## 最小 scratch 文件树

generate_row.py 会固定写入 run/lean/Row029Data.lean、run/lean/rows/Row029/*、
run/lean/Layer000.lean 和 run/lean/Layer113.lean，并在已有 plan 时拒绝运行。因此实际
生成必须在 `.tools/row029-small-scratch` 中只复制冻结 Row029、两个 generator、LayerParts、PairChunks、WitnessBridge 以及生成所需的
Row029Data/Witness000/056/227 输入。Layer000/Layer113 只作为旧路径的 hash 审计输入，候选
不得继续导入它们；不需要完整 clone 或全量 Mathlib。生成结果再作为新的
Row029Jsmall source plan，逐项记录源 SHA、import 闭包和对象/日志 SHA。

候选 root 不能同时导入旧 Row029 与 Row029Jsmall 的同名 namespace 声明。独立 verifier
进程可以只把 Row029Jsmall root、成功 shared objects 和经 SHA 核对的外部闭包放入
LEAN_PATH；旧失败对象不能复用。最终仍需正式 verifier 在 M1536/M1408 做真实验收，
本设计不宣称任何历史原题已重新通过。
