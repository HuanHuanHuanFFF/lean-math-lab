# 来源、依赖层级与字节映射

## 冻结输入

唯一历史根：用户本页最近交付 `B699-R7-ProB-three-quotients-and-nine-block-evidence.zip`，原字节保存在 `sources/originals/previous-ProB.zip`。SHA256为 b5c7dbcb1237d595a35341b638cf02bead1e5799bcdc2fcbdf0fd9b68e340a15，5,189,813字节。

`SOURCE_MAP.json`逐成员记录确切归档路径和SHA256，`code/sources_check.py`实际检查CRC和逐字节等同。新消费者采用原B的规范化、三个整数商及大小界；完整重写于本轮证明§1，不采用其巨大的超椭圆高度。

同一个旧ZIP内的 `sources/originals/PRO-D.zip` 是 D 的冻结全五位置证明，不是本轮进行中材料。采用原件 `B699-ProD-R7-20260912/notes/PROOFS.md` §2–8.1 的 C_s>1，用于无额外模3条件的整行消费者。它包括明确的对数下界和有限证书，但本轮没有重跑其旧186项或对数实验，没有提高上游证据等级。较轻 ell=1 版完全不依赖这个一般非空定理。

## 实际核准的出版输入

A. Bérczes, J.-H. Evertse, K. Győry, *Effective results for hyper- and superelliptic equations over number fields*, arXiv:1301.7168v1 (2013)。

- 原文：https://arxiv.org/pdf/1301.7168
- 实际读取§3.5、Lemma3.9及Proposition3.10，印刷页11–12 / PDF零基页10–11；网页截图核对公式、height归一化、B=max(3,|b_i|)、Θ=max(h,m(d))乘积以及实位N(v)=2。
- 本轮仅调用 Proposition3.10 的实位分支，专用于三个固定代数数 z₀/26、14+√195、2。它在D原件中已是正式采用的出版输入；本轮不是将D的两个对数常数直接搬成三个，而是重新按数字个数3计算384·96^11<2^82。
- 不调用该文Theorem2.2，不用全四次曲线高度。
- 原定理引用Matveev证明其无限位部分；本轮没有重新证明Matveev原文。全体∞量词需要信赖该出版输入与本轮纸面特化，不能用Python PASS代替。
- 容器原始PDF下载尝试失败；网页全文与两张PDF截图可读且已实际读取。包内没有捏造的PDF字节副本，保留的是采用位置、公式特化和失败说明。

## 已检查但未作为最终新增输入

早期检索了 Bugeaud–Mignotte–Siksek, arXiv:math/0403046v1, 印刷页16 Theorem9.4（实代数数的Matveev乘积形式）。该式给更锐的 v<2^60，发现阶段可压到14项/轨道。最终为了复用D已有的同一原文入口，改用上面的BEG Proposition3.10；接受链采用 v<2^96、22项/轨道，不靠此较锐分支。探索日志明确与接受数据分开。

没有检索在线仓库当前状态，没有联系其他会话或外部人员。
