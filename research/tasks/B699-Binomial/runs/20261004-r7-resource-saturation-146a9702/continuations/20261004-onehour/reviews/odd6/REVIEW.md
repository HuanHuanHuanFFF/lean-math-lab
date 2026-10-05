# ODD-SAT6 独立接受记录

- 核验者：`verify_odd6`，Complex established target，`gpt-6.1-sol / xhigh`；独立于作者 A。
- 所有权：仅本目录。作者文件只读；临时编译/运行位于 `D:/Temp/b699-r7-onehour-20261004/review-odd6`。未运行 Lean/CI、下载、提交或子代理。
- 开始核验：2026-10-04 16:22:42 UTC；共享原截止 16:56:50 UTC。父任务基线 `f08ead6b850d3f88188f1acc7769cce9ee565482`，纸面分支 `huan/b699-r7-paper-20261004-01a0e34b`。
- 预期与实际前沿：接受后排空一个固定 q=6、D≤13、零中心费用的完整源型；不削减原题 R7，不排空 E0/E1，一般 G、n/j/g、模板指数、完整粗支持及指数仍开放。历史 ODD-SAT3–5 或可载性消费者的合同不由本次核验重签。

## 接受的准确命题

不存在 Q[N,X] 中非竖、Q-不可约的 H，同时满足 deg_X H=6、权(N,X)=(1,2)次数 D≤13；在全部 P_(r,s)=(r,s(r−s))（3≤r≤8、0≤s≤floor(r/2)）的每行普通重数总和均为6；在 r=4,6,8 中心以 u=N−r、t=X−s²−su 衡量的权阶均为普通重数的两倍；至少14个不同源点消失。

接受状态：**纸面有限归约 + 独立完整有限枚举 + 精确有理接收通过**。不是 Lean/kernel 接受、人类评审或新颖性结论。

## 固定作者输入

本 continuation 相对路径与 SHA256：

- `notes/a/03-odd-sat6-candidate.md`：`e325256734d7a305ec705ced6132a46833e44c8b37a9931ff99d8afcfffda5bf`。
- `experiments/a/sextic_saturated_no_genus.cpp`：`20479b5b967389e3eec198d71590ed162ecdf154686f08a09b49a00c6b882a17`。
- `experiments/a/sextic-saturated-no-genus-configs.txt`：`d0be166bbe435b42c9d23bb4bf1c4939e86fddb8e6fe72a8db44c02b0fc9a974`。
- `experiments/a/sextic-saturated-exact.json`：`4b3e3a6175bd211c174c39b22048c2081969a2e9bd411e25a9844fb722cca914`。

独立输出和核验源码的精确哈希见 [manifest.json](manifest.json)。本检查不用带亏格发现版或新 F2；不以运行作者 PASS 代替接受。

## 纸面归约检查

1. **六行全部分拆确实穷尽。** 若 H(r,X) 恒零，则 N−r 整除 H；与非竖不可约且 X 次数6矛盾。每个源的普通阶 m 不大于专化根重数，故一行 sum m=6 强制 deg_X H(r,X)=6；首项在该行退化不形成漏项。k 个源的全部非负分拆数为 C(6+k−1,k−1)，六行依次7、28、28、84、84、210。命题对实际阶的等式只在必要条件矩阵中作为下阶使用，扩大候选集合而非删除可能 H。
2. **56列完全覆盖。** B13={N^a X^b:0≤b≤6,a+2b≤13}，维数14+12+10+8+6+4+2=56。普通 Hasse 条件为 i+j<m。中心采用可逆线性剪切 X=s²+s u+t，普通阶不变；新增所有 i+2j<2m 的权条件。m≤6，因此 i≤13,j≤6 覆盖全部必要条件；零重数不添加条件。
3. **九线剪枝安全。** ell_a=X−a(N−a), a=0,…,8。H 限制在任何 ell_a 上若恒零，该线性多项式便整除 H，与不可约六次矛盾。限制的 N 次数≤D≤13。每个非中心源在 ell_s、ell_(r−s) 上各给至少 m 阶；中心 ell_s 对应 t=0，给至少2m阶。不同 r 给不同 N 根，因此各线累计负荷不得>13。
4. **z 剪枝安全。** 实际不同源的消失数是正重数项数之和。未枚举行的源点总数或逐行正项数最大值均是安全上界。本独立实现以剩余行全部源点总数作较弱上界；完整叶只接受 z≥14。
5. **模满秩排除 Q 不丢本原向量。** 所有矩阵项为整数。若 Q 核存在，将系数清分母并除最大公因子得到本原整数向量，对任何素数都非零；满秩模矩阵与之矛盾。增量条件只加行，已满秩分支不会恢复核。非满秩模核从未当成有理存在结论。

## 独立有限枚举与精确接收

[independent_enum.cpp](independent_enum.cpp) 是独立实现：素数65521（另经 SymPy primality 检查），与作者32749不同；单项式按低 X 次数/低 N 次数排列，分拆从大到小产生，各行先压成局部模行基后再递归合并。直接 binomial 卷积计算准确剪切 jets。既不读取作者14配置来决定搜索，也不使用 genus 或任何历史 NC/global 接口。

实际完整运行 [enum-65521.log](enum-65521.log)：

    r=3..8 options=7,28,28,84,84,210
    calls=236678 line_cuts=27871836 rank_cuts=9427104
    z_cuts=1 residual=14 timeout=0 seconds=36.2776

180秒保护未触发，退出码0。14个配置集合与作者去亏格配置严格相同，每个 GF(65521) 核秩55。[residual-65521.txt](residual-65521.txt) 保留完整新残核。

[independent_exact.py](independent_exact.py) 不复用作者 jet 公式求核：逐个将作者给出的非零有理核多项式直接符号替换为 H(r+u,s(r−s)+shear*u+t)，在 QQ 上展开，检查全部 i+j<m 或中心 i+2j<2m 的系数严格为零；并核对 X 次数6、权次≤13。接收器断言14个配置互不重复、与新旧两组残核集合完全相同。

独立枚举的55秩非零模小子式给 Q-rank≥55；直接精确检查的非零有理核向量给 Q-rank≤55。故完整56列 Q 核恰1维，无需相信作者 nullspace 实现或因式分解。此维数论证还覆盖全部较低次数候选。

对每个核向量直接代入整数 N=r，得到零 X 多项式，故 N−r 整除。编号0..13的竖因子依次：

    N−6,N−5,N−6,N−6,N−7,N−7,N−7,N−7,
    N−8,N−8,N−8,N−8,N−3,N−8

核的任意非零元素是这个向量的 Q 常数倍；竖因子和仍含 X 六次的商都非单位，所以任何非零核元素可约。全部候选被排空。逐项结果见 [independent-exact-receive.json](independent-exact-receive.json)，日志见 [exact.log](exact.log)。

## 次要接受：纯源线乘积的 D≥315

仅对 F=Π_(r=3..8)(N−r)^v_r Π_(a=0..8)ell_a^t_a，所有指数非负整数，采用固定11个源下阶时接受下界。未核验 LP 的最优点，也不声称一般 G 不存在。

独立逐因子检查 [independent_line_product.py](independent_line_product.py) 和 [independent-line-product.json](independent-line-product.json) 确认：Lambda5 九线系数依次(10,7,10,10,10,10,3,0,0)，六竖线系数均5。普通入射线阶1；选取的中心(6,3)中 ell_3=t 权阶2，竖线 u 权阶1；乘积阶与权次数可加。故

    5D−Lambda5=3t1+7t6+10t7+10t8≥0。

11个固定下界给精确整数和1572（中心41用权阶，其余用普通阶），所以 D≥ceil(1572/5)=315；只用九源线和六竖线无法造满足这些源阶的 D305 多项式。此项接受固定源下界的这一后果，不重新证明历史固定源合同。D315整数见证尚未包含在本核验输入，最小整数次数的可达性不在接受范围。

## 环境、命令与限制

核验开始即时可用内存2,248,298,496字节，总16,851,132,416字节；16逻辑核，额外CPU配额未确认。C盘约21.89GB/D盘约20.20GB可用；已有三个 python 进程约5/12/19MB，归属未知且未操作。编译、枚举、QQ展开串行；不把这些观测当永久机器规格。

工具：GCC13.1.0；Python3.14.0；SymPy1.14.0。工作目录始终为本隔离工作树；所有临时二进制在D盘。可复算命令（在仓库根、将 review 设为本目录后）：

    g++ -O3 -std=c++17 <review>/independent_enum.cpp -o D:/Temp/b699-r7-onehour-20261004/review-odd6/independent_enum.exe
    D:/Temp/b699-r7-onehour-20261004/review-odd6/independent_enum.exe D:/Temp/b699-r7-onehour-20261004/review-odd6/residual-65521.txt
    python -B <review>/independent_exact.py
    python -B <review>/independent_line_product.py

新核验源码、结果、日志均归本目录；编译日志在临时目录，无编译错误。论文表述采用固定 ODD-SAT6 输入时可标为本具名独立核验通过；原题与其余源型不由此闭合。
