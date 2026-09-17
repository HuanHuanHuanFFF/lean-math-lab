# 实际来源、采用范围与证据等级

## A. 本轮收到的冻结输入

当前会话附件 `B699-ProE-thin-cofactor9-20260916.zip`，实际SHA256：

    2c38391aef111f945e0f41ec7603490fd04c94ad23749927cecdfcd19a0cea3d

原始上传在运行容器可读。只提取6个相关普通文本成员，原字节SHA、原ZIP成员名和本包重命名路径在 `verification/SOURCE_FILES.json`。初始临时复制曾让两代同名previous-PROOFS冲突；打包前按原ZIP显式重取并分为thin9-PROOFS和primitive-PROOFS，逐成员哈希核对；不修改原件内容，不冒称临时名称就是原目录结构。

- `sources/thin9-PROOFS.md`：上轮端部结果式、已闭a/b/L小块及未闭R=7。
- `sources/thin9-OVERVIEW.md`：上轮单文件接续入口。
- `sources/thin9-SOURCE_ADOPTION.md`：上轮采用边界。
- `sources/thin9-FAILURES_AND_DECISIONS.md`：避免重复旧扫描/四格末端。
- `sources/primitive-PROOFS.md`：更早的源窗口前置。
- `sources/three-PROOFS.md`：旧THREE，其中L>1曾采用特定椭圆整点分类。

本轮主证明在PROOFS §§1–8重建源窗口、R=7的14参数归约及三个固定指数方程的全部解。并未将旧58系数表的接受当作本轮R=7完备性的替代。旧a,b,L≥11仅在FOUR11前沿叠加时按原作者交付等级采用；没有重跑其余小块的所有证书。旧QT100K、VG8、RQ128及原特定曲线完整点表都不是本轮正向证明前置。

没有刷新GitHub分支，不假定取得其他Pro的实时新结果。所述前沿只对应这些固定输入。

## B. 一般出版输入：显式对数下界

实际在线读取并截图核对了以下作者PDF：

    https://samirsiksek.github.io/siksek.github.io/papers/fibannalsfinal.pdf

Y. Bugeaud, M. Mignotte, S. Siksek, *Classical and modular approaches to exponential Diophantine equations. I. Fibonacci and Lucas perfect powers*, 作者PDF日期2006-04-11。

实际采用的是Theorem 9.4的实数域形式，印刷页16（PDF零基页15）。印刷页17的证明说明该形式来自Matveev Corollary 2.3。核对项目：使用的是乘积减1形式Λ，不是把线性形式的常数无解释地移用；修改高度包含d·h、绝对log和0.16；实数域常数为1.4·30^(r+3)·r^4.5·d²；需要Λ非零。PROOFS §4逐项匹配了四条轨道。

原始一般定理书目信息亦通过期刊记录核对：

    https://www.mathnet.ru/eng/im314

E. M. Matveev, *An explicit lower bound for a homogeneous rational linear form in the logarithms of algebraic numbers. II*, Izvestiya: Mathematics 64:6 (2000), 1217–1269，DOI 10.1070/IM2000v064n06ABEH000314。

准确常数的实际采用对象是上面可见的Bugeaud–Mignotte–Siksek定理9.4及其证明，不声称独立重证Matveev全文。网页和截图已在会话中读到；本包未下载或再分发整篇PDF，不声称持有原PDF字节哈希。`notes/EXTERNAL_SOURCE_CHECK.md`保存核对位置和适用检查。

## C. 没有采用什么

没有通过Magma、Sage、PARI或Wolfram得到完整点集或全群结果。曾调查固定椭圆/Thue计算入口，但没有取得可用完整计算结果，遂转向可自含分类的整数Pell轨道。浮点高精度仅用于发现p/q候选；接受程序完全用整数和严格有理/定点区间。

本轮L>1的新证明确实替换了旧特定点表依赖，但并没有变成无出版输入的初等证明：新的出版输入是一般Matveev定理。R>1、H>1仍有初等证明。

## D. 成果等级

新纸面证明＋两个同作者实现的一致精确证书；未Lean，未独立研究者或人工审稿。完整辅助方程解集在本包中实际恢复，并回传原题；没有把辅助方程的解直接当成NC3反例。未做文献首创性或全历史覆盖差集审计。
