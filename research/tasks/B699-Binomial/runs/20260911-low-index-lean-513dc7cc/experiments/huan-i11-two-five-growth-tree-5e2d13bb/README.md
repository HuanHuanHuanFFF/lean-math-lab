# i11 (2,5) Q/E GrowthTree 候选

输入为冻结 `qe-certificates/row-00.json`（来源由 `huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json` 绑定），种子 p=2,q=5,k0=7,l0=3,a=1,b=1,D0=3,c=5,d=4,z=3/128。Q、E 均为 degree 9；本目录生成 Q 10 叶、E 9 叶，共四棵两 delta 树。旧 `lean/Growth/Row00Candidate*` 属于另一组 c=3,d=2,z=5/512，完全未复用其数据。

JSON 的 bernstein_numerators/bernstein_denominator 是标准 Bernstein b[k]。每叶使用 gapCoeff[k]=choose(degree,k)*(lambda-b[k])。Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并对 19 叶做非负系数篡改拒绝。生成器实际从源 JSON 的 degree 读取，当前为 9，避免把叶数误作 degree。

Shared 使用唯一 family lambda：qLam/eLam；Leaves 显式对齐 lam 与 Shared lambda。Tree 保留完整括号的 comp 表达式、Shared import 和 38 个完全限定叶 child 引用，Q/E 各自两组 delta 根。候选只做 Python 静态生成与检查，未运行 Lean/Git。独立复核入口为 static_check_two_five.py，输出 static-checks-independent.json、SOURCE_MAP.json 和 FREEZE.json。
