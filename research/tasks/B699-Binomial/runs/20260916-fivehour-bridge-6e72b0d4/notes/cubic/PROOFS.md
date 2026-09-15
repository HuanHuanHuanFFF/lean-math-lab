# 三次曲线方向：最终证明入口

本文给出完整外层链与每个实际采用内核的固定入口。所有原输入始终满足4<=j<=floor(n/2)，Common是同一个奇素数p>=3同时整除C(n,3)、C(n,j)，NC3为其否定。没有删去p=3端点，没有把弱窗口当作NC3的等价定义。

## 1. 原题到同一相关商

完整素数幂进位公式与alpha=n/gcd(n,j)|C(n,j)给NC3=>4|n及j<n/2。平方n=x²时x偶，每个奇素数p|n都在C(n,3)中，包括n中至少出现两次的3；因此m²|zeta，其中m为x奇部、zeta为原j或n-j。

完整n-1、n-2窗口推出同一zeta的必要弱式

    n-1|3zeta(zeta-1)，n-2|6zeta(zeta-1)(zeta-2)。

令J=x+epsilon、D=x-epsilon，b=J/gcd(J,zeta)，a=bzeta/J，则b为正奇整数、gcd(a,b)=1、0<a<bD。清分母与同余得到同一原输入的正整数

    q=6a(a-bD)(a-2bD)/(x²-2)，
    rho=(2q+3ab²)/D。

实际整性和大小恒等式详见11-general-loss-height.md §2及其旧前置来源；geometry已独立复查。x>=14时rho<7b³，epsilon=+可用更强6b³。所有变换只给NC3的必要后果。

## 2. SQ3与真正b3分别处理

若3|J且J|zeta，用b1写zeta=A J。因为D是3单位、A,A-D,A-2D含一个3倍数，9|q1、3|rho1。epsilon=+时rho1<6；epsilon=-、x>=6时rho1<9。只剩rho1=3或6，分别逼出

    4(D-A)²=3D²-2epsilon D+1，
    (2A-D)²=3-2epsilon x。

前式右侧2 mod4，后式在所需负号为3 mod4；正号后式为负。x4的n16完整底部和x2空域单列。所以SQ3成立，范围仅是3|J的整J情形。独立证明与精确底部见reviews/cubic/nonbinary-and-row-return.md。

现在设v3(J)=1、J/3|zeta而J不整除zeta。此时真正规范b=3，写a=m²u、rho=3m²h，其中3不整除uh。rho的3赋值恰为1，m²|rho。大端m²h<63把奇部限制为m=1,5,7；非二幂小x没有该孤立3前提。

m7/h1、m5/h2两符号的全部情况由8个模9表排除。m5负号h1由5个素数的11个无根指数类完整覆盖，实际共同周期120；本分支直接对原多项式全部余数独立核对。m5正号h1是最初镜像分支，由k2曲线链闭合。

## 3. 全部纯二幂b3模板

m1时x=2^s，rho=3H。规范方程为

    4a(a-3D)(a-6D)-(HD-9a)(x²-2)=0。

epsilon=+有1<=H<=53、3不整除H、s=1或5 mod6；epsilon=-大端有1<=H<=62、3不整除H、s=2或4 mod6。共78个完整模板。

geometry的固定周期证书先排64模板，余14模板分成六条曲线k=|27-H|=2,7,11,16,20,25。反射a'=6D-a仅作辅助坐标；其正式原指标表达式会是2(n-1)-zeta，不能当作合法补指标。负号再以X=-x转到可为负的D=X-1。准确原输入逆回传见10c-reflection-return-map.md。

六曲线都是

    E_k: v²=t³-36(8k²+243)t+(32k⁴+31104k²-314928)。

k2的三个实无穷目标及两方向在05–08中完成；余五曲线的严格统一链在10-uniform-analytic-contract.md，必须连同10-certificates-and-height-addendum.md和10b/10c使用。

该链的关键接受对象为：官方确证完整E_k(Q)基；有理canonical-height矩阵；全部实分支的微分积分上界；非零椭圆对数；David完全显式初界M<10^300；不同严格RF实现确定的整数round；幺模矩阵与DIST100整数不等式。周期面积使用基本格面积，单实根为8KK'，没有错误套用三实根的周期规范。

第一轮已足够统一给M<250、s<7125119；本作者顺手完成的第二轮进一步给各s上界5495、3959、1934、220823、46247。完整周期之后，geometry将统一大区间压成1794个实际指数候选，并以p<=223的直接三次gcd无根逐一排除；父线程完整核对s<=9原i3底部。因此所有78模板闭合，不是有限s样本外推。

上述独立接收绑定reviews/geometry/b3-five-review-manifest.json、experiments/geometry/b3_height_manifest.json和b3_tail_manifest.json。结合第2节，v3(J)=1的NORMALIZED3没有任何m例外。

若真实规范b=3但v3(J)>=2，则完整3^v3(J)窗口迫使zeta模该幂为0或1，而J/3|zeta使其被3整除；只能余0，继而J|zeta，反与b=3矛盾。所以原题中所有真实b=3都被排除。

## 4. 两符号整行与支持下界

取n=(3P^r+/-1)²。P2使n奇，与NC3=>4|n矛盾；P>=5的完整P^r窗口可选同一原zeta=j或n-j使P^r|zeta，接NORMALIZED3或SQ3；P3必须保留整个3^(r+1)，同样送入zeta后直接接SQ3。因而两个整行族对全部合法j成立。加号族原已知，新增是补齐旧公开减号例外；独立回传见reviews/cubic/nonbinary-and-row-return.md。

一般SQ（J|zeta且不要求3|J）属于旧结论，另由本分支定向独立重构：20行无根表、原rho1/2/4/5共128周期状态及39小底部全部通过。它与SQ3的范围不同。

令lambda=3恰当v3(n-1)=1，其他情况lambda=1；N=(n-1)/lambda。两个互素规范根邻数若有一个至多一个素因子，即为1或素数幂，经完整源幂分配分别违反一般SQ或NORMALIZED3。因此omega(N)>=4。v3(n-1)=1时N不含3，故omega(n-1)=omega(N)+1>=5。这里数的是不同素因子，没有截断完整幂。

## 5. 任意规范b的显式消费者

保留第1节的任意真实b，原整数点(x,a)落在

    F=12a(a-bD)(a-2bD)-(rho D-3ab²)(x²-2)=0。

对x>=14其十个整数系数绝对值<=48b³。设k=27-9rho/b³，经过两个可逆齐次线性变换，F的全射影闭包就是上述E_k；核心恒等式、行列式与判别式均在11-general-loss-height.md中给出。

唯一可能的有理奇异参数k=27,0,-27分别是rho0,3b³,6b³：rho0违反正性，后两者由b,D奇及模4平方矛盾排除。k²54不可能有理。因此每个实际三次光滑、绝对不可约、亏格1，且有三个互异复无穷点。

采用Masser 2024 §5的**全部整数解**版本：各系数绝对值<=H的此类三次，其所有整数点满足max(|x|,|a|)<=exp((20H)^600000)。这比首页单纯存在一个小解的表述更强，原609/617/620页已实际核对。

直接在原整数坐标F上取H=48b³，得到

    log n<=2(960b³)^600000。

x<14显然也满足这个宽界。四种实际epsilon,zeta选择各自都成立，没有独立更换n,j，也没有用Weierstrass普通整点冒充原整点。独立接收见reviews/geometry/general-loss-review-manifest.json。

## 6. 结束边界

全部结论为纸面＋确证工具输入＋严格有限算术＋独立AI审读，无Lean。一般b仍可增长；四个真实b的乘积=c(n-1)、c为1或3，与上述弱对数幂下界相容，目前没有保持NC3的下降或全平方终止界。一般非平方NC3更未归约至这里。
