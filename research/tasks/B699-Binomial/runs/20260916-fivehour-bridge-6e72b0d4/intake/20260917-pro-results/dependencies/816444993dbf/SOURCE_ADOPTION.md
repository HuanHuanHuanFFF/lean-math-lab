# 来源、采用边与本轮计功边界

日期2026-09-17。实际读取已挂载的row3-saturation REPORT/HANDOFF/PROOFS和必要D历史原件。没有获取或假定已看过新的A/B报告。没有继承旧任务的时长、仓库授权或其他会话。

## 正向数学链

|输入|固定原件|本轮用途与等级|
|---|---|---|
|旧i7/H026的16次核|sources/frozen-fatpoint-height_certificates.json（来自fatpoint ZIP的完整evidence成员）|只采用明确整数系数作为构造数据。160个零条件、在j,k≥7的147项正性、原点阶及成本本轮全部重验；不采用旧NC7闭合来代替NC6|
|QIG|sources/B699-ProD-quartic-gap-shifted-smooth-20260914-proofs.md §1–3|原生目标6四窗口整行筛，冻结作者纸面证明。未重放旧指数/光滑家族全链|
|SIXG|sources/B699-ProD-even-gap-cluster-closure-20260914-proofs.md §1–2|原生目标6六窗口筛、两个最大幂入口。冻结初等整数不变量，未重放历史全链|
|上一轮状态|row3-saturation report/handoff及position/two-power报告|仅定位旧D6域、已有覆盖与未决边界。新H6-02主定理不依赖row3四槽或e4/f4消费者|

SOURCE_MAP.json逐件保存原路径、原成员、大小与SHA-256。对旧核成员额外记录原ZIP SHA-256；源ZIP本体未重复装入本包，其已用成员以原字节完整保存。此处不是把重新书写的摘要伪装为原件。

## 已实际独立重构但不能声称的新发现

先从原生i6的行1/3/4/5建立整数矩阵，发现16次核，再与冻结H026记录逐系数比较，发现完全相同。故本轮不计“新16次多项式”。实际新义务是降低到目标6、合法j=7、重算完整小部成本、得到2^71高度并完成新有限末端。

发现阶段使用SymPy/NumPy；最终接受链只用标准库。两个恢复实现同一会话作者，不是外部独立数学审读；精确整数验证也不等同Lean内核。

## 公开基础核对

阶乘估值和Kummer逐层进位公式与官方mathlib文档作基础对照：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html

所用是factorization_factorial及factorization_choose的数学公式。本轮主证明在PROOFS §1重新说明其初等来源，没有运行Lean，也不把该文档视为新H6-02定理的外部接受。

## 未采用

没有使用NC3专用缺陷、Bugeaud/Yu单位窗口、BEG、Magma群结果、A的高度或总览中待核验新交付。新主链无新增出版定理依赖。没有对本轮CRT族与全项目全部历史消费者并集完成差集审计，不声称每个族成员此前未知。

全部写入/mnt/data独立交付目录，未创建或修改仓库、未commit/push/PR/合并、未调用其他会话或后台任务。
