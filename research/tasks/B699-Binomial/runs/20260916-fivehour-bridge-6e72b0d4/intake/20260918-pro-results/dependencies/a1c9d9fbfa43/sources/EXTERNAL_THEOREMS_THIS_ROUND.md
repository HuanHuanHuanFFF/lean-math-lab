# 本轮外部定理：明确采用版本与应用范围

2026-09-17。本文件为采用合同，不是论文全文副本。

## Reider无基点判据

本轮实际读取并截图核对：Takeshi Kawachi, *On freeness theorem of the adjoint bundle on a normal surface*, arXiv:alg-geom/9603022，第1页Introduction中的Reider定理。
https://arxiv.org/pdf/alg-geom/9603022

版本：光滑复射影曲面S；N为nef整数除子，N²≥5。若|K_S+N|在某点有基点，则存在非零有效除子E满足N.E=0或1（并有定理所述的平方条件）。本轮对每条不可约曲线证明N.C≥2，因此所有非零有效E也有N.E≥2，已排除障碍；不需要舍去任何平方条件而加强定理。

应用1：S0在额外点T=(0,2)爆破后的S'，N0平方≥1223。典范类中的新E_T显式保留。
应用2：缺近侧槽1的八点曲面S1，N1平方≥950。

采用的是Kawachi研究论文明确重述的经典Reider版本。原始书目I. Reider, *Vector bundles of rank 2 and linear systems on algebraic surfaces*, Annals of Mathematics 127 (1988), 309–316；本轮未重证或重读其整篇原始证明。

## Matveev乘积减一显式下界

本轮实际读取并截图核对：Jhon J. Bravo, Carlos A. Gómez, Florian Luca, *Powers of two as sums of two k-Fibonacci numbers*, arXiv:1409.8514，第4页Theorem 2。
https://arxiv.org/pdf/1409.8514

正实代数底数γ_i、整数指数b_i、非零Λ=∏γ_i^{b_i}−1，所在实数域次数d；B≥max|b_i|，A_i≥max{d·h(γ_i),|logγ_i|,0.16}。所用下界的正因子为
1.4·30^(t+3)·t^4.5·d²(1+log d)(1+log B)∏A_i。

本轮d=1，γ_i为2、3、U/V；U,V是原n,n−2的真实变动商。A1=1、A2=2、A3=3+log(gq2)，B=2log n。Λ=2/(n−2)>0。U/V=1时删去该底数仍受统一安全常数界控制；未假设乘法独立。

原始书目E. M. Matveev, *An explicit lower bound for a homogeneous rational linear form in the logarithms of algebraic numbers, II*, Izvestiya Mathematics 64 (2000), 1217–1269；准确采用上述研究论文的显式版本，未重证Matveev原始证明。

## 基础数学

另使用光滑曲面的交数、爆破典范类、邻接公式、线性系与有理Taylor核，以及Cramer行列式界。PROOFS给出全部本配置特化步骤；并非从零形式化所有基础理论。
