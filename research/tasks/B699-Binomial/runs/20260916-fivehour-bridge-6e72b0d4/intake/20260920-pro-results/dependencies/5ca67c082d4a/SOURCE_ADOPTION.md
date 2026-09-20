# 来源、采用接口与证据等级

## 当前接续来源

用户要求基于当前会话已完成的COVER11交接继续。本轮实际完整读取前包HANDOFF/PROOFS及相关报告与代码，不从旧聊天重建研究状态。项目唯一持续索引仍为OVERVIEW2026-9-26.md；本包是之后的新交付，不更新它或仓库。文件名9-26不是本轮日期；实际日期2026-09-20。

前包：B699-ProA-i9-NF65-NF71-SAT120-COVER11-evidence-20260920.zip

    SHA256 72c28b68b249af2bf50a7f4b52cd93688f61a3fb0459c194af69c6b6f0eaf799
    成员根 B699-ProA-NF65-NF71-SAT120-COVER11/

逐个采用原文件及其SHA256、移植后代码SHA256和改动状态见evidence/source_manifest.json。前包未重复装入本ZIP。

## 冻结采用契约

|契约|前包位置|当前用途|
|---|---|---|
|同一个K152 G，D305/e152及原F0双点值分支|PROOFS §§1、11|覆盖对象与原题回传；未选择新G|
|400倍数NC9⇒H012、n≥2^14000001|PROOFS §1|保留原输入入口与小点前置|
|r3..8完整粗幂、PC与NC必要方向|PROOFS §§1、11|原题逻辑链，不以rad替代完整p^e|
|可载点一般D7/e3/z14，零余量e3已排|PROOFS §§1、10|账本类别穷尽|
|SAT≤20及复扩张|PROOFS §§3、8|新q21..24绝对不可约归约与归纳|
|e≤12单缺重的S3/4/5费用|PROOFS §§6、7、10|冻结低类收费；新q13/14另列L类|
|Galois整除绝对不可约入口|PROOFS §3.1|近饱和GENUS合法前提，不冒称本轮新发现|
|源普通/对角阶及2035竖直状态|PROOFS §9|重新从P/V0/行阶构造当前联合账本|
|TLINE切向源线剥离|PROOFS §4|全参数层剥线；不将旧层当新证明|

前包继续追溯的仓库固定快照为8d8128b7db1baec71065f110946b402ace22ddbf；本轮没有查询实时分支，也未修改、提交或推送。历史前缀：

    research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/
    intake/20260919-pro-results/

旧COVER13稿：sources/ProA/rounds/06-genus-tangency-cover13/PROOFS.md；前包登记Git blob 3f2238bfb2df83c3bc1cffe1ecfe7fde642b2560，代码去重根dependencies/92286b459789/。这些是冻结导航，不是本轮新获取的字节。未重跑未改变的历史78阶段。

## 出版输入

Cogolludo-Agustín、Martín-Morales、Ortigas-Galindo：Local invariants on quotient singularities and a genus formula for weighted plane curves，arXiv:1206.1889v1。

    https://arxiv.org/html/1206.1889v1

本轮核对HTML引言公式(1)、定义5.1及定理5.6；源内容说明了局部δ的无穷近点重数和加权曲线亏格公式。权(1,1,2)、度2q、避开奇异顶点的适用性及首个对角吹起推论在本包PROOFS展开。不声称下载/哈希PDF或重证出版定理；本轮未读取PDF。

## 证据归属

新：NF13/14全部六行与普通jet、完整仿射/切向层、第三行定位、模131不可约低κ6边界、SAT21..24完整分类、L类同一G账本及FULL-EDGE10、二次图像精确诊断和完整新接收。

发现用SymPy辅助rref/gcd等；接受仅用精确整数、有理数、有限域非零子式及所明列出版数学。两种实现共享源定义和一般整数工具，根门方程/枢轴、普通jet表示和账本循环不同；仍为同作者接收，不是外部独立审稿。哈希和干净重放不提升冻结前置等级。

可选旧族交数/最高项探针读取此前冻结解空间，未给新增排除；这些探针不是最终接收的外部依赖。先前目录中的重复中间文件只保留路径/哈希与重建说明，见omitted_rebuildables。
