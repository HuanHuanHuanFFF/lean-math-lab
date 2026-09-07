# 用初等轮筛与Chebyshev界替代第七轮的RS输入

状态：主任务纸面推导。2310个余数的有限计算已由Lean内核核验；下面从有限周期到全局素数计数、积分估计及B686合并的完整链尚未Lean化。不能把这份文档称为原题界的Lean验收。

## 1. 可独立复用的线性素数计数界

W=2310=2·3·5·7·11，φ(W)=480。定义C(r)为1≤j≤r且gcd(j,W)=1的整数数量。有限证书对0≤r<W给出

```text
77 C(r) ≤16r+194，C(W−1)=480。
```

任意整数N=Wq+r，互素正整数的数量为480q+C(r)。除2,3,5,7,11外的素数均与W互素，故

```text
π(N) ≤5+480q+C(r)
     ≤(16/77)N+579/77 <(16/77)N+8。
```

取N=floor(t)，对所有实t≥0同样有π(floor t)≤(16/77)t+8。这里没有使用RS或素数定理。

Python数据见wheel2310.json；Lean源Wheel2310.lean逐个余数累积计数并合取全部不等式，wheel_certificate断言返回(480,true)，使用decide且无任何公理。它核验有限状态计算，尚未形式化C(r)及全局周期计数的解释桥。

## 2. k≥250000时的加权素数计数界

记Q=2k−1，θ(x)=Σ_{p≤x}logp。Chebyshev的θ(x)≤log4·x已有固定mathlib证明：Mathlib.NumberTheory.Chebyshev中的theta_le_log4_mul_x。

直接分开p≤k和p>k，有

```text
π(Q)logk ≤ θ(Q)+Σ_{p≤k}log(k/p)
         = θ(Q)+∫₂ᵏ π(floor t)/t dt
         ≤(2log4+16/77)k+8logk。
```

积分恒等式也可由同文件theta_eq_primeCounting_mul_log_sub_integral及有限素数求和得到。用mathlib ExponentialBounds中的log_two_lt_d9得log4<1.387，因此2log4+16/77<2.99。

对k≥A=250000，用log(k/A)≤k/A−1和logA<13，得到logk≤13k/A；所以8logk≤104k/250000<0.001k。于是

```text
π(2k−1)logk <3k。
```

数值logA<13可由e>2.7以及2.7^13>250000核对，所需e的界已在mathlib Analysis.Complex.ExponentialBounds中。

## 3. 仍可保留原来的250000分母

沿第七轮完整纸面gcd链，在m<k³时小素数部分现在由exp(9k)k^k控制，组合数部分仍由(ed/k)^(2k)控制。因此

```text
G <(e^11 d²/k)^k，m<2e^11 d²/k，
m>kd/2 ⇒ d>k²/(4e^11)。
```

用e<2.72=68/25和精确有理检查4·(68/25)^11<250000，仍得d>k²/250000。m≥k³的分支照旧。

小k采用独立的简单分支：2≤k<250000时，d≥k>k²/250000。边界k=250000属于上面的加权素数估计分支，不能用d≥k冒充严格大于。

## 4. 意义与剩余义务

这提供一条摆脱未形式化RS1.25506输入的候选完整证明路径。使用已在mathlib中证明的Chebyshev界、标准对数/积分性质和一个可内核检查的有限轮筛。需要新增的周期计数桥、primeCounting与积分比较以及完整gcd合并依然要写Lean；有限证书通过不等于这些桥已通过。

本轮不优化数学下界常数。这一构造的目的，是把形式化所依赖的外部解析数论定理换成现有库及小型精确证书。新颖性未调查，轮筛与Chebyshev方法本身均为经典方法。
