# 加权恒等式与实际大素数转移

通用部分先从实际WinAssign对象证明

    ∏(n−r)^w_r = (∏R_r^w_r) · ∏_{p∈support}X_p^w_(assignedIndexp).

做法是在每个位置把已证R_r C_r=n−r提升到w_r次幂，分配有限乘积，再用fiberwise乘积定理把块中的幂合回原完整prime support。由WinAssign的∏R_r^w_r≤(k!)^L给通用损失界，没有新的assignment或product输入。

实际i13部分仅假设原hij、hjn、noCommon。对支持中的p≥13，取e=v_p(choose(n,13))>0。noCommon和p整除第一choose给p不整除第二choose。来源prime_power_numerator_mod_lt给Q=p^(e+epsilon)的a=n modQ<13，epsilon=1当p=13。若b=j modQ>a，carry判据会令p整除第二choose，矛盾；故b≤a。取c=a−b，自然数余数整除及Nat.dvd_sub给Q|(j−b)、Q|(n−j−c)，并且b+c=a。

随后把a与WinAssign选点r对齐。e>0给p|X_p；两个位置都使p整除n减该位置，并且都<13≤p。因此n modp同时等于两个位置，位置相等。这里只以basep证明唯一性，构造转移时仍完整保留p=13的e+1模数；最后使用的是完整X_p=p^e。

权重不等式

    16−(b+c)≤(8−b)+(8−c)

使用Nat截断，对所有自然b,c成立。b<8时，X_p^(8−b)整除双窗口左边相应因子；b≥8时该幂为1。c同理。相乘并降低指数，得到X_p^(16−r)整除双窗口积。最后用已存在prime_power_finset_prod_dvd在实际p≥13支撑集上组装完整素数幂；每个成员的avoid条件都由noCommon内部给出。

原合法性保证j及n−j都至少14，双窗口8项全部正，所以整除转为≤。每个底数≤n，八个权重和为36，左右乘积≤n^72。没有要求n−2j≥13；来源中那个受限gap定理不适用于本目标，因此未使用。

这提供i13位置图需要的大素数侧与准确阶乘损失。它不包含五小素数的排序/图桥或八条Padé边，不能单独给新高度或原题完成。
