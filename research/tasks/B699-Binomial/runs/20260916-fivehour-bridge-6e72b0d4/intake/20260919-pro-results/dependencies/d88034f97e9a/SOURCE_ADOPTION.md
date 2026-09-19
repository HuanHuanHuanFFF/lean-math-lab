# 来源采用与证据分层

## 直接来源

唯一项目总入口仍为用户提供的 OVERVIEW2026-9-18-2.md；本轮直接接续它之后的 SAT48 增量，不重建旧聊天，不采用B/D/E新结果。

- 固定来源ZIP：`B699-ProA-i9-sat48-cover21-evidence-20260918.zip`。
- 实际字节数：468702。
- SHA256：`c25e597df33870feb5289b817e95d80c3ae88e7da68a79a8c16b3bbbd57c0c42`。
- ZIP成员前缀：`B699-ProA-i9-sat48-20260918-c4e81f2a/`。
- 完整读取PROOFS.md、HANDOFF.md、FAILURE_BOUNDARIES.md、SOURCE_ADOPTION.md以及两份程序；核对全部旧包成员SHA256，无损坏。**没有执行旧数学证据代码**。

逐文件实际哈希与大小见 evidence/source_manifest.json。旧上游来源只保留固定路径/哈希元数据 evidence/frozen_lineage_pointers.json，不重复嵌入旧ZIP或旧大证据。上游Git blob SHA1不能当SHA256。

## 采用接口

|接口|本轮作用|等级|
|---|---|---|
|P/E、完整粗窗、PC|同一个合法400倍数NC9输入进入K152；完整幂、两个点值分支|冻结作者输入，无全链重放|
|K152|原固定G、D305/e152、系数预算、原始源jet|冻结作者；不恢复、不重选G|
|S14、Q2/W6、因子范数|载点因子D≥7、e≥3、完整z≥14|冻结作者；保留局部桥和有限末端|
|SAT24/SAT30、NF23/NF29|D8/e4与D10/e5统一Γ≥2|冻结几何|
|SAT36/SAT42/SAT48|D12/e6、D14/e7、D16/e8统一Γ≥1|冻结几何，不重跑|
|源预算/XEX3|竖直剥离、源缺重、X次数联立|冻结代数证明；新账本重算|

## 本轮新增

SAT54是无高度限制、全部Q系数多项式的几何分类。其有限部分为完整根列、49参数全部普通jet、整数非零子式、完整仿射解及乘积集合比较。COVER20/EDGE20使用新增D18/e9费用接回**同一个**G。

这些不等于整个i9闭合、n/j枚举、已知G因子清单、Lean或外部独立审稿。没有新Mahler/Minkowski消费者。

## 出版资料

本轮在线核对NIST DLMF §3.3(i),(iv)，`https://dlmf.nist.gov/3.3`，Lagrange与Newton插值公式。所需有理插值唯一性同时用初等根数论证，未增加外部黑箱。没有PDF分析或下载，不虚构PDF哈希。

## 代码来源与核验独立性

`discover_sat54.py`和`reproduce.py`分别参考冻结SAT48的发现和接收程序，泛化为E9/D18/B12/49参数，不导入旧程序。发现使用(3,4,5)枢轴、Lagrange有理插值、二项式Taylor；最终接收使用(3,5,8)枢轴、整数Newton差分、Horner平移、实际整数Bareiss子式。

`joint_budget.py`重新实现整数min-plus卷积，从原K152定义数据重建容量；额外用小V直接六元分拆对照。`next_gate_costs.py`只做明确标注为未证的后续几何收益诊断。

两套实现仍在同一会话内，不称外部独立数学审稿。全部写入仅在/mnt/data独立任务目录，无GitHub调用/修改/提交/推送。
