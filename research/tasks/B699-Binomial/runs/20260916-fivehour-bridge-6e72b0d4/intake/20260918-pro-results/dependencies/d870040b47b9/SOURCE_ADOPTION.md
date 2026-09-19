# 实际来源、采用范围与未重验的依赖

## 1. 用户唯一总览

`/mnt/data/OVERVIEW-2026-9-17.md`：本轮已完整读取；主责i9，保留R7、同一n,j、完整幂、非零/零值分支及作者等级。逐字节SHA256见evidence/source_manifest.json。没有修改该唯一主总览；本包只给OVERVIEW_DELTA。

## 2. 上轮S14原件

本会话上一轮交付：

    B699-ProA-i9-source14-closure-evidence-20260917.zip
    SHA256 6c56adef3d2d270f00d5606e2fb302ab373352f698da9d786ecae54ea4e44415

本轮在隔离只读目录解压，读取REPORT、完整PROOFS、HANDOFF、FAILURE_BOUNDARIES与SOURCE_ADOPTION。采用S14的准确消费者、高度1244000、完整源命中≥14，以及其展开的P/E、BC/R5、粗窗与FH接口。上轮1269840配置及其证明全链没有重放；不把字节取得或本轮接受当作S14的独立重验。

本包不重复塞入上轮ZIP，所用文本的精确哈希、挂载位置、大小见manifest。原件可由同会话上一条附件或用户保存包恢复。

## 3. 固定仓库原文：额外直接核对PC等契约

仓库：HuanHuanHuanFFF/lean-math-lab。
固定提交：`f232982bc5d27ba4de68cc3abb916796f771dec6`。
固定路径：

    research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/
    intake/20260917-pro-results/sources/ProA/07_QUADRATIC_CLOSURE50/
    B699-ProA-leading-linear-20260917/notes/PROOFS.md

Git blob：`e4b0b5fa9b79a70a104dc40f31549e2ec9f49269`。

本轮使用GitHub连接器实际读取原文20–37及35–115行，确认：

- P/E的全行前提与n≥2^14000001；
- PC精确式 `(q1q2)^5000≥n^463/2^5463`；
- BC每行非空；
- 完整粗幂转移、源值成本；
- FH推导与G因子范数<2^1243166。

这里记录Git对象哈希，不伪造未取得完整该文件原字节的SHA256。使用固定源只读，不刷新到其他会话的新结果；未推送、提交或修改仓库。

完整引用：
https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/f232982bc5d27ba4de68cc3abb916796f771dec6/research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260917-pro-results/sources/ProA/07_QUADRATIC_CLOSURE50/B699-ProA-leading-linear-20260917/notes/PROOFS.md

## 4. 出版输入

Shabnam Akhtari and Jeffrey D. Vaaler, *Lower bounds for Mahler measure that depend on the number of monomials*, arXiv:1810.12413v1，§1(1.2)–(1.3)。

https://arxiv.org/html/1810.12413v1

本轮实际网页核对Jensen乘积公式及经典一元Mahler系数界；二元FH推导在PROOFS §3.3说明。只读HTML，未分析PDF，未宣称取得PDF字节/哈希。没有把论文的新高维定理当作本轮未证明步骤的黑箱。

本轮CAP17和W6闭合本身不新调用Bézout、曲线整数点CAS或新的出版高度定理。S14的冻结上游仍保留它原来的出版输入；旧P/E、PC等上游也不因本轮只列契约而消失。

## 5. 发现、接收、独立性

发现：SymPy整数/有理核与少量符号因式分解，C++模秩探测，Python精确权优化。
接收：Python标准库整数/Fraction、显式核行与因子乘积；不同枚举顺序/单项式顺序/消元方向及不同辅助素数的C++实现。

两实现属于同作者会话内交叉核对，不是外部独立数学审稿。没有Lean、没有浮点接受、没有原题无限范围计算枚举、没有等待或借用B/D/E本轮新结果。
