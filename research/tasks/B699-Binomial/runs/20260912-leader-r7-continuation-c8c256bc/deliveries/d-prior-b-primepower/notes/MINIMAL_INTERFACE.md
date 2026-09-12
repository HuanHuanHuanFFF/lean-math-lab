# 最小数学／形式化接口（未执行Lean）

本文件是声明分解，不是已编译的Lean代码。所有纸面证明在PROOFS中。

## A. 纯素数幂最小消费者

1. 阶乘估值：v_p choose n j = Σ_a [j mod p^a > n mod p^a]。
2. 完整noCommon ⇒ 4|n、2j<n、α=c2^s、c∈{1,3}、c=3⇒3∤g、s≥1。
3. 精确N/K投影，保留λ/μ一次3例外。
4. N向j/j−1的两个gcd均>1（两个固定小除子表60、48）。
5. 规范互补商：w x(x−1)=h(n−1)(n−2)、0<h<w、g|2h；γ侧4h<w。
6. ζ=P^r：C=1；γ立即矛盾；β h=1正多项式，h=2模12的固定剩余类证书。
7. 反证接回∃p≥3 prime，p|choose n 3且p|choose n j。

依赖中不需要旧百万基例、三次判别式、BEG或Pell。p=3不可排除。

## B. 任意单侧余因子的有效高度

从A.5继续：

- d=gcd(ζ,n−1)，e=ζ/d，gcd(d,e)|w+h；n<81d³+2；n<8w³g²e²+1。
- ζ=aP^r规范化后：P∤n−1 ⇒d|a；否则C|a且d|a(w+h)∨e|a(w+h)。
- 正整数大小消元 ⇒ n<279936a^9+2。

这是无界a的相对定理，不声明存在统一常数覆盖全部a。

## C. a≤21最终消费者

把B分支分别映射到certificate.json的small_d和quotient完备域。
small_d需要证明352个斜率及其完整除子遍历；quotient需要证明全部c,g,h,C,a与整数幂s受界，并由二次方程恢复全部x。
最后拒绝逻辑只用范围、规范gcd、a整除和α奇部。无需对候选做大素数测试。

## D. 同素数向上转移

通用：p prime、p>m、p|choose n 3 ⇒∀ i∈[3,m]，p|choose n i（在原题合法范围内）。
接C并加gcd(choose n 3,105)=1，得到m=9的同一见证消费者。

## 验收标准

纸面／Python／Lean分开。真正Lean交付还须内核编译、无sorry/新增axiom、传递公理审计、原题消费者的完整量词确认。本包尚未完成这些。
