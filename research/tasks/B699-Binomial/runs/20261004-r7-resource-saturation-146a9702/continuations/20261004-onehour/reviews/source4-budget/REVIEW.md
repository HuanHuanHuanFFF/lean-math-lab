# SOURCE4、ODD6必要表更新与D315见证：独立接受

- 核验者：`verify_odd6`，Complex established target，`gpt-6.1-sol / xhigh`。本次是新小包，旧 `reviews/odd6/` 签件未改。
- 接续开始：2026-10-04 16:31:15 UTC；共享截止仍16:56:50 UTC。文件所有权仅本目录；固定工作树/分支/基线沿用本 continuation README。编译/临时二进制只在 `D:/Temp/b699-r7-onehour-20261004/review-source4-budget`。
- 接受强度：纸面必要归约、完整精确有限轨迹接收、独立整数/组合计算。无 Lean、CI、下载、提交、原题闭合或新颖性声明。

## 1. SOURCE4：四个固定源域为空

接受如下 h=107、六竖线 v 元组的固定21源域不存在非零 Q[N,X] 多项式 G：

    1583: (22,18,15,13,11,11)
    1585: (22,18,15,13,12,10)
    1588: (22,18,15,14,11,10)
    1592: (22,18,16,13,11,10)

采用的域条件是 deg_w G≤305、deg_X G≤107、G 可剥去上述竖线乘积且满足固定源下阶。此结论不依赖 global649、ODD-SAT6、七因子个数或预算表；也不要求模化保持不可约或首一。

### 固定来源与输入归约

固定候选 `notes/main/03-source4-candidate.md` SHA256 `7d7193b8271a8c57a7074c9d272075b9d128761289105e326e8b7ad92195e4e4`，四元组来自 `experiments/main/source4-manifest.json`。输入、作者JSON与完整轨迹在 `experiments/main/e1-kernels/s1583,s1585,s1588,s1592.*`；所有源字节/新验收文件的精确哈希见 [manifest.json](manifest.json)。

固定普通源下阶为

    r3:77,74; r4:67,57; r5:51,54,46;
    r6:40,43,48; r7:31,34,39,45; r8:25,28,33,39;

中心 r4/r6/r8 的剪切权(1,2)下阶分别56/41/52。每个元组 sum(v)=90。令 G=V Gbar，其中 V=Π(N−r)^v_r；Q[N,X] 是整环，Gbar非零。权次数在非零乘积下相加，D(V)=90，deg_X(V)=0，所以 deg_w Gbar≤215、deg_X Gbar≤107。在相应源局部坐标中 N−r=u，普通阶或权阶均为1；其它竖线为单位，故下阶必要条件恰为 max(原下阶−v_r,0)。

新独立脚本 [receive_sources_and_integer.py](receive_sources_and_integer.py) 逐行核对四个 input header=(107,215,257,0,21)、全部21点、中心剪切标记及减阶值。没有从作者摘要反推这些输入正确。给定257是素数；清分母并除内容后任何非零QQ Gbar都有非零F257影像，线性源条件和次数边界保持，因此模零核确实排除QQ非零多项式。

### 完整模轨迹实际接收

重编并运行的冻结独立接收器源为

    research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/48/487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196.cpp

文件SHA与文件名完全相符，4054字节。使用 GCC13.1.0 `-O3 -std=c++17`，二进制在D盘；输入为本轮新完整轨迹，并未恢复历史目录或重放旧结果。逐个实际检查全部条件编号、点/jet指数、非零最小权pivot、pivot值、权变化和全模更新；拒绝短轨迹或多余数据。

接收器数学不变量经审读：

- 初始自由F257[N]模基为1,X,…,X^107；用逐次乘以源处的 x0+t（普通）或 x0+s u+t（中心）建立全部准确 jets。
- 条件顺序对 u 前驱封闭。当前模已杀掉此前条件，故当前jet δ 满足 δ(A(N)f)=A(r)δ(f)。选非零最小 leading(weight,index) discrepancy 后，替换其它基为 f_i−δ(f_i)/δ(f_p) f_p，并替换pivot基为(N−r)f_p，恰是当前δ核的完整模基。
- 基的leading X位置始终互异。最小(weight,index) pivot规则使其它基leading项不被消去；pivot乘N−r只增加其权1。所以基保持 weak Popov 形式。组合的最大leading项不能相消，D截面的精确维数是 sum_i max(D−weight_i+1,0)，没有只检查一组候选向量而漏核。

实际四个新接收输出：

|元组编号|完整条件数|非冗余条件数|D215截面维数|最小基权|
|---|---:|---:|---:|---:|
|1583|11773|11773|0|216|
|1585|11774|11774|0|216|
|1588|11773|11773|0|216|
|1592|11773|11773|0|216|

详见 [receive-s1583.json](receive-s1583.json)、[receive-s1585.json](receive-s1585.json)、[receive-s1588.json](receive-s1588.json)、[receive-s1592.json](receive-s1592.json)。新接收器还核对其完整108项weight数组与作者JSON一致；[source4-and-integer315-result.json](source4-and-integer315-result.json) 保存新输入验证结果和轨迹SHA。

这四个固定h/v域由源条件直接为空；其它非零模核只表示本测试未排，不能推出QQ曲线或真实NC存在。原n/j/g、模板和完整粗支持/指数仍开放。

## 2. 给定58态必要表的更新

接受范围限定为给定 `experiments/a/final-row-frontier.json` 的58个E1状态、固定global649平衡签名表，以及已采用的唯一epsilon1非平衡因子合同下，本次必要预算算法及过滤结果。没有重签原DP全链、global649安全性、ODD-SAT3–5、NC消费者或原点有限化。ODD-SAT6采用独立旧签件。

新 [independent_budget.py](independent_budget.py) 不运行或导入作者 `odd6_budget.py`/`resource_model.py`。它直接读取哈希为 `cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553` 的649行原表，独立全体两两比较只去掉逐分量支配项，得到155个Pareto签名。每个删除项均可替换为保留的逐分量较小项，因此给定表在下闭cap条件下的最小预算不变。

实际非平衡因子由16个代理安全覆盖：

- q≥7用(7,c=0)。
- q=4,5,6在零费用族已排除的合同下至少一个费用坐标正；奇源行费用为偶数，用单项2，偶源行用单项1，次数降为4。共6个代理。
- q=3在已采用的总费≥2与奇源行偶性下，必支配一个总费恰2的允许非负剖面。枚举独立Cartesian box得到9种：一个坐标2的6种，或三个偶源行中任取两行各1的3种。

任意真实费用c均逐分量支配上述某代理，代理q不大于真实q，因此必要模型只被放松，不会错误删除真实配置。此前源合同负责把SAT零费用排除应用到可载因子；本次不新增该应用前置。

独立算法采用六轮迭代 min-plus DP：exact used-cost→最小六平衡项次数，按给定cap安全剪枝；与作者递归剩余cap实现不同。对每个代理计算 q_proxy+best6(cap−c)，逐项核对作者58态全部合法代理、最小次数与生存标记，并独立检查 `305−2h−sum(v)=1` 以及21源推导的cap整数公式。固定表和cap安全性属于已采用前置，58态作为给定集合使用。

结果严格匹配：ODD6新增删除1642、1743、1827，58→55；SOURCE4删除1583、1585、1588、1592，与前3个不重叠；余51，最低h110。详见 [independent-budget-result.json](independent-budget-result.json) 与 [independent-budget-run.log](independent-budget-run.log)。E0的354态未在此算法核验。

## 3. 纯源线乘积最小D恰315

新整数见证固定来源 `experiments/main/source-line-integer315.json`：

    t=(3,1,1,2,10,5,0,0,0)
    v=(72,54,43,37,33,32)

九线指数和22，六竖线指数和271，故 D=2×22+271=315。逐个21源的普通/中心权阶由入射因子可加给出：非中心 v_r+t_s+t_(r−s)，中心 v_r+2t_s。新独立接收器按固定源直接计算全部阶并核对给定记录，所有21项达到下界；7,0和8,0/8,1有余量，其余所需源均达界。

[旧odd6签件](../odd6/REVIEW.md) 已独立接受 Lambda5≥1572 及5D−Lambda5≥0的下界D≥315；本新见证给达到315的非零整数纯乘积。因此在九条ell_a及六条竖线的非负整数纯乘积类，满足固定21源的最小权次数**恰315**。该结果排除D305的这一构造类，并不排除一般G或更丰富的因子构造；不更换原固定G及其高度/NC合同。

## 环境与复算

本次开始可用物理内存1,477,238,784字节；额外CPU配额未确认。已有三个python进程约5/12/19MB，归属未知且未操作。沿用此前本轮C/D磁盘余量观测；编译、四轨迹接收、整数与必要表DP串行。接收器主要矩阵为11774×108个int（约5.1MB），没有大规模Lean/资源重计算。

命令均显式采用本隔离worktree作为工作目录，实际过程为：

    g++ -O3 -std=c++17 <冻结487596ab...e196.cpp> -o D:/Temp/b699-r7-onehour-20261004/review-source4-budget/receive.exe
    receive.exe <新sID.input.txt> <新sID.trace.tsv>  # 1583,1585,1588,1592串行
    python -B <本目录>/receive_sources_and_integer.py
    python -B <本目录>/independent_budget.py

全部检查退出码0。完整日志与新结果留本目录；冻结旧源码保留原字节并在manifest绑定，不重复复制为新成果。无超时结果被转写为接受。

