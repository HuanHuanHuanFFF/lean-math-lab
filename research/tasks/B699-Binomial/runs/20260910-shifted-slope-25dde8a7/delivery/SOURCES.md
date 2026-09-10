# 采用来源与归属

## 冻结的用户附件

输入包：`B699-fresh-start-task-20260909(1).zip`。
SHA256：`947583940874011ca63e90774e4779e0d6713fec7b16c2f7bf0e58f4c1788085`。
原包自己的清单核查已实际执行：34项 PASS；仅验证字节。

|采用内容|原包内定位|本包处理|
|---|---|---|
|原题、先独立后对照的流程|`TASKS.md`、`01-PROBLEM.md`|按原题保留完整量词及 p=i|
|冻结前沿与阅读入口|`context/CURRENT_STATE.md`、`context/READING_MAP.md`|前者原样复制到 `sources/frozen-current-state.md`；不是线上最新状态声明|
|完整素数幂转移、系数内容接口|`context/prime-power-transfer.md`、`context/coefficient-content.md`|复用机制，未记为本轮新成果|
|i=3 的 4整除必要条件、n/j 既约斜率、n<9b³|`prior-source-snapshot/notes/low-index/reduced-slope-structure.md`|原样复制到 `sources/frozen-reduced-slope-structure.md`，报告附录展开所需证明|
|低指标高度、i=4 非有效有限性等|`context/low-index-bounds-report.md` 及当前状态|只用于比较，没有重跑其 Lean 或高度证书|

采用的斜率来源头部标注基线提交 `7fd3928656489afe2c80698f0a09d1d933444186` 和原负责人 `/root/low_index_mechanism`；本包保留归属，不把该结果当作本轮首次发现。其他已查看的固定多项式、对称量覆盖和零边界记录仅用于避免重复路线。关键来源的精确字节哈希见 `PROVENANCE.json`。

## 外部原始来源核对

查阅 mathlib 官方文档：

<https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Lucas.html>

核对到的接口包括 `Choose.choose_modEq_choose_mod_mul_choose_div_nat`、`Choose.choose_modEq_choose_mul_prod_range_choose`、`Choose.lucas_theorem_nat`。这是对 Lucas 分块/逐位表达的原始实现文档核对，不表示这些接口已在用户仓库中编译接通。本报告的实际算术推导使用自行写出的 Legendre 非负逐层表达，不新增重型外部定理依赖。

尝试访问公共 Erdős 699 页面时工具返回403，不能据此确认执行时的公共最新状态。没有用搜索不到成果来证明新颖性，也没有引用未核对论文来闭合证明。

## 本包新增部分

报告第3—6节的两个移位参数高度、u/a 完整恢复、B32 候选关闭、整数斜率排除带及固定偏移族，是相对于以上已读冻结基线的新推导/消费者。所有计算代码与输出为本轮实际执行。本文不声称文献首创性，也没有独立同行审稿或 Lean 形式化验收。
