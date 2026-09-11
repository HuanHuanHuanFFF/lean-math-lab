# row00 Q corrected GrowthTree candidate v2

本目录是失败候选的隔离纠正版，只写入本 experiments 目录；没有修改 frozen JSON、当前 lean/Growth 集成、旧 evidence、Lean 或 Git。

JSON 的 bernstein_numerators/bernstein_denominator 表示局部 qCore.comp(affine) 的标准 Bernstein 系数 b[k]。目标 gap 的 Bernstein-monomial 系数为：

gapCoeff[k] = choose(N,k) * (lambda - b[k])

旧候选直接把 b[k] 当 gapCoeff，导致第 0 叶在 x=0 时右侧为 0、左侧为 lambda。v2 对全部 13 叶使用上述精确公式。第 0 叶 6 个结果与已接受 LeafExample 完全一致：

['3261099431701357391524367497/39614081257132168796771975168', '11353737001365265858025340589/39614081257132168796771975168', '7633872254411051887454437037/19807040628566084398385987584', '4916052206841098932157791917/19807040628566084398385987584', '3008546934776492025504186029/39614081257132168796771975168', '350364030973138727963167881/39614081257132168796771975168']

每叶使用独立 Fraction 多项式重建 qCore.comp(affine) 与标准 Bernstein 展开，再验证 C(lambda)-localCore 与修正 gap basis 逐项相等。每叶把 gapCoeff[0] 增加 1 做篡改测试；保持系数非负但恒等式检查拒绝该篡改。

Shared 和 Tree 从当前 primary 集成基线按字节复制；Tree 保留 26 个完全限定 QLeaf 引用，Leaves 只替换 13 叶 gapCoeff。候选仍未运行 Lean。
