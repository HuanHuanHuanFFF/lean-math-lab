# Row029S 小检查候选

本目录是未编译候选，物理源文件在 candidate/lean/rows/Row029S/，最终集成映射统一指向：

research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/rows/Row029S/

生成使用专属 scratch：

`.tools/row029-small-5e2d13bb`

scratch 只包含冻结 Row029、现有 generate_row/generate_huan_row 副本、LayerParts、PairChunks、
FiniteCover、Row038 模板和 Row029Data/Metadata/GoodsChecked 等小输入，没有完整 clone。

候选规模：

- 371 个新源文件，351,314 bytes；
- 覆盖全部 114 个 layer；
- 22 个大层使用独立 Data/Arithmetic/Enumeration/PairBlock/Pairs/Checked；
- 136 个 pair blocks，每块最多 16 个 coloured intervals；
- 92 个小层分别隔离为 direct decide +kernel 文件；
- Geometry、Layers000..112 聚合、LayersChecked、Checked、Original 均已生成；
- Layer000、Layer001、Layer002、Layer113 都不再导入旧 Layer000/Layer113 单体模块；
- Original 保持原 common_i029 的完整全称量词原题，改为调用 row029S_checked。

source-map.json 和 generation-plan.json 记录每个候选文件的最终映射路径、module、imports、声明、
字节数和 SHA-256。静态检查确认：

- 所有 114 个 row029S_layerNNN_checked 唯一存在；
- module name 与候选声明唯一；
- 内部导入统一指向 Row029S；
- 没有旧 Row029 layer、Layer000/Layer113 直接导入；
- 没有 axiom、sorry、native_decide、admit 或 Lean.ofReduceBool；
- 原 Row029Data、原 Row029/*.lean、原 Layer000/Layer113 生成前后 SHA 相同；
- 完整 Original 原题字面与历史 Original 相同；
- new_original_results 保持 0。

当前只完成源码生成与静态对应检查。没有运行 Lean、没有创建 .olean、没有对象/日志验收，
因此不能称为历史原题通过。后续正式 verifier 仍需核对外部 Row029Data/goods/Metadata/
Witness 闭包、source/output/log SHA、pins、import closure 和 std3 axiom audit。Enumeration
的 activePowerIntervalList 等式仍以 decide +kernel 作为单层检查，是否能在 M1536/M1408
下完成尚未验证。
