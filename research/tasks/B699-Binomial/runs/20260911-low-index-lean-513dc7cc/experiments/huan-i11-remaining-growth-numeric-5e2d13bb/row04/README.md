# i11 (5,7) Q/E GrowthTree 候选
输入为冻结 qe-certificates/row-04.json。种子 p=5,q=7,k0=2,l0=2,a=2,b=1,D0=1,c=11,d=7,z=1/50。Q/E 均为 degree 18；Q 10 叶、E 9 叶，共四棵两 delta 树。每叶独立模块，Leaves 仅导入叶模块，Tree 保持统一 GrowthTree API。
每叶使用 gapCoeff[k]=choose(degree,k)*(lambda-b[k])；Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并做 tamper 拒绝。候选未运行 Lean/Git.
