# 外部定理：唯一实际采用的分析输入

E. M. Matveev (2000), *An explicit lower bound for a homogeneous rational linear form in the logarithms of algebraic numbers. II*, Izvestiya: Mathematics 64(6), 1217–1269.

- DOI：10.1070/IM2000v064n06ABEH000314。
- 原始论文入口：https://www.mathnet.ru/eng/im314
- 原文PDF：https://www.mathnet.ru/php/getFT.phtml?jrnid=im&option_lang=eng&paperid=314&what=fullteng
- 本轮直接打开PDF，并截图核对纸面p.1219（PDF零起页码2）。采用Corollary 2.3，式(2.6)。

精确契约：非零实对数线性型，A_i≥max(D h(γ_i), |logγ_i|, 0.16)；可按原文将B换成最大指数绝对值（本题另含指数1）。结论控制log|Λ|，不是未经解释替换成乘法式。原文 C_1(t) 的第二个候选为2^(6t+20)，因此本题t=3可用2^38。三个数均在实分裂域，D≤6。正文取A_i=100，逐项说明高度与非零条件，再将成本放宽至10^20(1+logB)。

审计边界：已核对所用定理陈述，没有在本轮重证Matveev整篇论文。本包不分发该论文全文或截图。可重放程序认证的是本轮显式算术与有限证书，不能把程序PASS理解为Matveev定理的形式化证明。

非采用项：PARI官方文档的thue/thueinit(flag=1)契约曾查看，但程序未能安装运行；没有使用其任何解集输出。Magma/Wolfram同样没有实际求解输出。
