# 实际全binomial分量分配与余项积

本候选的全部实际结论只需要n,k为自然数、1≤k≤n。原题1≤k<j≤n/2必然满足；不额外要求k≥2或不同小素数位置。

令F=choose(n,k)>0，S=F.primeFactors，X_p=p^v_p(F)。源Nat.prod_factorization_pow_eq_self给∏_S X_p=F。每个p∈S都是素数，完整指数非零。内部用已验binomial_prime_power_localization选择r_p<k，使p^(v_p(F)+v_p(k))整除n−r_p；然后仅取X_p作为分配块的成分。定位保留p=k的补偿幂，块则恰好保留二项式本身的完整部分，这使余项保留准确的k!因子。

每个位置r的块C_r是所有r_p=r的X_p之积。不同素数的幂互素，所以这个乘积整除n−r；有限支持保证没有漏素数。空组乘积为1，所有C_r正。不同位置的组不共享素数，故组块之间也互素。Finset的fiberwise乘积定理给∏_{r<k}C_r=F。

定义实际自然余项R_r=(n−r)/C_r。由已证整除得到R_r C_r=n−r；r<k≤n使n−r>0，故R_r≥1。于是

    (∏R_r)F=∏(R_r C_r)=∏(n−r)=k! F。

显式利用F>0作Nat乘法取消，得∏R_r=k!。没有把分配存在或这个等式作为最终外部假设。

若w_r≤L，R_r≥1给R_r^w_r≤R_r^L。取有限乘积并应用prod_pow，得到∏R_r^w_r≤(k!)^L。k13,L16以及w_r=16−r都已单独实例化。

这正是i13位置加权损失路线的基础接口。它尚不包含noCommon时的大素数加权转移、五位置重排或Padé边；即使本包之后通过，也不能单独宣布新的i13高度或原题闭合。
