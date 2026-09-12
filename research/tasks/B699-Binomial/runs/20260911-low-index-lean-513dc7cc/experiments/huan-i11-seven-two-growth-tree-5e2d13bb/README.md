# i11 (7,2) Q/E GrowthTree 候选

输入为冻结 `qe-certificates/row-01.json`（来源由 `huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json` 绑定），种子 p=7,q=2,k0=2,l0=4,a=1,b=3,D0=1,c=9,d=5,z=1/49。Q/E 均为 degree 14；本目录生成 Q 8 叶、E 9 叶，共四棵两 delta 树。数据只来自 row-01，保留有序 p=7/q=2 参数，不复用旧 row00 树数据。

JSON 的 bernstein_numerators/bernstein_denominator 是标准 Bernstein b[k]。每叶使用 gapCoeff[k]=choose(degree,k)*(lambda-b[k])。Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并对 17 叶做非负系数篡改拒绝。生成器实际从源 JSON 的 degree 读取，当前为 14，避免把叶数误作 degree。

Shared 使用唯一 family lambda：qLam/eLam；Leaves 显式对齐 lam 与 Shared lambda。Tree 保留完整括号的 comp 表达式、Shared import 和 34 个完全限定叶 child 引用，Q/E 各自两组 delta 根。候选只做 Python 静态生成与检查，未运行 Lean/Git。独立复核入口为 static_check_seven_two.py，输出 static-checks-independent.json、SOURCE_MAP.json 和 FREEZE.json。
