# 本轮来源、冻结接口与字节标识

## 接续入口与实际输入

本轮依据用户要求，从当前会话已完成的COVER12及其交接接续；不从旧聊天重建历史。项目唯一持续索引仍为`OVERVIEW2026-9-26.md`，本轮不改写它，也不把其旧COVER13前沿取代已经完成的COVER12交付。文件名中的9-26不是本轮日期；本轮实际日期2026-09-20。

实际挂载并完整读取的前包：

    B699-ProA-i9-NF59-SAT102-COVER12-evidence-20260920.zip
    SHA256 b93f729cc88089c94c5c7518781f925316069739811b93b9115dc46b51e0d59c

原成员根`B699-ProA-NF59-SAT102-COVER12/`。本轮读取HANDOFF、PROOFS、FAILURE_BOUNDARIES、SESSION_STATE及所需代码；借用小型发现/接收框架后做本轮修改。`evidence/source_manifest.json`逐项记录原成员SHA256、当前采用路径与当前SHA256、是否改变；不把修改后代码称为原字节副本。

本轮未重新请求仓库、未修改或推送任何远端内容。旧大ZIP/历史矩阵不重复装入本包。

## 冻结采用接口（证据等级仍为前作者等级）

|接口|前包定位|本轮用途|
|---|---|---|
|同一K152固定G、D305/e152、原输入双点值分支|PROOFS中冻结输入/原题回传|固定覆盖对象，未选新G|
|NC9的400入口及n≥2^14000001|PROOFS冻结P/E|4个固定式的NV回传|
|r3..8完整粗素数幂和PC|PROOFS冻结源窗口/PC|原题必要方向；不重跑旧有限末端|
|D≥7、e≥3、z≥14、零余量X三次已排|PROOFS冻结低次与S14|账本穷尽分类|
|SAT≤17，无z/高度限制|前包SAT96/102定理|新SAT18..20的复扩张与因子归纳|
|NF23/NF29/NF53/NF59的S3/4/5映射|前包参数层与账本|旧低阶因子的最低费用|
|Galois除数入口：gcd(q,μ)=1⇒绝对不可约|前包PROOFS|本轮NF65/NF71亏格前置；不重复声称为新发现|
|原P/V0/行阶、2035竖直状态契约|前包PROOFS及accept_ledger.py|本轮从原指数独立重建同一G账本|

前包追溯的历史仓库固定快照为`8d8128b7db1baec71065f110946b402ace22ddbf`，不是本轮重新验证的实时分支状态。公共前缀：

    research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/
    intake/20260919-pro-results/

旧COVER13原稿位于`sources/ProA/rounds/06-genus-tangency-cover13/PROOFS.md`，前包记录Git blob SHA-1 `3f2238bfb2df83c3bc1cffe1ecfe7fde642b2560`；去重代码目录为`dependencies/92286b459789/`。这些是前包登记的冻结导航，不等于本轮新下载字节SHA256。旧78阶段无改动全链不重跑。

## 出版输入及本轮实际核对

Cogolludo-Agustín, Martín-Morales, Ortigas-Galindo, *Local invariants on quotient singularities and a genus formula for weighted plane curves*, arXiv:1206.1889v1。

    https://arxiv.org/html/1206.1889v1

本轮查核HTML：引言公式(1)的局部δ重数下界；定义5.1的虚亏格；定理5.6的加权平面曲线亏格公式。权(1,1,2)、度2q及避开奇异顶点的应用由本轮PROOFS §3展开。

没有声称下载/哈希PDF或重新证明出版定理；没有读取PDF，因此无PDF截图记录。其它有限线性代数、参数分层、源线限制、Bernstein展开和整数费用在本包直接证明/精确核对。

## 本轮新内容及未提高的等级

新：NF65/NF71完整门与全部仿射空间、全参数源与切向签名、TLINE切向剥线应用、四个固定NV、SAT18..20完整分类（含一个真实相容乘积）、7个精确核秩证书、middle13/free21同一G账本及COVER11/EDGE11。

发现、接收是同会话同作者两个实现；接收独立重建门/矩阵/账本，仍不等于外部独立全篇审稿。没有Lean。哈希/干净重放证明字节和执行一致性，不提升冻结前置的审稿等级。
