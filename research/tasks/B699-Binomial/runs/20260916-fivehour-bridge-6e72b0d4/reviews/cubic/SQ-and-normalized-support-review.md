# 旧SQ的定向独立接收与新规范素因子支持

审读者/root/nc3。只采用旧B-two-neighbor-square-and-primitive-block的PROOFS §§1–5中实际需要的SQ，不复审其后其他结论或整个旧包。原字节哈希由SQ-source-check.json绑定。本记录是独立AI纸面重构＋标准库精确证书，不是Lean或人类审稿。

## 1. 已核的SQ链

NC3保留同一原j及zeta=j或n-j，并给4|n。平方n=x²时x偶，n的每个奇素数（含出现至少两次的3）都在C(n,3)中，故alpha=n/gcd(n,zeta)为2幂；写x=m2^s，便有m²|zeta。

若J=x+epsilon整除zeta，写zeta=aJ、0<a<D=x-epsilon。两个同源弱窗口给正整数

    q=6a(a-D)(a-2D)/(x²-2)，rho=(2q+3a)/D。

第一窗口D|3a(2epsilon a-1)、q模D为-6a³，严格保证rho整性。源恒等式给epsilon=+时rho<6；epsilon=-且x>=14时rho<7。m²整除a、q、rho，故奇数m只能为1，x=2^s。

rho3、6的精确因式分解在0<a<D下迫使二次因子为0，但该二次因子对x偶恒为2 mod4。于是只剩rho1,2,4,5。

x²-2不被3整除，故3|q；若3不整除D，则3|rho矛盾，所以3|D。若3|s，则9|n-1，完整3幂窗口必须保留n-1|zeta(zeta-1)，不能再付分母3。由此D|a(2epsilon a-1)。令Q=q/3，则Q模D为-2a³，所以D|2Q+a，rho=3(2Q+a)/D又为3倍数，矛盾。

剩余指数精确为epsilon=+的s=2或4 mod6，以及epsilon=-的s=1或5 mod6。源20行无根表逐一满足相应共同周期36、60，覆盖全部指数。独立程序直接验证原rho1,2,4,5的128个周期状态，并对每个采用模数的全部a余数验证无零，不依赖源的rho反射证明或程序。

epsilon=-留下的小偶根x=2..12完整枚举a=1..x，再保留原合法j=min(zeta,n-zeta)；39个模式的真实二项式共同奇除子全大于1。这个恰好是严谨大端门槛留下的完整底部，不是凭样本宣称无限结论。

因此接受SQ：任一根邻数x-1或x+1整除j或n-j时，原Common成立，所有合法x,j无上限。

## 2. 新NORMALIZED闭合后的全域支持结论

令lambda=3当v3(n-1)=1，否则1，N=(n-1)/lambda。把lambda分配到唯一可能含3的根邻数，写

    N=N_-N_+，gcd(N_-,N_+)=1。

若某一N_epsilon为1，原根邻数是1或3；前者只在原空底部，后者被已核n16底部或完整NORMALIZED排除。

若N_epsilon是一个素数幂：当该侧没有孤立3取消时，完整素数幂窗口可选zeta使整个J=x+epsilon整除zeta，违反SQ。当该侧删去孤立3时，J=3P^r、P>=5，完整P^r可全部送入zeta，违反本轮已闭合的NORMALIZED3。

所以在任何平方NC3反设下，两互素因子N_-、N_+各至少含两种素因子，得到

    omega(N)>=4。

特别地，若v3(n-1)=1，那么N不含3，所以omega(n-1)>=5。这个结论现在不再有m=1或5的例外。它是不同素因子数目的必要下界，不是上界或一般平方行闭合。

本段的新增范围来自本轮完整b3消费者；SQ自身是旧结论，本次重构不重复计发现功劳。仍未穷尽全项目历史消费者并集，也不声称文献首创。
