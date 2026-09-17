# 阶段01一手工具来源与适用边界

访问日期2026-09-16 Asia/Shanghai。以下只登记已读的准确能力与缺口；没有据文档宣称已运行求解器。

1. Stroeker–de Weger, *Solving elliptic diophantine equations: the general cubic case*, Acta Arithmetica87(4),339–365（原刊首页1999）。[原刊PDF](https://matwbn.icm.edu.pl/ksiazki/aa/aa87/aa8743.pdf)。其引言对象正是有理系数、具有有理点的光滑平面三次的整数解；因此模型变换分母的缺口可以由一般三次的椭圆对数/LLL路线处理，但本轮尚未落实该算法的全部输入、界与计算证书。
2. [Magma官方整点/S整点手册](https://magma.maths.usyd.edu.au/magma/handbook/text/1567)。公开接口包含椭圆Weierstrass模型整点、S整点与若干四次模型接口；若提供的生成点只生成子群，覆盖也限于该子群。因此需要完整Mordell–Weil基与本模型的整数回传证明，不能把点表直接移植。
3. [Sage官方 elliptic curves over Q文档](https://doc.sagemath.org/html/en/reference/arithmetic_curves/sage/schemes/elliptic_curves/ell_rational_field.html)。`integral_points`同样要求真正的Mordell–Weil基；给非满基可能漏掉其他点。它解决当前Weierstrass坐标的整点，不自动解决原有理逆式的整数条件。
4. [Magma官方 genus-one model创建说明](https://magma.maths.usyd.edu.au/magma/handbook/text/1588)。创建model本身不保证曲线光滑。阶段01已另外作射影图与非零判别式检查，而不是把模型对象创建当亏格证明。

未采用搜索结果中的百科或第三方概述作为数学依据。完整原刊算法尚待定向阅读全文及可执行适用性核对；文献给出方法不等于本曲线已求完。
