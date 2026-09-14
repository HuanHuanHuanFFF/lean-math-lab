# 来源采用与字节恢复

## 实际输入

本轮唯一新调度附件：`B699-ABD-open-next-round-20260914-v2.zip`。
SHA256：`9fdaea3d6ea46ed552bb593b2e48ed5641fc497422aeeb54022659c4c55a8929`。
已经实际读 README、COMMON、A任务、frontier、三路最新REPORT、A的HANDOFF/状态/失败边界。实际执行 `python3 prepare_inputs.py A`，原输出保存于 prepare_inputs.log；这一步只恢复字节，不是数学接收。

为避免重复保存约50MB的同一A历史，交付ZIP只保留该调度包内A原始压缩成员的逐字节副本：

`inputs/A-window-carry-original.zip`
SHA256：`d247d79d2eecb215bd34c3c8f9dbe8302c71cb12474f75795bb0dbc89d972134`。

B/D仅为本轮路线判断、失败探针的原文参考，没有正向数学依赖，所以保留实际所读REPORT和D证明的原文摘取文件及固定成员映射，不重复携带无关的大证书包。完整调度ZIP仍在用户原附件中，未更改。

## 实际正向采用

1. A9-FINITE：全部合法n<2^4096，见sources/i9_finite_original.md。
2. A14局部立方指数块：不是i14原题跨指标结论，见sources/i14_local_original.md §7，以及sources/58_proofs.md §1.2。
3. 58族包cut5、cut7及其有效阈值，见sources/58_proofs.md §3.2–3.3、sources/selected_cuts.json。

这三项的根ZIP、每层嵌套ZIP、原文成员、成员哈希完整列于 `sources/MAP.json`。执行 `python3 code/prepare_sources.py` 可从唯一根ZIP重建已提取原文，保持源ZIP不变。该脚本不运行旧证书；新正向接收默认也不运行它，只检查固定原文字节哈希。

依赖分层：

|新结果|新证明之外的输入|
|---|---|
|C-RATIONAL，含全部门槛内n|无；完全初等|
|C-CENTER，n≥2^45|无；完全初等|
|C-CENTER，全部合法n|仅A9-FINITE补低段|
|G-RATIONAL、G-CENTER|A9-FINITE＋局部立方块＋cut5、7|
|回写“两个双高幂族中”|α定义和400|n的直接推导；不需完整58族分类来证明带内结论|
|声称其他旧前沿保留|最新A的冻结报告/状态，未独立重验|

cut5、7带旧BFT表项和(1,2,2)内容有效化所需出版θ输入。本轮没有重新证明出版定理，没有复核旧32936个内容块或106个尾项，也没有运行旧局部大整数块、旧i9有限末端。没有新增出版依赖支撑正向带定理。

## 实际阅读但仅作边界/选路参考

- B的最新整数形/5⁄6条带REPORT；未把NC9当作NC3。
- D四窗口整数gap原文§0–5：用于21个平移三角形的精确模型探针，未排除现有4个有理流；未进入正向证明。
- A原外层、本原性、位置、联合高度原文，以及4个旧有理位置流：用于选路、保持接续状态或失败探针；其新不等式并非本轮正向证明的必要输入。
- 同一会话此前已挂载C的两份旧REPORT，仅比较已明确记录的中心/比例消费者，见sources/C_HISTORY_READS.json。它们不是本轮新增输入，不是正向依赖；没有审计全部历史消费者并集。
- Brouwer–Popoviciu, *The invariants of the binary nonic*, arXiv:1002.0761v1（2010-02-03）。实际通过网页读原稿次数表及transvectant定义，查看PDF对应截图。仅启发一次符号探针。元数据在sources/EXTERNAL_DISCOVERY.json；未下载原PDF，故不编造PDF字节哈希。该论文没有成为新正向定理输入。

调度原件成员读取记录见sources/DISPATCH_READS.json。sources/initial_map.json是最初工作目录的读取日志；**可移植的规范恢复以sources/MAP.json为准**。

## 未取得/未采用

没有等待、搜索或采用B/D在本轮之后的新结果；无正向必要材料缺失。未接入仓库实时状态，不启动Lean，不做公理审计，不commit/push/merge/发布。不把“作者另一实现复核”称为外部独立接受。全部新纸面结论仍需独立技术审读。
