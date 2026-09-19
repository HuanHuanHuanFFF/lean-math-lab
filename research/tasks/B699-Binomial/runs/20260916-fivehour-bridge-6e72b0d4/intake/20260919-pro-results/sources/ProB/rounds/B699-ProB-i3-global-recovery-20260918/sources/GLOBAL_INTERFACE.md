# 本轮采用接口转录（不是旧原件的原字节副本）

固定来源：HuanHuanHuanFFF/lean-math-lab，commit e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b。

路径：research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260918-pro-results/sources/ProB/ROUNDS/B699-ProB-i3-B-saturation-20260918/proofs/PROOFS.md

Git blob SHA：bca7e63abee93f8e3e3035c01f1ad9e7e9572829。通过GitHub连接器定向读取40–80、70–161；该SHA不是此转录文件的SHA256。

采用的作者级 NC3 必要输入：

- 同一个 k=n−j、g=gcd(n,j)、alpha=n/g=c2^s；c1或3，s≥3；c3要求v3(n)=1且3∤g。
- lambda=3恰当v3(n−1)=1；mu=3恰当v3((n−2)/2)=1。只去孤立3，高次完整3幂保留。有效lambda/mu=(1,1),(1,3),(3,1)。
- N=(n−1)/lambda，K=(n−2)/(2mu)，H=gcd(K,j−1)，C=K/H；u=jk/(g²NC)，z=(j−1)(k−1)/(NH²)，delta=(n−2j)/(2gH)。必要正整数，u,C,H,delta奇。
- x=ug²；xC−zH²=lambda；epsilon=lambda*mu*H−2x>0；T=(z epsilon²+A_*)/x>0，rho=epsilon*T，A_*=lambda³mu²；epsilon,T奇。
- xT−z epsilon²=A_*；(lambda*mu)²C=4zx+4z epsilon+T；n=2muCH+2；z(n−1)=lambda(mu²C²−g²delta²)。
- 两个负根族统一为kappa1/3、M=d²+2kappa d−2kappa²、B=d²+kappa d−3kappa²、rho/A_*=dM/kappa³。kappa1：d奇≥3；kappa3：d奇≥5、3∤d、A_*=27,c1。
- h=gcd(lambda*mu*H,epsilon)=gcd(u,lambda*mu)1或3；E=epsilon/h，W=lambda*mu*H/h，U=u/h，V=W/kappa，W−E=2Ug²。kappa3时h1,V=H,3∤E。
- d=ab，M=mv，E=am；完整酉分拆。zeta=kappa³ z h²/A_*为正整数；Ug²bv−zeta a²m²=kappa³。
- Q=MV²−(d+2kappa)VE+E²；L0=(dV+E)/a³、Q0=Q/m³为正整数，Q0奇；L0Q0=n/2=cg2^(s−1)。

实际 Psi、I/J_B/Delta 与 u,z 的区别及前一轮推导见复制的 PREVIOUS-PROOFS.md；本轮未将这些变量互换。
