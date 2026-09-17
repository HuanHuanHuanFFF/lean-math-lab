# 工具与跨领域连接：第一判别

## 已查一手来源与用途

- Nagel–Trok, Segre's Regularity Bound for Fat Point Schemes, arXiv:1611.06279v1，https://arxiv.org/html/1611.06279 。原文界取各正维线性空间权和的归一化上确界。对当前高重数点配置，平面总权项已约617，不能直接给degree311的无基点结论；只作方法比较，不作为已适用的闭合定理。
- Jeannerod等，Computing minimal interpolation bases，https://arxiv.org/abs/1512.03503 ；Faster Algorithms for Multivariate Interpolation with Multiplicities and Simultaneous Polynomial Approximations，https://arxiv.org/abs/1402.0643 。寻找编码理论插值/多项式矩阵基约简是否可避开巨型稠密矩阵，仍需验证变重数与实际次数范围。
- Magma官方手册Integral and S-integral Points，https://magma.maths.usyd.edu.au/magma/handbook/text/1567 。接受指定Weierstrass/S整点或四次模型；给定不完整MW基只保证其生成子群中的点。因此现成IntegralPoints调用不能直接完整接收原仿射三次的整数点。
- SageCell官方接口说明，https://github.com/sagemath/sagecell/blob/master/doc/messages.md ，公开POST /service接受code并返回结果。仅作一个小型曲线探针，无本地安装，不向外发送仓库或个人文件。

## 主线程提出的两项改写

1. **H023→插值模块。** 线性变换x=j+7k,y=k使20节点的x坐标两两不同，且保留总次数和g。令R(x)插值y值，用t=y−R(x)展开；第d项系数应被∏(x−x_l)^max(m_l−d,0)整除。这与变重数fat-point理想等价，交geometry核对后成立。模块宽度不能仅按最大重数155截断，目标y次数若为311，仍须涵盖到311；后续依赖真正的射影次数压缩或更快基算法。
2. **固定三次→椭圆曲线+整数性。** 001中的有理拐点变换由nc3独立确认，h2完整mirror分支由mod9排除，只剩E1。原整数点会映到E1有理点，分母需保留。优先判断原模型整点算法、分母立方类、指数点或MW约束，不能误用普通E1整点表。

## 新的共同障碍

用一般S-part非有效定理可解释某些高幂候选的定性有限性，却不产生可执行终点。对方程g·2^A−r·3^B=2，g,r随输入变化；把它们当固定系数套有效对数界是错误的。

arithmetic提出的有效路线仅先固定一个粗系数（如7），用显式p进界取得全局Amax，再按B提升唯一指数剩余类。A_B单调不降；只有实际达到A_B>Amax才可宣布后续全部排除，平台期不能靠样本外推。最后少量A的原题末端与素性仍需单独完备接收。

## 发布收据

阶段0已推送本轮分支，提交281db7f099306a4b5a40b3f300b371e421d2e94c；远端SHA一致，查询时无该分支CI运行。发布的是接续文档、预算/基线/归属、资源及候选改写记录，未宣称新数学闭合。
