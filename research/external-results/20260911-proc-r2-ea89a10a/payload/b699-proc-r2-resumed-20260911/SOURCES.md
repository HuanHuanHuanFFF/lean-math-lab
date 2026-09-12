# 来源与本轮采用边界

## 冻结输入

用户 ZIP：`B699-ProC-interrupted-handoff-20260911(1).zip`。
SHA256：`a91c24dfebb9ec54455ea989b5f2240461234aa49741633f5f38e30e88b7e8ca`。

原字节存放在 `frozen/`，解出材料在 `source/B699-ProC-interrupted-handoff-20260911/`。输入 MANIFEST 中177个成员的字节数与 SHA256 全部实际核对通过。没有将旧会话遗失的输出重新构造成旧 PASS；本轮 `evidence/` 是新执行所得。

本轮先读 HANDOFF、RECOVERED_MATHEMATICS、EXPERIMENT_STATUS，再按需读取 A REPORT/SOURCES/G 检查器与阈值证书元数据、B REPORT/SOURCES、C REPORT。A 的旧阈值表、共同素数积论证及 i10 全域定理，B 的 i4 光滑窗口定理作为明确上游采用。没有检索实时分支、没有等其他会话交付。

## 公开材料

本轮打开 mathlib 官方文档核对标准接口名称：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/NumberTheory/Padics/PadicVal/Basic.html

文档列有 padicValNat_factorial（Legendre）与 padicValNat_choose（Kummer）。这只是后续形式化入口核对，**没有在本轮编译这些新定理**。本轮纸面证明从阶乘倍数计数给出所需基础，不增加出版数论输入。

对 Erdős 699 公共页的读取返回403；泛关键词检索没有提供被采用的新数学结论。因此没有公开新颖性、首创性、全球领先性判断。

冻结 A 采用的 BFT 作者稿及 theta 输入仍只按 A 的交付记录继承；本轮没有重新打开该 PDF 或核对出版版本，也没有宣称完成该上游的独立验收。

## 证明、算法与证据分层

- 新自包含数学：运输、内容公式、缺陷阶梯/商界、直接 Padé 整除引理、两个端点尾部。
- 上游依赖数学：六个新 m0 的无限尾部、F3、F9。
- 精确计算：源哈希、结构回归、有限桥接、端点及坏证书拒绝。
- 发现性计算：SciPy 浮点线性规划失败模板，不进入接受链。
- 未发生：外部独立数学审读、Lean、远端 commit/push、人审。
