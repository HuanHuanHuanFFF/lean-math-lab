# A 第一阶段：完整余量的必要资源模型

预期收益：为七可载分量建立不丢非平衡项的安全外层，若统一排空则 COVER7→COVER6；存活仅表示此放松未排空，不表示有真实 G/曲线/NC9。剩余原 n,j,g、模板指数、完整粗支持/指数均无界。

固定原件（相对于题目旧 run 的 intake）：
- 20261003-session-results/objects/75/753fdd3baf4ff9fd492562a74e9d5964ab2782ea808bb9e6db3fc62428f91fd5.md：A07 PROOFS，21源阶与费用公式，COVER7作者链。
- 20260924-session-results/objects/13/1318319ffd765a2e8f637afb0e536db4d45e9c0bda2cab130fe7403a3412091e.md：旧 EDGE8 PROOFS，通用 E 定义、正余量放松与 q≥3。
- 20260924-session-results/objects/ef/ef942274f1ebc7a61d1316e0edb893539e6d3edaf06387d5e2321d0bc4259fe1.cpp：旧 outer-state生成式，仅作对照，当前脚本独立重写。
- global649：20260927-session-results/objects/cf/cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553.txt；649行安全代理只用于 epsilon=0 的平衡可载因子，其安全性按作者契约采用。
上述摘要/文件路径沿各批 MEMBERS 的 retained_path 确认；文件名为内容 SHA，实验对 table 验证真实 SHA。

设 h=deg_X G，剥尽六条 N=r (r=3,…,8) 后的多项式为 Gbar，竖线指数 v_r，V=sum v_r，E=305−2h−V≥0。任意非竖不可约因子 H：q=deg_X H，epsilon=deg_w H−2q≥0。不同可载因子可对应不同原点，但同除固定 G。对每源点记普通重数 m；各行 Delta=q−sum m≥0，中心 kappa=2m−w≥0，其真实费用 c_r=2Delta+kappa（奇行无kappa）。

各源的重数加法与去竖线给容量
C_r=2h−2 sum_off max(OFF−v_r,0)−max(DIAG−v_r,0)≥0。
这是必要条件。计入全部剩余因子与重数后，选出的七个不同可载因子满足 sum q≤h、sum epsilon≤E、sum c_r≤C_r。没有假设剩余因子可载，也没有删掉其预算；只将未选部分放松为非负余项。

正余量因子 q≥3，epsilon≥1,c≥0；用(q=3,epsilon=1,c=0)替代仅扩大允许集。若其中A个正余量，必0≤A≤min(7,E)，其余7−A个平衡因子的 global649 最小费用卷积记M。必要性：3A+M_(7−A)(C)≤h。epsilon=0 的全部七个因子也可能与 Gbar 中其它非平衡因子共存，因此 A=0 仍需保留在E>0状态。

首个精确计算：重新生成全部允许(h,v)，得到2,035状态，E=0/1/2/3各1540/416/73/6；不出现E≥4。该结论尚待独立审读。与旧八分量相比不继承 E=0、h≥147 或 V≤11。

下一测试：先对全部正E的495状态计算安全七项卷积，保存完整最小代理见证；再判断哪些正余量的小次数域值得几何审查。不在不明成本时启动大规模系数枚举。
