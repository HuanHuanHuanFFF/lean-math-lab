# i11 (5,3) Q/E GrowthTree 候选

输入为冻结 qe-certificates/row-03.json，种子 p=5,q=3,k0=4,l0=7,a=7,b=2,D0=1,c=5,d=3,z=1/4375。本目录只写 9 叶候选：Q 5 叶、E 4 叶；不扩展其他 81 叶，不修改旧 row00、frozen JSON 或 lean 集成。

JSON 的 bernstein_numerators/bernstein_denominator 是标准 Bernstein b[k]。每叶使用 gapCoeff[k]=choose(N,k)*(lambda-b[k])。Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并对每叶做非负系数篡改拒绝。

Shared 使用唯一 family lambda：qLam/eLam；Leaves 显式对齐 lam 与 Shared lambda。Tree 保留带完整括号的 comp 表达式、Shared import 和 18 个完全限定叶 child 引用，Q/E 各自两组 delta 根。候选未运行 Lean/Git。
