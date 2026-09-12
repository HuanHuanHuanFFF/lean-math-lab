# i11 (3,2) Q/E GrowthTree 候选
输入为冻结 qe-certificates/row-02.json。种子 p=3,q=2,k0=2,l0=3,a=1,b=1,D0=1,c=23,d=15,z=1/9。Q/E 均为 degree 38；Q 9 叶、E 8 叶，共四棵两 delta 树。每叶独立模块，Leaves 仅导入叶模块，Tree 保持统一 GrowthTree API。
每叶使用 gapCoeff[k]=choose(degree,k)*(lambda-b[k])；Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并做 tamper 拒绝。候选未运行 Lean/Git。
