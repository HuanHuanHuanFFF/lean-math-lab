# Pro E 下一轮单文件接续：非平凡分母的有理分裂支已空

快照日期：2026-09-17。本包为当前会话交付，未改写仓库持续总览、未刷新其他会话状态。总来源入口的冻结副本是 `sources/BASE_OVERVIEW.md`；本文件加入本会话三轮作者成果，供下一位直接继续，不是新建一个竞争性的实时总台账。

## 1. 原题、对象和证据

原题：`1≤i<j≤floor(n/2)` 时存在同一个素数 `p≥i` 同除 `binom(n,i),binom(n,j)`。本轮只研究 i3，保留 p=3、完整素数幂、同一原 n,j。完整指标仍 R7={3,4,5,6,7,8,9}；没有新反例、一般 i3 高度或完整两底闭合。

旧前沿按冻结作者材料采用；本轮新增为自含纸面证明＋精确证书＋同作者不同算法复核。没有 Lean、外部独立研究者审稿或全历史覆盖差集认证。

## 2. 当前同一 NC3 输入的规范接口

`k=n-j,g=gcd(n,j),alpha=n/g=c2^s,c∈{1,3}`；c=3 必须 v3(n)=1。`beta=j/g,gamma=k/g` 为互素奇数，4|n,j<n/2。

真实 `lambda=3 iff v3(n-1)=1`，`mu=3 iff v3((n-2)/2)=1`，否则1；lambda*mu≤3。

`N=(n-1)/lambda,K=(n-2)/(2mu)`；完整窗口

`N|j(j-1), K|j(j-1)(j-2)`。

完整分配

`N=ab,a=gcd(N,j),b=gcd(N,j-1)`；
`K=LHR,L=gcd(K,j),H=gcd(K,j-1),R=gcd(K,j-2)`。

`t3=beta*gamma/N, C=gcd(K,t3)=LR, u=t3/C, z=(j-1)(k-1)/(NH²)`；
`Cug²-zH²=lambda,n=2muCH+2`。

旧作者前沿：a,b,L,R≥11,H>1,t3>100000,omega(t3)≥2；n≤3(C²-1)、n<11u^5 z^4 g^7、v2(n)≥4v2(j)+9。旧 R=7、薄形状 dP^e(d≤9)、低残量/两块/平方分支均不再作为新主目标。

二次恢复 `q=mu C,n=2qH+2,j=(q-m)H+1,1≤m<q,g|m`，
`lambda(q²-m²)H²=(t3g²-lambda)(2qH+1)`。

这些是必要模型；反向必须检查真实 gcd、alpha、孤立3、整数性、合法区间和完整 NC。

## 3. 本会话前两轮已得

### CUBE

`M=(njk)²(n-2)(j-1)(k-1)` 为整数立方，足以证明该原数对 i3。NC 下等价匹配条件 `2mu*u²z/alpha∈Q³` 被完整排除。原件 `sources/PREVIOUS_CUBE_PROOFS.md`。

B/E 桥接：`I=9t3/(lambda c²),J_B=54ud/(c³lambda mu),Delta=27u²z/(c⁴lambda³mu²)`，其中 `d=m/g`；实际内容三次和原始整数恢复不可丢。

### IQ3

`Q=(n-1)(n-2)/(jk)` 整数且 NC3 ⇒ omega(t3)≥3。故两底切片 `(g,u)=(1,1)` 已排。

`Theta=Q/2=lambda mu H/(ug²)` 的最简分母为 `ug²/gcd(u,lambda mu)`；两底时分母恰为 `ug²>1`。

IQ3 整数轨道分类不自动保持 NC，也不自动推广为有理系数。原件 `sources/PREVIOUS_IQ3_PROOFS.md`、`sources/PREVIOUS_IQ3_OVERVIEW.md`。

## 4. 本轮新增：SPLIT，完整非平凡分母支

原始可执行充分判据：对 `4|n,4≤j≤n/2`，

`S=(n-1)(n-2)((n-2j)²-3n+2)` 为非负整数平方 ⇒ 原题 i3 成立。

更强：这个条件与两个完整窗口不相容；主证明不使用 alpha 或旧有限证书。判据等价于 `Theta(Theta-2)∈Q²`，是特征二次式在 Q 上分裂，不是声称曲线没有有理点。

关键证明链（细节在 PROOFS §§1–5）：

1. `Theta=A/delta` 最简 ⇒ A奇。分裂且4|n排零支后，`A=rho²,A-2delta=sigma²`，rho>sigma≥1互素奇数，4|delta,j偶。
2. 同一 n,j 令 T=n-2j，准确符号：`sigma²n²+6delta n-4delta=rho²T²`。
3. `X=sigma²n+3delta,Y=rho sigma T` 都被4整除，`X²-Y²=delta(9delta+4sigma²)`；整数间隙给 `n≤9delta²/8-5delta/2+2`。
4. 两窗口恢复 u,z 的整性。真实约分与孤立3迫使 `H=rho²,ug²=lambda mu delta`。
5. 范数给 `n=2+2rho²/delta+2zrho⁶/(lambda delta)>6+16delta²/3`，与上界对所有正 delta 矛盾。无有限尾部。
6. 从失败的原窗口选完整 p幂，阶乘进位回到同一两个二项式；p=3 完整保留。

raw split 迫使 `den(Q)=delta/2≥2`，因此它确实不在整数 Q 的 IQ3 入口域。原输入族

`rho=16h+1,h≥1; n=(9rho³+3rho²+4)/4; j=3(rho²-1)(3rho-2)/8`

给无界最简分母 `delta=(rho²-1)/2`。但仍未认证相对于全部旧消费者的非空差集。

## 5. 新精确分母接口

若完整窗口加 `rad(u)⊆rad(C)`，设 `u_beta=beta/(aL),u_gamma=gamma/(bR)`，则

`den((j-1)(j-2)/k)=g/gcd(g,2)*u_gamma`，
`den((k-1)(k-2)/j)=g/gcd(g,2)*u_beta`。

两底时支持条件自动成立（采用旧 L,R>1）。两个原韦达反射同时整数 iff `g∈{1,2},u=1`；g≥3 时均非整数。只是整数下降方法的精确边界，不是输入闭合。g=2,u=1仍未闭合；不要因为两反射整数就宣布 NC 保持下降。

## 6. 下一轮剩余对象与首个检验

仍自由：一般 n,j,g,t3,C,u,z,H，粗素数支持/完整指数，Theta 的非平凡分母以及**非平方**特征判别式。整个两底仍未闭合。分裂支已经从所有支持数中排除，不要重攻它或扩大此支分母表。

可优先尝试：在两底条件下，将 `(rho²,sigma²)` 的分裂论证替换成非平方核 `D` 的整性分解，保持同一原 `Theta`、真实窗口和 `alpha=c2^s`。先判断固定 D 的方法是否还留下 D、g、u 无界；不能以“每个固定域可算”冒充有限化。

另一个明确小切口为 g=2,u=1 的原反射整性，但必须首先检查两窗口与 alpha 在反射后是否真的保持；发现失败就保留精确反例而不是直接写 descent。g≥3 的直接整数反射已被本轮分母公式阻断，需要实质不同的变换。

首个可证伪检查：构造满足两完整窗口且 rad(u)⊆rad(C) 的弱模型，检验拟议变换的整数性和真实 alpha；不能把这些弱模型当作 NC。已有非空模型见 FAILURES F1。

## 7. 证据入口和复现

- REPORT.md：最强新增与边界；PROOFS.md：完整无限推导；FAILURES.md：精确失败模型。
- outputs/CERTIFICATE.json：6,245,001原数对扫描的27个命中、43族样本、16抽象范数记录。
- outputs/ACCEPTANCE.json：第二算法重建及16种损坏拒绝。
- outputs/SYMBOLIC.json：16个精确恒等式；outputs/REPRODUCTION.json：5份输出逐字节重放。
- scripts/split_consumer.py：无需因数分解或巨大二项式，未命中严格返回 UNKNOWN。
- SOURCE_ADOPTION.md / MANIFEST.json：固定输入与逐文件哈希。

命令：`python3 -B scripts/reproduce.py --output-dir /tmp/new-split-replay --symbolic`。

无限结论不是由上述样本数量保证。没有外部独立验收、Lean、远端发布或全历史新颖性审计。
