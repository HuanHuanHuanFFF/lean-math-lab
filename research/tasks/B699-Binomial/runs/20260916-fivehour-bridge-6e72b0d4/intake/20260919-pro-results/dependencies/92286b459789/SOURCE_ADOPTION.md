# 来源、采用范围与证据等级

## 当前接续点

唯一项目Overview是用户提供的 `OVERVIEW2026-9-18-2.md`，其A部分记录33是较早累计状态。当前会话已交付的SAT78/COVER16包是本轮直接数学基线；不以旧Overview覆盖新交接。原字节SHA256见 `evidence/source_manifest.json`。

本轮只在 `/mnt/data/B699-ProA-i9-next-20260918-a72b4c19/` 写入新结果。未访问/修改/推送仓库，没有等待B/D/E的新结果，未运行Lean，未全面重放旧链。

## 冻结作者输入（不因本轮有限检查升级证据）

- 原包 `B699-ProA-i9-uniform-sat78-cover16-evidence-20260918.zip`，SHA256 `3e4afbdc5eefac576d84ef9293539482de52a6603fd54e906009e8ffe6f88a49`。原成员根 `B699-ProA-i9-sat60-20260918-f2a69c18/`。
- 该根的PROOFS、HANDOFF、FAILURE_BOUNDARIES：采用原K152、P/E、完整源幂/PC、载点低次与S14、SAT-PEEL13及原有近饱和分类。不执行原814933根门/7231jet等历史全链。
- 该根 `code/source_ledger.py`：只阅读原账本定义与源指数接口。新 `verify_ledger.py` 从P指数、V0指数和原行权独立恢复六行约束，不导入旧程序。
- `B699-ProA-i9-mu29-20260918-84d2c9e1/PROOFS.md`（原cover22包）：读取NF23三个完整族、NF29唯一完整族及源重数逻辑。新全参数对角切向计算直接使用这些明确公式，不复跑旧分类。
- `B699-ProA-i9-nf35-20260918-6d24a8f0/PROOFS.md`：NF35末三行全可约及L*、Q*；本轮仅补其前三行。原 `code/discover_nf35.py` 作为发现程序参考，未把它当最终接收。

这些接口上游包括完整局部立方桥、有限末端及原高度/低次消费者；本轮不以“旧作者PASS”声称独立数学审稿。原ZIP及旧大证据不复制进新包。来源路径、文件字节数、SHA256逐项保留在manifest。

## 新出版输入（实际核对的原始来源）

José Ignacio Cogolludo-Agustín, Jorge Martín-Morales, Jorge Ortigas-Galindo,
*Local invariants on quotient singularities and a genus formula for weighted plane curves*, arXiv:1206.1889v1, 8 June 2012。

- HTML: https://arxiv.org/html/1206.1889v1
- PDF: https://arxiv.org/pdf/1206.1889
- 第1页公式(1)：光滑曲面局部δ是无穷近点ν(ν−1)/2之和，本轮只取原点那一项，得δ≥m(m−1)/2。
- 定义5.1：虚亏格 d(d−|ω|)/(2ω0ω1ω2)+1。
- 定理5.6（第15页）：亏格由虚亏格减去局部δ贡献。本轮仅用于绝对不可约、避开P(1,1,2)奇异顶点的曲线，所有局部环境为光滑曲面。
- 本轮通过网页PDF截图实际核对第1页和第15页，另读HTML定义5.1。未下载PDF原始文件，不提供虚构PDF哈希，不复制论文全文。

把SAT≤13扩至复系数、排除非绝对不可约分支、将公式用于本模型、完整源门与694个剩余系统，是本轮新推导/证书，不声称论文已证明B699。

插值的标准背景曾核对NIST DLMF §3.3（https://dlmf.nist.gov/3.3）；最终代码显式使用Newton/Lagrange有理公式并相互核对，无数值插值黑箱。有限域不可约性与Bernstein系数恒等式在新证明及标准库检查器中展开，不调用CAS作为最终判断。

## 新发现与最终接收的边界

发现脚本保留SymPy/NumPy和部分旧输入路径，主要负责生成候选、选择子式与恢复有理解。其运行记录是本次实际日志；不要求作为用户重放入口，也不把有限域秩不足称为有理秩不足。

最终入口 `code/reproduce.py` 仅导入本包 `verify_*.py`，全部Python标准库，无网络、CAS或旧包路径依赖。它重建完整根门、普通jet、全参数切向签名、694个高次系统及2035完整竖直状态。两套实现均属同一会话作者交叉检查，不是外部独立审稿。

COVER13为作者纸面证明＋精确有限义务接收；存在性G未恢复，原题一般输入未有限化。发布回执是字节完整性/重放状态，不提升数学依赖的证据等级。
