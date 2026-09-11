# 从实际 Padé 界到 i11 无界尾部：接口计划

状态：源接口核对、纸面证明分解和有限精确计算；没有运行 Lean/Git/CRT，没有新增原题指标。唯一所有者 `/root/pade_construction`，唯一写入本目录。开始 2026-09-11 11:29:06 UTC，原检查点 11:49:06 UTC。

固定最初 `FINAL_PLAN.json`，SHA `7ab80d1357ef87aafa1ead6fbdef0b4dadf851c09c77185c27a7f03fa4b5ab62`：B=15360，S=640，五行权重为 `(248,252),(60,330),(226,268),(354,228),(352,216)`，原 m0 为141、224、160、129、149。**不采用 retained-gain 的新 m0 或权重。**

结论：可以把 m 的选择和五行有限高度检查改成纯整数幂比较，完全绕开 Real.log 数值形式化。该路线仍需证明下面的少量一般引理并接受固定数值证书。最先可独立证明的缺口是实际归一化整数行的有理数余项恒等式，精确目标见 `NEXT_LEMMA.md`；它不依赖尚未完成的 Q/E/G 增长实例。

## 1. 实际复用及尚缺输入

| 实际源 | 已有结论 | 本次用途和边界 |
|---|---|---|
| `IntegerBridge.lean` | `bft_7_4_of_two_rows`、整数非零给下界 | 已有机制，不再生成同义条件 consumer |
| `Pade/Rows.lean` | `actual_bft_integer_gap` | 真正 P/Q 整数归一化行与邻项非零已完成；只要求 x,y非零、r>=0、a!=0、b>0、V!=0、实际 gap 界 |
| `PadeInteger.lean`, `Pade/Content.lean` | `qContent_pos`、Q/P 系数整除、归一化取值缩放 | qContent 是实际 qMagnitude 的系数 gcd，不是取值 gcd，也不是 rationalDivisor 本身；现有 cast 目标是 Real |
| `Moment/Identity.lean` | `actual_integer_pade_identity` 对全部 A,B,C,z:Q | 恒等式真实连接整数系数数组；无需积分或新 PadéIdentity 假设 |
| `Growth/ActualKernel.lean` | `actual_q_eval_bound`,`actual_e_eval_bound` | 实际多项式、实际 prefactor 的全 m>=1 界；GrowthTree 实例仍是明确输入 |
| `Growth/ElementaryRate.lean` | `lower_telescoping_from_step` 等5个公开前置已std3 | 已读实际 evidence 20260911T114251997480Z；用于D有限递推，上述无log选择器不依赖Real.log |
| `Growth/Normalization.lean` | 候选 prefactor=真实 factorialTerm；m=1常数等式 | 本次不从 import 或过期文件头推断接受；依赖 primary 真验 |
| `SmallPrimeLocalization.lean` | `binomial_prime_power_localization` | 全 binomial p 赋值加 index 赋值可落在某个 n-a；不必重做最大位置理论 |
| `LargeSmallPowers.lean` | `small_prime_part_eq_prod_small_primes` | U 等于 p=2,3,5,7 四个实际完整幂之积 |
| `CofactorCover.lean` | `noCommon_bernoulli_size` | 完整任意 j 的实际原题反例给 K n^121 <= (2*11!)^11 U^11 n^84 |

`SOURCE_MAP.json` 绑定读取的源 SHA；Rows、Content、RawHom、Identity、ActualKernel 的接受 receipt 已逐字节匹配。已验与候选分别记录，过期 UNCOMPILED 文件头不覆盖实际 receipt。

仍须由上游实际证明，对每个固定种子、delta=0/1、所有 m>=原 m0：

`|Q_delta(z)| <= C_Qdelta * BQ^m`, `|E_delta(z)| <= C_Edelta * BE^m`, `G_delta > Lt^(d*m)`，且 `0<=C_Qdelta<=1`,`0<=C_Edelta<=1`。

这里 `BQ=beta(c,d)*lambda_Q`、`BE=beta(c,d)*lambda_E`，G_delta=`qContent (dm-delta) ((c-d)m+delta-1) (dm-delta)`。Q/E 实例须来自真实 GrowthTree、factorialTerm 界和 Normalization；G 须来自真实 rationalDivisor 到 qContent 及有限阶乘递推。各 delta 常数分别处理。上述并非本计划已证明的假设包，也不会以 HeightValid/axiom 替代；最终五条 cofactor-cut 声明不得再带这些未证明前提。

## 2. 第一桥：Hom 缩放与实际误差

设 u=dm-delta，v=(c-d)m+delta-1，x=D0，y=a0*P，z=x/y。冻结种子满足 `P=p^k0`,`Q=q^l0`,`a0*P-b0*Q=x>0`，故0<x<y且y-x=b0*Q。实际整数行是

`pN=pNormalizedValue u v x y`, `qN=qNormalizedValue u v u x y`。

目标有理恒等式为

`G * (y^(u+v+1)*pN - (y-x)^(u+v+1)*qN) = y^v*x^(2u+1)*E_u(x/y)`。

这是全 u,v:Nat、x,y:Int、y!=0 的实际对象陈述。证明只需补齐有理 cast 的 Hom/Q/P 等式，再直接调用已验 Identity；不是新的余项假设。750个有界有理检查通过，包含u=0、x=0、负x/负y；行列式消费者仍要求x!=0，不能由这些检查删除该条件。

两 delta 与 Bool 对应必须显式证明：`actualPRow (dm) ((c-d)m-1) x y true` 对delta0，false对delta1，Q同理。`u+v+1=cm`、v>=0、`bftContent=G_delta` 在m>=1、1<=d<c、delta<=1下用 Nat 边界算术建立。

令 A3=`Omega3_power_d`、A4=`Omega4_power_d`，并令

`A3=P^(c-d)*Lt^d/(a0^d*b0^c*BQ)`,
`W=max(P,Q)^c*A4=(P*Q)^c*Lt^d/(y^(c-d)*x^(2d)*BE)`。

从实际增长和上述恒等式得到两项精确尺度：

`b0^(cm)*|qN|/P^(cm) <= C_Qdelta/(y^delta*A3^m)`；
`|y^(cm)*pN-(y-x)^(cm)*qN| * V / P^(cm) <= C_Edelta*h_delta*N_q/W^m`，其中 `h_0=x/y<=1`,`h_1=1/x<=1`，且 `V=N_q/Q^(cm)` 是提取后的正整数。

因此只需 `A3^m>48`、`W^m>4Y`、`N_q<=2Y`，即可让 gap<=24 的整数桥两项均严格小于 P^(cm)/2。没有除以实际 gap，gap=0和位置碰撞仍覆盖。

## 3. 无 log 的 m 选择：同时保留下界和可提取上界

取固定整数 `Z=floor(W)>1`，`Y0=2^15359`，对任意 Y>=Y0 定义

`m(Y)=Nat.find (exists m, 4*Y < Z^m)`。

存在性可用幂无界性；Bernoulli/粗大幂只用于证明存在，**不采用其见证作为 m**。`Nat.find_spec`、`Nat.find_min` 给 `4Y<Z^m` 和 `Z^(m-1)<=4Y`。前一幂的界是上侧容量证明的关键。

每一行计算 M=m(Y0)，每一端置 `alpha=1000-w`、`J=P^(1000*c)`（另一端用Q）。以下全是固定整数证书：

1. `Z^(M-1)<=4Y0<Z^M`，`M>=m0`，`A3^M>48`；
2. `J<Z^alpha`，`J^M<=Y0^alpha`；
3. `4^alpha*J^(M+1)<=Z^(alpha*M)`。

对任意Y>=Y0：最小性给m>=M。m=M时使用第2式。m=M+1+t时，第3式乘上 `J^t<=Z^(alpha*t)`，再用 `Z^(m-1)<=4Y`，得到 `4^alpha J^m <= (4Y)^alpha`，消去正4^alpha即 `J^m<=Y^alpha`。**两端使用同一个 Nat.find m。** 同时 m>=m0、A3^m>48、W^m>=Z^m>4Y。

反设小余因子 `A^1000<Y^w`，由 `Y<=p^e*A` 推出 `Y^(1000-w)<p^(1000e)`。结合容量 `P^(1000cm)<=Y^(1000-w)` 得 `k0*c*m<e`，故指数提取合法。这正是所需 m 上界；不会因无 log 而丢失。

| c,d | 原 m0 | M=m(Y0) | 整数 Z |
|---|---:|---:|---:|
| 5,4 | 141 | 329 | 115572769905797 |
| 9,5 | 224 | 285 | 17498099772305953 |
| 23,15 | 160 | 162 | 37002653975761602583641821923 |
| 5,3 | 129 | 213 | 5726930071079973414170 |
| 11,7 | 149 | 194 | 719422706382292314227864 |

十端第2/3组全部实际整数比较通过。初次直接比较最大14,455,361 bit，33.56秒；这不是建议在 kernel 中直接展开的验收实现。其内存读数返回0，视为测量不可用，不能声称零内存或已测峰值。

## 4. 固定大幂的短证书压缩

对实际素数底p选 `p^b<=2^a`，对Z选 `2^u<=Z^v`，b,v>0。当前只试1..8192的2次幂；a、u直接由实际小整数幂 bit_length 产生并重新比较，未用浮点/log提案或裁决。

令 k 为种子指数，N=`1000*c*k`。只检查这些小自然数指数不等式：

`a*v*N < u*b*alpha`；
`a*N*M <= b*15359*alpha`；
`2*alpha*b*v + a*v*N*(M+1) <= u*b*alpha*M`。

它们分别导出第3节的 rate、base、lookahead。证明对原目标取b或bv次幂，以两条basis界比较到同底2幂，再由Nat正指数的幂单调反推；不在 kernel 展开原14Mbit整数。

| c,d | (u,v)，下界2^u<=Z^v | 两端(p;a,b) | 最大basis bit |
|---|---|---|---:|
| 5,4 | (11959,256) | (2;1,1) / (5;9511,4096) | 11960 |
| 9,5 | (13813,256) | (7;11499,4096) / (2;1,1) | 13814 |
| 23,15 | (759,8) | (3;203,128) / (2;1,1) | 760 |
| 5,3 | (289,4) | (5;1189,512) / (3;203,128) | 1190 |
| 11,7 | (81153,1024) | (5;9511,4096) / (7;719,256) | 81154 |

全部短basis和纯指数余量实际通过，耗时0.104秒，最大basis **81,154 bit**。另外M最小性的幂最多15,396 bit；A3^M>48的直接有理基证书最大分子59,421 bit、分母59,321 bit。本轮不继续优化Ω3证书。这些均是有限计算结果，尚未Lean；可由短 `norm_num`/`decide` 证书分别安排实际资源验证，不能从数字大小保证运行成功。

## 5. 从局部 cofactor 析取到完整原题尾部

下一层的五个实际声明，对每行固定参数、全部Y,e,f,A,B:Nat，若Y>=2^15359、A,B>=1、`Y<=p^e*A<=2Y`、`Y<=q^f*B<=2Y`、`|p^e*A-q^f*B|<=24`，结论为

`Y^wp<=A^1000 OR Y^wq<=B^1000`。

最终这些五条声明无Q/E/G或PadéIdentity假设，证明应直接调用已接受的实际增长实例、无log选择器及现有actual_bft_integer_gap。m选择后，取 `r=P^(cm),s=Q^(cm),a=a0^(cm),b=b0^(cm),U=p^(e-k0cm)A,V=q^(f-l0cm)B`。r>0、a!=0、b>0、V!=0、x,y!=0全部由正种子和正余因子证明；两项<r/2与现有整数下界矛盾。

全局无需沿i18重做加权不同位置分支。对任意 n>=2^15360、任意合法 `11<j<=n/2`，反设 `not Common n 11 j`。令Y=n-10，则Y>=2^15359、n<2Y。对p=2,3,5,7，已有全赋值 localization 给 `n-r_p=A_p*p^e_p`、r_p<11、A_p>=1，其中e_p是实际binomial赋值；11在这些素数上的赋值为0。故每一对数都在[Y,2Y]且差<=10<=24。

由五个析取穷尽32取向，得到 `Y^640 <= (A2*A3*A5*A7)^1000`。这是纯整数幂版本，1000分母没有被取整丢掉。角点只是每个坐标选择约束的最大整数权重；不是把实际余因子对数假设为整数。32角点已独立重算，最小和640。

设U=smallPrimePart n11。已有精确乘积等式和各n-r<=n给

`U*(A2*A3*A5*A7) = product_p(n-r_p) <= n^4`，

故 `U^1000*Y^640<=n^4000`。**此式不要求r_p两两不同，因此全部碰撞和多重碰撞自动保留**，无需额外碰撞析取。

把它与已验 `K*n^121 <= (2*11!)^11*U^11*n^84` 结合，消去正幂并使用n<2Y及K>=1，得到

`n^40 < (2*11!)^11000 * 2^7040 < 2^304040`。

最后 `11!<2^26` 是闭合整数检查，而n>=2^15360给 `n^40>=2^614400`，矛盾。差额310360与冻结原FINAL_PLAN一致。

最终目标精确为 `forall n j:Nat, 11<j -> j<=n/2 -> not Common n 11 j -> n<2^15360`，其中Common原定义保留 `11<=p`。它只消去无界n尾部；n<2^15360的全部合法有限区域仍需独立覆盖，不是完整i11完成。

## 6. 实现顺序与停止边界

最小下一步是 `NEXT_LEMMA.md` 的有理 Hom/余项恒等式，完全独立于未验增长实例；用实际Identity和qContent整除证明，不再生成条件整数gap包装。第二步是正指数幂比较压缩引理和Nat.find双端容量引理；固定basis最多81,154 bit，先逐个安排核验。第三步在五行真实Q/E/G完成后写五条无条件源cofactor析取，接localization、32角点乘积和现有noCommon_bernoulli_size。具体义务清单见 `OBLIGATIONS.json`。

本目录只形成可执行计划、有限整数/有理检查和源对应；没有新Lean源码或公理，没有证明原题的新指标。源先后顺序与接受状态绑定于SOURCE_MAP，不把本计划中的论文推导或Python PASS当作Lean接受。

冻结前状态更新：ElementaryRate 源 SHA `1a277b639beae4464785efec3655f9631debc59be48d7c70b348ff528362b271`，实际 evidence success/exit_code=0 已读，parent报告5公开std3。Normalization的两个m=1证明已改为 `simpa only [Nat.mul_one]`，本次只读，仍待primary真验；RationalDivisor尚未接受。来源表保留Normalization读取前后hash。20分钟检查点已向primary发送；此后仅完成来源记录与冻结，没有追加研究或修改旧候选。
